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
 *   0x0C7C — ball hits the bat (every hit, sticky or not)
 *   0x0C83 — side wall
 *   0x0C8A — top wall
 *   0x0C91 — ball bounces off a brick (any brick, including 0x1C)
 *   0x0C9E — laser hits a brick
 *   0x0CB7 — laser fire
 *   0x0CBE — barrier bounce
 *   0x0CC5 — last ball lost (every life)
 *   0x0CDE — level cleared
 *   0x0CF7..0x0D77 — 12 powerup pickup sounds, indexed by pickup type;
 *                    0x0D3C (extra life) is also the extra-ball sound
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

    // 0x0C83 — Side wall: div=840 (1420 Hz), 5 ticks steady
    {
        const int segs[][3] = { { 840, 0, 5 } };
        sounds.snd_bounce = MakePCSound(sr, segs, 1);
    }

    // 0x0C8A — Top wall: div=700 (1705 Hz), 5 ticks steady
    {
        const int segs[][3] = { { 700, 0, 5 } };
        sounds.snd_top_bounce = MakePCSound(sr, segs, 1);
    }

    // 0x0C91 — Brick bounce: 1575 (758 Hz) × 2t, +525 → 2100 (568 Hz) × 3t
    {
        const int segs[][3] = {
            { 1575, 0, 2 }, // 2 ticks at 758 Hz
            { 0, 525, 1 }, // delta applied → 568 Hz, 1 tick
            { 0, 0, 2 } // 2 more ticks at 568 Hz
        };
        sounds.snd_brick = MakePCSound(sr, segs, 3);
    }

    // 0x0C7C — Ball hits the bat: div=1050 (1136 Hz), 5 ticks steady
    {
        const int segs[][3] = { { 1050, 0, 5 } };
        sounds.snd_bat = MakePCSound(sr, segs, 1);
    }

    // Pickup patterns from the pointer table at 0x0C64 in PARANOID.COM.
    // Each row is {starting divisor, tick count, signed divisor delta} pairs.
    static const struct {
        int start;
        int segments[5][2];
        int count;
    } pickups[12] = {
        { 2000, { { 15, -20 }, { 15, -30 } }, 2 },
        { 2000, { { 30, 20 } }, 1 },
        { 2000, { { 20, 100 }, { 1, -2000 }, { 20, 100 } }, 3 },
        { 2000, { { 10, 0 }, { 1, -400 }, { 10, 0 }, { 1, -254 }, { 10, 0 } }, 5 },
        { 4000, { { 30, -100 } }, 1 },
        { 2000, { { 20, -20 }, { 1, 400 }, { 20, -20 } }, 3 },
        { 1000, { { 15, -40 }, { 1, 450 }, { 15, -40 }, { 1, 450 }, { 15, -40 } }, 5 },
        { 800, { { 13, 20 }, { 13, -20 }, { 13, 20 } }, 3 },
        { 4000, { { 60, -60 } }, 1 },
        { 2000, { { 20, -30 }, { 20, 30 } }, 2 },
        { 2000, { { 20, 35 }, { 20, -35 } }, 2 },
        { 4000, { { 20, -100 }, { 1, 2000 }, { 20, -100 } }, 3 },
    };
    for (int i = 0; i < 12; i++) {
        int segments[5][3] = {};
        for (int j = 0; j < pickups[i].count; j++) {
            segments[j][0] = j == 0 ? pickups[i].start : 0;
            segments[j][1] = pickups[i].segments[j][1];
            segments[j][2] = pickups[i].segments[j][0];
        }
        sounds.snd_powerup[i] = MakePCSound(sr, segments, pickups[i].count);
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

    /* 0x0CDE — Level cleared:
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

    /* 0x0CC5 — Last ball lost (played on every life, not only at game over):
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
        sounds.snd_ball_lost = MakePCSound(sr, segs, 7);
    }
}

void play_sound(Sounds& sounds, Sound& effect, int priority)
{
    if (sounds.active && IsSoundPlaying(*sounds.active)) {
        if (priority < sounds.active_priority)
            return;
        StopSound(*sounds.active);
    }
    sounds.active = &effect;
    sounds.active_priority = priority;
    PlaySound(effect);
}

void play_pattern(Sounds& sounds, uint16_t pattern)
{
    // The first byte of each pattern is its priority (52df).
    static const uint16_t pickups[12] = { 0xcf7, 0xd01, 0xd08, 0xd15, 0xd28, 0xd2f, 0xd3c, 0xd4f, 0xd5c, 0xd63, 0xd6d, 0xd77 };
    for (int i = 0; i < 12; i++) {
        // 0xd3c is also the extra-ball sound (5f89).
        if (pattern == pickups[i]) {
            play_sound(sounds, sounds.snd_powerup[i], pattern == 0xd5c ? 9 : 8);
            return;
        }
    }
    switch (pattern) {
    case 0xc7c: // ball hits the bat
        play_sound(sounds, sounds.snd_bat, 4);
        break;
    case 0xc83: // side wall
        play_sound(sounds, sounds.snd_bounce, 2);
        break;
    case 0xc8a: // top wall
        play_sound(sounds, sounds.snd_top_bounce, 2);
        break;
    case 0xc91: // brick bounce
        play_sound(sounds, sounds.snd_brick, 3);
        break;
    case 0xc9e: // laser hits a brick
        play_sound(sounds, sounds.snd_laser_hit, 3);
        break;
    case 0xcb7: // laser fired
        play_sound(sounds, sounds.snd_laser, 4);
        break;
    case 0xcbe: // barrier
        play_sound(sounds, sounds.snd_barrier, 2);
        break;
    case 0xcc5: // last ball lost
        play_sound(sounds, sounds.snd_ball_lost, 10);
        break;
    case 0xcde: // level cleared
        play_sound(sounds, sounds.snd_level_complete, 11);
        break;
    }
}
