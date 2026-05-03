#include "sound.h"

#include <cstdlib>

/*
 * Sound data decoded from PARANOID.COM.
 * The original uses PC speaker via PIT channel 2 (ports 0x42/0x43/0x61).
 * Frequency = PIT_CLOCK / divisor.
 *
 * Sound playback engine (FUN_0000_521a, runs at ~70 Hz / VGA refresh):
 *   Per-sound data layout (after the 1-byte priority byte):
 *     word: initial divisor
 *     {byte: tick count, word: signed delta}+
 *     byte: 0xFF terminator
 *
 *   On each tick within a segment, divisor is incremented by `delta`
 *   (only if non-zero) and the new value is written to the PIT.
 *   In other words: the segment's *new* frequency (initial + delta) is
 *   what plays for the segment's duration.  We model this in MakePCSound
 *   by applying delta BEFORE writing samples.
 *
 * Decoded sound table addresses:
 *   0x0C7C — paddle catch (sticky)
 *   0x0C83 — wall bounce
 *   0x0C8A — top bounce
 *   0x0C91 — paddle bounce
 *   0x0C9E — laser hits brick
 *   0x0CB7 — laser fire
 *   0x0CBE — barrier bounce
 *   0x0CC5 — game over fanfare
 *   0x0CDE — level complete fanfare
 *   0x0CF7..0x0D77 — 12 brick-destroy sounds (we use 0x0CF7)
 */

constexpr float PIT_CLOCK = 1193182.0f;
constexpr float TICK_HZ = 70.0f; // VGA refresh rate

/* Build a PC-speaker square wave from PIT divisor segments.
 * Each segment: {initial_divisor (0 = continue), delta_per_tick, duration_ticks}
 *
 * The original applies delta then outputs each tick, so we do the same:
 * a segment with delta != 0 will start playing at (current_div + delta). */
static Sound MakePCSound(int sr, const int segs[][3], int nseg)
{
    int total_ticks = 0;
    for (int i = 0; i < nseg; i++)
        total_ticks += segs[i][2];

    int samples_per_tick = sr / (int)TICK_HZ;
    int total_samples = total_ticks * samples_per_tick;
    short* data = (short*)malloc(total_samples * sizeof(short));
    if (!data) {
        Sound empty = { 0 };
        return empty;
    }

    int pos = 0;
    float phase = 0.0f;
    int divisor = segs[0][0];

    for (int seg = 0; seg < nseg; seg++) {
        if (segs[seg][0] > 0)
            divisor = segs[seg][0];
        const int delta = segs[seg][1];
        const int ticks = segs[seg][2];

        for (int t = 0; t < ticks; t++) {
            divisor += delta;
            if (divisor < 1)
                divisor = 1;

            const float freq = PIT_CLOCK / divisor;
            int tick_end = pos + samples_per_tick;
            if (tick_end > total_samples)
                tick_end = total_samples;

            for (; pos < tick_end; pos++) {
                phase += freq / sr;
                while (phase >= 1.0f)
                    phase -= 1.0f;
                data[pos] = (phase < 0.5f) ? 8000 : -8000;
            }
        }
    }

    Wave w = { 0 };
    w.sampleRate = sr;
    w.sampleSize = 16;
    w.channels = 1;
    w.frameCount = pos;
    w.data = data;
    Sound snd = LoadSoundFromWave(w);
    free(data);
    return snd;
}

void load_sounds(Sounds& sounds)
{
    InitAudioDevice();
    const int sr = 44100;

    // 0x0C83 — Wall bounce: div=840 (1420 Hz), 5 ticks steady
    {
        const int segs[][3] = { { 840, 0, 5 } };
        sounds.snd_bounce = MakePCSound(sr, segs, 1);
    }

    // 0x0C8A — Top bounce: div=700 (1705 Hz), 5 ticks steady
    {
        const int segs[][3] = { { 700, 0, 5 } };
        sounds.snd_top_bounce = MakePCSound(sr, segs, 1);
    }

    // 0x0C91 — Paddle bounce: 1575 (758 Hz) × 2t, +525 → 2100 (568 Hz) × 3t
    {
        const int segs[][3] = {
            { 1575, 0, 2 }, // 2 ticks at 758 Hz
            { 0, 525, 1 }, // delta applied → 568 Hz, 1 tick
            { 0, 0, 2 } // 2 more ticks at 568 Hz
        };
        sounds.snd_paddle = MakePCSound(sr, segs, 3);
    }

    // 0x0C7C — Sticky paddle catch: div=1050 (1136 Hz), 5 ticks steady
    {
        const int segs[][3] = { { 1050, 0, 5 } };
        sounds.snd_paddle_catch = MakePCSound(sr, segs, 1);
    }

    /* 0x0CF7 — Brick destroy (category 0): div=2000 → -20×15t → -30×15t
     * Sweeps 597 Hz up to ~954 Hz over 30 ticks (~430 ms). */
    {
        const int segs[][3] = {
            { 2000, -20, 15 },
            { 0, -30, 15 }
        };
        sounds.snd_brick = MakePCSound(sr, segs, 2);
    }

    /* Powerup catch — original reuses sticky catch pitch (1136 Hz, 5 ticks).
     * No dedicated address in original, kept for UX feedback. */
    {
        const int segs[][3] = { { 1050, 0, 5 } };
        sounds.snd_powerup = MakePCSound(sr, segs, 1);
    }

    /* Ball death — no sound in original game (FUN_0000_2D0A is silent).
     * Reusing 0x0C9E pattern (descending tones) for UX feedback only. */
    {
        const int segs[][3] = {
            { 1575, 0, 2 },
            { 0, 251, 1 },
            { 0, 0, 2 },
            { 0, 273, 1 },
            { 0, 0, 2 },
            { 0, 264, 1 },
            { 0, 0, 2 }
        };
        sounds.snd_death = MakePCSound(sr, segs, 7);
    }

    // 0x0CB7 — Laser fire: div=500 (2386 Hz), +100 × 5t → ends at 1193 Hz
    {
        const int segs[][3] = { { 500, 100, 5 } };
        sounds.snd_laser = MakePCSound(sr, segs, 1);
    }

    // 0x0C9E — Laser hits brick: 1575 → +251 → +273 → +264, with sustain ticks
    {
        const int segs[][3] = {
            { 1575, 0, 2 },
            { 0, 251, 1 },
            { 0, 0, 2 },
            { 0, 273, 1 },
            { 0, 0, 2 },
            { 0, 264, 1 },
            { 0, 0, 2 }
        };
        sounds.snd_laser_hit = MakePCSound(sr, segs, 7);
    }

    // 0x0CBE — Barrier bounce: div=525 (2273 Hz), 5 ticks steady
    {
        const int segs[][3] = { { 525, 0, 5 } };
        sounds.snd_barrier = MakePCSound(sr, segs, 1);
    }

    /* 0x0CDE — Level complete fanfare:
     * div=2000, descending sweeps with reset jumps */
    {
        const int segs[][3] = {
            { 2000, -20, 30 },
            { 0, 300, 1 },
            { 0, -20, 30 },
            { 0, 300, 1 },
            { 0, -20, 30 },
            { 0, 300, 1 },
            { 0, -20, 30 }
        };
        sounds.snd_level_complete = MakePCSound(sr, segs, 7);
    }

    /* 0x0CC5 — Game-over fanfare:
     * div=2000, ascending sweeps with reset drops (mirror image of 0x0CDE) */
    {
        const int segs[][3] = {
            { 2000, 20, 30 },
            { 0, -300, 1 },
            { 0, 20, 30 },
            { 0, -300, 1 },
            { 0, 20, 30 },
            { 0, -300, 1 },
            { 0, 20, 30 }
        };
        sounds.snd_game_over = MakePCSound(sr, segs, 7);
    }
}
