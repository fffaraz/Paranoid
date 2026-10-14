#pragma once

// Drawing: EGA palette, textures loaded from the data files, text and screens.

#include "bitmaps.h"
#include "fonts.h"

#include <raylib.h>

#include <stdint.h>

extern const Color EGA_PALETTE[16];

void LoadGameTextures(const BitMaps& bitmaps, const Fonts& fonts);

void DrawTextEGA(const char* text, int x, int y, Color tint);
void DrawTextEGAMedium(const char* text, int x, int y, Color tint);
int TextWidthMedium(const char* text);
int TextWidthSmall(const char* text);
void DrawTextCenteredMedium(const char* text, int y, Color tint);
void DrawTextCenteredSmall(const char* text, int y, Color tint);
void DrawTextEGALarge(const char* text, int x, int y, Color tint);

void DrawRaisedBox(int x1, int y1, int x2, int y2);
void DrawSunkenBox(int x1, int y1, int x2, int y2);
// A message as 44ac draws it: a box that opens over MessageOpenTicks(lines)
// ticks, then the text on the next tick. step counts ticks from 1.
int MessageOpenTicks(int lines);
void DrawMessage(const char* const* lines, int count, int width, bool over_playfield, int step);
void DrawLevelIntro(int level, int step);
void DrawGameOver(int step);
constexpr int ENDING_LINES = 9;
void DrawEnding(int step);
void DrawNewHighScore(int step);
// The high-score screen without its bouncing balls (4a3a), and the name being
// typed on row `rank` (1..10).
void DrawHighScoreTable();
void DrawNameInput(int rank);
// The attract loop's high-score screen (4ba7): the table and the balls.
void DrawHighScoreScreen(bool balls);

void DrawTitleScreen(void);
struct PlayView;
void DrawPlay(const PlayView& view);
