#pragma once

#include <cstdint>

// Section 1: Small font (8x8)
constexpr int FONT_SMALL_CHARS = 64; // ASCII 0x20 (' ') .. 0x5F ('_')
constexpr int FONT_SMALL_W = 8; // pixels
constexpr int FONT_SMALL_H = 8; // pixels
constexpr int FONT_SMALL_BYTES = FONT_SMALL_W / 8 * FONT_SMALL_H; // 8
constexpr int SEC1_FONT_SIZE = FONT_SMALL_CHARS * FONT_SMALL_BYTES; // 512

// Section 2: Medium font (8x14)
constexpr int FONT_MED_CHARS = 64; // ASCII 0x20 (' ') .. 0x5F ('_')
constexpr int FONT_MED_W = 8; // pixels
constexpr int FONT_MED_H = 14; // pixels
constexpr int FONT_MED_BYTES = FONT_MED_W / 8 * FONT_MED_H; // 14
constexpr int SEC2_FONT_SIZE = FONT_MED_CHARS * FONT_MED_BYTES; // 896

// Section 3: Large font / title sprites (24x36)
constexpr int FONT_LARGE_CHARS = 14;
constexpr int FONT_LARGE_W = 24; // pixels (3 bytes/row)
constexpr int FONT_LARGE_H = 36; // pixels
constexpr int FONT_LARGE_BYTES = FONT_LARGE_W / 8 * FONT_LARGE_H; // 108
constexpr int SEC3_FONT_SIZE = FONT_LARGE_CHARS * FONT_LARGE_BYTES; // 1512

struct Fonts {
    // 1-bit-per-pixel converted to 1-byte-per-pixel (0 or 1)
    uint8_t font_small[FONT_SMALL_CHARS][FONT_SMALL_H][FONT_SMALL_W];
    uint8_t font_medium[FONT_MED_CHARS][FONT_MED_H][FONT_MED_W];
    uint8_t font_large[FONT_LARGE_CHARS][FONT_LARGE_H][FONT_LARGE_W];
};

int load_fonts(const char* filename, Fonts& fonts);
