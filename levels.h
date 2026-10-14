#pragma once

#include <array>
#include <cstdint>

constexpr int LEVEL_COUNT = 30;
constexpr int LEVEL_COLS = 14;
constexpr int LEVEL_ROWS = 19;

struct Level {
    uint8_t bricks[LEVEL_COLS][LEVEL_ROWS]; // brick type: 0=empty, 0x1C=indestructible
    uint8_t attrs[LEVEL_COLS][LEVEL_ROWS]; // brick attributes (0xFF=normal, other=powerup)
};

int load_levels(const char* filename, std::array<Level, LEVEL_COUNT>& levels);
