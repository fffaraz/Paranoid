#include "game.h"

#include "draw.h"

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
constexpr int MESSAGE_WAIT_TICKS = 240; // 3b29 after "Level xx" and "Game Over"

enum class Phase { Message, LifeWait, Play, Settle, NextLevelWait };

Phase phase = Phase::LifeWait;
int wait_ticks = 0;
Message message = Message::None;
int message_step = 0; // ticks since the message phase started
int message_lead = 0; // ticks before the message's box starts
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

void ShowMessage(Message m, int lead_ticks)
{
    phase = Phase::Message;
    message = m;
    message_step = 0;
    message_lead = lead_ticks;
}

// 37db: the "Level xx" message, then the level.
void StartLevel()
{
    ShowMessage(Message::LevelIntro, 0);
}

// 44ac + 3b29: the box opens one step per tick, the text appears on the next
// tick, then the keyboard is flushed and the game waits 240 ticks or for a
// key. Both messages that wait like this have 3 lines.
bool MessageFinished()
{
    const int shown = message_lead + MessageOpenTicks(3) + 1; // the tick the text appears
    if (++message_step <= shown)
        return false; // keys pressed until now are flushed
    return message_step >= shown + MESSAGE_WAIT_TICKS || key_pressed;
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
            ShowMessage(Message::GameOver, 1); // 3ab5: erase the icons, flip
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
    case Phase::Message:
        if (!MessageFinished())
            break;
        if (message == Message::LevelIntro) {
            SimLevelStart(orig);
            StartLife();
        } else {
            // TODO item 19: the high-score check (4882) comes here.
            state = STATE_TITLE;
        }
        message = Message::None;
        break;
    case Phase::NextLevelWait:
        if (--wait_ticks > 0)
            break;
        StartLevel();
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
    StartLevel();
    tick_time = 0.0f;
}

PlayView CurrentView()
{
    PlayView view;
    switch (phase) {
    case Phase::Settle:
        // 36fd erases the balls, bat, shots and icons from its first tick
        // and draws only the icons again, and those only if the level goes on.
        if (settle_step > 0) {
            view.movers = false;
            view.icons = result != PlayResult::LevelCleared;
        }
        break;
    case Phase::NextLevelWait:
        view.movers = view.icons = false;
        break;
    case Phase::Message:
        if (message == Message::GameOver) {
            view.movers = false;
            view.icons = message_step < message_lead; // 3ab5 erases them
        }
        break;
    default:
        break;
    }
    return view;
}

Message CurrentMessage(int& step)
{
    step = message_step - message_lead;
    return phase == Phase::Message ? message : Message::None;
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
