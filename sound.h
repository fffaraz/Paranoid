#pragma once

#include <raylib.h>

#include <cstdint>

struct Sounds {
    Sound snd_bounce; // 0xC83: side wall
    Sound snd_top_bounce; // 0xC8A: top wall
    Sound snd_brick; // 0xC91: ball bounces off any brick
    Sound snd_bat; // 0xC7C: ball hits the bat
    Sound snd_powerup[12]; // one original effect for each pickup type
    Sound snd_laser; // laser fire
    Sound snd_laser_hit; // laser hits brick
    Sound snd_barrier; // ball bounces off barrier
    Sound snd_level_complete; // level cleared fanfare
    Sound snd_ball_lost; // 0xCC5: the last ball is lost (every life)
    Sound* active = nullptr; // the original PC speaker has one voice
};

void load_sounds(Sounds& sounds);
// Play a sound the simulation started, by its pattern address in the original
// (sim.h, OrigState::sounds).
void play_pattern(Sounds& sounds, uint16_t pattern);
// Write every effect as DIR/PATTERN.wav (e.g. 0c7c.wav), 44100 Hz mono.
// Returns how many were written.
int dump_sounds(const char* dir);
