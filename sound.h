#pragma once

#include <raylib.h>

struct Sounds {
    Sound snd_bounce; // wall bounce (left/right walls)
    Sound snd_top_bounce; // top wall bounce
    Sound snd_paddle; // paddle bounce
    Sound snd_paddle_catch; // sticky paddle catch
    Sound snd_brick; // brick destroy
    Sound snd_powerup; // powerup catch
    Sound snd_death; // ball lost (synthetic - no sound in original)
    Sound snd_laser; // laser fire
    Sound snd_laser_hit; // laser hits brick
    Sound snd_barrier; // ball bounces off barrier
    Sound snd_level_complete; // level cleared fanfare
    Sound snd_game_over; // game over fanfare
};

void load_sounds(Sounds& sounds);
