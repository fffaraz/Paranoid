#include "bitmaps.h"
#include "draw.h"
#include "fonts.h"
#include "game.h"
#include "hiscore.h"
#include "keymap.h"
#include "levels.h"
#include "replay.h"
#include "screens.h"
#include "sound.h"

#include <raylib.h>

#include <array>
#include <math.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <string>

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

// 0x2ca, printed when a switch is wrong, with the remake's /L added.
static int BadSwitch()
{
    printf("Bad command-line switch.  Available switches are:\n\n"
           "    /Q - run quietly, ie disable sound effects\n"
           "    /V - skip video mode auto-detect\n"
           "    /K llrraa - use alternative control keys\n"
           "    /L n - start at level n (this remake only)\n"
           "    --fix-bugs - fix the original's bugs (this remake only)\n"
           "    --square-pixels - square pixels, not the 4:3 screen (F11 switches)\n\n"
           "See Paranoid.DOC for details.\n");
    return 1;
}

struct Switches {
    bool quiet = false;
    bool custom_keys = false;
    uint8_t key_codes[3][2] = {};
};

// 6105: the command tail. Spaces and tabs between switches; each switch is
// '/' or '-' and a letter, in either case; /K takes its codes (after any
// spaces). /V (skip the video check) means nothing here. False on anything
// else.
static bool ParseCommandTail(const char* p, Switches& switches)
{
    for (;;) {
        while (*p == ' ' || *p == '\t')
            p++;
        if (*p == 0)
            return true;
        if (*p != '/' && *p != '-')
            return false;
        switch (p[1] | 0x20) {
        case 'q':
            switches.quiet = true; // 6154
            p += 2;
            break;
        case 'v':
            p += 2; // 615a
            break;
        case 'k':
            p = ParseKeyCodes(p + 2, switches.key_codes); // 6160
            if (!p)
                return false;
            switches.custom_keys = true;
            break;
        default:
            return false;
        }
    }
}

int main(int argc, char* argv[])
{
    const char* replay_path = nullptr;
    const char* trace_path = nullptr;
    int starting_level = 1; // remake addition: /L n
    bool fix_bugs = false; // remake addition: the original's bugs are kept unless asked
    bool square_pixels = false; // remake addition: the 4:3 screen unless asked (TODO V7)
    const char* screenshot_scene = nullptr; // --screenshot SCENE OUT (TODO V5)
    const char* sound_dir = nullptr; // --dump-sounds DIR (TODO V6)
    const char* screenshot_path = nullptr;
    // The remake's own options come out first; the rest is joined into a
    // DOS command tail for the original's switches.
    std::string tail;
    for (int i = 1; i < argc; i++) {
        const char* arg = argv[i];
        if ((arg[0] == '-' || arg[0] == '/') && (arg[1] | 0x20) == 'l' && arg[2] == 0) {
            const int level = i + 1 < argc ? atoi(argv[++i]) : 0;
            if (level < 1 || level > LEVEL_COUNT)
                return BadSwitch();
            starting_level = level;
        } else if (strcmp(arg, "--fix-bugs") == 0) {
            fix_bugs = true;
        } else if (strcmp(arg, "--square-pixels") == 0) {
            square_pixels = true;
        } else if (strcmp(arg, "--dump-sounds") == 0 && i + 1 < argc) {
            sound_dir = argv[++i];
        } else if (strcmp(arg, "--screenshot") == 0 && i + 2 < argc) {
            screenshot_scene = argv[++i];
            screenshot_path = argv[++i];
        } else if (strcmp(arg, "--replay") == 0 && i + 1 < argc) {
            replay_path = argv[++i];
        } else if (strcmp(arg, "--trace") == 0 && i + 1 < argc) {
            trace_path = argv[++i];
        } else {
            tail += ' ';
            tail += arg;
        }
    }
    Switches switches;
    if (!ParseCommandTail(tail.c_str(), switches))
        return BadSwitch();
    if (replay_path || trace_path) {
        // Tracing a normal game needs the game to run on sim.cpp (NEXT.md, Step 4).
        if (!replay_path || !trace_path) {
            printf("--replay and --trace go together for now: --replay REF --trace OUT\n");
            return 1;
        }
        return Replay(replay_path, trace_path);
    }

    if (sound_dir) {
        // No window or audio device needed.
        SetTraceLogLevel(LOG_WARNING);
        const int written = dump_sounds(sound_dir);
        printf("%d sounds written to %s\n", written, sound_dir);
        return written == 21 ? 0 : 1;
    }
    if (screenshot_scene) {
        // A hidden window for the drawing; 77 tells CTest to skip without a display.
        SetTraceLogLevel(LOG_WARNING);
        SetConfigFlags(FLAG_WINDOW_HIDDEN);
        InitWindow(640, 350, "Paranoid");
        if (!IsWindowReady())
            return 77;
    } else {
        SetConfigFlags(FLAG_WINDOW_RESIZABLE);
        // 1.5 times 640x480 for the 4:3 screen, twice 640x350 for square pixels.
        if (square_pixels)
            InitWindow(1280, 700, "Paranoid");
        else
            InitWindow(960, 720, "Paranoid");
    }
    // Escape belongs to the game (it ends a game), not to raylib.
    SetExitKey(KEY_NULL);
    SetWindowMinSize(640, 350);
    if (!screenshot_scene)
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
    if (screenshot_scene) {
        InitGame(levels);
        const int result = TakeScreenshot(screenshot_scene, screenshot_path);
        CloseWindow();
        return result;
    }

    RenderTexture2D game_screen = LoadRenderTexture(640, 350);
    RenderTexture2D page_screen = LoadRenderTexture(640, 350); // for the scroll transitions
    SetTextureFilter(game_screen.texture, TEXTURE_FILTER_POINT);

    SetTargetFPS(60);
    InitGame(levels);
    LoadHiScores(&orig.mem[addr::HISCORE_SCORES]); // 3475
    orig.b(addr::QUIET) = switches.quiet ? 1 : 0;
    orig.faithful_bugs = !fix_bugs; // see TODO.md, Decisions
    if (switches.custom_keys) {
        // Only the first byte is written for a one-byte code (6174).
        for (int k = 0; k < 3; k++) {
            orig.b(uint16_t(addr::KEY_CODES + 2 * k)) = switches.key_codes[k][0];
            if (switches.key_codes[k][0] == 0xe0)
                orig.b(uint16_t(addr::KEY_CODES + 2 * k + 1)) = switches.key_codes[k][1];
        }
        UseKeyTable();
    }
    StartTitle();

    bool running = true;
    while (running && !WindowShouldClose()) {
        // F10 quits from the attract loop, during play and after a key in the
        // wait before a ball (see game.cpp); elsewhere it is just a key. 3c95
        // then saves the high-score table (34d7) and shows the registration
        // screen until a key (4f26).
        if (quit_requested && state != STATE_EXIT) {
            quit_requested = false;
            SaveHighScores();
            state = STATE_EXIT;
        }

        const float dt = GetFrameTime();
        // Remake addition: F11 switches between the 4:3 screen and square
        // pixels (game.cpp doesn't count it as a key).
        if (IsKeyPressed(KEY_F11))
            square_pixels = !square_pixels;

        // The attract loop (3c38) alternates demo levels and the high-score
        // screen. The key that ends one goes to the dispatcher (3c55/3c75):
        // Space starts a game, F1 shows the information, F10 quits; another
        // key, or the end of the screen, goes on with the loop.
        auto dispatch = [&](int key, GameState next) {
            if (key == KEY_SPACE) {
                StartGame(starting_level);
                state = STATE_PLAY;
            } else if (key == KEY_F1) {
                StartInfo();
                state = STATE_INFO;
            } else if (key == KEY_F10) {
                quit_requested = true;
            } else if (key != 0) {
                state = next;
                if (next == STATE_DEMO)
                    StartDemoLevel();
                else
                    StartHighScoreScreen();
            }
        };
        switch (state) {
        case STATE_TITLE:
            if (UpdateTitle(dt)) {
                StartDemoLevel(); // 51d6: the attract loop, from a demo level
                state = STATE_DEMO;
            }
            break;
        case STATE_INFO:
            // After the last page the attract loop starts again with a demo
            // level (0xc49).
            if (UpdateInfo(dt)) {
                StartDemoLevel();
                state = STATE_DEMO;
            }
            break;
        case STATE_PLAY:
            UpdatePlay(dt);
            break;
        case STATE_DEMO:
            dispatch(UpdateDemo(dt), STATE_HISCORES);
            break;
        case STATE_EXIT:
            if (AnyBiosKey())
                running = false;
            break;
        case STATE_HISCORES:
            dispatch(UpdateHighScoreScreen(dt), STATE_DEMO);
            break;
        }

        RenderScreen(game_screen, page_screen);

        BeginDrawing();
        ClearBackground(BLACK);
        // The EGA screen was 640x350 on a 4:3 monitor, so its pixels were
        // about 1.37 times taller than wide (TODO V7). Fit that shape, or
        // square pixels, into the window.
        const float aspect = square_pixels ? 640.0f / 350.0f : 4.0f / 3.0f;
        float width = (float)GetScreenWidth(), height = width / aspect;
        if (height > GetScreenHeight()) {
            height = (float)GetScreenHeight();
            width = height * aspect;
        }
        Rectangle destination = { (GetScreenWidth() - width) / 2.0f, (GetScreenHeight() - height) / 2.0f, width, height };
        DrawTexturePro(game_screen.texture, { 0, 0, 640, -350 }, destination, { 0, 0 }, 0, WHITE);
        EndDrawing();
    }
    // Closing the window skips the registration screen but still saves.
    if (state != STATE_EXIT)
        SaveHighScores();
    UnloadRenderTexture(page_screen);
    UnloadRenderTexture(game_screen);
    CloseAudioDevice();
    CloseWindow();
    return 0;
}
