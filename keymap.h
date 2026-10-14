#pragma once

// PC keyboard scan codes (set 1, as the original's keyboard handler 5045 sees
// them) for its key table and the /K switch.

#include <cstdint>

// The raylib key for a scan code, or 0 if there is none. `extended` is a code
// that follows an E0 byte (the grey arrows, Insert, Home, ...).
int RaylibKeyForScanCode(uint8_t code, bool extended);

// 6160: "/K llrraa" gives the left, right and action keys as two hex digits
// each, in either case, after any spaces; a code E0 takes the next two digits
// as its second byte. Fills codes[i] = { first byte, second byte or 0 } and
// returns the text after the codes, or nullptr if they aren't valid.
const char* ParseKeyCodes(const char* text, uint8_t codes[3][2]);
