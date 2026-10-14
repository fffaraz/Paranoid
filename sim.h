#pragma once

// Literal port of the original's game simulation (TODO.md, Part A).
//
// The state is the original's own memory, addressed like the COM segment, so
// each routine is ported instruction by instruction and a trace record is a
// plain copy of it (tools/TRACE_FORMAT.md). Routines in sim.cpp are named
// after their address in paranoid-v1.8/PARANOID.asm. Nothing here draws or
// plays sound: sounds are queued in OrigState::sounds by the address of their
// pattern, as the original passes them to its player (52df).

#include "levels.h"

#include <array>
#include <cstdint>
#include <vector>

// Addresses in the original's memory (TODO.md, RAM map).
namespace addr {
constexpr uint16_t BRICKS = 0x8100; // 14 cols x 19 rows, index col*19 + row
constexpr uint16_t ATTRS = 0x820a; // icon per brick; bit 7 set = none
constexpr uint16_t LEVEL_BRICKS = 0x8314; // all 30 levels, decrypted
constexpr uint16_t LEVEL_ATTRS = 0xa240;
constexpr uint16_t BALLS = 0xc16d; // 16 slots x 16 bytes, see BALL_*
constexpr uint16_t ICONS = 0xc2cd; // 5 slots x 9 bytes, see ICON_*
constexpr uint16_t LASERS = 0xc30e; // 4 slots x 16 bytes, see LASER_*
constexpr uint16_t DEMO_LEVEL_PTR = 0xcece; // next entry of the demo level list
constexpr uint16_t DEMO = 0xced0;
constexpr uint16_t FLASH = 0xcf17; // 266 x (col, row, timer)
constexpr uint16_t FLASH_COUNT = 0xd235;
constexpr uint16_t FLASH_MASK = 0xd236;
constexpr uint16_t PAGE_OFFSET = 0xd237;
constexpr uint16_t PAGE = 0xd239;
constexpr uint16_t ICON_ANIM_DIV = 0xd23a;
constexpr uint16_t ICON_FALL_DIV = 0xd23b;
constexpr uint16_t PHASE = 0xd23c;
constexpr uint16_t SPEEDUP_TIMER = 0xd23d;
constexpr uint16_t BAT_X = 0xd247;
constexpr uint16_t BAT_W = 0xd249; // in 8-px units: 4, 6 or 8
constexpr uint16_t BAT_MAX_X = 0xd24a;
constexpr uint16_t BAT_MODE = 0xd24c; // 0 normal, 1 sticky, 2 laser
constexpr uint16_t BAT_DX = 0xd24d;
constexpr uint16_t LEVEL = 0xd24f;
constexpr uint16_t LIVES = 0xd250;
constexpr uint16_t BALLS_IN_PLAY = 0xd251;
constexpr uint16_t BRICKS_LEFT = 0xd252;
constexpr uint16_t SETTLE = 0xd254; // stays 1 when nothing is left to animate
constexpr uint16_t SPLIT_COUNT = 0xd255;
constexpr uint16_t THROUGH_PENDING = 0xd256;
constexpr uint16_t BARRIER = 0xd257;
constexpr uint16_t BARRIER_DRAWN = 0xd258; // bit per display page
constexpr uint16_t LETTERS = 0xd259; // bit per collected letter of BONUS
constexpr uint16_t LETTERS_DRAWN = 0xd25a; // one copy per display page
constexpr uint16_t LETTER_TEXT = 0xd25c; // "BONUS" with missing letters blanked
constexpr uint16_t LETTER_NEXT = 0xd262;
constexpr uint16_t LETTERS_IN_ORDER = 0xd263;
constexpr uint16_t SKIP_LEVEL = 0xd264;
constexpr uint16_t ESCAPE = 0xd265;
constexpr uint16_t HISCORE_SCORES = 0xd266; // 10 x 6 digits + 0xff
constexpr uint16_t HISCORE_NAMES = 0xd2ac; // 10 x 16 bytes, NUL-terminated
constexpr uint16_t HISCORE_LEVELS = 0xd34c; // 10 x 2 digits + 0xff
constexpr uint16_t NAME_INPUT = 0xd36a; // max length, length, 16 characters
constexpr uint16_t SCORE_DIV = 0xd398;
constexpr uint16_t PENDING_POINTS = 0xd399;
constexpr uint16_t SCORE = 0xd39b; // 6 decimal digits, most significant first
constexpr uint16_t EXTRA_BALL_AT = 0xd3a2; // 6 decimal digits
constexpr uint16_t LEVEL_DIGITS = 0xd3a8;
constexpr uint16_t LIVES_DIGITS = 0xd3ab;
constexpr uint16_t KEYS = 0xd42a; // 1 while held, see key::
}

// Ball slot fields and flags.
constexpr uint16_t BALL_X = 0, BALL_Y = 2, BALL_DX = 4, BALL_DY = 6, BALL_FLAGS = 8, BALL_COUNTER = 9;
constexpr uint8_t BALL_ACTIVE = 1, BALL_THROUGH = 2, BALL_BELOW_BAT = 4, BALL_STUCK = 8;
// Icon slot fields. x is in 8-px columns.
constexpr uint16_t ICON_X = 0, ICON_Y = 2, ICON_TYPE = 4, ICON_FRAME = 5, ICON_FIRST = 6, ICON_LAST = 7, ICON_ACTIVE = 8;
// Laser slot fields.
constexpr uint16_t LASER_X = 0, LASER_Y = 2, LASER_ACTIVE = 4;
// Key states, written by the caller like the original's keyboard handler (5045).
namespace key {
constexpr uint16_t LEFT = 0, RIGHT = 1, ACTION = 2, ESC = 3, F10 = 4, PAUSE = 5;
}

constexpr int TRACE_RECORD_SIZE = 2088;
constexpr int TRACE_LOOP_PLAY = 1;
constexpr int TRACE_LOOP_DEMO = 2;

struct OrigState {
    std::array<uint8_t, 0x10000> mem {};
    bool faithful_bugs = true; // reproduce the original's bugs (TODO.md, Decisions)
    bool paused = false; // inside the pause handler (3cc8)
    std::vector<uint16_t> sounds; // sounds started, by pattern address; the caller empties it

    uint8_t& b(uint16_t a) { return mem[a]; }
    uint8_t b(uint16_t a) const { return mem[a]; }
    uint16_t w(uint16_t a) const { return uint16_t(mem[a] | mem[uint16_t(a + 1)] << 8); }
    void set_w(uint16_t a, uint16_t v)
    {
        mem[a] = uint8_t(v);
        mem[uint16_t(a + 1)] = uint8_t(v >> 8);
    }
};

enum class TickStatus { Ran,
    Paused, // waiting in the pause handler; nothing was updated
    Quit }; // F10

enum class PlayResult { Playing,
    BallsLost,
    LevelCleared,
    Escape };

// Start-up (5134) and the level data the original keeps decrypted in memory.
void SimInit(OrigState& s, const std::array<Level, LEVEL_COUNT>& levels);
// Page flip (653b). The original calls it once per tick after drawing.
void SimFlipPage(OrigState& s);

// Attract-mode demo: SimDemoLevelStart (3b69, 3b94), then up to 1024 ticks of
// SimDemoTick + SimFlipPage (3bbd), then SimDemoLevelEnd (37c5).
void SimDemoLevelStart(OrigState& s);
void SimDemoTick(OrigState& s);
void SimDemoLevelEnd(OrigState& s);

// A game: SimGameStart (39f3); per level SimLevelStart (37db); per life
// SimLifeStart (3610), then SimPlayTick + SimFlipPage + SimPlayResult until
// the result isn't Playing (3658), then SimSettleStep until it returns false
// (36fd). After BallsLost call SimLoseLife (3a59), after LevelCleared
// SimNextLevel (39cd).
void SimGameStart(OrigState& s);
void SimLevelStart(OrigState& s);
void SimLifeStart(OrigState& s);
TickStatus SimPlayTick(OrigState& s);
PlayResult SimPlayResult(OrigState& s);
bool SimSettleStep(OrigState& s, int& step); // step starts at 0
bool SimLoseLife(OrigState& s); // false when no lives are left
bool SimNextLevel(OrigState& s); // false after level 30

// The high-score screen's 8 bouncing balls (4abd), in the ball table. Then
// one SimHighScoreBallsTick and SimFlipPage per tick, 1024 ticks or until a
// key.
void SimHighScoreBallsStart(OrigState& s);
void SimHighScoreBallsTick(OrigState& s);

// High-score table (4882). SimEnterHighScore puts the score and level into
// the table and returns the rank, 1..10, or 11 if the score doesn't qualify
// (4945). The name is then typed into the buffer at NAME_INPUT:
// SimStartNameInput, SimNameInputKey for each character or backspace (8)
// (4f7f), and SimStoreName when Enter is pressed (48c0).
int SimEnterHighScore(OrigState& s);
void SimStartNameInput(OrigState& s);
void SimNameInputKey(OrigState& s, uint8_t ascii);
void SimStoreName(OrigState& s, int rank);

// One record in the layout of tools/trace_format.py. The display-page bytes
// are written as zeros.
void ToTraceRecord(const OrigState& s, uint8_t out[TRACE_RECORD_SIZE], int loop, uint32_t tick);
