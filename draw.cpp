#include "draw.h"
#include "game.h"

#include <stdio.h>
#include <string.h>

const Color EGA_PALETTE[16] = {
    { 0, 0, 0, 255 }, { 0, 0, 170, 255 }, { 0, 170, 0, 255 }, { 0, 170, 170, 255 },
    { 170, 0, 0, 255 }, { 170, 0, 170, 255 }, { 170, 85, 0, 255 }, { 170, 170, 170, 255 },
    { 85, 85, 85, 255 }, { 85, 85, 255, 255 }, { 85, 255, 85, 255 }, { 85, 255, 255, 255 },
    { 255, 85, 85, 255 }, { 255, 85, 255, 255 }, { 255, 255, 85, 255 }, { 255, 255, 255, 255 }
};

Texture2D tex_digits[DIGIT_COUNT]; // Bitmaps section 1
Texture2D tex_bricks[BRICK_COUNT]; // Bitmaps section 2
Texture2D tex_sprites; // Bitmaps section 3
Texture2D tex_font_small[FONT_SMALL_CHARS];
Texture2D tex_font_medium[FONT_MED_CHARS];
Texture2D tex_font_large[FONT_LARGE_CHARS];

// Individual 16x12 sprites extracted from section 3
constexpr int ICON_FRAME_COUNT = ICON_SHEET_H / ICON_FRAME_H; // 49
Texture2D tex_icon_frames[ICON_FRAME_COUNT];

// Sprite in the icon sheet for each icon frame. The original's frame numbers
// are byte offsets into a pointer table (0xba9) to sprites kept in video
// memory 24 bytes apart, in sheet order.
static const uint8_t ICON_SPRITE[68] = {
    0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 15, 16, 16, 17, 17, 18, 18,
    19, 19, 20, 20, 21, 22, 23, 24, 25, 25, 26, 26, 27, 27, 28, 29, 30, 31, 32, 31, 30,
    29, 33, 34, 35, 36, 37, 38, 39, 38, 37, 40, 41, 42, 43, 42, 41, 44, 45, 46, 45, 44,
    47, 48, 47
};

// The flash colour: brick sprite 0x20 (5b26 -> 5a1f).
constexpr int FLASH_BRICK = 0x20;

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
    // 4516: lowercase letters are the small font's capitals, 6 px lower.
    for (int i = 0; text[i] != '\0'; i++) {
        char c = text[i];
        if (c >= 'a' && c <= 'z')
            DrawTexture(tex_font_small[c - 0x40], x, y + 6, tint);
        else if (c >= 0x20 && c <= 0x5F)
            DrawTexture(tex_font_medium[c - 0x20], x, y, tint);
        x += FONT_MED_W;
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

void DrawTextEGALarge(const char* text, int x, int y, Color tint)
{
    // FONTS.PAR section 3 is a set of title letters, not an ASCII font.
    constexpr char glyphs[] = "BESTALOUNCRPID";
    for (int i = 0; text[i]; i++) {
        if (text[i] == ' ') {
            x += 16;
            continue;
        }
        const char* glyph = strchr(glyphs, text[i]);
        if (glyph)
            DrawTexture(tex_font_large[glyph - glyphs], x, y, tint);
        x += FONT_LARGE_W;
    }
}

// Balls (564a): the 8x6 sprite at 0xa53, top-left at (x, y), rows below
// y = 337 cut off.
static void DrawBalls()
{
    static const struct {
        int left, width;
    } ball_rows[6] = { { 2, 4 }, { 1, 6 }, { 0, 8 }, { 0, 8 }, { 1, 6 }, { 2, 4 } };
    for (uint16_t i = addr::BALLS; i < addr::BALLS + 16 * 16; i += 16) {
        if (!(orig.b(i + BALL_FLAGS) & BALL_ACTIVE))
            continue;
        int x = int16_t(orig.w(i + BALL_X)), y = int16_t(orig.w(i + BALL_Y));
        for (int row = 0; row < 6 && y + row <= 337; row++)
            DrawRectangle(x + ball_rows[row].left, y + row, ball_rows[row].width, 1, WHITE);
    }
}

// Lines with inclusive ends, as the original's 419c and 4274 draw them.
static void HLine(int x1, int x2, int y, int colour)
{
    DrawRectangle(x1, y, x2 - x1 + 1, 1, EGA_PALETTE[colour]);
}

static void VLine(int y1, int y2, int x, int colour)
{
    DrawRectangle(x, y1, 1, y2 - y1 + 1, EGA_PALETTE[colour]);
}

// 42f2: raised grey box; white top and right edges, dark grey left and bottom.
void DrawRaisedBox(int x1, int y1, int x2, int y2)
{
    if (y1 + 2 <= y2 - 2)
        DrawRectangle(x1 + 2, y1 + 2, x2 - x1 - 3, y2 - y1 - 3, EGA_PALETTE[7]);
    HLine(x1, x2, y1, 15);
    HLine(x1 + 1, x2, y1 + 1, 15);
    VLine(y1, y2, x2, 15);
    VLine(y1, y2 - 1, x2 - 1, 15);
    VLine(y1 + 1, y2, x1, 8);
    VLine(y1 + 2, y2, x1 + 1, 8);
    HLine(x1, x2 - 1, y2, 8);
    HLine(x1, x2 - 2, y2 - 1, 8);
}

// 4372: sunken black box (x1, y1)-(x2, y2) with a 2-px edge outside it:
// dark grey top and right, white bottom and left.
void DrawSunkenBox(int x1, int y1, int x2, int y2)
{
    DrawRectangle(x1, y1, x2 - x1 + 1, y2 - y1 + 1, EGA_PALETTE[0]);
    HLine(x1, x2 + 2, y1 - 1, 8);
    HLine(x1 - 1, x2 + 2, y1 - 2, 8);
    VLine(y1 - 2, y2, x2 + 1, 8);
    VLine(y1 - 2, y2 + 1, x2 + 2, 8);
    HLine(x1 - 2, x2 + 1, y2 + 1, 15);
    HLine(x1 - 2, x2 + 2, y2 + 2, 15);
    VLine(y1 - 2, y2, x1 - 2, 15);
    VLine(y1 - 1, y2, x1 - 1, 15);
}

namespace {

// Where 44ac puts a message of `lines` lines `width` characters wide.
struct MessageLayout {
    int col, text_y; // first character (8-px column) and top line
    int x1, y1, x2, y2; // the box (4446)
    int mid; // the box opens from here
};

MessageLayout LayoutMessage(int width, int lines, bool over_playfield)
{
    MessageLayout m;
    const int h = lines * 14;
    m.text_y = (350 - h) / 2;
    m.col = (80 - width) / 2 - (over_playfield ? 10 : 0);
    m.x1 = m.col * 8 - 18;
    m.x2 = (m.col + width) * 8 + 16;
    m.y1 = m.text_y - 12;
    m.y2 = m.text_y + h + 13;
    m.mid = (m.y1 + m.y2) / 2;
    return m;
}

} // namespace

int MessageOpenTicks(int lines)
{
    MessageLayout m = LayoutMessage(0, lines, false);
    return m.mid - m.y1;
}

void DrawMessage(const char* const* lines, int count, int width, bool over_playfield, int step)
{
    // 43e4 opens the box from the middle, one step per tick: 12 steps of the
    // raised box alone, then with the sunken inner box, until full size.
    if (step <= 0)
        return; // only the cleared screen yet
    MessageLayout m = LayoutMessage(width, count, over_playfield);
    const int open_ticks = m.mid - m.y1;
    const int k = step < open_ticks ? step : open_ticks;
    const int top = k == open_ticks ? m.y1 : m.mid - k;
    const int bottom = k == open_ticks ? m.y2 : m.mid + 1 + k;
    DrawRaisedBox(m.x1, top, m.x2, bottom);
    if (k > 12)
        DrawSunkenBox(m.x1 + 16, top + 12, m.x2 - 16, bottom - 12);
    // 44ac draws the text on the next tick, in colour 15.
    if (step <= open_ticks)
        return;
    for (int i = 0; i < count; i++)
        DrawTextEGAMedium(lines[i], m.col * 8, m.text_y + i * 14, EGA_PALETTE[15]);
}

void DrawLevelIntro(int level, int step)
{
    // 382c: the message at 0x9b2 with the level number, over the whole screen.
    char text[16];
    snprintf(text, sizeof(text), "   Level %02d", level);
    const char* lines[3] = { "", text, "" };
    DrawMessage(lines, 3, 14, false, step);
}

void DrawGameOver(int step)
{
    // 3ab5: the message at 0x8c0, over the playfield.
    const char* lines[3] = { "", "   Game  Over   ", "" };
    DrawMessage(lines, 3, 16, true, step);
}

void DrawEnding(int step)
{
    // 3caf: the message at 0x8d7, over the playfield. Its ninth line runs
    // into the next message's data and is the byte 0x0e, which 4516 doesn't
    // draw.
    const char* lines[ENDING_LINES] = {
        "",
        "   Congratulations - you have completed",
        "   all thirty levels.  Register now for",
        "   another thirty plus a level designer",
        "   to create your own.     See the file",
        "   Paranoid.DOC for more details.",
        "",
        "   Press a key ...",
        "",
    };
    DrawMessage(lines, ENDING_LINES, 42, true, step);
}

void DrawNewHighScore(int step)
{
    // 4882: the message at 0x597, over the playfield and the last message.
    const char* lines[7] = { "", " Congratulations !!", "", "   New High Score", "", " Congratulations !!", "" };
    DrawMessage(lines, 7, 20, true, step);
}

// 3ec7: digits up to 0xff in the medium font, leading zeros as spaces (the
// last digit is always drawn).
static void DrawDigits(uint16_t a, int col, int y, Color colour)
{
    bool leading = true;
    for (; orig.b(a) != 0xff; a++, col++) {
        const uint8_t digit = orig.b(a);
        if (digit != 0 || orig.b(uint16_t(a + 1)) == 0xff)
            leading = false;
        if (leading)
            continue;
        const char text[2] = { char('0' + digit), 0 };
        DrawTextEGAMedium(text, col * 8, y, colour);
    }
}

void DrawHighScoreTable()
{
    // 4a3a: the screen (4b36), the title (4b7b) and the table (4a53).
    DrawRectangle(0, 0, 640, 350, EGA_PALETTE[0]);
    DrawRaisedBox(0, 0, 639, 349);
    DrawSunkenBox(16, 12, 623, 337);
    DrawRaisedBox(48, 38, 591, 85);
    DrawRaisedBox(152, 112, 487, 311);
    // "BEST BALL BOUNCERS": large-font glyphs from 0x700, 11 = space, colour 4,
    // from col 13 at y = 44, 3 cols apart.
    static const uint8_t title[] = { 0, 1, 2, 3, 11, 0, 4, 5, 5, 11, 0, 6, 7, 8, 9, 1, 10, 2 };
    for (int i = 0; i < (int)sizeof(title); i++) {
        if (title[i] != 11)
            DrawTexture(tex_font_large[title[i]], (13 + 3 * i) * 8, 44, EGA_PALETTE[4]);
    }
    DrawTextEGAMedium("Name               Level     Score", 23 * 8, 128, EGA_PALETTE[1]);
    for (int row = 0; row < 10; row++) {
        const int y = 156 + row * 14;
        char name[17] = {};
        for (int i = 0; i < 16 && orig.b(uint16_t(addr::HISCORE_NAMES + row * 16 + i)); i++)
            name[i] = char(orig.b(uint16_t(addr::HISCORE_NAMES + row * 16 + i)));
        DrawTextEGAMedium(name, 23 * 8, y, EGA_PALETTE[0]);
        DrawDigits(uint16_t(addr::HISCORE_LEVELS + row * 3), 44, y, EGA_PALETTE[0]);
        DrawDigits(uint16_t(addr::HISCORE_SCORES + row * 7), 51, y, EGA_PALETTE[0]);
    }
}

void DrawHighScoreScreen(bool balls)
{
    DrawHighScoreTable();
    if (balls)
        DrawBalls();
}

void DrawNameInput(int rank)
{
    // 48c0 / 4f7f: the typed characters in yellow on the rank's row, and the
    // cursor, an 8-px yellow line under the next character's cell.
    const int y = 142 + rank * 14;
    const uint8_t max = orig.b(addr::NAME_INPUT), length = orig.b(addr::NAME_INPUT + 1);
    char name[17] = {};
    for (int i = 0; i < length && i < 16; i++)
        name[i] = char(orig.b(uint16_t(addr::NAME_INPUT + 2 + i)));
    DrawTextEGAMedium(name, 23 * 8, y, EGA_PALETTE[14]);
    const int cursor = 23 + (length < max ? length : max - 1);
    DrawRectangle(cursor * 8, y + 14, 8, 1, EGA_PALETTE[14]);
}

void DrawTitleScreen(void)
{
    DrawRectangle(0, 0, 640, 280, EGA_PALETTE[7]);
    DrawRectangle(16, 12, 608, 256, BLACK);
    DrawRectangle(0, 0, 640, 1, WHITE);
    DrawRectangle(0, 0, 1, 280, WHITE);
    DrawRectangle(639, 0, 1, 280, EGA_PALETTE[8]);
    DrawRectangle(0, 279, 640, 1, EGA_PALETTE[8]);
    DrawRectangle(15, 11, 610, 1, EGA_PALETTE[8]);
    DrawRectangle(15, 11, 1, 258, EGA_PALETTE[8]);
    DrawRectangle(15, 268, 610, 1, WHITE);
    DrawRectangle(624, 11, 1, 258, WHITE);

    DrawRectangle(182, 90, 276, 94, EGA_PALETTE[7]);
    DrawRectangle(182, 90, 276, 1, WHITE);
    DrawRectangle(182, 90, 1, 94, WHITE);
    DrawRectangle(457, 90, 1, 94, EGA_PALETTE[8]);
    DrawRectangle(182, 183, 276, 1, EGA_PALETTE[8]);
    DrawRectangle(198, 102, 244, 70, EGA_PALETTE[7]);
    DrawTextEGALarge("PARANOID", 224, 119, EGA_PALETTE[1]);

    DrawRectangle(220, 284, 200, 40, EGA_PALETTE[7]);
    DrawRectangle(220, 284, 200, 1, WHITE);
    DrawRectangle(220, 284, 1, 40, WHITE);
    DrawRectangle(419, 284, 1, 40, EGA_PALETTE[8]);
    DrawRectangle(220, 323, 200, 1, EGA_PALETTE[8]);
    DrawRectangle(232, 294, 176, 20, BLACK);
    DrawTextEGAMedium("BIT BUCKET BROTHERS", 248, 297, EGA_PALETTE[10]);

    DrawTextEGAMedium("EVALUATION COPY", 0, 322, WHITE);
    DrawTextEGAMedium("VERSION 1.8", 528, 290, WHITE);
    DrawTextEGAMedium("PRESS SPACE TO PLAY", 472, 320, WHITE);
    DrawTextEGA("F1 INFORMATION  F10 QUIT", 224, 335, EGA_PALETTE[7]);
}

void LoadGameTextures(const BitMaps& bitmaps, const Fonts& fonts)
{
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
    for (int i = 0; i < FONT_LARGE_CHARS; i++)
        tex_font_large[i] = CreateTextureFromBitmask(&fonts.font_large[i][0][0], FONT_LARGE_W, FONT_LARGE_H, WHITE);
}

void DrawPlay(const PlayView& view)
{
    // The original playfield occupies the left 480 pixels, with a separate
    // gray control panel on the right (rather than a centered playfield).
    DrawRectangle(0, 0, 480, 350, EGA_PALETTE[7]);
    DrawRectangle(PLAY_LEFT, BRICK_TOP, PLAY_COLS * BRICK_W, 326, BLACK);
    DrawRectangle(0, 0, 480, 1, WHITE);
    DrawRectangle(0, 0, 1, 350, WHITE);
    DrawRectangle(479, 0, 1, 350, EGA_PALETTE[8]);
    DrawRectangle(0, 349, 480, 1, EGA_PALETTE[8]);
    DrawRectangle(15, 11, 450, 1, EGA_PALETTE[8]);
    DrawRectangle(15, 11, 1, 328, EGA_PALETTE[8]);
    DrawRectangle(15, 338, 450, 1, WHITE);
    DrawRectangle(464, 11, 1, 328, WHITE);

    DrawRectangle(496, 0, 144, 350, EGA_PALETTE[7]);
    DrawRectangle(496, 0, 1, 350, WHITE);
    DrawRectangle(639, 0, 1, 350, EGA_PALETTE[8]);
    for (int y = 20; y <= 176; y += 52) {
        DrawRectangle(524, y, 88, 44, EGA_PALETTE[7]);
        DrawRectangle(524, y, 88, 1, WHITE);
        DrawRectangle(524, y, 1, 44, WHITE);
        DrawRectangle(611, y, 1, 44, EGA_PALETTE[8]);
        DrawRectangle(524, y + 43, 88, 1, EGA_PALETTE[8]);
        DrawRectangle(540, y + 14, 56, 18, BLACK);
        DrawRectangle(539, y + 13, 58, 1, WHITE);
        DrawRectangle(539, y + 13, 1, 20, WHITE);
    }

    DrawTextEGALarge("PARANOID", 144, 256, EGA_PALETTE[8]);

    // Bricks (5a1f): column c at x = 16 + 32c, row r at y = 12 + 12r.
    for (int c = 0; c < PLAY_COLS; c++) {
        for (int r = 0; r < PLAY_ROWS; r++) {
            uint8_t type = orig.b(uint16_t(addr::BRICKS + c * PLAY_ROWS + r));
            if (type > 0 && type < BRICK_COUNT)
                DrawTexture(tex_bricks[type], PLAY_LEFT + c * BRICK_W, BRICK_TOP + r * BRICK_H, WHITE);
        }
    }

    // The page on screen is the one drawn last, before the flip.
    const bool shown_page = orig.b(addr::PAGE) == 0;

    // Flashing bricks (5b26): white on a page from the tick that page first
    // draws it until the tick it draws the brick again.
    const uint8_t flash_mask = shown_page ? 0x80 : 0x40;
    for (uint16_t e = addr::FLASH; e < addr::FLASH_COUNT; e += 3) {
        if (orig.b(e + 2) & flash_mask)
            DrawTexture(tex_bricks[FLASH_BRICK], PLAY_LEFT + orig.b(e) * BRICK_W, BRICK_TOP + orig.b(e + 1) * BRICK_H, WHITE);
    }

    // Icons (5919): 16x12 at (x*8, y), cut off below y = 337.
    for (uint16_t i = addr::ICONS; i < addr::ICONS + 5 * 9; i += 9) {
        if (!view.icons || !orig.b(i + ICON_ACTIVE))
            continue;
        int x = orig.w(i + ICON_X) * 8, y = orig.w(i + ICON_Y);
        int h = 0x152 - y < ICON_FRAME_H ? 0x152 - y : ICON_FRAME_H;
        int frame = orig.b(i + ICON_FRAME) / 2;
        if (h > 0 && frame < 68)
            DrawTextureRec(tex_icon_frames[ICON_SPRITE[frame]], { 0, 0, (float)ICON_SHEET_W, (float)h }, { (float)x, (float)y }, WHITE);
    }

    // Barrier line (5be5): 1 px at y = 335 from x = 15 to 463, while the shown
    // page has it drawn.
    if (orig.b(addr::BARRIER_DRAWN) & (shown_page ? 2 : 1))
        DrawRectangle(15, 335, 463 - 15 + 1, 1, EGA_PALETTE[15]);

    if (view.movers) {
        // The DOS bat is four EGA scanlines tall, from y = 329. Its first and
        // last lines leave one pixel clear at each end; the middle two span
        // its full width.
        int bat_x = orig.w(addr::BAT_X);
        int bat_w = orig.b(addr::BAT_W) * 8;
        DrawRectangle(bat_x + 1, 329, bat_w - 2, 1, WHITE);
        DrawRectangle(bat_x, 330, bat_w, 2, WHITE);
        DrawRectangle(bat_x + 1, 332, bat_w - 2, 1, WHITE);

        // Laser shots (5e23): 3x8 yellow, top-left at (x, y), cut off above the
        // playfield.
        for (uint16_t i = addr::LASERS; i < addr::LASERS + 4 * 16; i += 16) {
            if (!(orig.w(i + LASER_ACTIVE) & 1))
                continue;
            int x = orig.w(i + LASER_X), y = orig.w(i + LASER_Y);
            int top = y < BRICK_TOP ? BRICK_TOP : y;
            if (y + 8 > top)
                DrawRectangle(x, top, 3, y + 8 - top, EGA_PALETTE[14]);
        }

        DrawBalls();
    }

    DrawTextEGA("SCORE", 548, 23, BLACK);
    DrawTextEGA("LEVEL", 548, 75, BLACK);
    DrawTextEGA("BALLS", 548, 127, BLACK);
    DrawTextEGA("BONUS", 548, 179, BLACK);
    auto draw_panel_number = [](int value, int y) {
        char digits[32];
        snprintf(digits, sizeof(digits), "%d", value);
        int length = strlen(digits);
        int x = 592 - length * DIGIT_W;
        for (int i = 0; i < length; i++)
            DrawTexture(tex_digits[digits[i] - '0' + 1], x + i * DIGIT_W, y, WHITE);
    };
    auto digits = [](uint16_t a, int n) {
        int value = 0;
        for (int i = 0; i < n; i++)
            value = value * 10 + orig.b(uint16_t(a + i));
        return value;
    };
    draw_panel_number(digits(addr::SCORE, 6), 38);
    draw_panel_number(digits(addr::LEVEL_DIGITS, 2), 90);
    draw_panel_number(digits(addr::LIVES_DIGITS, 2), 142);
    for (int b = 0; b < 5; b++) {
        char bonusChar[2] = { "BONUS"[b], '\0' };
        DrawTextEGA(bonusChar, 548 + b * 8, 194,
            (orig.b(addr::LETTERS) & (1 << b)) ? EGA_PALETTE[14] : WHITE);
    }

    DrawRectangle(526, 238, 86, 20, EGA_PALETTE[7]);
    DrawRectangle(526, 238, 86, 1, WHITE);
    DrawRectangle(526, 238, 1, 20, WHITE);
    DrawRectangle(611, 238, 1, 20, EGA_PALETTE[8]);
    DrawRectangle(526, 257, 86, 1, EGA_PALETTE[8]);
    DrawTextEGAMedium("PARANOID", 537, 241, EGA_PALETTE[1]);
    DrawTextEGAMedium("IS A", 552, 264, BLACK);
    DrawRectangle(518, 284, 98, 38, EGA_PALETTE[7]);
    DrawRectangle(518, 284, 98, 1, WHITE);
    DrawRectangle(518, 284, 1, 38, WHITE);
    DrawRectangle(615, 284, 1, 38, EGA_PALETTE[8]);
    DrawRectangle(518, 321, 98, 1, EGA_PALETTE[8]);
    DrawTextEGAMedium("BIT BUCKET", 527, 287, EGA_PALETTE[1]);
    DrawTextEGAMedium("BROTHERS", 531, 301, EGA_PALETTE[1]);
    DrawTextEGAMedium("PRODUCTION", 526, 329, BLACK);
}
