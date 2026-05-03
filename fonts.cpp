/*
 * FONTS.PAR file structure (2920 bytes total, no encryption):
 *   Monochrome bitmask format: 1 bit per pixel, 8 pixels packed per byte.
 *   Bit 7 is the leftmost pixel. A set bit means the pixel is drawn in
 *   the current foreground color (determined by VGA set/reset registers).
 *
 *   Section 1 — Small font (file offset 0, 512 bytes):
 *     64 characters mapping to ASCII 0x20 (' ') through 0x5F ('_').
 *     8 pixels wide x 8 pixels tall, 1 byte/row, 8 bytes per character.
 *     Loaded to memory 0xC364. Rendering routine at 0x3DE7 uses stride
 *     index*8, draws 7 rows via VGA bit-mask register.
 *     Also reused for lowercase letters: 'a'..'z' map to indices
 *     0x21..0x3A (char - 0x40), drawn at a 6-row vertical offset.
 *
 *   Section 2 — Medium font (file offset 512, 896 bytes):
 *     64 characters mapping to ASCII 0x20 (' ') through 0x5F ('_').
 *     8 pixels wide x 14 pixels tall, 1 byte/row, 14 bytes per character.
 *     Loaded to memory 0xC564. Rendering routine at 0x455D uses stride
 *     index*14, draws 14 rows via VGA bit-mask register.
 *
 *   Section 3 — Large font / title sprites (file offset 1408, 1512 bytes):
 *     14 sprites (game title, UI elements).
 *     24 pixels wide x 36 pixels tall, 3 bytes/row, 108 bytes per sprite.
 *     Loaded to memory 0xC8E4. Rendering routine at 0x464F uses stride
 *     index*108, draws 36 rows of 3 bytes via VGA bit-mask register.
 *
 * Bitmask-to-pixel conversion:
 *   For each byte, bit 7 is the leftmost pixel.
 *   pixel = (byte >> (7 - bit_position)) & 1
 */

#include "fonts.h"

#include <stdio.h>

/* Convert monochrome bitmask data to 1-byte-per-pixel.
 * raw: source bitmask data
 * offset: byte offset into raw where the glyph starts
 * bytes_per_row: number of bytes per row in the bitmask data
 * rows: number of pixel rows
 * out: output buffer (1 byte per pixel, 0 or 1)
 * out_stride: number of bytes per row in the output buffer */
static void bitmask_to_pixels(const uint8_t* raw, int offset,
    int bytes_per_row, int rows,
    uint8_t* out, int out_stride)
{
    for (int y = 0; y < rows; y++) {
        int src = offset + y * bytes_per_row;
        uint8_t* dst = out + y * out_stride;
        for (int xb = 0; xb < bytes_per_row; xb++) {
            uint8_t byte = raw[src + xb];
            for (int bit = 7; bit >= 0; bit--) {
                *dst++ = (byte >> bit) & 1;
            }
        }
    }
}

int load_fonts(const char* filename, Fonts& fonts)
{
    uint8_t section1_raw[SEC1_FONT_SIZE];
    uint8_t section2_raw[SEC2_FONT_SIZE];
    uint8_t section3_raw[SEC3_FONT_SIZE];

    FILE* f = fopen(filename, "rb");
    if (!f)
        return -1;

    if (fread(section1_raw, 1, SEC1_FONT_SIZE, f) != SEC1_FONT_SIZE || fread(section2_raw, 1, SEC2_FONT_SIZE, f) != SEC2_FONT_SIZE || fread(section3_raw, 1, SEC3_FONT_SIZE, f) != SEC3_FONT_SIZE) {
        fclose(f);
        return -1;
    }

    fclose(f);

    // Convert small font glyphs
    for (int i = 0; i < FONT_SMALL_CHARS; i++) {
        bitmask_to_pixels(section1_raw, i * FONT_SMALL_BYTES,
            FONT_SMALL_W / 8, FONT_SMALL_H,
            fonts.font_small[i][0], FONT_SMALL_W);
    }

    // Convert medium font glyphs
    for (int i = 0; i < FONT_MED_CHARS; i++) {
        bitmask_to_pixels(section2_raw, i * FONT_MED_BYTES,
            FONT_MED_W / 8, FONT_MED_H,
            fonts.font_medium[i][0], FONT_MED_W);
    }

    // Convert large font / title sprites
    for (int i = 0; i < FONT_LARGE_CHARS; i++) {
        bitmask_to_pixels(section3_raw, i * FONT_LARGE_BYTES,
            FONT_LARGE_W / 8, FONT_LARGE_H,
            fonts.font_large[i][0], FONT_LARGE_W);
    }

    return 0;
}
