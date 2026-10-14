#include "screens.h"

#include "draw.h"
#include "game.h"
#include "hiscore.h"

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <string>

// One frame of the current screen into game_screen (640x350); page_screen is
// scratch for the scroll transitions. Used by the main loop and --screenshot.
void RenderScreen(RenderTexture2D& game_screen, RenderTexture2D& page_screen)
{
    // During a scroll transition the play screen is one of the two pages
    // the display window moves across (see Transition in game.h).
    const Transition transition = state == STATE_PLAY ? CurrentTransition() : Transition { Transition::None, 0 };
    const int display_line = state == STATE_PLAY ? DisplayLine() : 0;
    if (transition.kind != Transition::None) {
        BeginTextureMode(page_screen);
        ClearBackground(EGA_PALETTE[0]);
        DrawPlay(CurrentView());
        EndTextureMode();
    } else if (display_line != 0) {
        // Only the "Level xx" message is ever drawn this way.
        int step = 0;
        CurrentMessage(step);
        BeginTextureMode(page_screen);
        ClearBackground(EGA_PALETTE[0]);
        DrawLevelIntro(orig.b(addr::LEVEL), step);
        EndTextureMode();
    }

    BeginTextureMode(game_screen);
    ClearBackground(EGA_PALETTE[0]);

    switch (state) {
    case STATE_TITLE:
        DrawTitleScreen(TitleTicks());
        break;
    case STATE_INFO:
        DrawInfoPage(InfoPage());
        break;
    case STATE_DEMO:
        DrawDemo();
        break;
    case STATE_EXIT:
        DrawExitScreen();
        break;
    case STATE_HISCORES:
        DrawHighScoreScreen(HighScoreBallsShown());
        break;
    case STATE_PLAY: {
        int step = 0;
        Message message = CurrentMessage(step);
        if (transition.kind != Transition::None) {
            // In: page 0 (the play screen) from the window's top; Out:
            // page 1, 352 lines below page 0.
            const float y = transition.kind == Transition::In ? -transition.line : 352.0f - transition.line;
            DrawTextureRec(page_screen.texture, { 0, 0, 640, -350 }, { 0, y }, WHITE);
        } else if (display_line != 0) {
            DrawTextureRec(page_screen.texture, { 0, 0, 640, -350 }, { 0, (float)-display_line }, WHITE);
        } else if (message == Message::LevelIntro) {
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
            DrawPlay(ShownState(), orig, ShownView());
        }
        break;
    }
    }
    EndTextureMode();
}

namespace {

// Ticks of a 70 Hz update function, one per call as in the game.
template <typename Update>
void RunTicks(int ticks, Update update)
{
    for (int t = 0; t < ticks; t++)
        update(1.0f / 70);
}

// The scenes that have reference screens from the original
// (tests/reference/screens). Each sets up the state the same way as the
// capture of the original it is compared with.
bool SetUpScene(const std::string& name, const std::string& arg, const std::string& arg2)
{
    const int n = atoi(arg.c_str());
    if (name == "title") {
        StartTitle(); // the program's first screen: phase 0
        RunTicks(n, [](float dt) { UpdateTitle(dt); });
        state = STATE_TITLE;
    } else if (name == "demo") {
        StartDemoLevel(); // the first demo level, 02
        RunTicks(n, [](float dt) { UpdateDemo(dt); });
        state = STATE_DEMO;
    } else if (name == "hiscores") {
        orig.b(addr::PHASE) = 2; // as the first demo level leaves it
        StartHighScoreScreen();
        RunTicks(n, [](float dt) { UpdateHighScoreScreen(dt); });
        state = STATE_HISCORES;
    } else if (name == "info") {
        orig.b(addr::ICON_ANIM_DIV) = 0;
        ShowInfoPage(n - 1);
        RunTicks(atoi(arg2.c_str()), [](float dt) { UpdateInfo(dt); });
        state = STATE_INFO;
    } else if (name == "game" || name == "bonus-game" || name == "cleared-game" || name == "scored-game") {
        if (name == "bonus-game") {
            // B O N U S on the first five bricks a game without keys breaks
            // on level 1 (item 32).
            const int cells[5][2] = { { 12, 9 }, { 12, 8 }, { 13, 9 }, { 0, 9 }, { 13, 8 } };
            for (int i = 0; i < 5; i++)
                orig.b(uint16_t(addr::LEVEL_BRICKS + cells[i][0] * 19 + cells[i][1])) = uint8_t(0x0a + i);
        }
        StartGame(1);
        state = STATE_PLAY;
        if (name == "scored-game")
            orig.b(addr::SCORE + 2) = 1; // starts at 1000 points (item 19)
        for (int t = 0; t < n && state == STATE_PLAY; t++) {
            UpdatePlay(1.0f / 70);
            // Every level starts with no bricks left (item 24).
            if (name == "cleared-game" && CurrentTransition().kind == Transition::In)
                orig.set_w(addr::BRICKS_LEFT, 0);
        }
    } else if (name == "exit") {
        state = STATE_EXIT;
    } else {
        return false;
    }
    return true;
}

} // namespace

int TakeScreenshot(const char* scene, const char* out_path)
{
    // NAME[:ARG[:ARG2]]
    std::string name = scene, arg, arg2;
    if (size_t c = name.find(':'); c != std::string::npos) {
        arg = name.substr(c + 1);
        name.resize(c);
        if (size_t c2 = arg.find(':'); c2 != std::string::npos) {
            arg2 = arg.substr(c2 + 1);
            arg.resize(c2);
        }
    }
    RenderTexture2D game_screen = LoadRenderTexture(640, 350);
    RenderTexture2D page_screen = LoadRenderTexture(640, 350);
    if (name == "name-entry") {
        // A score of 1070 on level 1 typed into the default table (item 19).
        static const uint8_t score[6] = { 0, 0, 1, 0, 7, 0 };
        memcpy(&orig.mem[addr::SCORE], score, 6);
        orig.b(addr::LEVEL_DIGITS) = 0;
        orig.b(addr::LEVEL_DIGITS + 1) = 1;
        const int rank = SimEnterHighScore(orig);
        SimStartNameInput(orig);
        for (char c : arg)
            SimNameInputKey(orig, uint8_t(c));
        BeginTextureMode(game_screen);
        DrawHighScoreTable();
        DrawNameInput(rank);
        EndTextureMode();
    } else {
        if (!SetUpScene(name, arg, arg2)) {
            printf("UNKNOWN SCENE %s\n", scene);
            return 1;
        }
        RenderScreen(game_screen, page_screen);
    }
    Image image = LoadImageFromTexture(game_screen.texture);
    ImageFlipVertical(&image);
    const bool ok = ExportImage(image, out_path);
    UnloadImage(image);
    UnloadRenderTexture(page_screen);
    UnloadRenderTexture(game_screen);
    return ok ? 0 : 1;
}
