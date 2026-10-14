#pragma once

// The game flow around the simulation in sim.cpp: a game (39b2) runs levels
// and lives, each life a 120-tick wait, the play loop and the settle phase.
// The simulation runs at the original's 70 ticks per second.

#include "levels.h"
#include "sim.h"
#include "sound.h"

#include <array>

enum GameState { STATE_TITLE,
    STATE_INFO,
    STATE_PLAY,
    STATE_HISCORES, // the attract loop's high-score screen (4ba7)
    STATE_DEMO }; // the attract loop's demo level (3b69)

// A message shown in the play state (44ac).
enum class Message { None,
    LevelIntro, // "Level xx" before each level (37db)
    GameOver, // over the playfield after the last life (3ab5)
    Ending, // over the playfield after level 30 (3caf)
    NewHighScore }; // over the last message when the score makes the table (4882)

constexpr int PLAY_ROWS = 19;
constexpr int PLAY_COLS = 14;
constexpr int PLAY_LEFT = 16;
constexpr int BRICK_TOP = 12;

// Height of one icon frame in the bitmap sheet.
constexpr int ICON_FRAME_H = 12;

extern Sounds sounds;
extern GameState state;
extern OrigState orig; // the original's memory, see sim.h
extern bool quit_requested; // F10 during play

void InitGame(const std::array<Level, LEVEL_COUNT>& levels);
void StartGame(int level); // level 1..30
void UpdatePlay(float dt);
// What DrawPlay shows of the moving things. The original erases them in
// some phases without drawing them again.
struct PlayView {
    bool icons = true;
    bool movers = true; // balls, bat and laser shots
};
PlayView CurrentView();

// The message on screen, if any. step is its step for DrawMessage: ticks
// since its box started opening (0 or less: not yet).
Message CurrentMessage(int& step);
// The finished message still on screen under the current one.
Message MessageBelow();
// While a name is typed into the high-score table: its rank (1..10); else 0.
int NameEntryRank();

// The high-score screen with its bouncing balls (4ba7). UpdateHighScoreScreen
// returns 0 while it goes on, the raylib key that ended it, or -1 after its
// 1024 ticks.
void StartHighScoreScreen();
int UpdateHighScoreScreen(float dt);
bool HighScoreBallsShown();

// The five F1 information pages (4bb4). UpdateInfo returns true after the
// last one.
void StartInfo();
bool UpdateInfo(float dt);
int InfoPage();

// A demo level of the attract loop (3b69). UpdateDemo returns like
// UpdateHighScoreScreen.
void StartDemoLevel();
int UpdateDemo(float dt);
