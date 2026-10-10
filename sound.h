#pragma once

#include <raylib.h>

struct Sounds {
    Sound snd_bounce; // wall bounce (left/right walls)
    Sound snd_top_bounce; // top wall bounce
    Sound snd_paddle; // paddle and breakable-brick bounce
    Sound snd_paddle_catch; // sticky paddle catch
    Sound snd_powerup[12]; // one original effect for each pickup type
    Sound snd_laser; // laser fire
    Sound snd_laser_hit; // laser hits brick
    Sound snd_barrier; // ball bounces off barrier
    Sound snd_level_complete; // level cleared fanfare
    Sound snd_game_over; // game over fanfare
    Sound* active = nullptr; // the original PC speaker has one voice
    int active_priority = 0;
};

void load_sounds(Sounds& sounds);
void play_sound(Sounds& sounds, Sound& effect, int priority);
