/*
 * BITMAPS.PAR file structure (11568 bytes total, no encryption):
 *   VGA mode 0x10: 640x350, 16 colors, 4 bit planes.
 *   Data is stored in EGA/VGA planar format: 1 bit per pixel per plane,
 *   8 pixels packed per byte. A pixel's 4-bit color index is formed by
 *   combining the corresponding bit from each of the 4 planes.
 *
 *   The file contains 3 sections, each read 4 times (once per VGA plane).
 *   Within each section the planes are stored sequentially: plane0, plane1,
 *   plane2, plane3.
 *
 *   Section 1 — Score digits (file offset 0, 528 bytes):
 *     11 characters: blank (index 0) + digits '0'..'9' (indices 1..10)
 *     8 pixels wide x 12 pixels tall, 1 byte/row, 12 bytes per char per plane.
 *     132 bytes per plane x 4 planes = 528 bytes.
 *     Loaded to VGA offset 0xDC00. Rendering routine at 0x3D00 uses base
 *     0xDC0C (skips the blank) with stride index*12.
 *
 *   Section 2 — Brick sprites (file offset 528, 6336 bytes):
 *     33 sprites (indices 0..32).
 *     32 pixels wide x 12 pixels tall, 4 bytes/row, 48 bytes per sprite per plane.
 *     1584 bytes per plane x 4 planes = 6336 bytes.
 *     Loaded to VGA offset 0xDC84. Rendering routine at 0x5A1F uses
 *     stride index*48, blits 4 bytes x 12 rows via VGA latched copy.
 *
 *   Section 3 — Game sprites (file offset 6864, 4704 bytes):
 *     Paddle, ball, borders, power-up icons, and other UI elements.
 *     2 bytes (16 pixels) wide, various heights.
 *     1176 bytes per plane x 4 planes = 4704 bytes.
 *     Loaded to VGA offset 0xE47C.
 *
 * Planar-to-indexed conversion:
 *   For each byte position, bit 7 is the leftmost pixel.
 *   color = plane0_bit | (plane1_bit << 1) | (plane2_bit << 2) | (plane3_bit << 3)
 */

#include "bitmaps.h"

#include <stdio.h>

constexpr int DIGIT_PLANE_BYTES = DIGIT_W / 8 * DIGIT_H; // 12
constexpr int DIGIT_PLANE_SIZE = DIGIT_COUNT * DIGIT_PLANE_BYTES; // 132
constexpr int BRICK_PLANE_BYTES = BRICK_W / 8 * BRICK_H; // 48
constexpr int BRICK_PLANE_SIZE = BRICK_COUNT * BRICK_PLANE_BYTES; // 1584

/* Convert a rectangular region of planar data to indexed pixels.
 * planes: array of 4 plane pointers
 * offset: byte offset into each plane where the sprite starts
 * bytes_per_row: number of bytes per row in the planar data
 * rows: number of pixel rows
 * out: output buffer, width = bytes_per_row * 8 pixels
 * out_stride: number of bytes per row in the output buffer */
static void planar_to_indexed(const uint8_t* planes[4], int offset,
    int bytes_per_row, int rows,
    uint8_t* out, int out_stride)
{
    for (int y = 0; y < rows; y++) {
        int src = offset + y * bytes_per_row;
        uint8_t* dst = out + y * out_stride;
        for (int xb = 0; xb < bytes_per_row; xb++) {
            uint8_t p0 = planes[0][src + xb];
            uint8_t p1 = planes[1][src + xb];
            uint8_t p2 = planes[2][src + xb];
            uint8_t p3 = planes[3][src + xb];
            for (int bit = 7; bit >= 0; bit--) {
                *dst++ = ((p0 >> bit) & 1)
                    | (((p1 >> bit) & 1) << 1)
                    | (((p2 >> bit) & 1) << 2)
                    | (((p3 >> bit) & 1) << 3);
            }
        }
    }
}

int load_bitmaps(const char* filename, BitMaps& bitmaps)
{
    uint8_t section1_planes[4][DIGIT_PLANE_SIZE];
    uint8_t section2_planes[4][BRICK_PLANE_SIZE];
    uint8_t section3_planes[4][ICON_SHEET_PLANE_SIZE];

    FILE* f = fopen(filename, "rb");
    if (!f)
        return -1;

    // Read section 1: 4 planes x 132 bytes
    for (int p = 0; p < 4; p++) {
        if (fread(section1_planes[p], 1, DIGIT_PLANE_SIZE, f) != DIGIT_PLANE_SIZE) {
            fclose(f);
            return -1;
        }
    }

    // Read section 2: 4 planes x 1584 bytes
    for (int p = 0; p < 4; p++) {
        if (fread(section2_planes[p], 1, BRICK_PLANE_SIZE, f) != BRICK_PLANE_SIZE) {
            fclose(f);
            return -1;
        }
    }

    // Read section 3: 4 planes x 1176 bytes
    for (int p = 0; p < 4; p++) {
        if (fread(section3_planes[p], 1, ICON_SHEET_PLANE_SIZE, f) != ICON_SHEET_PLANE_SIZE) {
            fclose(f);
            return -1;
        }
    }

    fclose(f);

    // Convert digit sprites to indexed pixels
    const uint8_t* s1[4] = {
        section1_planes[0], section1_planes[1],
        section1_planes[2], section1_planes[3]
    };
    for (int i = 0; i < DIGIT_COUNT; i++) {
        planar_to_indexed(s1, i * DIGIT_PLANE_BYTES,
            DIGIT_W / 8, DIGIT_H,
            bitmaps.digit_pixels[i][0], DIGIT_W);
    }

    // Convert brick sprites to indexed pixels
    const uint8_t* s2[4] = {
        section2_planes[0], section2_planes[1],
        section2_planes[2], section2_planes[3]
    };
    for (int i = 0; i < BRICK_COUNT; i++) {
        planar_to_indexed(s2, i * BRICK_PLANE_BYTES,
            BRICK_W / 8, BRICK_H,
            bitmaps.brick_pixels[i][0], BRICK_W);
    }

    // Convert section 3 as one large image
    const uint8_t* s3[4] = {
        section3_planes[0], section3_planes[1],
        section3_planes[2], section3_planes[3]
    };
    planar_to_indexed(s3, 0, ICON_SHEET_W / 8, ICON_SHEET_H,
        bitmaps.icon_sheet_pixels[0], ICON_SHEET_W);

    return 0;
}
