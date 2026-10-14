#include "sound.h"

#include "sim.h"

#include <math.h>
#include <stdio.h>
#include <string.h>
#include <vector>

/*
 * The PC-speaker effects, built from the original's sound patterns
 * (SimSoundPattern, 0xc7c..0xd83 in PARANOID.COM) the way its sound player
 * (521a) steps them, once per 70 Hz tick:
 *   - a pattern is a priority byte, the start divisor (word), then segments
 *     of (ticks, signed delta word), ended by 0xff;
 *   - on each tick of a segment the delta is added to the divisor, and the
 *     speaker plays a square wave of PIT_CLOCK / divisor for that tick;
 *   - the 0xff tick turns the speaker off.
 * Which sound starts, by priority (52df), is decided in sim.cpp.
 *
 * The patterns:
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
constexpr int TICK_HZ = 70;
constexpr int SAMPLE_RATE = 44100; // 630 samples per tick

static const uint16_t PICKUPS[12] = { 0xcf7, 0xd01, 0xd08, 0xd15, 0xd28, 0xd2f, 0xd3c, 0xd4f, 0xd5c, 0xd63, 0xd6d, 0xd77 };

static const struct {
    uint16_t pattern;
    Sound Sounds::*sound;
} EFFECTS[9] = {
    { 0xc7c, &Sounds::snd_bat },
    { 0xc83, &Sounds::snd_bounce },
    { 0xc8a, &Sounds::snd_top_bounce },
    { 0xc91, &Sounds::snd_brick },
    { 0xc9e, &Sounds::snd_laser_hit },
    { 0xcb7, &Sounds::snd_laser },
    { 0xcbe, &Sounds::snd_barrier },
    { 0xcc5, &Sounds::snd_ball_lost },
    { 0xcde, &Sounds::snd_level_complete },
};

// The speaker's output for one pattern, tick by tick as 521a plays it.
static Wave MakePCWave(uint16_t pattern)
{
    const uint8_t* p = SimSoundPattern(pattern) + 1; // after the priority
    uint16_t divisor = uint16_t(p[0] | p[1] << 8);
    std::vector<short> samples;
    float phase = 0.0f;
    for (p += 2; *p != 0xff; p += 3) {
        const int ticks = p[0];
        const int16_t delta = int16_t(p[1] | p[2] << 8);
        for (int t = 0; t < ticks; t++) {
            divisor = uint16_t(divisor + delta);
            const float freq = PIT_CLOCK / (divisor ? divisor : 65536);
            for (int i = 0; i < SAMPLE_RATE / TICK_HZ; i++) {
                phase += freq / SAMPLE_RATE;
                phase -= floorf(phase);
                samples.push_back(phase < 0.5f ? 8000 : -8000);
            }
        }
    }
    Wave wave = {};
    wave.frameCount = (unsigned int)samples.size();
    wave.sampleRate = SAMPLE_RATE;
    wave.sampleSize = 16;
    wave.channels = 1;
    wave.data = MemAlloc((unsigned int)(samples.size() * sizeof(short)));
    memcpy(wave.data, samples.data(), samples.size() * sizeof(short));
    return wave;
}

static Sound MakePCSound(uint16_t pattern)
{
    Wave wave = MakePCWave(pattern);
    Sound sound = LoadSoundFromWave(wave);
    UnloadWave(wave);
    return sound;
}

void load_sounds(Sounds& sounds)
{
    InitAudioDevice();
    for (const auto& effect : EFFECTS)
        sounds.*effect.sound = MakePCSound(effect.pattern);
    for (int i = 0; i < 12; i++)
        sounds.snd_powerup[i] = MakePCSound(PICKUPS[i]);
}

int dump_sounds(const char* dir)
{
    int written = 0;
    auto dump = [&](uint16_t pattern) {
        char path[512];
        snprintf(path, sizeof(path), "%s/%04x.wav", dir, pattern);
        Wave wave = MakePCWave(pattern);
        written += ExportWave(wave, path) ? 1 : 0;
        UnloadWave(wave);
    };
    for (const auto& effect : EFFECTS)
        dump(effect.pattern);
    for (uint16_t pattern : PICKUPS)
        dump(pattern);
    return written;
}

// The PC speaker has one voice: a new sound replaces the one playing.
static void start_sound(Sounds& sounds, Sound& effect)
{
    if (sounds.active && IsSoundPlaying(*sounds.active))
        StopSound(*sounds.active);
    sounds.active = &effect;
    PlaySound(effect);
}

void play_pattern(Sounds& sounds, uint16_t pattern)
{
    for (int i = 0; i < 12; i++) {
        if (pattern == PICKUPS[i]) {
            start_sound(sounds, sounds.snd_powerup[i]);
            return;
        }
    }
    for (const auto& effect : EFFECTS) {
        if (pattern == effect.pattern) {
            start_sound(sounds, sounds.*effect.sound);
            return;
        }
    }
}
