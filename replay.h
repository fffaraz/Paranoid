#pragma once

// Headless replay of a trace recorded from the original (TODO V4). Runs the
// same ticks through sim.cpp without a window and writes the remake's own
// trace, to be compared with tools/trace_diff.py.

#include "levels.h"

#include <array>

// Returns the process exit code.
int RunReplay(const char* ref_path, const char* out_path, const std::array<Level, LEVEL_COUNT>& levels);
