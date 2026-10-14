# NEXT — where to start (handoff from the session of 2026-10-13)

Read this first, then `CLAUDE.md`, then these sections of `TODO.md`:
**Decisions**, **How to do Part A**, **Part 0**, and the RAM map. Also read
`tools/TRACE_FORMAT.md` and `tests/reference/README.md`.

## Where things stand

The plan below (Steps 0–5) is **done**. Start at "After Step 5" at the end.

- `TODO.md` lists every known difference from the original (items 1–33 plus
  verification items V1–V7), with addresses in the disassembly. Ticked so
  far: 1, 4, 6, 12, 14–27, 30–33, V1, V2, V5, V7.
- The game runs on `sim.cpp`, a literal port of the original's simulation
  whose state is the original's memory. `game.cpp` is the play flow at 70
  ticks per second; `draw.cpp` draws from that memory.
- **Reference tooling:** `tools/run_original.sh`, `PARTRACE.COM`
  (`tools/make_trace_com.py`), `tools/trace_dump.py`, `tools/trace_diff.py`,
  and the remake's `--replay REF --trace OUT` (demo traces only so far).
- **Tests:** `cd build && ctest`: `demo_replay` replays
  `tests/reference/demo.trace.gz` and compares it (all 11264 records match);
  `screens` draws 24 scenes and compares them with the original's screens
  in `tests/reference/screens` (all pixel-identical). The trace is
  **git-ignored**; if it's missing the test is skipped. Regenerate it with
  `tools/make_demo_trace.sh` (about 5 minutes, opens a DOSBox-X window),
  then check that
  `python3 -I tools/trace_dump.py tests/reference/demo.trace.gz --summary`
  lists levels 02, 05, 06, 09, 10, 07, 04, 03, 01, 08, 02 at 1024 records
  each.
- Decided by the user: bugs are reproduced behind `faithful_bugs` (on by
  default), and item 32 follows it (see Decisions in `TODO.md`).

## The plan, in order

### Step 0 — item 33: levels are mirrored (small, separate) — DONE

`LoadLevel` in `game.cpp` uses `bricks[13 - c][r]`. The original uses the data
unmirrored (`bricks[c][r]`, column `c` at x = 16 + 32c); this is proven from
the trace (see item 33). Fix it, and rename the swapped
`LEVEL_ROWS`/`LEVEL_COLS` in `levels.h`. Build and check by eye: level 3 should
now look like the original.

### Step 1 — `tools/trace_diff.py` (TODO V4) — DONE

`trace_diff.py REF OURS [--from N] [--context K]`:
- Read both traces with `trace_format.read_records` (handles `.gz`).
- Compare record by record, skipping the bytes where
  `trace_format.ignored(offset)` is true: header, display page, collision
  scratch `0xd37c–0xd397`.
- Print the first differing record: index, loop, level, every differing field
  by name (`trace_format.field_at`) with both values, and the decoded
  records for K ticks before it.
- Exit 1 on a mismatch or a length difference, 0 when they match.

### Step 2 — the literal simulation port (Part A, items 1–11; also 12, 13, 28, 29) — DONE

Done as `sim.h`/`sim.cpp` (see the Progress note above item 1 in `TODO.md`).
Differences from the plan below: `OrigState` is the original's memory as a
64 KB byte image with named addresses (`addr::` in `sim.h`), not a struct of
fields, so unnamed bytes in the traced blocks (per-page letter copies, the
letter text at `0xd25c`, the flash table) come out right by construction.
The bugs are behind `OrigState::faithful_bugs` (the user's decision; see
Decisions in `TODO.md`). Sounds are queued in `OrigState::sounds` as pattern
addresses (`0xc91`, ...), to be mapped to `sound.cpp` in Step 4. The flow
functions (`SimGameStart`, `SimLevelStart`, `SimLifeStart`, `SimPlayTick`,
`SimPlayResult`, `SimSettleStep`, `SimLoseLife`, `SimNextLevel`) say in
`sim.h` how to chain them.

**Already checked for Step 3:** a scratch harness (not committed) matched all
11264 demo records. What it did, so Step 3 can repeat it in the real
`--replay`: `SimInit`; copy the reference's first `vars` block (378 bytes at
`0xd237`) into memory once, for bytes the simulation never writes (high-score
table at `0xd266..0xd369`, string terminators, drawing scratch at
`0xd23f..0xd245`, `0xd3af/0xd3b0`), then set pending points to 0; per demo
level, set phase to `(first.phase + 2) % 3` **and page to `first.page`**
(the flash queue `5b26` depends on the page), then `SimDemoLevelStart`, 1024 ×
(`SimDemoTick`, `ToTraceRecord`, `SimFlipPage`), then `SimDemoLevelEnd`. In
the real replay the high-score table should come from loading
`HiScores.PAR` into `0xd266`/`0xd2ac`/`0xd34c` rather than from the trace;
check the other constant bytes against what the original's start-up writes.

The original plan for this step:

Write a new `sim.h`/`sim.cpp` (keep `game.cpp` running until step 4):
- `struct OrigState`: the original's variables with the same meaning and
  widths. Balls 16 × {x, y, dx, dy (int16), flags, counter (uint16)}; icons
  5 slots; lasers 4; flash queue; brick grid `[14][19]` and attrs, index
  `col*19 + row`; every variable in `trace_format.VARS`. Write
  `void ToTraceRecord(const OrigState&, uint8_t out[2088], int loop, uint32_t tick)`
  in the exact layout of `trace_format.BLOCKS`, so traces can be compared byte
  for byte. Write zeros for the page bytes.
- One function per original routine, named after its address, in integer
  code. Port from `paranoid-v1.8/PARANOID.c`, checking odd branches against
  the asm bytes. The routines (details in `TODO.md` items 2–11):
  - `2e09`/`2d3e` ball step, `2b8c` walls, `2693`/`2858`/`290d`/`2a25`
    bricks, `2a73` brick hit, `2b0b`/`2b49` bounces, `2bec` bat,
    `2cd3`/`2d0a` barrier and loss, `3970`/`3933` split, `2e2b` speed-up.
  - `233b`/`2493` icons fall and catch, `22be`/`22fe` icon spawn, `23d0` icon
    animation.
  - `2298`/`2222`/`2255` lasers, `21e0`/`220a` laser fire.
  - `2dbc` bat movement, `3c1b` demo bat AI.
  - `5b26`/`5bbd` brick flash, `5ee1`/`5f79` score count-up and extra ball,
    `5e65`/`5e83`/`3ad1` bonus letters.
  - The icon handlers in table `0xc4c` (item 9).
- Tick order, exactly as the original (drawing calls left out):
  - **Demo loop `3bbd`**, per tick: `phase = (phase + 1) % 3`; `233b` icons;
    `3c1b` bat AI; `2e09` balls and speed-up; `23d0` icon animation; `5b26`
    flash; then the trace record. The demo does **not** run keys (`4f53`), bat
    input (`2dbc`), lasers (`2298`), the barrier drawing (`5be5`), the letter
    panel (`5e65`), the score count-up (`5ee1`) or sound. It runs 1024 ticks.
    Note: the decompiler shows the loop condition wrongly; the asm (`3c02`) is
    `loope` on "no key pressed".
  - **Play loop `3658`**, per tick: phase; `4f53` keys (action/Esc/F10/P via
    table `0x113`); `233b`; `2dbc`; `2e09`; `23d0`; `2298`; `5b26`; `5e65`;
    `5ee1`; then the record. Then: Escape → `36fd` (settle) and return 2;
    bricks == 0 or skip → sound `0xCDE`, `36fd`, return 1; balls == 0 →
    sound `0xCC5`, `36fd`, return 0.
- Starting a demo level (`3b69` → `33b7` → `3b94`):
  1. Load level `L` from the list at `0x775` (pointer `0xcece`, wraps
     `0x77f → 0x775`) into the grid and attrs. Set the level digits. Count the
     bricks that aren't `0` or `0x1C`.
  2. `3863` resets the level state (skip, letters, divider, icon dividers,
     timer 0x600, split, barrier, flash count). It does **not** reset phase or
     pending points.
  3. `3904` bat: x 216, width 6, maxX 0x1a0, mode 0.
  4. `38e0` ball: slot 0, x 237, y 304, dx 2, dy −2, counter 0, flags 1.
  5. Then `0xd256 = 0`, `0xced0 = 1` (demo: icons aren't applied).

### Step 3 — headless replay of the demo (rest of V4) — DONE

Done: `--replay`/`--trace` (`replay.cpp`) and the CTest test `demo_replay`,
which passes. See the Step 3 progress note under V4 in `TODO.md`. Not done
(can't be yet): `--trace` during a normal game (Step 4) and play-trace replay
(needs V3 recordings).

The original plan for this step:

- `./build/paranoid --replay tests/reference/demo.trace.gz --trace /tmp/ours.trace`
  runs without a window: no `InitWindow`, no textures, no audio, no drawing.
  It runs the 10 demo levels in list order, 1024 ticks each, and writes one
  record per tick.
- **Seeding:** phase carries over between loops, and the title and high-score
  screens (which aren't traced) also advance it. So at the start of each
  demo-level run, set `phase = (first_record.phase + 2) % 3`, i.e. the value
  before that run's first tick. Pending points start at 0 and carry across
  demo levels; they are never added to the score in the demo.
- Run `tools/trace_diff.py` until all records 0–10239 match. Then add the
  CTest test, which **skips** when the trace file is missing (TODO V4).

### Step 4 — switch the game over — DONE

Done; see the Step 4 progress notes above item 1 and under item 14 in
`TODO.md`. Notes for later:
- Keys (`game.cpp`): left/right/Esc/F10 follow the key state each tick; the
  action key and P are set on a press or an OS key repeat (like DOS
  typematic) and cleared after the tick once released, because their handlers
  clear them. The remake's extras are kept: arrow keys, `-l N`, the PAUSED
  banner, Space to end the pause, Esc during the pause to leave the game.
- `SetExitKey(KEY_NULL)`: Esc no longer closes the window (raylib's default);
  it ends the game like the original.
- Drawing uses the page on screen (the one drawn before the last flip) for
  the brick flashes and the barrier line, so they look as in the original.
- The icon sprites come from the pointer table `0xba9` (`ICON_SPRITE` in
  `draw.cpp`); the old `icon_anim` guess is gone. Not yet compared with the
  original's screen (V5).

The original plan for this step:

- Drive the play state from `sim` at a fixed 70 Hz accumulator.
- Draw from `OrigState` in `draw.cpp`: 8×6 ball sprite, 3×8 laser, the 1-px
  barrier at y = 335, the bat at y = 329 (items 4, 8, 30).
- Delete the old float code in `game.cpp`.
- Keep the remake's extra controls (arrow keys, `-l`) until the user decides.
- The 120-tick wait at the start of a life (`3610`/`3b4c`) and the settle
  phase (`36fd`, item 28) belong to the play flow.

### Step 5 — tick the TODO — DONE

Ticked 1, 4, 6 and 12 (confirmed by `demo.trace.gz`, or for 1 by the
frame-rate test); each has a "Done:" note. Items 2, 3, 5, 7, 8, 9, 10, 11, 13,
28 and 29 stay unticked with a "Status (Step 5)" note saying what the demo
confirms and what needs play traces.

### After Step 5 — what to do next

1. **Play traces (V3) need a person:** someone plays the original with
   `tools/run_original.sh --trace` (see V3 in `TODO.md`), covering lasers,
   sticky, split, the barrier, letters, losing balls and the icons.
2. **Play-trace replay** (rest of V4): start from the first play record and
   feed each tick's keys (see the V4 progress note for the action-key catch),
   then tick the remaining Part A items as their traces match.
3. Parts B–E of `TODO.md` are done except items 28 and 29, which wait for
   play traces like the Part A items. Screens were checked against the
   original with `tools/grab_original.sh` (see V5); items 15–17, 19–24, 30
   and 32 were matched pixel for pixel, 17, 19, 24 and 32 with patched
   scratch copies of the original's files (see their notes).
4. What is left besides play traces: V4's play-trace replay (with V3) and V6
   (sound). V5 (`--screenshot`, 24 reference screens, CTest `screens`) and V7
   (4:3 by default) are done. No decision is open at the moment.

## Facts learned this session that aren't obvious

- The original is deterministic. Two runs of demo level 02 produced the same
  game state.
- `level` (`0xd24f`) isn't set in the demo; use `level_digits` (`0xd3a8`).
- One tick can break two bricks at once: in demo level 02, tick 62 breaks
  col 10 and col 11 together (item 4).
- The trace records are taken just before the page flip, so they show the
  state after that tick's update.
- `PARTRACE.COM` is rebuilt automatically if it is missing from
  `tests/capture/`.
