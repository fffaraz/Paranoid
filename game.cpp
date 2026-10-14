#include "game.h"

#include <raylib.h>

#include <math.h>
#include <string.h>

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

float powerup_anim_timer = 0.0f;
int powerup_anim_frame = 0;

GameState state = STATE_TITLE;
int current_level = 0;
int score = 0;
int lives = 3;
int bricks_remaining = 0;
int next_extra_life_score = 4000;

uint8_t grid[PLAY_ROWS][PLAY_COLS];
uint8_t grid_attrs[PLAY_ROWS][PLAY_COLS];

/* Ball speed parameters (matching ASM entity movement at 0xc16d)
 * Original uses integer dx/dy per iteration with no frame timing.
 * We scale to pixels/sec for 60fps delta-time movement.
 * Original dy ranges ~2..7, dx ~1..5.  We multiply by ~50 for px/sec. */
constexpr float BALL_INIT_DY = 150.0f; // initial vertical speed (px/sec)
constexpr float BALL_MAX_DY = 350.0f; // max vertical speed (px/sec), ~7 in original
constexpr float BALL_INIT_DX = 100.0f; // base horizontal component

Paddle paddle;
Ball balls[MAX_BALLS];

PowerUp powerups[MAX_POWERUPS];

// Active powerup state
bool sticky_active = false;
bool barrier_active = false;
bool through_active = false;
bool laser_active = false;
float laser_cooldown = 0.0f;
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
float life_start_delay = 0.0f;
// The original waits for 120 vertical retraces after drawing the new bat
// and ball (FUN_0000_3610 / FUN_0000_3b4c).
constexpr float LIFE_START_DELAY = 120.0f / 70.0f;
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

static void AddScore(int points)
{
    score += points;
    // The original awards another ball at each 4000-point threshold.
    while (score >= next_extra_life_score) {
        lives++;
        next_extra_life_score += 4000;
    }
}

static void HitBrick(int r, int c, int offsetX, int offsetY)
{
    uint8_t type = grid[r][c];
    if (type == 0x1C)
        return;

    AddScore((type < sizeof(BRICK_SCORE)) ? BRICK_SCORE[type] : 10);

    if (IsLetterBrick(type)) {
        uint8_t letter_bit = 1 << (type - 0x0A);
        if ((letters_collected & letter_bit) == 0) {
            if (letter_bit != letters_next)
                letters_in_order = false;
            else
                letters_next <<= 1;
            letters_collected |= letter_bit;
            if (letters_collected == 0x1F) {
                AddScore(letters_in_order ? 500 : 200);
            }
        }
    }

    if (IsMultiHitBrick(type)) {
        grid[r][c] = type + 1;
    } else {
        grid[r][c] = 0;
        bricks_remaining--;
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
    b->through_bricks = through_active;
    through_active = false;
}

void AttachBallToPaddle(Ball* b)
{
    b->sticky_offset = paddle.w / 2;
    b->x = paddle.x + b->sticky_offset;
    b->y = paddle.y - 4;
    b->dx = 0;
    b->dy = 0;
    b->active = true;
    b->through_bricks = false;
}

void StartLife(void)
{
    ResetPowerups();
    memset(powerups, 0, sizeof(powerups));
    memset(balls, 0, sizeof(balls));

    // FUN_0000_3904 centers the 48-pixel bat; FUN_0000_38e0 creates
    // the ball at (237, 304), moving right and upward at equal speeds.
    paddle.x = 216;
    Ball* b = &balls[0];
    b->x = 237;
    b->y = 304;
    b->dx = BALL_INIT_DX;
    b->dy = -BALL_INIT_DX;
    b->active = true;

    speed_timer = 0.0f;
    life_start_delay = LIFE_START_DELAY;
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
    paddle.h = 4;
    paddle.x = (PLAY_LEFT + PLAY_RIGHT - paddle.w) / 2;
    paddle.y = 329;
    paddle.speed = 300;

    StartLife();

    letters_collected = 0;
    letters_next = 1;
    letters_in_order = true;
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

    // As in the DOS game, the new ball and centered bat are visible briefly
    // before movement resumes. A key press can end the wait early.
    if (life_start_delay > 0.0f) {
        life_start_delay -= dt;
        if (GetKeyPressed() == 0 && life_start_delay > 0.0f)
            return;
        life_start_delay = 0.0f;
    }

    int offsetX = PLAY_LEFT;
    int rightEdge = PLAY_RIGHT;
    int offsetY = BRICK_TOP;

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
            play_sound(sounds, sounds.snd_top_bounce, 2);
        else if (sideBounce)
            play_sound(sounds, sounds.snd_bounce, 2);

        // The barrier catches the ball at y=328; an uncaught ball is lost
        // once its center passes y=337 (ASM FUN_0000_2cd3 / 2d0a).
        if (barrier_active && b->y > 328) {
            b->y = 328;
            b->dy = -fabsf(b->dy);
            barrier_active = false;
            play_sound(sounds, sounds.snd_barrier, 2);
            continue;
        } else if (b->y > 337) {
            b->active = false;
            if (CountBalls() == 0) {
                lives--;
                ResetPowerups();
                if (lives <= 0) {
                    play_sound(sounds, sounds.snd_game_over, 10);
                    state = STATE_GAMEOVER;
                    return;
                }
                StartLife();
                return;
            }
            continue;
        }

        // Paddle collision
        if (CheckCollisionCircleRec((Vector2) { b->x, b->y }, 4, pRect)) {
            b->y = paddle.y - 4;
            if (sticky_active) {
                // Stick to paddle
                b->sticky_offset = b->x - paddle.x;
                b->dx = 0;
                b->dy = 0;
                play_sound(sounds, sounds.snd_paddle_catch, 4);
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
            b->through_bricks = through_active;
            through_active = false;

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

            play_sound(sounds, sounds.snd_paddle, 3);
        }

        /* Brick collision.
         * With the through flag, the ball passes through breakable bricks
         * destroying every one in its path this frame, but still bounces
         * off indestructible bricks. Without it, we pick the
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
                    play_sound(sounds, sounds.snd_bounce, 2);
                    if (!b->through_bricks)
                        goto next_ball;
                    continue;
                }

                HitBrick(r, c, offsetX, offsetY);
                play_sound(sounds, sounds.snd_paddle, 3);

                if (!b->through_bricks) {
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
            play_sound(sounds, sounds.snd_laser, 2);
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
                        play_sound(sounds, sounds.snd_laser_hit, 3);
                    } else {
                        play_sound(sounds, sounds.snd_bounce, 2);
                    }
                    goto next_laser;
                }
            }
        }
    next_laser:;
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
            if (powerups[pi].type >= ICON_ENLARGE && powerups[pi].type <= ICON_THROUGH)
                play_sound(sounds, sounds.snd_powerup[powerups[pi].type],
                    powerups[pi].type == ICON_SKIP ? 9 : 8);
            switch (powerups[pi].type) {
            case ICON_ENLARGE: {
                float oldW = paddle.w;
                paddle.w += 16;
                if (paddle.w > 64)
                    paddle.w = 64;
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
                if (paddle.w < 32)
                    paddle.w = 32;
                paddle.x -= (paddle.w - oldW) / 2;
                if (paddle.x < offsetX)
                    paddle.x = offsetX;
                if (paddle.x > rightEdge - paddle.w)
                    paddle.x = rightEdge - paddle.w;
                break;
            }
            case ICON_STICKY:
                sticky_active = true;
                laser_active = false;
                break;
            case ICON_500PTS:
                AddScore(500);
                break;
            case ICON_LASER:
                laser_active = true;
                sticky_active = false;
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
                current_level++;
                if (current_level == LEVEL_COUNT)
                    state = STATE_WIN;
                else
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
                break;
            }
        } else if (powerups[pi].y > 350) {
            powerups[pi].active = 0;
        }
    }

    // Win condition
    if (bricks_remaining <= 0) {
        play_sound(sounds, sounds.snd_level_complete, 11);
        current_level++;
        if (current_level == LEVEL_COUNT)
            state = STATE_WIN;
        else
            LoadLevel(current_level, levels);
    }
}
