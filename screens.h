#pragma once

// Drawing a whole frame, and --screenshot (TODO V5).

#include <raylib.h>

// One frame of the current screen into game_screen (640x350); page_screen is
// scratch for the scroll transitions.
void RenderScreen(RenderTexture2D& game_screen, RenderTexture2D& page_screen);

// Set up a scene (see screens.cpp, e.g. "title:107", "game:1125",
// "info:4:0", "name-entry:abc") on the freshly started game, draw it as the
// game would and save the 640x350 picture. Returns the exit code.
int TakeScreenshot(const char* scene, const char* out_path);
