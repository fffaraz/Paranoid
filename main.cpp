#include "bitmaps.h"
#include "fonts.h"
#include "levels.h"
#include "sound.h"

#include <raylib.h>

#include <array>
#include <math.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

const Color EGA_PALETTE[16] = {
    { 0, 0, 0, 255 }, { 0, 0, 170, 255 }, { 0, 170, 0, 255 }, { 0, 170, 170, 255 },
    { 170, 0, 0, 255 }, { 170, 0, 170, 255 }, { 170, 85, 0, 255 }, { 170, 170, 170, 255 },
    { 85, 85, 85, 255 }, { 85, 85, 255, 255 }, { 85, 255, 85, 255 }, { 85, 255, 255, 255 },
    { 255, 85, 85, 255 }, { 255, 85, 255, 255 }, { 255, 255, 85, 255 }, { 255, 255, 255, 255 }
};

Sounds sounds;

// Score per brick type - from original ASM table at 0x0b89
static const uint8_t BRICK_SCORE[28] = {
    0,
    20,
    20,
    20,
    15,
    10,
    15,
    10,
    5,
    10,
    10,
    10,
    10,
    10,
    10,
    15,
    15,
    15,
    15,
    15,
    25,
    20,
    15,
    10,
    10,
    10,
    10,
    10,
};

Texture2D tex_digits[DIGIT_COUNT]; // Bitmaps section 1
Texture2D tex_bricks[BRICK_COUNT]; // Bitmaps section 2
Texture2D tex_sprites; // Bitmaps section 3
Texture2D tex_font_small[FONT_SMALL_CHARS];
Texture2D tex_font_medium[FONT_MED_CHARS];

// Individual 16x12 sprites extracted from section 3
constexpr int ICON_FRAME_H = 12;
constexpr int ICON_FRAME_COUNT = ICON_SHEET_H / ICON_FRAME_H; // 49
Texture2D tex_icon_frames[ICON_FRAME_COUNT];

// Powerup icon animation: first sprite index and frame count per icon type
static const struct {
    int first;
    int count;
} icon_anim[12] = {
    { 0, 5 }, // ENLARGE:   growing bar (sprites 0-4)
    { 5, 5 }, // SHRINK:    shrinking bar (sprites 5-9)
    { 10, 5 }, // STICKY:    moving dots (sprites 10-14)
    { 15, 1 }, // 500PTS:    letter B (sprite 15)
    { 28, 5 }, // LASER:     laser bars (sprites 28-32)
    { 19, 7 }, // SPLIT:     circles splitting (sprites 19-25)
    { 44, 5 }, // EXTRALIFE: invader (sprites 44-48)
    { 31, 2 }, // BARRIER:   horizontal bars (sprites 31-32)
    { 40, 4 }, // SKIP:      checkmark cycling (sprites 40-43)
    { 33, 1 }, // SPEEDUP:   lightning (sprite 33)
    { 36, 4 }, // SLOWDOWN:  X cycling (sprites 36-39)
    { 17, 1 }, // THROUGH:   star (sprite 17)
};

float powerup_anim_timer = 0.0f;
int powerup_anim_frame = 0;

Texture2D CreateTextureFromIndexed(const uint8_t* pixels, int width, int height, bool transparentZero)
{
    Image img = GenImageColor(width, height, BLANK);
    for (int y = 0; y < height; y++) {
        for (int x = 0; x < width; x++) {
            uint8_t color_index = pixels[y * width + x] & 0x0F;
            if (transparentZero && color_index == 0)
                continue;
            ImageDrawPixel(&img, x, y, EGA_PALETTE[color_index]);
        }
    }
    Texture2D tex = LoadTextureFromImage(img);
    UnloadImage(img);
    return tex;
}

Texture2D CreateTextureFromBitmask(const uint8_t* pixels, int width, int height, Color color)
{
    Image img = GenImageColor(width, height, BLANK);
    for (int y = 0; y < height; y++) {
        for (int x = 0; x < width; x++) {
            if (pixels[y * width + x])
                ImageDrawPixel(&img, x, y, color);
        }
    }
    Texture2D tex = LoadTextureFromImage(img);
    UnloadImage(img);
    return tex;
}

void DrawTextEGA(const char* text, int x, int y, Color tint)
{
    for (int i = 0; text[i] != '\0'; i++) {
        char c = text[i];
        if (c >= 0x20 && c <= 0x5F) {
            DrawTexture(tex_font_small[c - 0x20], x, y, tint);
            x += FONT_SMALL_W;
        }
    }
}

void DrawTextEGAMedium(const char* text, int x, int y, Color tint)
{
    for (int i = 0; text[i] != '\0'; i++) {
        char c = text[i];
        if (c >= 'a' && c <= 'z')
            c -= 32;
        if (c >= 0x20 && c <= 0x5F) {
            DrawTexture(tex_font_medium[c - 0x20], x, y, tint);
            x += FONT_MED_W;
        }
    }
}

int TextWidthMedium(const char* text)
{
    int n = 0;
    for (int i = 0; text[i]; i++)
        n++;
    return n * FONT_MED_W;
}

int TextWidthSmall(const char* text)
{
    int n = 0;
    for (int i = 0; text[i]; i++)
        n++;
    return n * FONT_SMALL_W;
}

void DrawTextCenteredMedium(const char* text, int y, Color tint)
{
    DrawTextEGAMedium(text, (640 - TextWidthMedium(text)) / 2, y, tint);
}

void DrawTextCenteredSmall(const char* text, int y, Color tint)
{
    DrawTextEGA(text, (640 - TextWidthSmall(text)) / 2, y, tint);
}

void DrawTitleScreen(void)
{
    /* Title and credits — strings from original at 0x0b1a..0x0b56:
     *   "Paranoid", "Bit Bucket", "Brothers", "is a", "production".
     * Menu items from original at 0x09e2..0x0a40:
     *   "Press F1 for information",
     *   "Press F10 to quit to dos",
     *   "Press spacebar to play".
     * Version string from original at 0x053b: "VERSION 1.8". */
    DrawTextCenteredMedium("PARANOID", 40, EGA_PALETTE[12]);

    DrawTextCenteredMedium("THE BIT BUCKET BROTHERS", 100, EGA_PALETTE[14]);
    DrawTextCenteredMedium("PRODUCTION", 120, EGA_PALETTE[14]);

    DrawTextCenteredMedium("PRESS SPACEBAR TO PLAY", 180, EGA_PALETTE[15]);
    DrawTextCenteredMedium("PRESS F1 FOR INFORMATION", 210, EGA_PALETTE[7]);
    DrawTextCenteredMedium("PRESS F10 TO QUIT TO DOS", 230, EGA_PALETTE[7]);

    DrawTextCenteredSmall("VERSION 1.8", 320, EGA_PALETTE[8]);
}

enum GameState { STATE_TITLE,
    STATE_INFO,
    STATE_PLAY,
    STATE_PAUSED,
    STATE_GAMEOVER };

GameState state = STATE_TITLE;
int current_level = 0;
int score = 0;
int lives = 3;
int bricks_remaining = 0;

constexpr int PLAY_ROWS = 19;
constexpr int PLAY_COLS = 14;

uint8_t grid[PLAY_ROWS][PLAY_COLS];
uint8_t grid_attrs[PLAY_ROWS][PLAY_COLS];

struct Paddle {
    float x, y, w, h, speed;
};

constexpr int MAX_BALLS = 5;
struct Ball {
    float x, y, dx, dy;
    float sticky_offset;
    bool active;
};

/* Ball speed parameters (matching ASM entity movement at 0xc16d)
 * Original uses integer dx/dy per iteration with no frame timing.
 * We scale to pixels/sec for 60fps delta-time movement.
 * Original dy ranges ~2..7, dx ~1..5.  We multiply by ~50 for px/sec. */
constexpr float BALL_INIT_DY = 150.0f; // initial vertical speed (px/sec)
constexpr float BALL_MAX_DY = 350.0f; // max vertical speed (px/sec), ~7 in original
constexpr float BALL_INIT_DX = 100.0f; // base horizontal component

Paddle paddle;
Ball balls[MAX_BALLS];

// Powerup icon types (indices into icon sprite sheet)
enum PowerupIconType {
    ICON_ENLARGE, // 0, increase bat size by a third
    ICON_SHRINK, // 1, decrease bat size by a third
    ICON_STICKY, // 2, catch the ball
    ICON_500PTS, // 3, 500 bonus points
    ICON_LASER, // 4, fire lasers from bat
    ICON_SPLIT, // 5, split next two balls
    ICON_EXTRALIFE, // 6, gain extra ball/life
    ICON_BARRIER, // 7, barrier at bottom of screen
    ICON_SKIP, // 8, skip to next level
    ICON_SPEEDUP, // 9, speed up ball
    ICON_SLOWDOWN, // 10, slow all balls
    ICON_THROUGH // 11, ball goes through bricks
};

struct PowerUp {
    float x, y;
    int active;
    PowerupIconType type;
};
constexpr int MAX_POWERUPS = 16;
PowerUp powerups[MAX_POWERUPS];

// Active powerup state
bool sticky_active = false;
bool barrier_active = false;
bool through_active = false;
bool laser_active = false;
float laser_cooldown = 0.0f;
float sticky_timer = 0.0f;
float laser_timer = 0.0f;
float through_timer = 0.0f;
constexpr float POWERUP_DURATION = 20.0f;
struct Laser {
    float x, y;
    bool active;
};
constexpr int MAX_LASERS = 10;
Laser active_lasers[MAX_LASERS];

int split_count = 0; // number of splits remaining

// Letter brick bonus tracking
constexpr int LETTER_COUNT = 5;
uint8_t letters_collected = 0; // bitmask of collected letters
uint8_t letters_next = 1; // next expected letter bit (for in-order check)
bool letters_in_order = true;

/* Speed increase timer (matching ASM FUN_0000_2e2b: dy increases by 1 every
 * 4608 game loop iterations, counter at [0xd23d] resets to 0x600=1536,
 * per-entity counter resets at 3.  At ~120 iterations/sec on original
 * hardware ≈ 38 seconds.  We use 30s as a reasonable translation.) */
float speed_timer = 0.0f;
constexpr float SPEED_INCREASE_INTERVAL = 30.0f; // seconds between |dy| bumps
constexpr float SPEED_INCREASE_AMOUNT = 20.0f; // pixels/sec per bump

// Check if a brick type is multi-hit (needs to be hit multiple times)
static bool IsMultiHitBrick(uint8_t type)
{
    return type == 0x04 || type == 0x06 || type == 0x14 || type == 0x15 || type == 0x16;
}

// Check if a brick type is a letter brick (0x0A - 0x0E)
static bool IsLetterBrick(uint8_t type)
{
    return type >= 0x0A && type <= 0x0E;
}

static void HitBrick(int r, int c, int offsetX, int offsetY)
{
    uint8_t type = grid[r][c];
    if (type == 0x1C)
        return;

    score += (type < sizeof(BRICK_SCORE)) ? BRICK_SCORE[type] : 10;

    if (IsLetterBrick(type)) {
        uint8_t letter_bit = 1 << (type - 0x0A);
        if ((letters_collected & letter_bit) == 0) {
            if (letter_bit != letters_next)
                letters_in_order = false;
            else
                letters_next <<= 1;
            letters_collected |= letter_bit;
            if (letters_collected == 0x1F) {
                score += letters_in_order ? 1000 : 500;
                letters_collected = 0;
                letters_next = 1;
                letters_in_order = true;
            }
        }
    }

    if (IsMultiHitBrick(type)) {
        grid[r][c] = type + 1;
        PlaySound(sounds.snd_brick);
    } else {
        grid[r][c] = 0;
        bricks_remaining--;
        PlaySound(sounds.snd_brick);
        uint8_t a = grid_attrs[r][c];
        if (a != 0xFF) {
            for (int pi = 0; pi < MAX_POWERUPS; pi++) {
                if (!powerups[pi].active) {
                    powerups[pi].active = 1;
                    powerups[pi].x = offsetX + c * BRICK_W + 8;
                    powerups[pi].y = offsetY + r * BRICK_H;
                    powerups[pi].type = (PowerupIconType)a;
                    break;
                }
            }
        }
    }
}

int CountBalls(void)
{
    int count = 0;
    for (int i = 0; i < MAX_BALLS; i++)
        if (balls[i].active)
            count++;
    return count;
}

void ResetPowerups(void)
{
    sticky_active = false;
    barrier_active = false;
    through_active = false;
    laser_active = false;
    laser_cooldown = 0.0f;
    sticky_timer = 0.0f;
    laser_timer = 0.0f;
    through_timer = 0.0f;
    memset(active_lasers, 0, sizeof(active_lasers));
    split_count = 0;
    paddle.w = 48;
}

void LaunchBall(Ball* b)
{
    float hitPos = (b->x - (paddle.x + paddle.w / 2)) / (paddle.w / 2);
    b->dx = hitPos * BALL_INIT_DX * 2.0f;
    if (b->dx == 0.0f) {
        b->dx = BALL_INIT_DX;
    }
    b->dy = -BALL_INIT_DY;
}

void AttachBallToPaddle(Ball* b)
{
    b->sticky_offset = paddle.w / 2;
    b->x = paddle.x + b->sticky_offset;
    b->y = paddle.y - 4;
    b->dx = 0;
    b->dy = 0;
    b->active = true;
}

void LoadLevel(int index, const std::array<Level, LEVEL_COUNT>& levels)
{
    if (index < 0 || index >= LEVEL_COUNT)
        return;
    const Level* lvl = &levels[index];
    if (!lvl)
        return;

    bricks_remaining = 0;
    for (int r = 0; r < PLAY_ROWS; r++) {
        for (int c = 0; c < PLAY_COLS; c++) {
            grid[r][c] = lvl->bricks[13 - c][r];
            grid_attrs[r][c] = lvl->attrs[13 - c][r];
            if (grid[r][c] != 0 && grid[r][c] != 0x1C)
                bricks_remaining++;
        }
    }

    paddle.w = 48;
    paddle.h = 8;
    paddle.x = 320 - paddle.w / 2;
    paddle.y = 330;
    paddle.speed = 300;

    memset(balls, 0, sizeof(balls));
    AttachBallToPaddle(&balls[0]);

    memset(powerups, 0, sizeof(powerups));
    ResetPowerups();

    letters_collected = 0;
    letters_next = 1;
    letters_in_order = true;
    speed_timer = 0.0f;
    powerup_anim_timer = 0.0f;
    powerup_anim_frame = 0;
}

void UpdatePlay(float dt, const std::array<Level, LEVEL_COUNT>& levels)
{
    // ESC returns to title (original: Escape returns to demo)
    if (IsKeyPressed(KEY_ESCAPE)) {
        state = STATE_TITLE;
        return;
    }

    int offsetX = (640 - (PLAY_COLS * BRICK_W)) / 2;
    int rightEdge = offsetX + PLAY_COLS * BRICK_W;
    int offsetY = 32;

    if (IsKeyDown(KEY_LEFT_SHIFT) || IsKeyDown(KEY_LEFT))
        paddle.x -= paddle.speed * dt;
    if (IsKeyDown(KEY_RIGHT_SHIFT) || IsKeyDown(KEY_RIGHT))
        paddle.x += paddle.speed * dt;
    if (paddle.x < offsetX)
        paddle.x = offsetX;
    if (paddle.x > rightEdge - paddle.w)
        paddle.x = rightEdge - paddle.w;

    /* Ball attached to paddle moves with it until launched.
     * Only launch one ball per SPACE press so multiple stuck balls
     * don't all release at once. */
    bool launch_consumed = false;
    for (int bi = 0; bi < MAX_BALLS; bi++) {
        if (balls[bi].active && balls[bi].dx == 0 && balls[bi].dy == 0) {
            balls[bi].x = paddle.x + balls[bi].sticky_offset;
            balls[bi].y = paddle.y - 4;
            if (!launch_consumed && IsKeyPressed(KEY_SPACE)) {
                LaunchBall(&balls[bi]);
                launch_consumed = true;
            }
        }
    }

    /* Ball speed increases over time (matching ASM FUN_0000_2e2b:
     * only |dy| increases, dx stays constant. dy capped at BALL_MAX_DY.
     * Original increments |dy| by 1 every ~4608 game loop iterations.) */
    speed_timer += dt;
    if (speed_timer >= SPEED_INCREASE_INTERVAL) {
        speed_timer -= SPEED_INCREASE_INTERVAL;
        for (int bi = 0; bi < MAX_BALLS; bi++) {
            if (!balls[bi].active || balls[bi].dy == 0)
                continue;
            float ady = fabsf(balls[bi].dy);
            if (ady < BALL_MAX_DY) {
                ady += SPEED_INCREASE_AMOUNT;
                if (ady > BALL_MAX_DY)
                    ady = BALL_MAX_DY;
                balls[bi].dy = (balls[bi].dy > 0) ? ady : -ady;
            }
        }
    }

    Rectangle pRect = { paddle.x, paddle.y, paddle.w, paddle.h };

    for (int bi = 0; bi < MAX_BALLS; bi++) {
        Ball* b = &balls[bi];
        if (!b->active || (b->dx == 0 && b->dy == 0))
            continue;

        b->x += b->dx * dt;
        b->y += b->dy * dt;

        bool sideBounce = false, topBounce = false;
        if (b->x - 4 < offsetX) {
            b->x = offsetX + 4;
            b->dx = fabsf(b->dx);
            sideBounce = true;
        }
        if (b->x + 4 > rightEdge) {
            b->x = rightEdge - 4;
            b->dx = -fabsf(b->dx);
            sideBounce = true;
        }
        if (b->y - 4 < 16) {
            b->y = 16 + 4;
            b->dy = fabsf(b->dy);
            topBounce = true;
        }
        if (topBounce)
            PlaySound(sounds.snd_top_bounce);
        else if (sideBounce)
            PlaySound(sounds.snd_bounce);

        // Ball death / barrier
        if (b->y > 350) {
            if (barrier_active) {
                b->y = 350;
                b->dy = -fabsf(b->dy);
                barrier_active = false;
                PlaySound(sounds.snd_barrier);
            } else {
                b->active = false;
                if (CountBalls() == 0) {
                    PlaySound(sounds.snd_death);
                    lives--;
                    ResetPowerups();
                    if (lives <= 0) {
                        PlaySound(sounds.snd_game_over);
                        state = STATE_GAMEOVER;
                        return;
                    }
                    // Respawn a ball attached to paddle
                    AttachBallToPaddle(&balls[0]);
                }
                continue;
            }
        }

        // Paddle collision
        if (CheckCollisionCircleRec((Vector2) { b->x, b->y }, 4, pRect)) {
            b->y = paddle.y - 4;
            if (sticky_active) {
                // Stick to paddle
                b->sticky_offset = b->x - paddle.x;
                b->dx = 0;
                b->dy = 0;
                PlaySound(sounds.snd_paddle_catch);
                continue;
            }
            /* Angle based on hit position: dx set by where ball hits paddle,
             * dy preserved (only sign flipped). Matches original's dx/dy
             * independence - dx is set from paddle hit, dy keeps its magnitude. */
            float hitPos = (b->x - (paddle.x + paddle.w / 2)) / (paddle.w / 2);
            float ady = fabsf(b->dy);
            if (ady < BALL_INIT_DY)
                ady = BALL_INIT_DY;
            b->dx = hitPos * BALL_INIT_DX * 2.0f;
            b->dy = -ady;

            /* Split ball logic - mirror dx and offset slightly so the new
             * ball doesn't share the same position as the original. */
            if (split_count > 0) {
                split_count--;
                for (int si = 0; si < MAX_BALLS; si++) {
                    if (!balls[si].active) {
                        balls[si] = *b;
                        balls[si].dx = -b->dx;
                        balls[si].x = b->x - 6;
                        break;
                    }
                }
            }

            PlaySound(sounds.snd_paddle);
        }

        /* Brick collision.
         * With through_active, the ball passes through breakable bricks
         * destroying every one in its path this frame, but still bounces
         * off indestructible bricks. Without through_active, we pick the
         * shallowest-overlap axis to flip so side hits flip dx and
         * top/bottom hits flip dy. */
        bool bounced_x = false, bounced_y = false;
        for (int r = 0; r < PLAY_ROWS; r++) {
            for (int c = 0; c < PLAY_COLS; c++) {
                if (grid[r][c] == 0)
                    continue;
                Rectangle bRect = { (float)(offsetX + c * BRICK_W), (float)(offsetY + r * BRICK_H), (float)BRICK_W, (float)BRICK_H };
                if (!CheckCollisionCircleRec((Vector2) { b->x, b->y }, 4, bRect))
                    continue;

                uint8_t type = grid[r][c];
                if (type == 0x1C) {
                    // Indestructible - always bounce, even with through
                    float bcx = bRect.x + bRect.width / 2;
                    float bcy = bRect.y + bRect.height / 2;
                    float dxo = (bRect.width / 2 + 4) - fabsf(b->x - bcx);
                    float dyo = (bRect.height / 2 + 4) - fabsf(b->y - bcy);
                    if (dxo < dyo) {
                        if (!bounced_x) {
                            b->dx *= -1;
                            bounced_x = true;
                        }
                    } else {
                        if (!bounced_y) {
                            b->dy *= -1;
                            bounced_y = true;
                        }
                    }
                    PlaySound(sounds.snd_bounce);
                    if (!through_active)
                        goto next_ball;
                    continue;
                }

                HitBrick(r, c, offsetX, offsetY);

                if (!through_active) {
                    float bcx = bRect.x + bRect.width / 2;
                    float bcy = bRect.y + bRect.height / 2;
                    float dxo = (bRect.width / 2 + 4) - fabsf(b->x - bcx);
                    float dyo = (bRect.height / 2 + 4) - fabsf(b->y - bcy);
                    if (dxo < dyo) {
                        if (!bounced_x) {
                            b->dx *= -1;
                            bounced_x = true;
                        }
                    } else {
                        if (!bounced_y) {
                            b->dy *= -1;
                            bounced_y = true;
                        }
                    }
                    goto next_ball;
                }
            }
        }
    next_ball:;
    }

    // Laser spawning - allocate two free slots independently
    if (laser_cooldown > 0)
        laser_cooldown -= dt;
    if (laser_active && IsKeyPressed(KEY_SPACE) && laser_cooldown <= 0) {
        int slots[2] = { -1, -1 };
        int found = 0;
        for (int i = 0; i < MAX_LASERS && found < 2; i++) {
            if (!active_lasers[i].active)
                slots[found++] = i;
        }
        if (found == 2) {
            active_lasers[slots[0]].active = true;
            active_lasers[slots[0]].x = paddle.x + 8;
            active_lasers[slots[0]].y = paddle.y;
            active_lasers[slots[1]].active = true;
            active_lasers[slots[1]].x = paddle.x + paddle.w - 10;
            active_lasers[slots[1]].y = paddle.y;
            laser_cooldown = 0.2f;
            PlaySound(sounds.snd_laser);
        }
    }

    // Laser updating & brick collision
    float LASER_SPEED = 300.0f;
    for (int i = 0; i < MAX_LASERS; i++) {
        if (!active_lasers[i].active)
            continue;
        active_lasers[i].y -= LASER_SPEED * dt;
        if (active_lasers[i].y < 16) {
            active_lasers[i].active = false;
            continue;
        }

        for (int r = 0; r < PLAY_ROWS; r++) {
            for (int c = 0; c < PLAY_COLS; c++) {
                if (grid[r][c] == 0)
                    continue;
                Rectangle bRect = { (float)(offsetX + c * BRICK_W), (float)(offsetY + r * BRICK_H), (float)BRICK_W, (float)BRICK_H };
                if (CheckCollisionCircleRec((Vector2) { active_lasers[i].x, active_lasers[i].y }, 2, bRect)) {
                    active_lasers[i].active = false;
                    uint8_t type = grid[r][c];
                    if (type != 0x1C) {
                        HitBrick(r, c, offsetX, offsetY);
                        PlaySound(sounds.snd_laser_hit);
                    } else {
                        PlaySound(sounds.snd_bounce);
                    }
                    goto next_laser;
                }
            }
        }
    next_laser:;
    }

    // Time-limited powerups expire after POWERUP_DURATION seconds
    if (sticky_active) {
        sticky_timer -= dt;
        if (sticky_timer <= 0)
            sticky_active = false;
    }
    if (laser_active) {
        laser_timer -= dt;
        if (laser_timer <= 0)
            laser_active = false;
    }
    if (through_active) {
        through_timer -= dt;
        if (through_timer <= 0)
            through_active = false;
    }

    // Powerup animation timer (~8 FPS cycle)
    powerup_anim_timer += dt;
    if (powerup_anim_timer >= 0.125f) {
        powerup_anim_timer -= 0.125f;
        powerup_anim_frame++;
    }

    // Powerups falling
    Rectangle pRectPU = { paddle.x, paddle.y, paddle.w, paddle.h };
    for (int pi = 0; pi < MAX_POWERUPS; pi++) {
        if (!powerups[pi].active)
            continue;
        powerups[pi].y += 80.0f * dt;
        Rectangle puRect = { powerups[pi].x, powerups[pi].y, ICON_SHEET_W, ICON_FRAME_H };
        if (CheckCollisionRecs(puRect, pRectPU)) {
            powerups[pi].active = 0;
            PlaySound(sounds.snd_powerup);
            switch (powerups[pi].type) {
            case ICON_ENLARGE: {
                float oldW = paddle.w;
                paddle.w += 16;
                if (paddle.w > 96)
                    paddle.w = 96;
                paddle.x -= (paddle.w - oldW) / 2;
                if (paddle.x < offsetX)
                    paddle.x = offsetX;
                if (paddle.x > rightEdge - paddle.w)
                    paddle.x = rightEdge - paddle.w;
                break;
            }
            case ICON_SHRINK: {
                float oldW = paddle.w;
                paddle.w -= 16;
                if (paddle.w < 24)
                    paddle.w = 24;
                paddle.x -= (paddle.w - oldW) / 2;
                if (paddle.x < offsetX)
                    paddle.x = offsetX;
                if (paddle.x > rightEdge - paddle.w)
                    paddle.x = rightEdge - paddle.w;
                break;
            }
            case ICON_STICKY:
                sticky_active = true;
                sticky_timer = POWERUP_DURATION;
                break;
            case ICON_500PTS:
                score += 500;
                break;
            case ICON_LASER:
                laser_active = true;
                laser_timer = POWERUP_DURATION;
                break;
            case ICON_SPLIT:
                split_count += 2;
                break;
            case ICON_EXTRALIFE:
                lives++;
                break;
            case ICON_BARRIER:
                barrier_active = true;
                break;
            case ICON_SKIP:
                current_level = (current_level + 1) % LEVEL_COUNT;
                LoadLevel(current_level, levels);
                return;
            case ICON_SPEEDUP:
                for (int bi = 0; bi < MAX_BALLS; bi++) {
                    if (balls[bi].active && balls[bi].dy != 0) {
                        float ady = fabsf(balls[bi].dy) + 50.0f;
                        if (ady > BALL_MAX_DY)
                            ady = BALL_MAX_DY;
                        balls[bi].dy = (balls[bi].dy > 0) ? ady : -ady;
                    }
                }
                break;
            case ICON_SLOWDOWN:
                for (int bi = 0; bi < MAX_BALLS; bi++) {
                    if (balls[bi].active && balls[bi].dy != 0) {
                        balls[bi].dy = (balls[bi].dy > 0) ? BALL_INIT_DY : -BALL_INIT_DY;
                    }
                }
                break;
            case ICON_THROUGH:
                through_active = true;
                through_timer = POWERUP_DURATION;
                break;
            }
        } else if (powerups[pi].y > 350) {
            powerups[pi].active = 0;
        }
    }

    // Win condition
    if (bricks_remaining <= 0) {
        PlaySound(sounds.snd_level_complete);
        current_level = (current_level + 1) % LEVEL_COUNT;
        LoadLevel(current_level, levels);
    }
}

void DrawPlay()
{
    int offsetX = (640 - (PLAY_COLS * BRICK_W)) / 2;
    int rightEdge = offsetX + PLAY_COLS * BRICK_W;
    int offsetY = 32;

    DrawRectangle(offsetX - 16, 0, 16, 350, EGA_PALETTE[7]);
    DrawRectangle(rightEdge, 0, 16, 350, EGA_PALETTE[7]);
    DrawRectangle(offsetX - 16, 0, PLAY_COLS * BRICK_W + 32, 16, EGA_PALETTE[7]);

    for (int r = 0; r < PLAY_ROWS; r++) {
        for (int c = 0; c < PLAY_COLS; c++) {
            uint8_t type = grid[r][c];
            if (type > 0 && type < BRICK_COUNT) {
                DrawTexture(tex_bricks[type], offsetX + c * BRICK_W, offsetY + r * BRICK_H, WHITE);
            }
        }
    }

    for (int pi = 0; pi < MAX_POWERUPS; pi++) {
        if (powerups[pi].active) {
            int type = powerups[pi].type;
            if (type >= 0 && type < 12) {
                int first = icon_anim[type].first;
                int count = icon_anim[type].count;
                int frame = powerup_anim_frame % count;
                DrawTexture(tex_icon_frames[first + frame], powerups[pi].x, powerups[pi].y, WHITE);
            }
        }
    }

    // Draw barrier if active
    if (barrier_active) {
        DrawRectangle(offsetX, 348, PLAY_COLS * BRICK_W, 2, EGA_PALETTE[15]);
    }

    DrawRectangle(paddle.x, paddle.y, paddle.w, paddle.h, EGA_PALETTE[12]);

    // Draw lasers
    for (int i = 0; i < MAX_LASERS; i++) {
        if (active_lasers[i].active) {
            DrawRectangle(active_lasers[i].x - 1, active_lasers[i].y - 4, 3, 8, EGA_PALETTE[14]);
        }
    }

    for (int bi = 0; bi < MAX_BALLS; bi++) {
        if (balls[bi].active)
            DrawCircle(balls[bi].x, balls[bi].y, 4, EGA_PALETTE[14]);
    }

    char scoreStr[32];
    snprintf(scoreStr, sizeof(scoreStr), "SCORE %d", score);
    DrawTextEGA(scoreStr, 12, 16, EGA_PALETTE[15]);

    char livesStr[32];
    snprintf(livesStr, sizeof(livesStr), "BALLS %d", lives);
    DrawTextEGA(livesStr, 560, 16, EGA_PALETTE[15]);

    char levelStr[32];
    snprintf(levelStr, sizeof(levelStr), "LEVEL %d", current_level + 1);
    DrawTextEGA(levelStr, 560, 32, EGA_PALETTE[15]);

    if (letters_collected > 0) {
        DrawTextEGA("BONUS", 560, 56, EGA_PALETTE[15]);
        for (int b = 0; b < 5; b++) {
            if (letters_collected & (1 << b)) {
                char bonusChar[2] = { "BONUS"[b], '\0' };
                DrawTextEGA(bonusChar, 560 + b * 8, 72, EGA_PALETTE[12]);
            }
        }
    }
}

bool getRootPath(char* path, int len)
{
    const char* candidates[] = { ".", "./paranoid-v1.8", "../paranoid-v1.8" };
    for (size_t i = 0; i < sizeof(candidates) / sizeof(candidates[0]); i++) {
        char probe[512];
        snprintf(probe, sizeof(probe), "%s/BITMAPS.PAR", candidates[i]);
        FILE* f = fopen(probe, "rb");
        if (f) {
            fclose(f);
            snprintf(path, len, "%s", candidates[i]);
            return true;
        }
    }
    return false;
}

int main(int argc, char* argv[])
{
    for (int i = 1; i < argc; i++) {
        if (strcmp(argv[i], "-l") == 0 && i + 1 < argc) {
            int lvl = atoi(argv[++i]) - 1;
            if (lvl >= 0 && lvl < LEVEL_COUNT)
                current_level = lvl;
        }
    }

    InitWindow(640, 350, "Paranoid");
    load_sounds(sounds);

    char root_path[128];
    if (!getRootPath(root_path, sizeof(root_path))) {
        printf("FAILED TO LOCATE DATA FILES IN ./ OR ./paranoid-v1.8/ OR ../paranoid-v1.8/\n");
        return 1;
    }

    char path[256];

    BitMaps bitmaps;
    snprintf(path, sizeof(path), "%s/BITMAPS.PAR", root_path);
    if (load_bitmaps(path, bitmaps) != 0) {
        printf("FAILED TO LOAD BITMAPS (%s)\n", path);
        return 1;
    }

    Fonts fonts;
    snprintf(path, sizeof(path), "%s/FONTS.PAR", root_path);
    if (load_fonts(path, fonts) != 0) {
        printf("FAILED TO LOAD FONTS (%s)\n", path);
        return 1;
    }

    std::array<Level, LEVEL_COUNT> levels;
    snprintf(path, sizeof(path), "%s/LEVELS.PAR", root_path);
    if (load_levels(path, levels) != 0) {
        printf("FAILED TO LOAD LEVELS (%s)\n", path);
        return 1;
    }

    for (int i = 0; i < DIGIT_COUNT; i++)
        tex_digits[i] = CreateTextureFromIndexed(&bitmaps.digit_pixels[i][0][0], DIGIT_W, DIGIT_H, true);
    for (int i = 0; i < BRICK_COUNT; i++)
        tex_bricks[i] = CreateTextureFromIndexed(&bitmaps.brick_pixels[i][0][0], BRICK_W, BRICK_H, false);

    tex_sprites = CreateTextureFromIndexed(&bitmaps.icon_sheet_pixels[0][0], ICON_SHEET_W, ICON_SHEET_H, true);
    for (int i = 0; i < ICON_FRAME_COUNT; i++)
        tex_icon_frames[i] = CreateTextureFromIndexed(&bitmaps.icon_sheet_pixels[i * ICON_FRAME_H][0], ICON_SHEET_W, ICON_FRAME_H, false);
    for (int i = 0; i < FONT_SMALL_CHARS; i++)
        tex_font_small[i] = CreateTextureFromBitmask(&fonts.font_small[i][0][0], FONT_SMALL_W, FONT_SMALL_H, WHITE);
    for (int i = 0; i < FONT_MED_CHARS; i++)
        tex_font_medium[i] = CreateTextureFromBitmask(&fonts.font_medium[i][0][0], FONT_MED_W, FONT_MED_H, WHITE);

    SetTargetFPS(60);
    LoadLevel(current_level, levels);

    while (!WindowShouldClose()) {
        // F10 exits (original: "Press F10 at any time to exit to Dos")
        if (IsKeyPressed(KEY_F10))
            break;

        const float dt = GetFrameTime();

        switch (state) {
        case STATE_TITLE:
            if (IsKeyPressed(KEY_SPACE))
                state = STATE_PLAY;
            else if (IsKeyPressed(KEY_F1))
                state = STATE_INFO;
            break;
        case STATE_INFO:
            if (IsKeyPressed(KEY_ESCAPE) || IsKeyPressed(KEY_SPACE) || IsKeyPressed(KEY_F1))
                state = STATE_TITLE;
            break;
        case STATE_PLAY:
            if (IsKeyPressed(KEY_P))
                state = STATE_PAUSED;
            else
                UpdatePlay(dt, levels);
            break;
        case STATE_PAUSED:
            if (IsKeyPressed(KEY_P) || IsKeyPressed(KEY_SPACE))
                state = STATE_PLAY;
            else if (IsKeyPressed(KEY_ESCAPE))
                state = STATE_TITLE;
            break;
        case STATE_GAMEOVER:
            if (IsKeyPressed(KEY_SPACE)) {
                lives = 3;
                score = 0;
                current_level = 0;
                LoadLevel(current_level, levels);
                state = STATE_PLAY;
            }
            break;
        }

        BeginDrawing();
        ClearBackground(EGA_PALETTE[0]);

        switch (state) {
        case STATE_TITLE:
            DrawTitleScreen();
            break;
        case STATE_INFO:
            DrawTextCenteredMedium("PARANOID", 30, EGA_PALETTE[12]);
            DrawTextCenteredSmall("BREAK ALL THE BRICKS TO ADVANCE", 80, EGA_PALETTE[15]);
            DrawTextCenteredSmall("CONTROLS", 110, EGA_PALETTE[14]);
            DrawTextEGA("LEFT/RIGHT - MOVE PADDLE", 180, 130, EGA_PALETTE[7]);
            DrawTextEGA("SPACE      - LAUNCH/FIRE LASER", 180, 145, EGA_PALETTE[7]);
            DrawTextEGA("P          - PAUSE", 180, 160, EGA_PALETTE[7]);
            DrawTextEGA("ESC        - RETURN TO TITLE", 180, 175, EGA_PALETTE[7]);
            DrawTextEGA("F10        - QUIT", 180, 190, EGA_PALETTE[7]);
            DrawTextCenteredSmall("COLLECT B-O-N-U-S LETTERS IN ORDER FOR 1000 POINTS", 240, EGA_PALETTE[10]);
            DrawTextCenteredSmall("PRESS SPACE TO RETURN", 300, EGA_PALETTE[8]);
            break;
        case STATE_PLAY:
            DrawPlay();
            break;
        case STATE_PAUSED:
            DrawPlay();
            DrawRectangle(0, 160, 640, 30, (Color) { 0, 0, 0, 200 });
            DrawTextCenteredMedium("PAUSED", 165, EGA_PALETTE[14]);
            break;
        case STATE_GAMEOVER:
            DrawTextEGA("GAME OVER", 280, 150, EGA_PALETTE[12]);
            DrawTextEGA("PRESS SPACE", 260, 200, EGA_PALETTE[7]);
            break;
        }
        EndDrawing();
    }
    CloseAudioDevice();
    CloseWindow();
    return 0;
}
