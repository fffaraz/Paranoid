#pragma once

#include <cstdint>

// Section 1: Score digits
constexpr int DIGIT_COUNT = 11; // blank + '0'..'9'
constexpr int DIGIT_W = 8; // pixels
constexpr int DIGIT_H = 12; // pixels

// Section 2: Brick sprites
constexpr int BRICK_COUNT = 33;
constexpr int BRICK_W = 32; // pixels
constexpr int BRICK_H = 12; // pixels

// Section 3: Game sprites (paddle, ball, borders, etc.)
constexpr int ICON_SHEET_PLANE_SIZE = 1176;
constexpr int ICON_SHEET_W = 16; // pixels (2 bytes wide)
constexpr int ICON_SHEET_H = ICON_SHEET_PLANE_SIZE / (ICON_SHEET_W / 8); // 588 rows

struct BitMaps {
    // 4-bit indexed pixel arrays (one byte per pixel, value 0..15)
    uint8_t digit_pixels[DIGIT_COUNT][DIGIT_H][DIGIT_W];
    uint8_t brick_pixels[BRICK_COUNT][BRICK_H][BRICK_W];
    uint8_t icon_sheet_pixels[ICON_SHEET_H][ICON_SHEET_W];
};

int load_bitmaps(const char* filename, BitMaps& bitmaps);
