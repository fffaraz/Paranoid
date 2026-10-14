#include "bitmaps.h"
#include "draw.h"
#include "fonts.h"
#include "game.h"
#include "levels.h"
#include "sound.h"

#include <raylib.h>

#include <array>
#include <math.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

bool getRootPath(char* path, int len)
{
    const char* candidates[] = { ".", "./paranoid-v1.8", "../paranoid-v1.8" };
    for (size_t i = 0; i < sizeof(candidates) / sizeof(candidates[0]); i++) {
        char probe[512];
        snprintf(probe, sizeof(probe), "%s/BITMAPS.PAR", candidates[i]);
        FILE* f = fopen(probe, "rb");
        if (f) {
            fclose(f);
            snprintf(path, len, "%s", candidates[i]);
            return true;
        }
    }
    return false;
}

int main(int argc, char* argv[])
{
    for (int i = 1; i < argc; i++) {
        if (strcmp(argv[i], "-l") == 0 && i + 1 < argc) {
            int lvl = atoi(argv[++i]) - 1;
            if (lvl >= 0 && lvl < LEVEL_COUNT)
                current_level = lvl;
        }
    }
    const int starting_level = current_level;

    SetConfigFlags(FLAG_WINDOW_RESIZABLE);
    InitWindow(1280, 700, "Paranoid");
    SetWindowMinSize(640, 350);
    load_sounds(sounds);

    char root_path[128];
    if (!getRootPath(root_path, sizeof(root_path))) {
        printf("FAILED TO LOCATE DATA FILES IN ./ OR ./paranoid-v1.8/ OR ../paranoid-v1.8/\n");
        return 1;
    }

    char path[256];

    BitMaps bitmaps;
    snprintf(path, sizeof(path), "%s/BITMAPS.PAR", root_path);
    if (load_bitmaps(path, bitmaps) != 0) {
        printf("FAILED TO LOAD BITMAPS (%s)\n", path);
        return 1;
    }

    Fonts fonts;
    snprintf(path, sizeof(path), "%s/FONTS.PAR", root_path);
    if (load_fonts(path, fonts) != 0) {
        printf("FAILED TO LOAD FONTS (%s)\n", path);
        return 1;
    }

    std::array<Level, LEVEL_COUNT> levels;
    snprintf(path, sizeof(path), "%s/LEVELS.PAR", root_path);
    if (load_levels(path, levels) != 0) {
        printf("FAILED TO LOAD LEVELS (%s)\n", path);
        return 1;
    }

    LoadGameTextures(bitmaps, fonts);

    RenderTexture2D game_screen = LoadRenderTexture(640, 350);
    SetTextureFilter(game_screen.texture, TEXTURE_FILTER_POINT);

    SetTargetFPS(60);
    LoadLevel(current_level, levels);

    while (!WindowShouldClose()) {
        // F10 exits (original: "Press F10 at any time to exit to Dos")
        if (IsKeyPressed(KEY_F10))
            break;

        const float dt = GetFrameTime();

        switch (state) {
        case STATE_TITLE:
            if (IsKeyPressed(KEY_SPACE)) {
                current_level = starting_level;
                score = 0;
                lives = 3;
                next_extra_life_score = 4000;
                LoadLevel(current_level, levels);
                state = STATE_PLAY;
            } else if (IsKeyPressed(KEY_F1))
                state = STATE_INFO;
            break;
        case STATE_INFO:
            if (IsKeyPressed(KEY_ESCAPE) || IsKeyPressed(KEY_SPACE) || IsKeyPressed(KEY_F1))
                state = STATE_TITLE;
            break;
        case STATE_PLAY:
            if (IsKeyPressed(KEY_P))
                state = STATE_PAUSED;
            else
                UpdatePlay(dt, levels);
            break;
        case STATE_PAUSED:
            if (IsKeyPressed(KEY_P) || IsKeyPressed(KEY_SPACE))
                state = STATE_PLAY;
            else if (IsKeyPressed(KEY_ESCAPE))
                state = STATE_TITLE;
            break;
        case STATE_GAMEOVER:
            if (IsKeyPressed(KEY_SPACE)) {
                lives = 3;
                score = 0;
                next_extra_life_score = 4000;
                current_level = starting_level;
                LoadLevel(current_level, levels);
                state = STATE_PLAY;
            }
            break;
        case STATE_WIN:
            if (IsKeyPressed(KEY_SPACE))
                state = STATE_TITLE;
            break;
        }

        BeginTextureMode(game_screen);
        ClearBackground(EGA_PALETTE[0]);

        switch (state) {
        case STATE_TITLE:
            DrawTitleScreen();
            break;
        case STATE_INFO:
            DrawTextCenteredMedium("PARANOID", 30, EGA_PALETTE[12]);
            DrawTextCenteredSmall("BREAK ALL THE BRICKS TO ADVANCE", 80, EGA_PALETTE[15]);
            DrawTextCenteredSmall("CONTROLS", 110, EGA_PALETTE[14]);
            DrawTextEGA("LEFT/RIGHT - MOVE PADDLE", 180, 130, EGA_PALETTE[7]);
            DrawTextEGA("SPACE      - LAUNCH/FIRE LASER", 180, 145, EGA_PALETTE[7]);
            DrawTextEGA("P          - PAUSE", 180, 160, EGA_PALETTE[7]);
            DrawTextEGA("ESC        - RETURN TO TITLE", 180, 175, EGA_PALETTE[7]);
            DrawTextEGA("F10        - QUIT", 180, 190, EGA_PALETTE[7]);
            DrawTextCenteredSmall("COLLECT B-O-N-U-S LETTERS IN ORDER FOR 500 POINTS", 240, EGA_PALETTE[10]);
            DrawTextCenteredSmall("PRESS SPACE TO RETURN", 300, EGA_PALETTE[8]);
            break;
        case STATE_PLAY:
            DrawPlay();
            break;
        case STATE_PAUSED:
            DrawPlay();
            DrawRectangle(0, 160, 640, 30, (Color) { 0, 0, 0, 200 });
            DrawTextCenteredMedium("PAUSED", 165, EGA_PALETTE[14]);
            break;
        case STATE_GAMEOVER:
            DrawTextEGA("GAME OVER", 280, 150, EGA_PALETTE[12]);
            DrawTextEGA("PRESS SPACE", 260, 200, EGA_PALETTE[7]);
            break;
        case STATE_WIN:
            DrawTextCenteredMedium("CONGRATULATIONS", 95, EGA_PALETTE[14]);
            DrawTextCenteredSmall("YOU HAVE COMPLETED ALL THIRTY LEVELS", 145, EGA_PALETTE[15]);
            DrawTextCenteredSmall("PRESS SPACEBAR TO CONTINUE", 235, EGA_PALETTE[7]);
            break;
        }
        EndTextureMode();

        BeginDrawing();
        ClearBackground(BLACK);
        float scale = fminf(GetScreenWidth() / 640.0f, GetScreenHeight() / 350.0f);
        Rectangle destination = {
            (GetScreenWidth() - 640.0f * scale) / 2.0f,
            (GetScreenHeight() - 350.0f * scale) / 2.0f,
            640.0f * scale,
            350.0f * scale
        };
        DrawTexturePro(game_screen.texture, { 0, 0, 640, -350 }, destination, { 0, 0 }, 0, WHITE);
        EndDrawing();
    }
    UnloadRenderTexture(game_screen);
    CloseAudioDevice();
    CloseWindow();
    return 0;
}
