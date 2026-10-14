#pragma once

// HiScores.PAR, the original's high-score table file (3475 reads it, 34d7
// writes it, 352f creates it). Its 260 bytes are the same as the original's
// memory at 0xd266..0xd369 (sim.h): 10 scores of 6 digits + 0xFF, 10 names of
// 16 bytes, 10 levels of 2 digits + 0xFF. Kept in the current directory.

#include <cstdint>

constexpr int HISCORE_FILE_SIZE = 260;
extern const uint8_t DEFAULT_HISCORES[HISCORE_FILE_SIZE];

// Read the table. If the file is missing, create it with the default table.
// On an error the table is the default one and false is returned.
bool LoadHiScores(uint8_t table[HISCORE_FILE_SIZE]);
bool SaveHiScores(const uint8_t table[HISCORE_FILE_SIZE]);
