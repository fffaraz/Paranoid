#include "replay.h"

#include "sim.h"

#include <raylib.h>

#include <stdio.h>
#include <string.h>
#include <vector>

namespace {

constexpr int DEMO_LEVEL_TICKS = 1024; // 3bbd
constexpr int VARS_OFFSET = 8 + 256 + 45 + 64 + 1 + 798; // the "vars" block in a record
constexpr int KEYS_OFFSET = VARS_OFFSET + 378;

uint8_t VarAt(const uint8_t* rec, uint16_t a) { return rec[VARS_OFFSET + a - addr::PAGE_OFFSET]; }

// Strip the gzip header and trailer and inflate the raw deflate data with
// raylib. raylib inflates at most 64 MB.
bool Gunzip(const unsigned char* data, int size, std::vector<uint8_t>& out)
{
    if (size < 18 || data[0] != 0x1f || data[1] != 0x8b || data[2] != 8)
        return false;
    const int flags = data[3];
    int pos = 10;
    if (flags & 4)
        pos += 2 + (data[pos] | data[pos + 1] << 8);
    for (int bit : { 8, 16 }) {
        if (flags & bit) {
            while (pos < size && data[pos] != 0)
                pos++;
            pos++;
        }
    }
    if (flags & 2)
        pos += 2;
    if (pos >= size - 8)
        return false;
    const uint32_t expected = uint32_t(data[size - 4] | data[size - 3] << 8 | data[size - 2] << 16) | uint32_t(data[size - 1]) << 24;
    if (expected > 64u * 1024 * 1024) {
        printf("%u bytes is too large to inflate here; gunzip the trace first\n", expected);
        return false;
    }
    int out_size = 0;
    unsigned char* inflated = DecompressData(data + pos, size - 8 - pos, &out_size);
    if (!inflated)
        return false;
    out.assign(inflated, inflated + out_size);
    MemFree(inflated);
    return uint32_t(out_size) == expected;
}

bool ReadTrace(const char* path, std::vector<uint8_t>& out)
{
    int size = 0;
    unsigned char* data = LoadFileData(path, &size);
    if (!data)
        return false;
    bool ok = true;
    if (size >= 2 && data[0] == 0x1f && data[1] == 0x8b)
        ok = Gunzip(data, size, out);
    else
        out.assign(data, data + size);
    UnloadFileData(data);
    return ok && out.size() % TRACE_RECORD_SIZE == 0;
}

} // namespace

int RunReplay(const char* ref_path, const char* out_path, const std::array<Level, LEVEL_COUNT>& levels)
{
    std::vector<uint8_t> ref;
    if (!ReadTrace(ref_path, ref)) {
        printf("FAILED TO READ TRACE (%s)\n", ref_path);
        return 1;
    }
    const size_t count = ref.size() / TRACE_RECORD_SIZE;
    if (count == 0) {
        printf("EMPTY TRACE (%s)\n", ref_path);
        return 1;
    }
    for (size_t i = 0; i < count; i++) {
        if (ref[i * TRACE_RECORD_SIZE + 2] != TRACE_LOOP_DEMO) {
            printf("RECORD %zu ISN'T FROM THE DEMO; ONLY DEMO REPLAY IS SUPPORTED SO FAR\n", i);
            return 1;
        }
    }

    FILE* out = fopen(out_path, "wb");
    if (!out) {
        printf("FAILED TO WRITE TRACE (%s)\n", out_path);
        return 1;
    }

    static OrigState s;
    SimInit(s, levels);
    const uint8_t* first = &ref[0];
    // Memory the simulation never writes (the high-score table, string
    // terminators, drawing scratch) comes from the first record. Pending
    // points are 0 here: start-up clears them and a game ends only after the
    // settle phase has used them up.
    memcpy(&s.mem[addr::PAGE_OFFSET], first + VARS_OFFSET, 378);
    s.set_w(addr::PENDING_POINTS, 0);
    // Start the demo level list where the reference starts.
    for (uint16_t p = 0x775; p < 0x77f; p++) {
        s.set_w(addr::DEMO_LEVEL_PTR, p);
        OrigState probe = s;
        SimDemoLevelStart(probe);
        if (probe.b(addr::LEVEL_DIGITS) == VarAt(first, addr::LEVEL_DIGITS)
            && probe.b(addr::LEVEL_DIGITS + 1) == VarAt(first, addr::LEVEL_DIGITS + 1))
            break;
    }

    uint8_t rec[TRACE_RECORD_SIZE];
    uint32_t tick = 0;
    for (size_t run_start = 0; run_start < count; run_start += DEMO_LEVEL_TICKS) {
        const uint8_t* run_first = &ref[run_start * TRACE_RECORD_SIZE];
        // The title and high-score screens between demo levels aren't traced
        // but advance the phase and flip the page, so take both from the
        // reference: the phase before its first tick, and the page it shows
        // (the two flips while the level starts cancel out).
        s.b(addr::PHASE) = uint8_t((VarAt(run_first, addr::PHASE) + 2) % 3);
        s.b(addr::PAGE) = VarAt(run_first, addr::PAGE);
        SimDemoLevelStart(s);
        for (size_t i = run_start; i < count && i < run_start + DEMO_LEVEL_TICKS; i++) {
            // The keyboard handler's state, as the reference recorded it.
            memcpy(&s.mem[addr::KEYS], &ref[i * TRACE_RECORD_SIZE + KEYS_OFFSET], 6);
            SimDemoTick(s);
            s.sounds.clear();
            ToTraceRecord(s, rec, TRACE_LOOP_DEMO, ++tick);
            fwrite(rec, 1, sizeof(rec), out);
            SimFlipPage(s);
        }
        SimDemoLevelEnd(s);
    }
    fclose(out);
    printf("replayed %zu demo ticks into %s\n", count, out_path);
    return 0;
}
