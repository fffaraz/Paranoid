#pragma once

#include <array>
#include <cstdint>

constexpr int LEVEL_COUNT = 30;
constexpr int LEVEL_COLS = 19;
constexpr int LEVEL_ROWS = 14;

struct Level {
    uint8_t bricks[LEVEL_ROWS][LEVEL_COLS]; // brick type: 0=empty, 0x1C=indestructible
    uint8_t attrs[LEVEL_ROWS][LEVEL_COLS]; // brick attributes (0xFF=normal, other=powerup)
};

int load_levels(const char* filename, std::array<Level, LEVEL_COUNT>& levels);
