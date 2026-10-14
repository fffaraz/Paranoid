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

void DrawTitleScreen(void);
void DrawPlay(void);
