// Literal port of the original's game simulation. Each function is one
// routine of PARANOID.COM, named after its address, and follows the asm
// (paranoid-v1.8/PARANOID.asm) step by step, including 8- and 16-bit
// wrap-around. Drawing calls are left out; where a routine only draws, a
// comment says so. See sim.h.

#include "sim.h"

#include <cstring>

using namespace addr;

namespace {

// Tables from the COM file.
// 0xb5a: brick bounce axis by (side pattern * 4 + direction); 1 = dx, 2 = dy.
constexpr uint8_t T_B5A[16] = { 0xff, 2, 1, 0, 2, 0xff, 0, 1, 1, 0, 0xff, 2, 0, 1, 2, 0xff };
// 0xb6a: bounce axes for two touched cells, by corner pattern; bit 0 = dy, bit 1 = dx.
constexpr uint8_t T_B6A[16] = { 0xff, 0xff, 0xff, 1, 0xff, 2, 3, 0xff, 0xff, 3, 2, 0xff, 1, 0xff, 0xff, 0xff };
// 0xb7a: bat zone limits for widths 4, 6 and 8.
constexpr uint8_t T_B7A[15] = { 6, 12, 20, 27, 33, 9, 18, 28, 37, 46, 12, 24, 36, 48, 60 };
// 0xb89: points per brick type.
constexpr uint8_t T_B89[32] = { 0x00, 0x14, 0x14, 0x14, 0x0f, 0x0a, 0x0f, 0x0a, 0x05, 0x0a, 0x0a, 0x0a, 0x0a, 0x0a, 0x0a, 0x0f,
    0x0f, 0x0f, 0x0f, 0x0f, 0x19, 0x14, 0x0f, 0x0a, 0x0a, 0x0a, 0x0a, 0x0a, 0x00, 0x14, 0x14, 0x14 };
// 0xc31: first and last animation frame per icon type.
constexpr uint8_t T_C31[24] = { 0x00, 0x08, 0x0a, 0x12, 0x14, 0x1c, 0x1e, 0x24, 0x26, 0x2c, 0x2e, 0x40,
    0x42, 0x48, 0x4a, 0x58, 0x5a, 0x5e, 0x60, 0x6a, 0x6c, 0x76, 0x78, 0x86 };
// 0xc64: sound per icon type.
constexpr uint16_t T_C64[12] = { 0xcf7, 0xd01, 0xd08, 0xd15, 0xd28, 0xd2f, 0xd3c, 0xd4f, 0xd5c, 0xd63, 0xd6d, 0xd77 };
// 0x775: demo level list.
constexpr uint16_t DEMO_LIST = 0x775, DEMO_LIST_END = 0x77f;
constexpr uint8_t T_775[10] = { 2, 5, 6, 9, 10, 7, 4, 3, 1, 8 };
// 0xae3: letter panel text.
constexpr uint8_t T_AE3[6] = { 'B', 'O', 'N', 'U', 'S', 0 };

// Collision scratch (0xd37c..0xd397).
constexpr uint16_t CUR_BALL = 0xd37c; // ball being tested against bricks
constexpr uint16_t MOVE_BALL = 0xd37d; // ball being moved
constexpr uint16_t SIDE_X = 0xd37e, SIDE_Y = 0xd37f;
constexpr uint16_t COPY_X = 0xd380, COPY_Y = 0xd382, COPY_DX = 0xd384, COPY_DY = 0xd386;
constexpr uint16_t SIDES = 0xd388, DIRECTION = 0xd389;
constexpr uint16_t CELL_TL = 0xd38a, CELL_TR = 0xd38b, CELL_BL = 0xd38c, CELL_BR = 0xd38d;
constexpr uint16_t OVER_RIGHT = 0xd38e, OVER_BELOW = 0xd38f;
constexpr uint16_t ARG_X = 0xd390, ARG_Y = 0xd392, CELL_COL = 0xd394, CELL_ROW = 0xd396;

uint16_t BallAddr(uint8_t i) { return uint16_t(BALLS + i * 16); }

// 52df: start a sound.
void PlaySound(OrigState& s, uint16_t pattern) { s.sounds.push_back(pattern); }

// 29fa: brick type at (col, row). Only the low byte of col is multiplied.
uint8_t fcn_29fa_get_brick(const OrigState& s, uint16_t col, uint16_t row)
{
    return s.b(uint16_t(BRICKS + (col & 0xff) * 19 + row));
}

// 2a14: set the brick type at (col, row).
void fcn_2a14_set_brick(OrigState& s, uint16_t col, uint16_t row, uint8_t type)
{
    s.b(uint16_t(BRICKS + (col & 0xff) * 19 + row)) = type;
}

// 22be: start a falling icon in the first free slot, if any.
void fcn_22be_spawn_icon(OrigState& s, uint16_t x, uint16_t y, uint8_t type)
{
    for (uint16_t di = ICONS; di < ICONS + 5 * 9; di += 9) {
        if (s.b(di + ICON_ACTIVE) != 0)
            continue;
        s.set_w(di + ICON_X, x);
        s.set_w(di + ICON_Y, y);
        s.b(di + ICON_TYPE) = type;
        // The level data only has types 0..11.
        uint8_t first = T_C31[type * 2], last = T_C31[type * 2 + 1];
        s.b(di + ICON_FRAME) = first;
        s.b(di + ICON_FIRST) = first;
        s.b(di + ICON_LAST) = last;
        s.b(di + ICON_ACTIVE) = 1;
        return;
    }
}

// 22fe: release the brick's icon, once.
void fcn_22fe_release_icon(OrigState& s, uint16_t col, uint16_t row)
{
    uint16_t a = uint16_t(ATTRS + col * 19 + row);
    uint8_t type = s.b(a);
    if (type & 0x80)
        return;
    s.b(a) = 0xff;
    fcn_22be_spawn_icon(s, uint16_t(col * 4 + 3), uint16_t(row * 12 + 12), type);
}

// 5bbd: queue a brick flash in the first free entry, if any.
void fcn_5bbd_queue_flash(OrigState& s, uint8_t col, uint8_t row)
{
    for (uint16_t bx = FLASH; bx < FLASH_COUNT; bx += 3) {
        if (s.b(bx + 2) != 0)
            continue;
        s.b(bx) = col;
        s.b(bx + 1) = row;
        s.b(bx + 2) = 5;
        s.b(FLASH_COUNT)++;
        return;
    }
}

// 5b26: count down the brick flashes. Each display page draws the white
// brick once (bit 6 or 7 of the timer marks it as drawn there) and redraws
// the real brick when the timer runs out.
void fcn_5b26_flash(OrigState& s)
{
    if (s.b(FLASH_COUNT) == 0)
        return;
    s.b(SETTLE) = 0;
    uint8_t mask = s.b(PAGE) ? 0x80 : 0x40;
    s.b(FLASH_MASK) = mask;
    uint8_t left = s.b(FLASH_COUNT);
    uint16_t bx = FLASH;
    do {
        uint8_t& timer = s.b(bx + 2);
        if (timer != 0) {
            left--;
            if (timer & mask) {
                if (timer & 0x3f) {
                    timer--;
                } else {
                    // 5a1f draws the brick as it is now.
                    timer &= uint8_t(~mask);
                    if (timer == 0)
                        s.b(FLASH_COUNT)--;
                }
            } else {
                // 5a1f draws the brick white.
                timer |= mask;
                timer--;
            }
        }
        bx += 3;
    } while (left != 0);
}

// 4866: true when the 6-digit number at a is >= the one at b.
bool fcn_4866_digits_ge(const OrigState& s, uint16_t a, uint16_t b)
{
    for (int i = 0; i < 6; i++) {
        if (s.b(a + i) > s.b(b + i))
            return true;
        if (s.b(a + i) < s.b(b + i))
            return false;
    }
    return true;
}

// 259a: one more life.
void fcn_259a_extra_life(OrigState& s)
{
    s.b(LIVES)++;
    if (++s.b(LIVES_DIGITS + 1) >= 10) {
        s.b(LIVES_DIGITS + 1) = 0;
        s.b(LIVES_DIGITS)++;
    }
    // 5fe9 draws the lives.
}

// 5f79: extra ball when the score reaches the threshold; threshold += 4000.
void fcn_5f79_check_extra_ball(OrigState& s)
{
    if (!fcn_4866_digits_ge(s, SCORE, EXTRA_BALL_AT))
        return;
    fcn_259a_extra_life(s);
    PlaySound(s, 0xd3c);
    s.b(EXTRA_BALL_AT + 2) += 4;
    for (uint16_t d = EXTRA_BALL_AT + 2; s.b(d) >= 10; d--) {
        s.b(d) -= 10;
        if (d == EXTRA_BALL_AT)
            break;
        s.b(d - 1)++;
    }
}

// Add n (< 10) to the hundreds digit of the score, with carry (253f, 3ad1).
void AddHundreds(OrigState& s, uint8_t n)
{
    uint16_t d = SCORE + 3;
    s.b(d) += n;
    if (s.b(d) < 10)
        return;
    s.b(d) -= 10;
    for (d--;; d--) {
        s.b(d)++;
        if (s.b(d) < 10 || d == SCORE) {
            if (s.b(d) >= 10)
                s.b(d) = 0;
            return;
        }
        s.b(d) = 0;
    }
}

// 253f: +500 points, straight into the score.
void fcn_253f_add_500(OrigState& s)
{
    AddHundreds(s, 5);
    // 5fc3 draws the score.
    fcn_5f79_check_extra_ball(s);
}

// 3ad1: the BONUS letter bonus. 200 unless all letters came in order.
void fcn_3ad1_letter_bonus(OrigState& s)
{
    if (s.b(LETTERS_IN_ORDER) != 0) {
        fcn_253f_add_500(s);
        return;
    }
    AddHundreds(s, 2);
    // 5fc3 draws the score.
    fcn_5f79_check_extra_ball(s);
}

// 2a73: hit the brick at (col, row): release its icon, score it, then damage
// or remove it and flash it.
void fcn_2a73_hit_brick(OrigState& s, uint16_t col, uint16_t row)
{
    fcn_22fe_release_icon(s, col, row);
    uint8_t type = fcn_29fa_get_brick(s, col, row);
    if (type == 0 || type == 0x1c)
        return;
    s.set_w(PENDING_POINTS, uint16_t(s.w(PENDING_POINTS) + T_B89[type & 0x1f]));
    if (type == 0x04 || type == 0x06 || type == 0x14 || type == 0x15 || type == 0x16) {
        fcn_2a14_set_brick(s, col, row, uint8_t(type + 1));
        fcn_5bbd_queue_flash(s, uint8_t(col), uint8_t(row));
        return;
    }
    if (type >= 0x0a && type <= 0x0e) {
        uint8_t bit = uint8_t(1 << (type - 0x0a));
        s.b(LETTERS) |= bit;
        if (s.faithful_bugs) {
            // 2adc: the in-order flag is cleared on the expected letter too,
            // unless the shift overflows (TODO item 32).
            bool shifted_to_zero = false;
            if (bit == s.b(LETTER_NEXT)) {
                s.b(LETTER_NEXT) = uint8_t(s.b(LETTER_NEXT) << 1);
                shifted_to_zero = s.b(LETTER_NEXT) == 0;
            }
            if (!shifted_to_zero)
                s.b(LETTERS_IN_ORDER) = 0;
        } else if (bit == s.b(LETTER_NEXT)) {
            s.b(LETTER_NEXT) = uint8_t(s.b(LETTER_NEXT) << 1);
        } else {
            s.b(LETTERS_IN_ORDER) = 0;
        }
    }
    fcn_2a14_set_brick(s, col, row, 0);
    fcn_5bbd_queue_flash(s, uint8_t(col), uint8_t(row));
    s.set_w(BRICKS_LEFT, uint16_t(s.w(BRICKS_LEFT) - 1));
}

// 2b0b: reverse dx of the current ball and snap x to the 8-px grid.
void fcn_2b0b_bounce_x(OrigState& s)
{
    PlaySound(s, 0xc91);
    uint16_t b = BallAddr(s.b(CUR_BALL));
    if (s.b(b + BALL_FLAGS) & BALL_THROUGH)
        return;
    uint16_t dx = uint16_t(-s.w(b + BALL_DX));
    s.set_w(b + BALL_DX, dx);
    uint16_t x = s.w(b + BALL_X) & 0xfff8;
    if (int16_t(dx) >= 0)
        x += 8;
    s.set_w(b + BALL_X, x);
}

// 2b49: reverse dy of the current ball and snap y to the 6-px grid.
void fcn_2b49_bounce_y(OrigState& s)
{
    PlaySound(s, 0xc91);
    uint16_t b = BallAddr(s.b(CUR_BALL));
    if (s.b(b + BALL_FLAGS) & BALL_THROUGH)
        return;
    uint16_t dy = uint16_t(-s.w(b + BALL_DY));
    s.set_w(b + BALL_DY, dy);
    uint16_t y = uint16_t(uint8_t(s.w(b + BALL_Y) / 6) * 6);
    if (int16_t(dy) >= 0)
        y += 6;
    s.set_w(b + BALL_Y, y);
}

// 290d: look up the up to 4 cells under the ball's 8x6 box at (x, y).
void fcn_290d_find_cells(OrigState& s, uint16_t x, uint16_t y)
{
    s.b(CELL_TL) = s.b(CELL_TR) = s.b(CELL_BL) = s.b(CELL_BR) = 0;
    uint16_t row = uint16_t(uint8_t(y / 12) - 1);
    s.set_w(CELL_ROW, row);
    uint16_t col = uint16_t(x - 16) >> 5;
    s.set_w(CELL_COL, col);
    if (col >= 14 || row >= 19)
        return;
    s.b(CELL_TL) = fcn_29fa_get_brick(s, col, row);
    uint8_t right = ((x - 16) & 0x1f) > 0x18;
    uint8_t below = uint8_t(y % 12) > 6;
    s.b(OVER_RIGHT) = right;
    s.b(OVER_BELOW) = below;
    if (right && col + 1 != 14)
        s.b(CELL_TR) = fcn_29fa_get_brick(s, col + 1, row);
    if (below && row + 1 != 19)
        s.b(CELL_BL) = fcn_29fa_get_brick(s, col, row + 1);
    if (right && below && col + 1 != 14 && row + 1 != 19)
        s.b(CELL_BR) = fcn_29fa_get_brick(s, col + 1, row + 1);
}

// 2a25: hit every brick found by 290d.
void fcn_2a25_hit_cells(OrigState& s, uint16_t x, uint16_t y)
{
    uint16_t row = uint16_t(uint8_t(y / 12) - 1);
    uint16_t col = uint16_t(x - 16) >> 5;
    if (s.b(CELL_TL))
        fcn_2a73_hit_brick(s, col, row);
    if (s.b(CELL_TR))
        fcn_2a73_hit_brick(s, col + 1, row);
    if (s.b(CELL_BR))
        fcn_2a73_hit_brick(s, col + 1, row + 1);
    if (s.b(CELL_BL))
        fcn_2a73_hit_brick(s, col, row + 1);
}

struct CellHits {
    uint8_t count; // cl
    uint8_t axes; // ch, for two cells
    uint16_t x, y; // ax, bx: the brick's corner for one cell
};

// 2858: hit the bricks under the ball and describe what was touched.
CellHits fcn_2858_brick_cells(OrigState& s, uint16_t x, uint16_t y)
{
    s.set_w(ARG_X, x);
    s.set_w(ARG_Y, y);
    fcn_290d_find_cells(s, x, y);
    fcn_2a25_hit_cells(s, x, y);
    CellHits h { 0, 0, x, y };
    for (uint16_t a = CELL_TL; a <= CELL_BR; a++)
        h.count += s.b(a) != 0;
    if (h.count == 0 || h.count == 3)
        return h;
    if (h.count != 1) {
        int pattern = (s.b(CELL_TL) != 0) << 3 | (s.b(CELL_TR) != 0) << 2 | (s.b(CELL_BL) != 0) << 1 | (s.b(CELL_BR) != 0);
        h.axes = T_B6A[pattern];
        return h;
    }
    h.y = uint16_t(uint8_t(s.w(ARG_Y) / 12) * 12);
    h.x = uint16_t(((s.w(ARG_X) - 16) & 0xffe0) + 16);
    if (s.b(CELL_TL))
        return h;
    if (s.b(CELL_TR)) {
        h.x += 32;
        return h;
    }
    if (s.b(CELL_BL)) {
        h.y += 12;
        return h;
    }
    h.x += 32;
    h.y += 12;
    return h;
}

// 2693: ball against bricks. Hits the bricks, then picks the bounce axis.
void fcn_2693_ball_bricks(OrigState& s, uint8_t i)
{
    s.b(CUR_BALL) = i;
    uint16_t b = BallAddr(i);
    s.set_w(COPY_X, s.w(b + BALL_X));
    s.set_w(COPY_Y, s.w(b + BALL_Y));
    s.set_w(COPY_DX, s.w(b + BALL_DX));
    s.set_w(COPY_DY, s.w(b + BALL_DY));
    CellHits h = fcn_2858_brick_cells(s, s.w(COPY_X), s.w(COPY_Y));
    if (h.count == 0)
        return;
    if (h.count == 3) {
        fcn_2b0b_bounce_x(s);
        fcn_2b49_bounce_y(s);
        return;
    }
    if (h.count == 2) {
        if (h.axes & 1)
            fcn_2b49_bounce_y(s);
        if (h.axes & 2)
            fcn_2b0b_bounce_x(s);
        return;
    }
    // One cell (h.x, h.y = its corner), or four (h.x, h.y = the ball).
    s.b(SIDE_X) = 0;
    s.b(SIDE_Y) = 0;
    if (h.x <= s.w(COPY_X)) {
        s.b(SIDE_X)++;
        if (uint16_t(h.x + 0x18) <= s.w(COPY_X))
            s.b(SIDE_X)++;
    }
    if (h.y <= s.w(COPY_Y)) {
        s.b(SIDE_Y)++;
        if (uint16_t(h.y + 6) <= s.w(COPY_Y))
            s.b(SIDE_Y)++;
    }
    if (s.b(SIDE_X) == 1) {
        fcn_2b49_bounce_y(s);
        return;
    }
    if (s.b(SIDE_Y) == 1) {
        fcn_2b0b_bounce_x(s);
        return;
    }
    s.b(SIDES) = uint8_t((s.b(SIDE_X) == 0 ? 2 : 0) + (s.b(SIDE_Y) == 0 ? 1 : 0));
    s.b(DIRECTION) = uint8_t((int16_t(s.w(COPY_DX)) < 0 ? 2 : 0) + (int16_t(s.w(COPY_DY)) < 0 ? 1 : 0));
    uint8_t axis = T_B5A[(s.b(SIDES) * 4 + s.b(DIRECTION)) & 0x0f];
    if (axis == 1) {
        fcn_2b0b_bounce_x(s);
        return;
    }
    if (axis == 2) {
        fcn_2b49_bounce_y(s);
        return;
    }
    // 27c2: corner hit head-on; compare the position inside the 8x6 grid.
    uint8_t in_y = uint8_t(s.w(COPY_Y) % 6);
    uint8_t in_x = uint8_t(s.w(COPY_X) & 7);
    if (in_y >= 2)
        in_y++;
    if (in_y >= 5)
        in_y++;
    switch (s.b(SIDES)) {
    case 0:
        if (in_x < in_y)
            fcn_2b49_bounce_y(s);
        else
            fcn_2b0b_bounce_x(s);
        break;
    case 1:
        if (uint8_t(7 - in_x) > in_y)
            fcn_2b49_bounce_y(s);
        else
            fcn_2b0b_bounce_x(s);
        break;
    case 2:
        if (uint8_t(7 - in_x) > in_y)
            fcn_2b0b_bounce_x(s);
        else
            fcn_2b49_bounce_y(s);
        break;
    default:
        if (in_x < in_y)
            fcn_2b0b_bounce_x(s);
        else
            fcn_2b49_bounce_y(s);
        break;
    }
}

// 2b8c: side and top walls.
void fcn_2b8c_walls(OrigState& s, uint8_t i)
{
    uint16_t b = BallAddr(i);
    uint16_t x = s.w(b + BALL_X);
    if (x < 0x10) {
        PlaySound(s, 0xc83);
        x = 0x10;
        if (!(s.b(b + BALL_FLAGS) & BALL_STUCK))
            s.set_w(b + BALL_DX, uint16_t(-s.w(b + BALL_DX)));
    }
    if (x > 0x1c8) {
        PlaySound(s, 0xc83);
        x = 0x1c8;
        if (!(s.b(b + BALL_FLAGS) & BALL_STUCK))
            s.set_w(b + BALL_DX, uint16_t(-s.w(b + BALL_DX)));
    }
    s.set_w(b + BALL_X, x);
    uint16_t y = s.w(b + BALL_Y);
    if (y < 0x0c) {
        PlaySound(s, 0xc8a);
        y = 0x0c;
        s.set_w(b + BALL_DY, uint16_t(-s.w(b + BALL_DY)));
    }
    s.set_w(b + BALL_Y, y);
}

// 3933: start a ball in the first free slot. False if all 16 are in use.
bool fcn_3933_spawn_ball(OrigState& s, uint16_t x, uint16_t y, uint16_t dx, uint16_t dy, uint16_t counter, uint8_t flags)
{
    for (uint8_t i = 0; i < 16; i++) {
        uint16_t b = BallAddr(i);
        if (s.b(b + BALL_FLAGS) & BALL_ACTIVE)
            continue;
        // 2e77, in its order; 54b5 draws the ball.
        s.set_w(b + BALL_X, x);
        s.set_w(b + BALL_Y, y);
        s.set_w(b + BALL_DX, dx);
        s.set_w(b + BALL_DY, dy);
        s.set_w(b + BALL_COUNTER, counter);
        s.b(b + BALL_FLAGS) = flags;
        return true;
    }
    return false;
}

// 3970: split the ball after a bat hit, while splits are pending.
void fcn_3970_split(OrigState& s, uint8_t i)
{
    if (s.b(SPLIT_COUNT) == 0)
        return;
    uint16_t b = BallAddr(i);
    bool spawned = fcn_3933_spawn_ball(s, s.w(b + BALL_X), s.w(b + BALL_Y), uint16_t(-s.w(b + BALL_DX)), s.w(b + BALL_DY),
        s.w(b + BALL_COUNTER), s.b(b + BALL_FLAGS));
    s.b(SPLIT_COUNT)--;
    // The original counts the new ball even when all 16 slots were in use,
    // so the count can't reach 0 again and the life never ends.
    if (spawned || s.faithful_bugs)
        s.b(BALLS_IN_PLAY)++;
}

// 2bec: ball against the bat.
void fcn_2bec_bat(OrigState& s, uint8_t i)
{
    uint16_t b = BallAddr(i);
    if (s.w(b + BALL_Y) < 0x143)
        return;
    // The original doesn't check the direction, so a ball sent back up by the
    // barrier in the same tick is turned down again (TODO item 2).
    if (!s.faithful_bugs && int16_t(s.w(b + BALL_DY)) < 0)
        return;
    uint16_t x = s.w(b + BALL_X);
    uint16_t bat_x = s.w(BAT_X);
    if (x < uint16_t(bat_x - 7))
        return;
    if (x > uint16_t(bat_x + s.b(BAT_W) * 8 - 1))
        return;
    s.b(b + BALL_FLAGS) &= uint8_t(~BALL_THROUGH);
    if (s.b(THROUGH_PENDING)) {
        s.b(b + BALL_FLAGS) |= BALL_THROUGH;
        s.b(THROUGH_PENDING) = 0;
    }
    PlaySound(s, 0xc7c);
    s.set_w(b + BALL_Y, 0x143);
    s.set_w(b + BALL_DY, uint16_t(-s.w(b + BALL_DY)));
    uint8_t offset = uint8_t(x - bat_x + 7);
    const uint8_t* zone = T_B7A + uint8_t(s.b(BAT_W) - 4) / 2 * 5;
    int16_t dx = 3;
    for (int z = 0; z < 5; z++) {
        if (offset <= zone[z]) {
            dx = int16_t(z < 3 ? z - 3 : z - 2);
            break;
        }
    }
    s.set_w(b + BALL_DX, uint16_t(dx));
    if (s.b(BAT_MODE) & 1)
        s.b(b + BALL_FLAGS) |= BALL_STUCK;
    fcn_3970_split(s, i);
}

// 2cd3: the barrier under the bat.
void fcn_2cd3_barrier(OrigState& s, uint8_t i)
{
    if (!s.b(BARRIER))
        return;
    uint16_t b = BallAddr(i);
    if (s.w(b + BALL_Y) <= 0x148)
        return;
    s.set_w(b + BALL_Y, 0x148);
    s.set_w(b + BALL_DY, uint16_t(-s.w(b + BALL_DY)));
    s.b(BARRIER) = 0;
    PlaySound(s, 0xcbe);
}

// 2d0a: below the bat (no more bat hits) and lost balls.
void fcn_2d0a_below_bat(OrigState& s, uint8_t i)
{
    uint16_t b = BallAddr(i);
    s.b(b + BALL_FLAGS) |= BALL_ACTIVE;
    s.b(b + BALL_FLAGS) &= uint8_t(~BALL_BELOW_BAT);
    uint16_t y = s.w(b + BALL_Y);
    if (y <= 0x143)
        return;
    s.b(b + BALL_FLAGS) |= BALL_BELOW_BAT;
    if (y <= 0x151)
        return;
    s.b(b + BALL_FLAGS) &= uint8_t(~BALL_ACTIVE);
    s.b(BALLS_IN_PLAY)--;
}

// 2d3e: move one ball and run its collisions.
void fcn_2d3e_move_ball(OrigState& s, uint8_t i)
{
    s.b(MOVE_BALL) = i;
    uint16_t b = BallAddr(i);
    if (s.b(b + BALL_FLAGS) & BALL_STUCK) {
        s.set_w(b + BALL_X, uint16_t(s.w(b + BALL_X) + s.w(BAT_DX)));
    } else {
        uint16_t x = uint16_t(s.w(b + BALL_X) + s.w(b + BALL_DX));
        uint16_t y = uint16_t(s.w(b + BALL_Y) + s.w(b + BALL_DY));
        // The thirds counter: one more pixel on some ticks.
        if (s.b(PHASE) < s.w(b + BALL_COUNTER))
            y = uint16_t(y + (int16_t(s.w(b + BALL_DY)) < 0 ? -1 : 1));
        s.set_w(b + BALL_X, x);
        s.set_w(b + BALL_Y, y);
    }
    fcn_2b8c_walls(s, i);
    fcn_2693_ball_bricks(s, i);
    fcn_2cd3_barrier(s, i);
    if (!(s.b(b + BALL_FLAGS) & (BALL_BELOW_BAT | BALL_STUCK)))
        fcn_2bec_bat(s, i);
    fcn_2d0a_below_bat(s, i);
}

// 2e2b: every 1536 ticks, a third of a pixel more vertical speed, up to |dy| 7.
void fcn_2e2b_speed_up(OrigState& s)
{
    s.set_w(SPEEDUP_TIMER, uint16_t(s.w(SPEEDUP_TIMER) - 1));
    if (s.w(SPEEDUP_TIMER) != 0)
        return;
    s.set_w(SPEEDUP_TIMER, 0x600);
    for (uint8_t i = 0; i < 16; i++) {
        uint16_t b = BallAddr(i);
        if (!(s.b(b + BALL_FLAGS) & BALL_ACTIVE))
            continue;
        uint16_t dy = s.w(b + BALL_DY);
        if (dy == 7 || dy == 0xfff9)
            continue;
        s.set_w(b + BALL_COUNTER, uint16_t(s.w(b + BALL_COUNTER) + 1));
        if (s.w(b + BALL_COUNTER) != 3)
            continue;
        s.set_w(b + BALL_COUNTER, 0);
        s.set_w(b + BALL_DY, uint16_t(int16_t(dy) < 0 ? dy - 1 : dy + 1));
    }
}

// 2e09: all balls.
void fcn_2e09_balls(OrigState& s)
{
    for (uint8_t i = 0; i < 16; i++) {
        if (s.b(BallAddr(i) + BALL_FLAGS) & BALL_ACTIVE)
            fcn_2d3e_move_ball(s, i);
    }
    fcn_2e2b_speed_up(s);
}

// 2dbc: move the bat 3 px per tick with the keys.
void fcn_2dbc_bat_keys(OrigState& s)
{
    uint16_t old_x = s.w(BAT_X);
    if (s.b(KEYS + key::RIGHT) == 1) {
        if (s.b(KEYS + key::LEFT) != 1) {
            uint16_t x = uint16_t(s.w(BAT_X) + 3);
            if (x > s.w(BAT_MAX_X))
                x = s.w(BAT_MAX_X);
            s.set_w(BAT_X, x);
        }
    } else if (s.b(KEYS + key::LEFT) == 1) {
        uint16_t x = uint16_t(s.w(BAT_X) - 3);
        if (x <= 0x0f)
            x = 0x0f;
        s.set_w(BAT_X, x);
    }
    s.set_w(BAT_DX, uint16_t(s.w(BAT_X) - old_x));
}

// 3c1b: the demo's bat follows ball 0.
void fcn_3c1b_demo_bat(OrigState& s)
{
    int16_t x = int16_t(s.w(BALLS + BALL_X) - 0x15);
    if (x < 0x0f)
        x = 0x0f;
    if (x > int16_t(s.w(BAT_MAX_X)))
        x = int16_t(s.w(BAT_MAX_X));
    s.set_w(BAT_X, uint16_t(x));
}

// 3a9b: let go of all stuck balls.
void fcn_3a9b_release_balls(OrigState& s)
{
    for (uint8_t i = 0; i < 16; i++)
        s.b(BallAddr(i) + BALL_FLAGS) &= uint8_t(~BALL_STUCK);
}

// 2643: after shrinking the bat, keep stuck balls on it.
void fcn_2643_fix_stuck_balls(OrigState& s)
{
    for (uint8_t i = 0; i < 16; i++) {
        uint16_t b = BallAddr(i);
        if (!(s.b(b + BALL_FLAGS) & BALL_ACTIVE) || !(s.b(b + BALL_FLAGS) & BALL_STUCK))
            continue;
        uint16_t x = s.w(b + BALL_X);
        uint16_t lo = uint16_t(s.w(BAT_X) - 7);
        if (x < lo) {
            s.set_w(b + BALL_X, lo);
            continue;
        }
        uint16_t hi = uint16_t(lo + 4 + uint8_t(s.b(BAT_W) * 8));
        if (x > hi)
            s.set_w(b + BALL_X, hi);
    }
}

// 25c6: speed-up icon: one counter step for every ball, |dy| up to 6.
void fcn_25c6_speed_up_icon(OrigState& s)
{
    for (uint8_t i = 0; i < 16; i++) {
        uint16_t b = BallAddr(i);
        if (!(s.b(b + BALL_FLAGS) & BALL_ACTIVE))
            continue;
        s.set_w(b + BALL_COUNTER, uint16_t(s.w(b + BALL_COUNTER) + 1));
        if (s.w(b + BALL_COUNTER) != 3)
            continue;
        s.set_w(b + BALL_COUNTER, 0);
        int16_t dy = int16_t(s.w(b + BALL_DY));
        if (dy >= 0) {
            dy++;
            if (uint16_t(dy) > 6)
                dy = 6;
        } else {
            dy--;
            if (dy < -6)
                dy = -6;
        }
        s.set_w(b + BALL_DY, uint16_t(dy));
    }
}

// 260a: slow-down icon: every ball back to |dy| 2.
void fcn_260a_slow_down_icon(OrigState& s)
{
    for (uint8_t i = 0; i < 16; i++) {
        uint16_t b = BallAddr(i);
        if (!(s.b(b + BALL_FLAGS) & BALL_ACTIVE))
            continue;
        s.set_w(b + BALL_COUNTER, 0);
        s.set_w(b + BALL_DY, int16_t(s.w(b + BALL_DY)) < 0 ? 0xfffe : 2);
    }
    s.set_w(SPEEDUP_TIMER, 0x600);
}

// The icon handlers, table 0xc4c.
void ApplyIcon(OrigState& s, uint8_t type)
{
    switch (type) {
    case 0: // 24f6: enlarge
        if (s.b(BAT_W) == 8)
            break;
        s.b(BAT_W) += 2;
        s.set_w(BAT_MAX_X, uint16_t(s.w(BAT_MAX_X) - 0x10));
        s.set_w(BAT_X, uint16_t(s.w(BAT_X) - 8));
        break;
    case 1: // 2516: shrink
        if (s.b(BAT_W) == 4)
            break;
        s.b(BAT_W) -= 2;
        s.set_w(BAT_MAX_X, uint16_t(s.w(BAT_MAX_X) + 0x10));
        s.set_w(BAT_X, uint16_t(s.w(BAT_X) + 8));
        fcn_2643_fix_stuck_balls(s);
        break;
    case 2: // 2539: sticky
        s.b(BAT_MODE) = 1;
        break;
    case 3: // 253f: +500
        fcn_253f_add_500(s);
        break;
    case 4: // 258b: laser
        s.b(BAT_MODE) = 2;
        fcn_3a9b_release_balls(s);
        break;
    case 5: // 2594: split
        s.b(SPLIT_COUNT) += 2;
        break;
    case 6: // 259a: extra life
        fcn_259a_extra_life(s);
        break;
    case 7: // 25ba: barrier
        s.b(BARRIER) = 1;
        break;
    case 8: // 25c0: skip level
        s.b(SKIP_LEVEL) = 1;
        break;
    case 9:
        fcn_25c6_speed_up_icon(s);
        break;
    case 10:
        fcn_260a_slow_down_icon(s);
        break;
    case 11: // 263d: through bricks from the next bat hit
        s.b(THROUGH_PENDING) = 1;
        break;
    }
}

// 2493: catch a falling icon with the bat.
void fcn_2493_catch_icon(OrigState& s, uint16_t di)
{
    uint16_t y = s.w(di + ICON_Y);
    if (y <= 0x13d || y >= 0x14e)
        return;
    uint16_t right = uint16_t(s.w(di + ICON_X) * 8 + 0x10);
    if (right <= s.w(BAT_X))
        return;
    uint16_t bat_right = uint16_t(uint8_t(s.b(BAT_W) * 8) + s.w(BAT_X));
    if (uint16_t(right - 0x10) >= bat_right)
        return;
    s.b(di + ICON_ACTIVE) = 0;
    if (s.b(DEMO))
        return;
    uint8_t type = s.b(di + ICON_TYPE);
    ApplyIcon(s, type);
    PlaySound(s, T_C64[type]);
}

// 233b: icons fall 1 px every 2 ticks and can be caught.
void fcn_233b_icons_fall(OrigState& s)
{
    if (s.b(ICON_FALL_DIV) != 0) {
        s.b(ICON_FALL_DIV)--;
        return;
    }
    s.b(ICON_FALL_DIV) = 1;
    for (uint16_t di = ICONS; di < ICONS + 5 * 9; di += 9) {
        if (!s.b(di + ICON_ACTIVE))
            continue;
        fcn_2493_catch_icon(s, di);
        s.b(SETTLE) = 0;
        uint16_t y = uint16_t(s.w(di + ICON_Y) + 1);
        s.set_w(di + ICON_Y, y);
        if (y > 0x151)
            s.b(di + ICON_ACTIVE) = 0;
    }
}

// 23d0: icon animation, 2 frames on every 5 ticks.
void fcn_23d0_icons_animate(OrigState& s)
{
    if (s.b(ICON_ANIM_DIV) != 0) {
        s.b(ICON_ANIM_DIV)--;
        return;
    }
    s.b(ICON_ANIM_DIV) = 4;
    for (uint16_t si = ICONS; si < ICONS + 5 * 9; si += 9) {
        if (!s.b(si + ICON_ACTIVE))
            continue;
        uint8_t frame = uint8_t(s.b(si + ICON_FRAME) + 2);
        if (frame > s.b(si + ICON_LAST))
            frame = s.b(si + ICON_FIRST);
        s.b(si + ICON_FRAME) = frame;
    }
}

// 21e0: fire a laser shot at x, if a slot is free.
void fcn_21e0_fire_laser(OrigState& s, uint16_t x)
{
    for (uint16_t di = LASERS; di < LASERS + 4 * 16; di += 16) {
        if (s.w(di + LASER_ACTIVE) != 0)
            continue;
        s.set_w(di + LASER_X, x);
        s.set_w(di + LASER_Y, 0x140);
        s.set_w(di + LASER_ACTIVE, 1);
        PlaySound(s, 0xcb7);
        return;
    }
}

// 220a: fire from the middle of the bat.
void fcn_220a_fire(OrigState& s)
{
    fcn_21e0_fire_laser(s, uint16_t(s.w(BAT_X) + s.b(BAT_W) * 4 - 1));
}

// 2255: a laser shot against the brick under it. True if it hit one.
bool fcn_2255_laser_hit(OrigState& s, uint16_t x, uint16_t y)
{
    uint16_t row = uint16_t(uint8_t(y / 12) - 1);
    uint16_t col = uint16_t(x - 0x0f) >> 5;
    if (col > 0x0d || row > 0x12)
        return false;
    if (fcn_29fa_get_brick(s, col, row) == 0)
        return false;
    fcn_2a73_hit_brick(s, col, row);
    PlaySound(s, 0xc9e);
    return true;
}

// 2222: move one laser shot up 3 px.
void fcn_2222_move_laser(OrigState& s, uint8_t i)
{
    uint16_t si = uint16_t(LASERS + i * 16);
    uint16_t y = uint16_t(s.w(si + LASER_Y) - 3);
    s.set_w(si + LASER_Y, y);
    if (y <= 8 || fcn_2255_laser_hit(s, s.w(si + LASER_X), s.w(si + LASER_Y)))
        s.set_w(si + LASER_ACTIVE, 0);
}

// 2298: all laser shots.
void fcn_2298_lasers(OrigState& s)
{
    for (uint8_t i = 0; i < 4; i++) {
        if (s.w(uint16_t(LASERS + i * 16 + LASER_ACTIVE)) & 1)
            fcn_2222_move_laser(s, i);
    }
}

// 5be5: the barrier line is drawn or erased once on each display page.
void fcn_5be5_barrier_line(OrigState& s)
{
    uint8_t bit = s.b(PAGE) ? 2 : 1;
    uint8_t drawn = (s.b(BARRIER_DRAWN) & bit) ? 1 : 0;
    if (drawn == s.b(BARRIER))
        return;
    // 419c draws the line at y = 335 in colour 15, or erases it.
    uint8_t on = s.b(BARRIER);
    if (s.b(PAGE))
        on = uint8_t(on << 1);
    s.b(BARRIER_DRAWN) = uint8_t((s.b(BARRIER_DRAWN) & ~bit) | on);
}

// 5e83: redraw the letter panel, and give the bonus when it is complete.
void fcn_5e83_letter_panel(OrigState& s)
{
    std::memcpy(&s.mem[LETTER_TEXT], T_AE3, sizeof(T_AE3));
    // 3da6 draws "BONUS" in colour 7.
    uint8_t mask = s.b(LETTERS);
    for (int i = 0; i < 5; i++, mask >>= 1) {
        if (!(mask & 1))
            s.b(LETTER_TEXT + i) = ' ';
    }
    // 3da6 draws the collected letters in colour 14.
    if (s.b(LETTERS) != 0x1f)
        return;
    // The original gives the bonus once for each display page (TODO item 32).
    // Without the bug, only the first page to see the full panel gives it.
    uint16_t other = uint16_t(LETTERS_DRAWN + (s.b(PAGE) ? 0 : 1));
    if (s.faithful_bugs || s.b(other) != 0x1f)
        fcn_3ad1_letter_bonus(s);
}

// 5e65: update the letter panel when the letters changed since this page last
// drew it.
void fcn_5e65_letters(OrigState& s)
{
    uint16_t si = uint16_t(LETTERS_DRAWN + (s.b(PAGE) ? 1 : 0));
    if (s.b(si) == s.b(LETTERS))
        return;
    fcn_5e83_letter_panel(s);
    s.b(si) = s.b(LETTERS);
}

// 5ee1: move one pending point into the score every 2 ticks.
void fcn_5ee1_score_count(OrigState& s)
{
    if (s.w(PENDING_POINTS) != 0)
        s.b(SETTLE) = 0;
    if (s.b(SCORE_DIV) != 0) {
        s.b(SCORE_DIV)--;
        return;
    }
    s.b(SCORE_DIV) = 2;
    if (s.w(PENDING_POINTS) == 0)
        return;
    s.set_w(PENDING_POINTS, uint16_t(s.w(PENDING_POINTS) - 1));
    for (uint16_t d = SCORE + 5;; d--) {
        if (++s.b(d) != 10 || d == SCORE) {
            if (s.b(d) == 10)
                s.b(d) = 0;
            break;
        }
        s.b(d) = 0;
    }
    // 5fc3 draws the score.
    fcn_5f79_check_extra_ball(s);
}

// 3437 + 33b7: copy level n (1..30) into the grids, set the level digits and
// count the bricks that can be broken.
void fcn_33b7_load_level(OrigState& s, uint8_t n)
{
    uint16_t offset = uint16_t((n - 1) * 266);
    std::memcpy(&s.mem[BRICKS], &s.mem[LEVEL_BRICKS + offset], 266);
    std::memcpy(&s.mem[ATTRS], &s.mem[LEVEL_ATTRS + offset], 266);
    s.b(LEVEL_DIGITS) = uint8_t(n / 10);
    s.b(LEVEL_DIGITS + 1) = uint8_t(n % 10);
    uint16_t count = 0;
    for (uint16_t a = BRICKS; a < BRICKS + 266; a++)
        count += s.b(a) != 0 && s.b(a) != 0x1c;
    s.set_w(BRICKS_LEFT, count);
}

// 375b: clear the balls.
void fcn_375b_clear_balls(OrigState& s)
{
    std::memset(&s.mem[BALLS], 0, 0x100);
    std::memset(&s.mem[0xc2ad], 0xff, 0x20); // where each ball was drawn
}

// 3778: clear the laser shots.
void fcn_3778_clear_lasers(OrigState& s)
{
    std::memset(&s.mem[LASERS], 0, 0x40);
    std::memset(&s.mem[0xc34e], 0xff, 0x10); // where each shot was drawn
}

// 3798: clear the icons.
void fcn_3798_clear_icons(OrigState& s)
{
    std::memset(&s.mem[ICONS], 0, 0x2d);
    std::memset(&s.mem[0xc2fa], 0xff, 0x14); // where each icon was drawn
}

// 37b8: forget where the bat was drawn.
void fcn_37b8_clear_bat(OrigState& s)
{
    s.set_w(0xc35e, 0xffff);
    s.set_w(0xc360, 0xffff);
}

// 37c5: clear the brick-flash queue.
void fcn_37c5_clear_flash(OrigState& s)
{
    std::memset(&s.mem[FLASH], 0, 0x31e);
    s.b(FLASH_COUNT) = 0;
}

// 3863: reset everything that belongs to one level.
void fcn_3863_reset_level(OrigState& s)
{
    fcn_375b_clear_balls(s);
    fcn_3778_clear_lasers(s);
    fcn_3798_clear_icons(s);
    fcn_37b8_clear_bat(s);
    s.b(SKIP_LEVEL) = 0;
    s.b(LETTERS) = 0;
    s.b(LETTERS_DRAWN) = 0;
    s.b(LETTERS_DRAWN + 1) = 0;
    s.b(LETTER_NEXT) = 1;
    s.b(LETTERS_IN_ORDER) = 1;
    s.b(SCORE_DIV) = 1;
    s.b(ICON_ANIM_DIV) = 4;
    s.b(ICON_FALL_DIV) = 1;
    s.set_w(SPEEDUP_TIMER, 0x600);
    s.b(SPLIT_COUNT) = 0;
    s.b(BARRIER) = 0;
    s.b(BARRIER_DRAWN) = 0;
    s.b(FLASH_COUNT) = 0;
}

// 3904: a new bat.
void fcn_3904_reset_bat(OrigState& s)
{
    s.b(BAT_W) = 6;
    s.set_w(BAT_X, 0xd8);
    s.set_w(BAT_MAX_X, 0x1a0);
    s.b(BAT_MODE) = 0;
}

// 38e0: a new ball.
void fcn_38e0_new_ball(OrigState& s)
{
    fcn_3933_spawn_ball(s, 0xed, 0x130, 2, 0xfffe, 0, BALL_ACTIVE);
}

// 3a7f: the action key fires or lets go of stuck balls.
void fcn_3a7f_action(OrigState& s)
{
    s.b(KEYS + key::ACTION) = 0;
    if (s.b(BAT_MODE) == 0)
        return;
    if (s.b(BAT_MODE) & 1)
        fcn_3a9b_release_balls(s);
    else
        fcn_220a_fire(s);
}

void NextPhase(OrigState& s)
{
    if (++s.b(PHASE) == 3)
        s.b(PHASE) = 0;
}

// 3109 (high-score screen, max_y 332) and 30ba (title, max_y 272): the
// screen balls stay inside x 16..615, y 12..max_y.
void ScreenWalls(OrigState& s, uint8_t i, uint16_t max_y)
{
    uint16_t b = BallAddr(i);
    if (s.w(b + BALL_X) < 0x10) {
        s.set_w(b + BALL_X, 0x10);
        s.set_w(b + BALL_DX, uint16_t(-s.w(b + BALL_DX)));
    } else if (s.w(b + BALL_X) > 0x267) {
        s.set_w(b + BALL_X, 0x267);
        s.set_w(b + BALL_DX, uint16_t(-s.w(b + BALL_DX)));
    }
    if (s.w(b + BALL_Y) < 0x0c) {
        s.set_w(b + BALL_Y, 0x0c);
        s.set_w(b + BALL_DY, uint16_t(-s.w(b + BALL_DY)));
    } else if (s.w(b + BALL_Y) > max_y) {
        s.set_w(b + BALL_Y, max_y);
        s.set_w(b + BALL_DY, uint16_t(-s.w(b + BALL_DY)));
    }
}

// 2ed7: bounce a ball off the box (x1, y1)-(x2, y2), with the same side and
// corner rules as the bricks (2693). The ball ends up just outside the box.
void fcn_2ed7_box(OrigState& s, uint8_t i, uint16_t x1, uint16_t y1, uint16_t x2, uint16_t y2)
{
    uint16_t b = BallAddr(i);
    const uint16_t x = s.w(b + BALL_X), y = s.w(b + BALL_Y);
    if (uint16_t(x + 8) < x1 || x > x2 || uint16_t(y + 6) < y1 || y > y2)
        return;
    // 0: left of the box, 1: inside its x range, 2: right of it; the same for y.
    s.b(SIDE_X) = 0;
    s.b(SIDE_Y) = 0;
    if (x >= x1) {
        s.b(SIDE_X)++;
        if (uint16_t(x + 7) >= x2)
            s.b(SIDE_X)++;
    }
    if (y >= y1) {
        s.b(SIDE_Y)++;
        if (uint16_t(y + 5) >= y2)
            s.b(SIDE_Y)++;
    }
    bool bounce_x;
    if (s.b(SIDE_X) == 1) {
        bounce_x = false;
    } else if (s.b(SIDE_Y) == 1) {
        bounce_x = true;
    } else {
        s.b(SIDES) = uint8_t((s.b(SIDE_X) == 0 ? 2 : 0) + (s.b(SIDE_Y) == 0 ? 1 : 0));
        s.b(DIRECTION) = uint8_t((int16_t(s.w(b + BALL_DX)) < 0 ? 2 : 0) + (int16_t(s.w(b + BALL_DY)) < 0 ? 1 : 0));
        const uint8_t axis = T_B5A[(s.b(SIDES) * 4 + s.b(DIRECTION)) & 0x0f];
        if (axis == 1) {
            bounce_x = true;
        } else if (axis == 2) {
            bounce_x = false;
        } else {
            // Corner hit head-on: compare the ball's offset from the corner.
            const uint8_t sides = s.b(SIDES);
            uint8_t in_x = uint8_t(x - ((sides & 2) ? x1 : x2) + 7);
            uint8_t in_y = uint8_t(y - ((sides & 1) ? y1 : y2) + 5);
            if (in_y >= 2)
                in_y++;
            if (in_y >= 5)
                in_y++;
            switch (sides) {
            case 0:
                bounce_x = in_x >= in_y;
                break;
            case 1:
                bounce_x = !(uint8_t(7 - in_x) > in_y);
                break;
            case 2:
                bounce_x = uint8_t(7 - in_x) > in_y;
                break;
            default:
                bounce_x = !(in_x >= in_y);
                break;
            }
        }
    }
    if (bounce_x) {
        s.set_w(b + BALL_X, s.b(SIDE_X) == 0 ? uint16_t(x1 - 8) : uint16_t(x2 + 1));
        s.set_w(b + BALL_DX, uint16_t(-s.w(b + BALL_DX)));
    } else {
        s.set_w(b + BALL_Y, s.b(SIDE_Y) == 0 ? uint16_t(y1 - 6) : uint16_t(y2 + 1));
        s.set_w(b + BALL_DY, uint16_t(-s.w(b + BALL_DY)));
    }
}

// 31b4 (high-score screen) and 3158 (title): move a screen ball as 2d3e
// moves game balls, then keep it inside the screen.
void MoveScreenBall(OrigState& s, uint8_t i)
{
    s.b(MOVE_BALL) = i;
    uint16_t b = BallAddr(i);
    uint16_t x = uint16_t(s.w(b + BALL_X) + s.w(b + BALL_DX));
    uint16_t y = uint16_t(s.w(b + BALL_Y) + s.w(b + BALL_DY));
    if (s.b(PHASE) < s.w(b + BALL_COUNTER))
        y = uint16_t(y + (int16_t(s.w(b + BALL_DY)) < 0 ? -1 : 1));
    s.set_w(b + BALL_X, x);
    s.set_w(b + BALL_Y, y);
}

void fcn_31b4_move_hiscore_ball(OrigState& s, uint8_t i)
{
    MoveScreenBall(s, i);
    ScreenWalls(s, i, 0x14c); // 3109
    fcn_2ed7_box(s, i, 48, 38, 591, 85); // 0x713, the title box
    fcn_2ed7_box(s, i, 152, 112, 487, 311); // 0x71b, the table box
}

void fcn_3158_move_title_ball(OrigState& s, uint8_t i)
{
    MoveScreenBall(s, i);
    ScreenWalls(s, i, 0x110); // 30ba
    fcn_2ed7_box(s, i, 182, 90, 457, 197); // 0x548, the PARANOID box
}

} // namespace

void SimInit(OrigState& s, const std::array<Level, LEVEL_COUNT>& levels)
{
    s.mem.fill(0);
    s.paused = false;
    s.sounds.clear();
    for (int i = 0; i < LEVEL_COUNT; i++) {
        std::memcpy(&s.mem[LEVEL_BRICKS + i * 266], levels[i].bricks, 266);
        std::memcpy(&s.mem[LEVEL_ATTRS + i * 266], levels[i].attrs, 266);
    }
    // 5134
    s.b(PHASE) = 0;
    s.b(SCORE + 6) = 0xff;
    s.b(LEVEL_DIGITS + 2) = 0xff;
    s.b(LIVES_DIGITS + 2) = 0xff;
    s.set_w(PENDING_POINTS, 0);
    s.b(0xcf0e) = 0;
    s.b(SCORE_DIV) = 1;
    s.b(ICON_ANIM_DIV) = 4;
    s.b(ICON_FALL_DIV) = 1;
    s.set_w(SPEEDUP_TIMER, 0x600);
    s.b(PAGE) = 1;
    s.set_w(PAGE_OFFSET, 0x6e00);
    fcn_37c5_clear_flash(s);
    s.set_w(DEMO_LEVEL_PTR, DEMO_LIST);
    s.b(0xc16c) = 0xff;
    const uint8_t scan_codes[12] = { 0x2a, 0, 0x36, 0, 0x39, 0, 0x01, 0, 0x44, 0, 0x19, 0 };
    std::memcpy(&s.mem[0xd41d], scan_codes, sizeof(scan_codes));
    s.b(0xd429) = 0xff;
}

void SimFlipPage(OrigState& s)
{
    // 653b; 65e9 shows the page that was just drawn.
    s.set_w(PAGE_OFFSET, uint16_t(0x6e00 - s.w(PAGE_OFFSET)));
    s.b(PAGE) = uint8_t(1 - s.b(PAGE));
}

void SimDemoLevelStart(OrigState& s)
{
    // 3b69
    uint16_t si = s.w(DEMO_LEVEL_PTR);
    fcn_33b7_load_level(s, T_775[si - DEMO_LIST]);
    // 3fde and 406d draw the playfield.
    SimFlipPage(s);
    if (++si == DEMO_LIST_END)
        si = DEMO_LIST;
    s.set_w(DEMO_LEVEL_PTR, si);
    // 3b94
    fcn_3863_reset_level(s);
    fcn_3904_reset_bat(s);
    fcn_38e0_new_ball(s);
    SimFlipPage(s);
    s.b(THROUGH_PENDING) = 0;
    s.b(DEMO) = 1;
}

void SimDemoTick(OrigState& s)
{
    // One pass of 3bbd, without the drawing.
    NextPhase(s);
    fcn_233b_icons_fall(s);
    fcn_3c1b_demo_bat(s);
    fcn_2e09_balls(s);
    fcn_23d0_icons_animate(s);
    fcn_5b26_flash(s);
}

void SimDemoLevelEnd(OrigState& s)
{
    fcn_37c5_clear_flash(s);
}

void SimGameStart(OrigState& s)
{
    // 39f3
    s.b(LEVEL) = 1;
    std::memset(&s.mem[SCORE], 0, 6);
    const uint8_t first_extra_ball[6] = { 0, 0, 4, 0, 0, 0 };
    std::memcpy(&s.mem[EXTRA_BALL_AT], first_extra_ball, 6);
    s.set_w(PENDING_POINTS, 0);
    s.b(LIVES) = 3;
    s.b(LIVES_DIGITS) = 0;
    s.b(LIVES_DIGITS + 1) = 3;
    s.b(DEMO) = 0;
    s.b(0xcf0e) = 0;
    s.b(ESCAPE) = 0;
}

void SimLevelStart(OrigState& s)
{
    // 37db, without the drawing and the scroll-in.
    fcn_3863_reset_level(s);
    fcn_33b7_load_level(s, s.b(LEVEL));
    s.b(PAGE) = 1;
    s.set_w(PAGE_OFFSET, 0x6e00);
}

void SimLifeStart(OrigState& s)
{
    // 3610. The caller then waits 120 ticks (3b4c) without flipping.
    fcn_3904_reset_bat(s);
    fcn_38e0_new_ball(s);
    s.b(BALLS_IN_PLAY) = 1;
    s.b(SPLIT_COUNT) = 0;
    s.b(THROUGH_PENDING) = 0;
    s.b(SCORE_DIV) = 1;
    s.b(ICON_ANIM_DIV) = 4;
    s.b(ICON_FALL_DIV) = 1;
    s.set_w(SPEEDUP_TIMER, 0x600);
    SimFlipPage(s);
}

TickStatus SimPlayTick(OrigState& s)
{
    // One pass of 3658, without the drawing.
    if (s.paused) {
        // 3cc8 waits until P is pressed again.
        if (s.b(KEYS + key::PAUSE) != 1)
            return TickStatus::Paused;
        s.b(KEYS + key::PAUSE) = 0;
        s.paused = false;
    } else {
        NextPhase(s);
        // 4f53: the first held key of action, Esc, F10, P (table 0x113).
        if (s.b(KEYS + key::ACTION) == 1) {
            fcn_3a7f_action(s);
        } else if (s.b(KEYS + key::ESC) == 1) {
            s.b(ESCAPE) = 1; // 3cc2
        } else if (s.b(KEYS + key::F10) == 1) {
            return TickStatus::Quit; // 3c95
        } else if (s.b(KEYS + key::PAUSE) == 1) {
            s.b(KEYS + key::PAUSE) = 0; // 3cc8
            s.paused = true;
            return TickStatus::Paused;
        }
    }
    fcn_233b_icons_fall(s);
    fcn_2dbc_bat_keys(s);
    fcn_2e09_balls(s);
    fcn_23d0_icons_animate(s);
    fcn_2298_lasers(s);
    fcn_5b26_flash(s);
    fcn_5be5_barrier_line(s);
    fcn_5e65_letters(s);
    fcn_5ee1_score_count(s);
    return TickStatus::Ran;
}

PlayResult SimPlayResult(OrigState& s)
{
    // The end of 3658, after the page flip.
    if (s.b(ESCAPE))
        return PlayResult::Escape;
    if (s.w(BRICKS_LEFT) == 0 || s.b(SKIP_LEVEL)) {
        PlaySound(s, 0xcde);
        return PlayResult::LevelCleared;
    }
    if (s.b(BALLS_IN_PLAY))
        return PlayResult::Playing;
    PlaySound(s, 0xcc5);
    return PlayResult::BallsLost;
}

bool SimSettleStep(OrigState& s, int& step)
{
    // One pass of 36fd: balls, bat, lasers and icons stay still while the
    // flashes and the score finish. At least 2 passes.
    s.b(SETTLE) = 1;
    fcn_5b26_flash(s);
    fcn_5ee1_score_count(s);
    SimFlipPage(s);
    if (++step < 2 || s.b(SETTLE) == 0)
        return true;
    fcn_375b_clear_balls(s);
    fcn_3778_clear_lasers(s);
    fcn_37b8_clear_bat(s);
    return false;
}

bool SimLoseLife(OrigState& s)
{
    // 3a59
    s.b(LIVES)--;
    if (int8_t(--s.b(LIVES_DIGITS + 1)) < 0) {
        s.b(LIVES_DIGITS + 1) = 9;
        s.b(LIVES_DIGITS)--;
    }
    return s.b(LIVES) != 0;
}

bool SimNextLevel(OrigState& s)
{
    // 39cd
    return ++s.b(LEVEL) <= 30;
}

void SimHighScoreBallsStart(OrigState& s)
{
    // 4abd: 375b, then 4aea starts the 8 balls of table 0x723
    // (counter, dy, dx, y, x).
    static const int16_t balls[8][5] = {
        { 0, -2, -2, 125, 50 }, { 1, -2, -3, 220, 100 }, { 2, -2, -2, 320, 270 }, { 0, -2, -3, 305, 500 },
        { 1, -2, 2, 180, 600 }, { 2, 2, 3, 115, 570 }, { 0, 2, -1, 45, 610 }, { 1, 2, 2, 30, 190 }
    };
    fcn_375b_clear_balls(s);
    for (const auto& ball : balls)
        fcn_3933_spawn_ball(s, uint16_t(ball[4]), uint16_t(ball[3]), uint16_t(ball[2]), uint16_t(ball[1]), uint16_t(ball[0]), BALL_ACTIVE);
}

void SimHighScoreBallsTick(OrigState& s)
{
    // 4b19 without the drawing: the phase, then 3235 moves every ball.
    NextPhase(s);
    for (uint8_t i = 0; i < 16; i++) {
        if (s.b(BallAddr(i) + BALL_FLAGS) & BALL_ACTIVE)
            fcn_31b4_move_hiscore_ball(s, i);
    }
}

void SimTitleStart(OrigState& s)
{
    // 64d9: 375b, then 64aa starts the 6 balls of table 0x559 (counter, dy,
    // dx, y, x; three start below the screen and are clamped on their first
    // move), and the scroller starts at the beginning of its text.
    static const int16_t balls[6][5] = {
        { 0, 2, 3, 36, 556 }, { 1, 2, 3, 36, 316 }, { 0, 2, 3, 36, 79 },
        { 2, 2, 3, 543, 556 }, { 1, 2, 3, 543, 316 }, { 0, 2, 3, 543, 79 }
    };
    fcn_375b_clear_balls(s);
    for (const auto& ball : balls)
        fcn_3933_spawn_ball(s, uint16_t(ball[4]), uint16_t(ball[3]), uint16_t(ball[2]), uint16_t(ball[1]), uint16_t(ball[0]), BALL_ACTIVE);
    s.set_w(SCROLL_POS, SCROLL_TEXT);
    s.b(SCROLL_SHIFT) = 0;
}

void SimTitleTick(OrigState& s)
{
    // 648d: the phase, then 3216 moves every ball (3158).
    NextPhase(s);
    for (uint8_t i = 0; i < 16; i++) {
        if (s.b(BallAddr(i) + BALL_FLAGS) & BALL_ACTIVE)
            fcn_3158_move_title_ball(s, i);
    }
    // 633a draws the scroller, then moves it 2 px on.
    uint16_t pos = s.w(SCROLL_POS);
    uint8_t shift = uint8_t(s.b(SCROLL_SHIFT) + 2);
    if (shift >= 8) {
        if (++pos == SCROLL_TEXT_END)
            pos = SCROLL_TEXT;
        shift -= 8;
    }
    s.set_w(SCROLL_POS, pos);
    s.b(SCROLL_SHIFT) = shift;
}

void SimInfoIconsStart(OrigState& s, bool second_page)
{
    // Frames from table 0xc31 (types 0-5) or 0xc3d (types 6-11), places from
    // 0x1922 or 0x1b87.
    static const uint16_t places[2][6][2] = {
        { { 10, 33 }, { 10, 89 }, { 10, 131 }, { 10, 187 }, { 10, 229 }, { 10, 285 } },
        { { 10, 35 }, { 10, 82 }, { 10, 143 }, { 10, 190 }, { 10, 237 }, { 10, 284 } },
    };
    for (int i = 0; i < 6; i++) {
        const uint16_t slot = uint16_t(INFO_ICONS + i * 7);
        const int type = (second_page ? 6 : 0) + i;
        s.b(slot + INFO_ICON_FRAME) = T_C31[type * 2];
        s.b(slot + INFO_ICON_FIRST) = T_C31[type * 2];
        s.b(slot + INFO_ICON_LAST) = T_C31[type * 2 + 1];
    }
    // Both routines also add 2 to the 4th icon's frame (0xceec), so it starts
    // one frame later.
    s.b(INFO_ICONS + 3 * 7 + INFO_ICON_FRAME) += 2;
    for (int i = 0; i < 6; i++) {
        const uint16_t slot = uint16_t(INFO_ICONS + i * 7);
        s.set_w(slot + INFO_ICON_X, places[second_page][i][0]);
        s.set_w(slot + INFO_ICON_Y, places[second_page][i][1]);
    }
}

void SimInfoIconsTick(OrigState& s)
{
    // 4e9b: like 23d0, on the same divider.
    if (s.b(ICON_ANIM_DIV) != 0) {
        s.b(ICON_ANIM_DIV)--;
        return;
    }
    s.b(ICON_ANIM_DIV) = 4;
    for (int i = 0; i < 6; i++) {
        const uint16_t slot = uint16_t(INFO_ICONS + i * 7);
        uint8_t frame = uint8_t(s.b(slot + INFO_ICON_FRAME) + 2);
        if (frame > s.b(slot + INFO_ICON_LAST))
            frame = s.b(slot + INFO_ICON_FIRST);
        s.b(slot + INFO_ICON_FRAME) = frame;
    }
}

int SimEnterHighScore(OrigState& s)
{
    // 49c9: walk up from the last entry while it is lower than the score; a
    // score equal to an entry goes below it.
    int above = 10;
    for (uint16_t entry = HISCORE_SCORES + 9 * 7; above > 0; entry -= 7, above--) {
        if (fcn_4866_digits_ge(s, entry, SCORE))
            break;
    }
    const int rank = above + 1;
    if (rank == 11)
        return rank;
    // 49ec: move the entries from this rank down by one; the last drops off.
    const int moved = 10 - rank;
    std::memmove(&s.mem[HISCORE_SCORES + rank * 7], &s.mem[HISCORE_SCORES + (rank - 1) * 7], moved * 7);
    std::memmove(&s.mem[HISCORE_NAMES + rank * 16], &s.mem[HISCORE_NAMES + (rank - 1) * 16], moved * 16);
    std::memmove(&s.mem[HISCORE_LEVELS + rank * 3], &s.mem[HISCORE_LEVELS + (rank - 1) * 3], moved * 3);
    // 4945: the score, the level and an empty name.
    std::memcpy(&s.mem[HISCORE_SCORES + (rank - 1) * 7], &s.mem[SCORE], 6);
    std::memcpy(&s.mem[HISCORE_LEVELS + (rank - 1) * 3], &s.mem[LEVEL_DIGITS], 2);
    std::memset(&s.mem[HISCORE_NAMES + (rank - 1) * 16], 0, 16);
    return rank;
}

void SimStartNameInput(OrigState& s)
{
    // 48c0 clears the buffer and allows 15 characters; 4f7f empties it.
    std::memset(&s.mem[NAME_INPUT + 2], 0, 16);
    s.b(NAME_INPUT) = 15;
    s.b(NAME_INPUT + 1) = 0;
}

void SimNameInputKey(OrigState& s, uint8_t ascii)
{
    // 4f7f. The next character goes to index min(length, max - 1): when the
    // name is full, a new character replaces the last one.
    const uint8_t max = s.b(NAME_INPUT);
    uint8_t& length = s.b(NAME_INPUT + 1);
    if (ascii == 8) {
        if (length > 0)
            length--;
        return;
    }
    if (!((ascii >= 0x20 && ascii <= 0x5f) || (ascii >= 'a' && ascii <= 'z')))
        return;
    s.b(uint16_t(NAME_INPUT + 2 + (length < max ? length : max - 1))) = ascii;
    if (length < max)
        length++;
}

void SimStoreName(OrigState& s, int rank)
{
    // 48c0: copy the typed characters into the table and end the buffer.
    const uint8_t length = s.b(NAME_INPUT + 1);
    std::memcpy(&s.mem[HISCORE_NAMES + (rank - 1) * 16], &s.mem[NAME_INPUT + 2], length);
    s.b(uint16_t(NAME_INPUT + 2 + length)) = 0;
}

void ToTraceRecord(const OrigState& s, uint8_t out[TRACE_RECORD_SIZE], int loop, uint32_t tick)
{
    // Blocks in the order of trace_format.BLOCKS.
    static const struct {
        uint16_t addr, size;
    } blocks[] = {
        { BALLS, 256 }, { ICONS, 45 }, { LASERS, 64 }, { FLASH_COUNT, 1 }, { FLASH, 798 },
        { PAGE_OFFSET, 378 }, { KEYS, 6 }, { BRICKS, 266 }, { ATTRS, 266 }
    };
    out[0] = 'P';
    out[1] = 'T';
    out[2] = uint8_t(loop);
    out[3] = 0;
    for (int i = 0; i < 4; i++)
        out[4 + i] = uint8_t(tick >> (8 * i));
    int pos = 8;
    for (const auto& block : blocks) {
        std::memcpy(out + pos, &s.mem[block.addr], block.size);
        if (block.addr == PAGE_OFFSET)
            std::memset(out + pos, 0, 3); // 0xd237..0xd239: display page
        pos += block.size;
    }
}
