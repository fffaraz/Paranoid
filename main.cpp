#include "bitmaps.h"
#include "draw.h"
#include "fonts.h"
#include "game.h"
#include "levels.h"
#include "replay.h"
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

// --replay REF --trace OUT: run a trace from the original through the
// simulation without a window and write our own trace (TODO V4).
int Replay(const char* ref_path, const char* out_path)
{
    SetTraceLogLevel(LOG_WARNING);
    char root_path[128];
    if (!getRootPath(root_path, sizeof(root_path))) {
        printf("FAILED TO LOCATE DATA FILES IN ./ OR ./paranoid-v1.8/ OR ../paranoid-v1.8/\n");
        return 1;
    }
    char path[256];
    std::array<Level, LEVEL_COUNT> levels;
    snprintf(path, sizeof(path), "%s/LEVELS.PAR", root_path);
    if (load_levels(path, levels) != 0) {
        printf("FAILED TO LOAD LEVELS (%s)\n", path);
        return 1;
    }
    return RunReplay(ref_path, out_path, levels);
}

int main(int argc, char* argv[])
{
    const char* replay_path = nullptr;
    const char* trace_path = nullptr;
    int starting_level = 1; // remake addition: -l N
    for (int i = 1; i < argc; i++) {
        if (strcmp(argv[i], "-l") == 0 && i + 1 < argc) {
            int lvl = atoi(argv[++i]);
            if (lvl >= 1 && lvl <= LEVEL_COUNT)
                starting_level = lvl;
        } else if (strcmp(argv[i], "--replay") == 0 && i + 1 < argc) {
            replay_path = argv[++i];
        } else if (strcmp(argv[i], "--trace") == 0 && i + 1 < argc) {
            trace_path = argv[++i];
        }
    }
    if (replay_path || trace_path) {
        // Tracing a normal game needs the game to run on sim.cpp (NEXT.md, Step 4).
        if (!replay_path || !trace_path) {
            printf("--replay and --trace go together for now: --replay REF --trace OUT\n");
            return 1;
        }
        return Replay(replay_path, trace_path);
    }

    SetConfigFlags(FLAG_WINDOW_RESIZABLE);
    InitWindow(1280, 700, "Paranoid");
    // Escape belongs to the game (it ends a game), not to raylib.
    SetExitKey(KEY_NULL);
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
    InitGame(levels);

    while (!WindowShouldClose()) {
        // F10 exits (original: "Press F10 at any time to exit to Dos")
        if (IsKeyPressed(KEY_F10) || quit_requested)
            break;

        const float dt = GetFrameTime();

        switch (state) {
        case STATE_TITLE:
            if (IsKeyPressed(KEY_SPACE)) {
                StartGame(starting_level);
                state = STATE_PLAY;
            } else if (IsKeyPressed(KEY_F1))
                state = STATE_INFO;
            break;
        case STATE_INFO:
            if (IsKeyPressed(KEY_ESCAPE) || IsKeyPressed(KEY_SPACE) || IsKeyPressed(KEY_F1))
                state = STATE_TITLE;
            break;
        case STATE_PLAY:
            UpdatePlay(dt);
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
        case STATE_PLAY: {
            int step = 0;
            Message message = CurrentMessage(step);
            if (message == Message::LevelIntro) {
                DrawLevelIntro(orig.b(addr::LEVEL), step);
            } else if (message == Message::GameOver) {
                DrawPlay(CurrentView());
                DrawGameOver(step);
            } else if (message == Message::Ending) {
                DrawPlay(CurrentView());
                DrawEnding(step);
            } else if (message == Message::NewHighScore) {
                DrawPlay(CurrentView());
                if (MessageBelow() == Message::Ending)
                    DrawEnding(1000);
                else
                    DrawGameOver(1000);
                DrawNewHighScore(step);
            } else if (NameEntryRank() > 0) {
                DrawHighScoreTable();
                DrawNameInput(NameEntryRank());
            } else {
                DrawPlay(CurrentView());
            }
            break;
        }
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
