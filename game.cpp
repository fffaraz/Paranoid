#include "game.h"

#include <raylib.h>

#include <algorithm>

Sounds sounds;
GameState state = STATE_TITLE;
OrigState orig;
bool quit_requested = false;

namespace {

constexpr int TICK_HZ = 70;
constexpr int LIFE_WAIT_TICKS = 120; // 3610 -> 3b4c
constexpr int NEXT_LEVEL_WAIT_TICKS = 30; // 38b7

enum class Phase { LifeWait, Play, Settle, NextLevelWait };

Phase phase = Phase::LifeWait;
int wait_ticks = 0;
int settle_step = 0;
PlayResult result = PlayResult::Playing;
float tick_time = 0.0f;
bool key_pressed = false; // any key since the last tick, for the waits

void PlaySimSounds()
{
    for (uint16_t pattern : orig.sounds)
        play_pattern(sounds, pattern);
    orig.sounds.clear();
}

void StartLife()
{
    SimLifeStart(orig);
    phase = Phase::LifeWait;
    wait_ticks = LIFE_WAIT_TICKS;
}

// The keyboard handler (5045) sets a key's byte on a press and clears it on a
// release. The action and pause handlers clear their byte themselves, so
// those two are set only on a press or a key repeat, as with a DOS keyboard.
void PressKeys()
{
    auto pressed = [](int key) { return IsKeyPressed(key) || IsKeyPressedRepeat(key); };
    if (pressed(KEY_P))
        orig.b(addr::KEYS + key::PAUSE) = 1;
    if (!pressed(KEY_SPACE))
        return;
    // Remake addition: Space also ends the pause.
    if (orig.paused)
        orig.b(addr::KEYS + key::PAUSE) = 1;
    else
        orig.b(addr::KEYS + key::ACTION) = 1;
}

// Released after the tick, so a press shorter than a frame still counts.
void ReleaseKeys()
{
    if (!IsKeyDown(KEY_SPACE))
        orig.b(addr::KEYS + key::ACTION) = 0;
    if (!IsKeyDown(KEY_P) && !IsKeyDown(KEY_SPACE))
        orig.b(addr::KEYS + key::PAUSE) = 0;
}

void HeldKeys()
{
    // Remake addition: the arrow keys move the bat too.
    orig.b(addr::KEYS + key::LEFT) = IsKeyDown(KEY_LEFT_SHIFT) || IsKeyDown(KEY_LEFT);
    orig.b(addr::KEYS + key::RIGHT) = IsKeyDown(KEY_RIGHT_SHIFT) || IsKeyDown(KEY_RIGHT);
    orig.b(addr::KEYS + key::ESC) = IsKeyDown(KEY_ESCAPE);
    orig.b(addr::KEYS + key::F10) = IsKeyDown(KEY_F10);
}

// After the settle phase: next life, next level or the end (39c3).
void EndOfPlay()
{
    switch (result) {
    case PlayResult::Escape:
        state = STATE_TITLE;
        break;
    case PlayResult::LevelCleared:
        if (!SimNextLevel(orig)) {
            state = STATE_WIN;
            break;
        }
        phase = Phase::NextLevelWait;
        wait_ticks = NEXT_LEVEL_WAIT_TICKS;
        break;
    case PlayResult::BallsLost:
        if (SimLoseLife(orig))
            StartLife();
        else
            state = STATE_GAMEOVER;
        break;
    case PlayResult::Playing:
        break;
    }
}

void Tick()
{
    switch (phase) {
    case Phase::LifeWait:
        // 3b4c: 120 ticks or until a key. Then 3cdc reads that key: Esc ends
        // the game after one tick of play, F10 quits.
        if (--wait_ticks > 0 && !key_pressed)
            break;
        if (IsKeyDown(KEY_ESCAPE))
            orig.b(addr::ESCAPE) = 1;
        if (IsKeyDown(KEY_F10))
            quit_requested = true;
        phase = Phase::Play;
        // 50cb clears the keys when the play loop starts.
        std::fill_n(&orig.mem[addr::KEYS], 6, 0);
        break;
    case Phase::Play: {
        HeldKeys();
        TickStatus status = SimPlayTick(orig);
        ReleaseKeys();
        if (status == TickStatus::Quit)
            quit_requested = true;
        if (status != TickStatus::Ran)
            break;
        PlaySimSounds();
        SimFlipPage(orig);
        result = SimPlayResult(orig);
        PlaySimSounds();
        if (result != PlayResult::Playing) {
            phase = Phase::Settle;
            settle_step = 0;
        }
        break;
    }
    case Phase::Settle: {
        bool more = SimSettleStep(orig, settle_step);
        PlaySimSounds();
        if (!more)
            EndOfPlay();
        break;
    }
    case Phase::NextLevelWait:
        if (--wait_ticks > 0)
            break;
        SimLevelStart(orig);
        StartLife();
        break;
    }
    key_pressed = false;
}

} // namespace

void InitGame(const std::array<Level, LEVEL_COUNT>& levels)
{
    SimInit(orig, levels);
}

void StartGame(int level)
{
    SimGameStart(orig);
    orig.b(addr::LEVEL) = uint8_t(level);
    SimLevelStart(orig);
    StartLife();
    tick_time = 0.0f;
}

void UpdatePlay(float dt)
{
    // Remake addition: Escape during the pause leaves the game at once.
    if (orig.paused && IsKeyPressed(KEY_ESCAPE)) {
        orig.paused = false;
        state = STATE_TITLE;
        return;
    }
    if (GetKeyPressed() != 0)
        key_pressed = true;
    PressKeys();

    // Whole ticks at 70 Hz; after a long stall, don't try to catch up.
    tick_time += dt;
    if (tick_time > 8.0f / TICK_HZ)
        tick_time = 8.0f / TICK_HZ;
    while (tick_time >= 1.0f / TICK_HZ && state == STATE_PLAY && !quit_requested) {
        tick_time -= 1.0f / TICK_HZ;
        Tick();
    }
}
