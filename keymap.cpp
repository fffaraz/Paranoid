#include "keymap.h"

#include <raylib.h>

int RaylibKeyForScanCode(uint8_t code, bool extended)
{
    if (extended) {
        switch (code) {
        case 0x1c: return KEY_KP_ENTER;
        case 0x1d: return KEY_RIGHT_CONTROL;
        case 0x35: return KEY_KP_DIVIDE;
        case 0x38: return KEY_RIGHT_ALT;
        case 0x47: return KEY_HOME;
        case 0x48: return KEY_UP;
        case 0x49: return KEY_PAGE_UP;
        case 0x4b: return KEY_LEFT;
        case 0x4d: return KEY_RIGHT;
        case 0x4f: return KEY_END;
        case 0x50: return KEY_DOWN;
        case 0x51: return KEY_PAGE_DOWN;
        case 0x52: return KEY_INSERT;
        case 0x53: return KEY_DELETE;
        case 0x5b: return KEY_LEFT_SUPER;
        case 0x5c: return KEY_RIGHT_SUPER;
        case 0x5d: return KEY_KB_MENU;
        default: return 0;
        }
    }
    static const int keys[0x59] = {
        0, KEY_ESCAPE, KEY_ONE, KEY_TWO, KEY_THREE, KEY_FOUR, KEY_FIVE, KEY_SIX, // 00
        KEY_SEVEN, KEY_EIGHT, KEY_NINE, KEY_ZERO, KEY_MINUS, KEY_EQUAL, KEY_BACKSPACE, KEY_TAB, // 08
        KEY_Q, KEY_W, KEY_E, KEY_R, KEY_T, KEY_Y, KEY_U, KEY_I, // 10
        KEY_O, KEY_P, KEY_LEFT_BRACKET, KEY_RIGHT_BRACKET, KEY_ENTER, KEY_LEFT_CONTROL, KEY_A, KEY_S, // 18
        KEY_D, KEY_F, KEY_G, KEY_H, KEY_J, KEY_K, KEY_L, KEY_SEMICOLON, // 20
        KEY_APOSTROPHE, KEY_GRAVE, KEY_LEFT_SHIFT, KEY_BACKSLASH, KEY_Z, KEY_X, KEY_C, KEY_V, // 28
        KEY_B, KEY_N, KEY_M, KEY_COMMA, KEY_PERIOD, KEY_SLASH, KEY_RIGHT_SHIFT, KEY_KP_MULTIPLY, // 30
        KEY_LEFT_ALT, KEY_SPACE, KEY_CAPS_LOCK, KEY_F1, KEY_F2, KEY_F3, KEY_F4, KEY_F5, // 38
        KEY_F6, KEY_F7, KEY_F8, KEY_F9, KEY_F10, KEY_NUM_LOCK, KEY_SCROLL_LOCK, KEY_KP_7, // 40
        KEY_KP_8, KEY_KP_9, KEY_KP_SUBTRACT, KEY_KP_4, KEY_KP_5, KEY_KP_6, KEY_KP_ADD, KEY_KP_1, // 48
        KEY_KP_2, KEY_KP_3, KEY_KP_0, KEY_KP_DECIMAL, 0, 0, 0, KEY_F11, // 50
        KEY_F12, // 58
    };
    return code < sizeof(keys) / sizeof(keys[0]) ? keys[code] : 0;
}

// 61ea: two hex digits, either case.
static bool HexByte(const char*& p, uint8_t& value)
{
    int v = 0;
    for (int i = 0; i < 2; i++, p++) {
        char c = *p;
        if (c >= 'a' && c <= 'z')
            c = char(c & 0xdf);
        if (c >= '0' && c <= '9')
            v = v * 16 + (c - '0');
        else if (c >= 'A' && c <= 'F')
            v = v * 16 + (c - 'A' + 10);
        else
            return false;
    }
    value = uint8_t(v);
    return true;
}

const char* ParseKeyCodes(const char* text, uint8_t codes[3][2])
{
    const char* p = text;
    while (*p == ' ')
        p++;
    for (int i = 0; i < 3; i++) {
        codes[i][1] = 0;
        if (!HexByte(p, codes[i][0]))
            return nullptr;
        if (codes[i][0] == 0xe0 && !HexByte(p, codes[i][1]))
            return nullptr;
    }
    return p;
}
