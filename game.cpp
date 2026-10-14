#include "game.h"

#include "draw.h"
#include "hiscore.h"

#include <raylib.h>

#include <algorithm>
#include <stdio.h>

Sounds sounds;
GameState state = STATE_TITLE;
OrigState orig;
bool quit_requested = false;

namespace {

constexpr int TICK_HZ = 70;
constexpr int LIFE_WAIT_TICKS = 120; // 3610 -> 3b4c
constexpr int NEXT_LEVEL_WAIT_TICKS = 30; // 38b7
// Lines of each message and how long it waits for a key after its text
// appears (3b29; 0: no limit, 4f72).
struct MessageSpec {
    int lines, wait_ticks;
};
MessageSpec Spec(Message m)
{
    switch (m) {
    case Message::GameOver:
        return { 3, 240 }; // 0x8c0
    case Message::Ending:
        return { 9, 0 }; // 0x8d7
    case Message::NewHighScore:
        return { 7, 200 }; // 0x597
    default:
        return { 3, 240 }; // "Level xx", 0x9b2
    }
}

enum class Phase { Message, LifeWait, Play, Settle, NextLevelWait, NameEntry };

Phase phase = Phase::LifeWait;
int wait_ticks = 0;
Message message = Message::None;
Message message_below = Message::None; // a finished message still on screen
int message_step = 0; // ticks since the message phase started
int message_lead = 0; // ticks before the message's box starts
int hiscore_rank = 0; // the row being named
int hiscore_ticks = 0; // ticks of the high-score screen: 1 shows the table, then 1 per ball move
int hiscore_key = 0; // the key that ends the high-score screen

constexpr int HISCORE_BALL_TICKS = 1024; // 4abd
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
    message_below = message;
    message = m;
    message_step = 0;
    message_lead = lead_ticks;
}

// 37db: the "Level xx" message, then the level.
void StartLevel()
{
    ShowMessage(Message::LevelIntro, 0);
}

// 44ac: the box opens one step per tick and the text appears on the next
// tick. Then the keyboard is flushed and the game waits for a key, for at
// most the message's wait.
bool MessageFinished()
{
    const MessageSpec spec = Spec(message);
    const int shown = message_lead + MessageOpenTicks(spec.lines) + 1; // the tick the text appears
    if (++message_step <= shown)
        return false; // keys pressed until now are flushed
    if (key_pressed)
        return true;
    return spec.wait_ticks > 0 && message_step >= shown + spec.wait_ticks;
}

// After a game the original's attract loop starts with the high-score screen
// (3c38 -> 4ba7).
void GoToHighScores()
{
    StartHighScoreScreen();
    state = STATE_HISCORES;
}

// 4882, after "Game Over" or the ending: a score that makes the table gets
// the "New High Score" message and the name entry.
void CheckHighScore()
{
    hiscore_rank = SimEnterHighScore(orig);
    if (hiscore_rank == 11) {
        GoToHighScores();
        return;
    }
    ShowMessage(Message::NewHighScore, 0);
}

void SaveTable()
{
    if (!SaveHiScores(&orig.mem[addr::HISCORE_SCORES]))
        printf("WARNING: CAN'T WRITE HiScores.PAR\n");
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
    if (pressed(KEY_SPACE))
        orig.b(addr::KEYS + key::ACTION) = 1;
}

// Released after the tick, so a press shorter than a frame still counts.
void ReleaseKeys()
{
    if (!IsKeyDown(KEY_SPACE))
        orig.b(addr::KEYS + key::ACTION) = 0;
    if (!IsKeyDown(KEY_P))
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
        GoToHighScores();
        break;
    case PlayResult::LevelCleared:
        if (!SimNextLevel(orig)) {
            ShowMessage(Message::Ending, 0); // 3caf, straight after the settle
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
            message = Message::None;
        } else if (message == Message::NewHighScore) {
            // 4a3a draws the table, then 48c0 takes the name.
            phase = Phase::NameEntry;
            SimStartNameInput(orig);
            message = message_below = Message::None;
        } else {
            CheckHighScore();
        }
        break;
    case Phase::NameEntry:
        break; // typed keys are handled per frame, see UpdatePlay
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
    LoadHiScores(&orig.mem[addr::HISCORE_SCORES]); // 3475 at start-up
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
        } else if (message == Message::Ending || message == Message::NewHighScore) {
            view.movers = view.icons = false;
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

Message MessageBelow()
{
    return phase == Phase::Message ? message_below : Message::None;
}

int NameEntryRank()
{
    return phase == Phase::NameEntry ? hiscore_rank : 0;
}

void UpdatePlay(float dt)
{
    if (phase == Phase::NameEntry) {
        // 4f7f reads BIOS keys, not ticks: characters, Backspace, Enter.
        for (int c = GetCharPressed(); c != 0; c = GetCharPressed()) {
            if (c < 0x80)
                SimNameInputKey(orig, uint8_t(c));
        }
        if (IsKeyPressed(KEY_BACKSPACE) || IsKeyPressedRepeat(KEY_BACKSPACE))
            SimNameInputKey(orig, 8);
        if (IsKeyPressed(KEY_ENTER) || IsKeyPressed(KEY_KP_ENTER)) {
            SimStoreName(orig, hiscore_rank);
            SaveTable(); // 34d7
            GoToHighScores();
        }
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

void StartHighScoreScreen()
{
    // 4ba7: 4a3a draws the table (shown after one tick), then 4abd starts the
    // balls. 3c47 has flushed the keyboard.
    SimHighScoreBallsStart(orig);
    hiscore_ticks = 0;
    hiscore_key = 0;
    tick_time = 0.0f;
}

int UpdateHighScoreScreen(float dt)
{
    if (int key = GetKeyPressed())
        hiscore_key = key;
    tick_time += dt;
    if (tick_time > 8.0f / TICK_HZ)
        tick_time = 8.0f / TICK_HZ;
    while (tick_time >= 1.0f / TICK_HZ) {
        tick_time -= 1.0f / TICK_HZ;
        if (hiscore_ticks++ == 0)
            continue; // the table alone
        SimHighScoreBallsTick(orig);
        SimFlipPage(orig);
        // 4ad1: a key ends the screen after a move; so do 1024 moves.
        if (hiscore_key)
            return hiscore_key;
        if (hiscore_ticks > HISCORE_BALL_TICKS)
            return -1;
    }
    return 0;
}

bool HighScoreBallsShown()
{
    return hiscore_ticks > 1;
}
