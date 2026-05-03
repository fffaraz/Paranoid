/*
 * LEVELS.PAR file structure (15960 bytes total):
 *   Bytes 0..7979:      Encrypted region 1 — brick types for all 30 levels
 *   Bytes 7980..15959:  Encrypted region 2 — brick attributes for all 30 levels
 *
 * Decryption (routine at 0x35A2 in PARANOID.COM):
 *   The 23-byte key is the raw machine code at address 0x61C0 in the COM binary.
 *   Both regions are split into 3 chunks of 2660 bytes each.
 *   For each chunk pair (region1 chunk, then region2 chunk):
 *     - Key position and counter reset to 0
 *     - For each byte: decrypted = (encrypted XOR key[key_pos]) - counter
 *     - key_pos cycles through 0..22, counter increments and wraps at 256
 *     - Region2 chunk continues from where region1 chunk left off
 *       (key_pos and counter are NOT reset between the two)
 *
 * Level data (30 levels, 19 columns x 14 rows = 266 bytes each):
 *   bricks[][]: brick type per cell
 *     0x00 = empty
 *     0x1C = indestructible (not counted toward breakable total)
 *     other values = breakable brick types (0x10..0x1B, etc.)
 *   attrs[][]: brick attributes per cell
 *     0xFF = normal brick (no powerup)
 *     other values = hidden powerup type revealed when brick is destroyed
 *
 *   Level offset = level_index * 266 into each decrypted region.
 *   Grid is stored row-major: bricks[row][col], stride = 19 bytes per row.
 */

#include "levels.h"

#include <array>
#include <stdio.h>
#include <string.h>

constexpr int LEVEL_SIZE = LEVEL_COLS * LEVEL_ROWS; // 266
constexpr int REGION_SIZE = LEVEL_COUNT * LEVEL_SIZE; // 7980
constexpr int CHUNK_SIZE = 2660;
constexpr int KEY_LEN = 23;

// Encryption key: machine code bytes at offset 0x61C0 in PARANOID.COM
static const uint8_t key[KEY_LEN] = {
    0x50, 0x53, 0x51, 0x52, 0x8B, 0x04, 0x05, 0x30,
    0x00, 0x8B, 0x1D, 0x83, 0xC3, 0x30, 0x01, 0xD8,
    0xB9, 0xF5, 0x00, 0x8A, 0x04, 0x46, 0x88
};

static void decrypt_regions(uint8_t* region1, uint8_t* region2)
{
    /*
     * Decryption from routine at 0x35A2 in PARANOID.COM:
     * Processes both regions in 3 interleaved chunks of 2660 bytes.
     * Each chunk pair resets the key position and counter.
     * Algorithm: decrypted = (encrypted XOR key[pos]) - counter
     */
    for (int chunk = 0; chunk < 3; chunk++) {
        int key_pos = 0;
        uint8_t counter = 0;

        uint8_t* p = region1 + chunk * CHUNK_SIZE;
        for (int i = 0; i < CHUNK_SIZE; i++) {
            p[i] = (uint8_t)((p[i] ^ key[key_pos]) - counter);
            key_pos = (key_pos + 1) % KEY_LEN;
            counter++;
        }

        p = region2 + chunk * CHUNK_SIZE;
        for (int i = 0; i < CHUNK_SIZE; i++) {
            p[i] = (uint8_t)((p[i] ^ key[key_pos]) - counter);
            key_pos = (key_pos + 1) % KEY_LEN;
            counter++;
        }
    }
}

int load_levels(const char* filename, std::array<Level, LEVEL_COUNT>& levels)
{
    uint8_t region1[REGION_SIZE];
    uint8_t region2[REGION_SIZE];

    FILE* f = fopen(filename, "rb");
    if (!f)
        return -1;

    if (fread(region1, 1, REGION_SIZE, f) != REGION_SIZE || fread(region2, 1, REGION_SIZE, f) != REGION_SIZE) {
        fclose(f);
        return -1;
    }
    fclose(f);

    decrypt_regions(region1, region2);

    for (int i = 0; i < LEVEL_COUNT; i++) {
        memcpy(levels[i].bricks, region1 + i * LEVEL_SIZE, LEVEL_SIZE);
        memcpy(levels[i].attrs, region2 + i * LEVEL_SIZE, LEVEL_SIZE);
    }

    return 0;
}
