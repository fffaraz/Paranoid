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
static void DrawBalls(const OrigState& s)
{
    static const struct {
        int left, width;
    } ball_rows[6] = { { 2, 4 }, { 1, 6 }, { 0, 8 }, { 0, 8 }, { 1, 6 }, { 2, 4 } };
    for (uint16_t i = addr::BALLS; i < addr::BALLS + 16 * 16; i += 16) {
        if (!(s.b(i + BALL_FLAGS) & BALL_ACTIVE))
            continue;
        int x = int16_t(s.w(i + BALL_X)), y = int16_t(s.w(i + BALL_Y));
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
        DrawBalls(orig);
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

// The F1 pages' texts (lists at 0xd84, 0x110d, 0x16b1, 0x193a).
static const char* const INFO_PAGE1[] = {
    "  The object of the game Paranoid is to remove all of the",
    "bricks from the top of the screen.  To accomplish this",
    "mammoth task, you are equipped with a small but perfectly",
    "formed bat with which you must hit the ball at the bricks.",
    "",
    "  When the ball collides with a brick, you will notice three",
    "or maybe four things.  First, an annoying sound effect,",
    "second, the brick flashes white and disappears, third, your",
    "score goes up, by different amounts for different sorts of",
    "brick, and fourth, a brilliantly animated icon might float",
    "majestically down to your awaiting bat.  If you catch one of",
    "these, strange and wondrous things happen....",
    "",
    "  To control your bat, use the left and right shift keys to",
    "move left and right.  The spacebar is used to activate",
    "special powers which the icons bestow on your bat - more on",
    "that later.  If, however, you should miss a ball, your bat",
    "loses any powers it might have had.",
};
static const char* const INFO_PAGE2[] = {
    "  Some of the bricks have letters written on them, and when",
    "you hit one of these, the same letter lights up in the Bonus",
    "panel to the right of the play area.  When all five letters",
    "are lit, a bonus will be added to your score - you will get",
    "more points if you collect the letters in the correct order.",
    "The other three panels, Score, Level and Balls, need no",
    "explanation.",
    "",
    "  During the game, the ball speeds up to stop things",
    "becoming too easy.  Each ball starts off at a nice dawdling",
    "rate, but then gets faster the longer it stays in play.",
    "",
    "",
    "  Press F10 at any time to exit to Dos, and Escape to return",
    "to the demo from a game.",
};
static const char* const INFO_ICONS1[] = {
    "This handy icon increases the size of your bat by a",
    "mighty third - very convenient for those hard-to-reach",
    "shots.",
    "",
    "Catch this icon, and you will find that your bat has",
    "shrunk by a third.  Not a particularly useful icon.",
    "",
    "If you succeed in capturing this icon, your bat will",
    "be able to catch the ball.  When the ball is stuck to",
    "your bat, press the spacebar to release it.",
    "",
    "Get this icon to add an incredible 500 points to your",
    "score.",
    "",
    "If you manage to catch this icon, you will be able to",
    "obliterate bricks with some heavy artillery - use the",
    "spacebar to fire.",
    "",
    "This icon splits the next two balls that hit your bat in",
    "two.",
};
static const char* const INFO_ICONS2[] = {
    "To increase your stock of balls, catch this icon and you",
    "will gain an extra one.",
    "",
    "When you catch this icon, a thin line will appear at the",
    "bottom of the screen.  If you miss a ball, it will",
    "bounce off this barrier - but only once.",
    "",
    "If the current level is too tricky for you, catch this",
    "icon to be whisked away to the next one.",
    "",
    "The ball will speed up if you are unfortunate enough to",
    "catch this icon.",
    "",
    "This icon will slow all the balls down to their original",
    "ambling pace.",
    "",
    "A very potent icon - instead of bouncing off the bricks,",
    "for one hit the ball will travel straight through them.",
};

// 4bc4: the page, 4beb / 4c87 / 4cf2: heading, body and footer.
void DrawInfoPage(int page)
{
    DrawRaisedBox(0, 0, 639, 349);
    DrawSunkenBox(28, 21, 611, 328);
    const Color body = EGA_PALETTE[10], dark = EGA_PALETTE[0];
    DrawTextEGAMedium("Paranoid - information", 29 * 8, 3, dark);
    auto list = [&](const char* const* lines, int count, int col, int y, int empty_extra) {
        for (int i = 0; i < count; i++) {
            if (!lines[i][0])
                y += empty_extra;
            DrawTextEGAMedium(lines[i], col * 8, y, body);
            y += 14;
        }
    };
    auto icons = [] {
        // 4e5b: the 6 icons through 5919, as in play.
        for (int i = 0; i < 6; i++) {
            const uint16_t slot = uint16_t(addr::INFO_ICONS + i * 7);
            const int frame = orig.b(slot + INFO_ICON_FRAME) / 2;
            if (frame < 68)
                DrawTexture(tex_icon_frames[ICON_SPRITE[frame]], orig.w(slot + INFO_ICON_X) * 8, orig.w(slot + INFO_ICON_Y), WHITE);
        }
    };
    switch (page) {
    case 0:
        list(INFO_PAGE1, int(sizeof(INFO_PAGE1) / sizeof(*INFO_PAGE1)), 10, 33, 0);
        DrawTextEGAMedium("Press a key for the next page", 25 * 8, 332, dark);
        break;
    case 1:
        list(INFO_PAGE2, int(sizeof(INFO_PAGE2) / sizeof(*INFO_PAGE2)), 10, 33, 0);
        DrawTextEGAMedium("Press a key for brick descriptions", 23 * 8, 332, dark);
        break;
    case 2: {
        // Brick types 1-31 at (col, y) from 0x141f; 5 and 7 aren't shown.
        static const int16_t places[31][2] = {
            { 10, 168 }, { 15, 168 }, { 20, 168 }, { 10, 80 }, { -1, -1 }, { 10, 94 }, { -1, -1 }, { 10, 212 },
            { 30, 36 }, { 10, 272 }, { 15, 279 }, { 20, 286 }, { 25, 293 }, { 30, 300 }, { 30, 50 }, { 10, 50 },
            { 15, 50 }, { 20, 50 }, { 25, 50 }, { 10, 124 }, { 15, 129 }, { 20, 133 }, { 25, 138 }, { 10, 36 },
            { 15, 36 }, { 20, 36 }, { 25, 36 }, { 10, 242 }, { 10, 182 }, { 15, 182 }, { 20, 182 }
        };
        for (int type = 1; type <= 31; type++) {
            if (places[type - 1][0] >= 0)
                DrawTexture(tex_bricks[type], places[type - 1][0] * 8, places[type - 1][1], WHITE);
        }
        DrawTextEGAMedium("Press a key for icon descriptions", 23 * 8, 332, dark);
        // The texts at 0x149b.
        static const struct {
            int col, y;
            const char* text;
        } texts[] = {
            { 36, 34, "These are normal bricks - the top" },
            { 36, 48, "row score 10 each, the rest 15." },
            { 16, 78, "You need to hit these twice each - score 15 for the" },
            { 16, 92, "first hit, then 10 for the second." },
            { 31, 122, "Four hits are needed to remove this" },
            { 31, 136, "type, scoring 70 points in total." },
            { 26, 166, "The ones with pretty pictures on are worth" },
            { 26, 180, "20 points each." },
            { 16, 210, "This sort only gives you a paltry 5 points." },
            { 16, 240, "No amount of battering can demolish this sturdy block." },
            { 36, 270, "Collect these in the right order" },
            { 36, 284, "and score 500, otherwise only 200." },
            { 36, 298, "10 points for each one anyway." },
        };
        for (const auto& t : texts)
            DrawTextEGAMedium(t.text, t.col * 8, t.y, body);
        break;
    }
    case 3:
        DrawTextEGAMedium("Press a key for the next page", 25 * 8, 332, dark);
        list(INFO_ICONS1, int(sizeof(INFO_ICONS1) / sizeof(*INFO_ICONS1)), 14, 33, 0);
        icons();
        break;
    default:
        DrawTextEGAMedium("Press a key to return to the demo", 23 * 8, 332, dark);
        // An empty line here is 5 px taller (4d8f).
        list(INFO_ICONS2, int(sizeof(INFO_ICONS2) / sizeof(*INFO_ICONS2)), 14, 35, 5);
        icons();
        break;
    }
}

// 3da6: text in the small font, 7 rows of each 8x8 glyph, from pixel x.
static void DrawSmallText(const char* text, int x, int y, Color colour)
{
    for (; *text; text++, x += FONT_SMALL_W) {
        const char c = *text;
        if (c >= 0x20 && c <= 0x5f)
            DrawTextureRec(tex_font_small[c - 0x20], { 0, 0, (float)FONT_SMALL_W, 7 }, { (float)x, (float)y }, colour);
    }
}

// The title scroller's text, 0x3a5..0x522 in the COM file.
static const char SCROLL_TEXT[] = "* - * - * - * - * - * - * - * - * - * -   The Bit Bucket Brothers proudly present Paranoid   ...    Chief executive in charge of programming - Ben North   ...   Chief executive in charge of graphics - Tom North   ...   Program code production - Ben North   ...   Graphics design - Tom North   ...   Additional programming - Ben North   ...   Additional graphics - Tom North         ";

void DrawTitleScreen(int ticks)
{
    // 624e: the boxes; 6299: the PARANOID box, the large title (glyphs from
    // 0x550 at x = 229, y = 126, colour 1) and the texts; 6300: three lines
    // stored bit-inverted at 0x51de, the first two blank.
    DrawRectangle(0, 0, 640, 350, EGA_PALETTE[0]);
    DrawRaisedBox(0, 0, 639, 290);
    DrawSunkenBox(16, 12, 623, 278);
    DrawRaisedBox(208, 302, 431, 349);
    DrawSunkenBox(224, 314, 415, 337);
    DrawRaisedBox(182, 90, 457, 197);
    DrawRaisedBox(198, 102, 441, 185);
    static const uint8_t paranoid[8] = { 11, 4, 10, 4, 8, 6, 12, 13 };
    for (int i = 0; i < 8; i++)
        DrawTexture(tex_font_large[paranoid[i]], 229 + 24 * i, 126, EGA_PALETTE[1]);
    DrawSmallText("PRESS SPACE", 552, 333, EGA_PALETTE[15]);
    DrawSmallText("   TO START", 552, 342, EGA_PALETTE[15]);
    DrawSmallText(" VERSION 1.8", 544, 306, EGA_PALETTE[15]);
    DrawSmallText("EVALUATION COPY    ", 0, 342, EGA_PALETTE[15]);
    if (ticks < 1)
        return; // the balls and the scroller appear on the first tick
    DrawBalls(orig);
    // 633a / 6377: 20 characters at (240, 318) in colour 10, shifted left by
    // the scroller's pixel offset as it was before this tick moved it on.
    const int text_len = int(sizeof(SCROLL_TEXT)) - 1;
    int pos = orig.w(addr::SCROLL_POS) - addr::SCROLL_TEXT;
    int shift = orig.b(addr::SCROLL_SHIFT) - 2;
    if (shift < 0) {
        shift += 8;
        pos = (pos + text_len - 1) % text_len;
    }
    char line[22];
    for (int i = 0; i < 21; i++)
        line[i] = SCROLL_TEXT[(pos + i) % text_len];
    line[21] = 0;
    DrawTextEGAMedium(line, 240 - shift, 318, EGA_PALETTE[10]);
    // Only 20 columns are written; the rest of the box stays black.
    DrawRectangle(232, 318, 8, 14, EGA_PALETTE[0]);
    DrawRectangle(400, 318, 8, 14, EGA_PALETTE[0]);
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

// 3e8a: text in the medium font from 8-px column `col`. A byte >= 0x80 sets
// the colour to byte - 0x80; the colour carries over to the next string.
static void DrawCodedText(const char* text, int col, int y, int& colour)
{
    char run[64];
    int n = 0, run_col = col;
    for (const char* p = text;; p++) {
        const uint8_t c = uint8_t(*p);
        if (c == 0 || c >= 0x80) {
            run[n] = 0;
            DrawTextEGAMedium(run, run_col * 8, y, EGA_PALETTE[colour & 15]);
            if (c == 0)
                return;
            colour = c - 0x80;
            run_col += n;
            n = 0;
            continue;
        }
        if (n < 63)
            run[n++] = char(c);
    }
}

// The parts of the play screen (3f08) and the demo screen (3fde) that are
// the same: the raised frame round the playfield, the black playfield, the
// raised panel, and "PARANOID" across the playfield (483c: glyphs from
// 0x550 at x = 147, y = 255, 24 px apart, colour 8).
static void DrawFrame()
{
    DrawRaisedBox(0, 0, 479, 349);
    DrawSunkenBox(15, 11, 463, 337);
    DrawRaisedBox(496, 0, 639, 349);
    static const uint8_t paranoid[8] = { 11, 4, 10, 4, 8, 6, 12, 13 };
    for (int i = 0; i < 8; i++)
        DrawTexture(tex_font_large[paranoid[i]], 147 + 24 * i, 255, EGA_PALETTE[8]);
}

// 3f9a: "Paranoid is a Bit Bucket Brothers production" (boxes 0xb03, texts
// 0xb15).
static void DrawProductionBoxes()
{
    DrawRaisedBox(527, 238, 607, 260);
    DrawRaisedBox(519, 286, 615, 322);
    int colour = 0;
    DrawCodedText("\x81Paranoid", 67, 242, colour);
    DrawCodedText("Bit Bucket", 66, 290, colour);
    DrawCodedText("Brothers", 67, 304, colour);
    DrawCodedText("\x80is a", 69, 264, colour);
    DrawCodedText("production", 66, 326, colour);
}

// Bricks, flashes, icons, the barrier, the bat, laser shots and balls.
static void DrawPlayfield(const OrigState& s, const PlayView& view)
{
    // Bricks (5a1f): column c at x = 16 + 32c, row r at y = 12 + 12r.
    for (int c = 0; c < PLAY_COLS; c++) {
        for (int r = 0; r < PLAY_ROWS; r++) {
            uint8_t type = s.b(uint16_t(addr::BRICKS + c * PLAY_ROWS + r));
            if (type > 0 && type < BRICK_COUNT)
                DrawTexture(tex_bricks[type], PLAY_LEFT + c * BRICK_W, BRICK_TOP + r * BRICK_H, WHITE);
        }
    }

    // The page on screen is the one drawn last, before the flip.
    const bool shown_page = s.b(addr::PAGE) == 0;

    // Flashing bricks (5b26): white on a page from the tick that page first
    // draws it until the tick it draws the brick again.
    const uint8_t flash_mask = shown_page ? 0x80 : 0x40;
    for (uint16_t e = addr::FLASH; e < addr::FLASH_COUNT; e += 3) {
        if (s.b(e + 2) & flash_mask)
            DrawTexture(tex_bricks[FLASH_BRICK], PLAY_LEFT + s.b(e) * BRICK_W, BRICK_TOP + s.b(e + 1) * BRICK_H, WHITE);
    }

    // Icons (5919): 16x12 at (x*8, y), cut off below y = 337.
    for (uint16_t i = addr::ICONS; i < addr::ICONS + 5 * 9; i += 9) {
        if (!view.icons || !s.b(i + ICON_ACTIVE))
            continue;
        int x = s.w(i + ICON_X) * 8, y = s.w(i + ICON_Y);
        int h = 0x152 - y < ICON_FRAME_H ? 0x152 - y : ICON_FRAME_H;
        int frame = s.b(i + ICON_FRAME) / 2;
        if (h > 0 && frame < 68)
            DrawTextureRec(tex_icon_frames[ICON_SPRITE[frame]], { 0, 0, (float)ICON_SHEET_W, (float)h }, { (float)x, (float)y }, WHITE);
    }

    // Barrier line (5be5): 1 px at y = 335 from x = 15 to 463, while the shown
    // page has it drawn.
    if (s.b(addr::BARRIER_DRAWN) & (shown_page ? 2 : 1))
        DrawRectangle(15, 335, 463 - 15 + 1, 1, EGA_PALETTE[15]);

    if (view.movers) {
        // The DOS bat is four EGA scanlines tall, from y = 329. Its first and
        // last lines leave one pixel clear at each end; the middle two span
        // its full width.
        int bat_x = s.w(addr::BAT_X);
        int bat_w = s.b(addr::BAT_W) * 8;
        DrawRectangle(bat_x + 1, 329, bat_w - 2, 1, WHITE);
        DrawRectangle(bat_x, 330, bat_w, 2, WHITE);
        DrawRectangle(bat_x + 1, 332, bat_w - 2, 1, WHITE);

        // Laser shots (5e23): 3x8 yellow, top-left at (x, y), cut off above the
        // playfield.
        for (uint16_t i = addr::LASERS; i < addr::LASERS + 4 * 16; i += 16) {
            if (!(s.w(i + LASER_ACTIVE) & 1))
                continue;
            int x = s.w(i + LASER_X), y = s.w(i + LASER_Y);
            int top = y < BRICK_TOP ? BRICK_TOP : y;
            if (y + 8 > top)
                DrawRectangle(x, top, 3, y + 8 - top, EGA_PALETTE[14]);
        }

        DrawBalls(s);
    }
}

// 3d00: 8x12 digit sprites from 8-px column `col`, up to the 0xff after the
// digits; leading zeros are the blank sprite, the last digit is always drawn.
static void DrawPanelDigits(const OrigState& s, uint16_t a, int col, int y)
{
    bool leading = true;
    for (; s.b(a) != 0xff; a++, col++) {
        const uint8_t digit = s.b(a);
        if (digit != 0 || s.b(uint16_t(a + 1)) == 0xff)
            leading = false;
        DrawTexture(tex_digits[leading ? 0 : digit + 1], col * 8, y, WHITE);
    }
}

// The score panel of the play screen (3f08: boxes 0xaaf with sunken boxes
// inset 17/13 px, labels 0xae9 in colour 0, "BONUS" 0xae3 in colour 7), the
// numbers (391f: 5fc3, 5fd6, 5fe9) and the collected letters in colour 14 as
// the page on screen last drew them (5e65 / 5e83).
static void DrawScorePanel(const OrigState& page, const OrigState& now)
{
    for (int top : { 22, 74, 126, 178 }) {
        DrawRaisedBox(524, top, 610, top + 42);
        DrawSunkenBox(524 + 17, top + 13, 610 - 17, top + 42 - 13);
    }
    DrawSmallText("SCORE", 549, 25, EGA_PALETTE[0]);
    DrawSmallText("LEVEL", 549, 77, EGA_PALETTE[0]);
    DrawSmallText("BALLS", 549, 129, EGA_PALETTE[0]);
    DrawSmallText("BONUS", 549, 181, EGA_PALETTE[0]);
    DrawSmallText("BONUS", 549, 196, EGA_PALETTE[7]);
    const uint8_t letters = page.b(uint16_t(addr::LETTERS_DRAWN + (page.b(addr::PAGE) ? 0 : 1)));
    for (int i = 0; i < 5; i++) {
        if (letters & (1 << i)) {
            const char letter[2] = { "BONUS"[i], 0 };
            DrawSmallText(letter, 549 + 8 * i, 196, EGA_PALETTE[14]);
        }
    }
    // The score and the lives are drawn on both pages at once (3d00 with
    // dl = 1), so they change on screen a tick before the sprites do.
    DrawPanelDigits(now, addr::SCORE, 68, 37);
    DrawPanelDigits(page, addr::LEVEL_DIGITS, 72, 89);
    DrawPanelDigits(now, addr::LIVES_DIGITS, 72, 141);
}

void DrawPlay(const OrigState& page, const OrigState& now, const PlayView& view)
{
    DrawFrame();
    DrawScorePanel(page, now);
    DrawProductionBoxes();
    DrawPlayfield(page, view);
}

void DrawPlay(const PlayView& view)
{
    DrawPlay(orig, orig, view);
}

void DrawDemo()
{
    // 3fde: the frame, three boxes (0x9c4) with texts (0x9de, colour 0 to
    // start), the production boxes, then the playfield.
    DrawFrame();
    DrawRaisedBox(506, 24, 629, 60);
    DrawRaisedBox(506, 80, 629, 116);
    DrawRaisedBox(506, 136, 629, 196);
    int colour = 0;
    DrawCodedText("Press \x84" "F1\x80 for", 65, 28, colour);
    DrawCodedText("information", 65, 42, colour);
    DrawCodedText("Press \x84" "F10\x80 to", 65, 84, colour);
    DrawCodedText("quit to dos", 65, 98, colour);
    DrawCodedText("Press \x84space\x80", 65, 140, colour);
    DrawCodedText("to play", 65, 156, colour);
    DrawCodedText("\x81Paranoid\x80", 67, 177, colour);
    DrawProductionBoxes();
    DrawPlayfield(orig, PlayView {});
}
