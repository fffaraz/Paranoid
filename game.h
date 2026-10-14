#pragma once

// Game simulation: playfield, bat, balls, icons, lasers and scoring.

#include "bitmaps.h"
#include "levels.h"
#include "sound.h"

#include <array>
#include <stdint.h>

enum GameState { STATE_TITLE,
    STATE_INFO,
    STATE_PLAY,
    STATE_PAUSED,
    STATE_GAMEOVER,
    STATE_WIN };

constexpr int PLAY_ROWS = 19;
constexpr int PLAY_COLS = 14;
constexpr int PLAY_LEFT = 16;
constexpr int PLAY_RIGHT = PLAY_LEFT + PLAY_COLS * BRICK_W;
constexpr int BRICK_TOP = 12;

// Height of one icon frame in the bitmap sheet (also its collision height).
constexpr int ICON_FRAME_H = 12;

struct Paddle {
    float x, y, w, h, speed;
};

constexpr int MAX_BALLS = 5;
struct Ball {
    float x, y, dx, dy;
    float sticky_offset;
    bool active;
    bool through_bricks;
};

// Powerup icon types (indices into icon sprite sheet)
enum PowerupIconType {
    ICON_ENLARGE, // 0, increase bat size by a third
    ICON_SHRINK, // 1, decrease bat size by a third
    ICON_STICKY, // 2, catch the ball
    ICON_500PTS, // 3, 500 bonus points
    ICON_LASER, // 4, fire lasers from bat
    ICON_SPLIT, // 5, split next two balls
    ICON_EXTRALIFE, // 6, gain extra ball/life
    ICON_BARRIER, // 7, barrier at bottom of screen
    ICON_SKIP, // 8, skip to next level
    ICON_SPEEDUP, // 9, speed up ball
    ICON_SLOWDOWN, // 10, slow all balls
    ICON_THROUGH // 11, ball goes through bricks
};

struct PowerUp {
    float x, y;
    int active;
    PowerupIconType type;
};
constexpr int MAX_POWERUPS = 16;

struct Laser {
    float x, y;
    bool active;
};
constexpr int MAX_LASERS = 10;

extern Sounds sounds;

extern GameState state;
extern int current_level;
extern int score;
extern int lives;
extern int bricks_remaining;
extern int next_extra_life_score;

extern uint8_t grid[PLAY_ROWS][PLAY_COLS];
extern uint8_t grid_attrs[PLAY_ROWS][PLAY_COLS];

extern Paddle paddle;
extern Ball balls[MAX_BALLS];
extern PowerUp powerups[MAX_POWERUPS];
extern Laser active_lasers[MAX_LASERS];

extern bool sticky_active;
extern bool barrier_active;
extern bool through_active;
extern bool laser_active;

extern uint8_t letters_collected;
extern int powerup_anim_frame;

int CountBalls(void);
void ResetPowerups(void);
void LaunchBall(Ball* b);
void AttachBallToPaddle(Ball* b);
void StartLife(void);
void LoadLevel(int index, const std::array<Level, LEVEL_COUNT>& levels);
void UpdatePlay(float dt, const std::array<Level, LEVEL_COUNT>& levels);
