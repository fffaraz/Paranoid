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
    STATE_GAMEOVER,
    STATE_WIN };

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
// While the "Level xx" message shows: ticks since it started (from 0); else -1.
int LevelIntroStep();
