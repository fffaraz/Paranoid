# TODO — make the remake match PARANOID v1.8

This list compares the remake with the original game's
disassembly (`paranoid-v1.8/PARANOID.asm`, a radare2 dump of `PARANOID.COM`).
Each item can be done on its own. Work through them roughly in order. **Part 0**
sets up comparison against the real game in DOSBox-X (installed at
`/usr/bin/dosbox-x`, version 2026.10.01, debugger built in); do it first. The
items in Part A change the simulation timing that later items rely on.

When an item is done, tick its box, build, and check it: run the matching
trace or screenshot comparison from Part 0 where there is one, otherwise play
the affected part of the game.

**Source layout of the remake** (split out of the old single `main.cpp` with
no change in behaviour):
- `game.h` / `game.cpp`: simulation state and `UpdatePlay`.
- `draw.h` / `draw.cpp`: palette, textures, text, `DrawTitleScreen`,
  `DrawPlay`.
- `main.cpp`: start-up, the state machine and the simple screens.
- `bitmaps`, `fonts`, `levels`, `sound`: the data loaders and sound player.

Line references below (`game.cpp` ~NNN) are approximate.

## Decisions

Decided by the user:
- **Item 24 (screen transitions) is wanted.**
- **`HiScores.PAR` is read and written in the current working directory**
  (item 19), not next to the data files. Create it there with the default
  table if it is missing.

**Still open — ask the user before choosing, and don't pick a default:**
- Reproduce the original's bugs or keep the intended behaviour: the bonus
  letters (item 32), the bat-direction quirk (item 2), and any others found
  later.
- Keep, remove or make optional the remake's additions that the original
  doesn't have: arrow keys, the `-l N` level switch, the resizable window, the
  "PAUSED" banner (item 18).
- Defaults for the display: 4:3 aspect on or off (V7). The tick rate is
  70 Hz either way; that is what the reference traces use.

## How to do Part A

Items 1–11 all rewrite the same simulation code in `game.cpp`. Don't patch the
float-based `UpdatePlay` item by item. Do **one literal port** instead:
- Keep the state in a struct laid out like the original's memory (the RAM map
  below, `tools/trace_format.py`).
- Write one function per original routine, named after its address (for
  example `fcn_2bec_bat_collision()`), as integer code.
- Run it once per 70 Hz tick, and draw from that state.

Use items 1–11 as the checklist and `demo.trace` (V3/V4) as the test. Tick
each of items 1–11 when the trace matches for the behaviour it describes.

---

## How to read the references

- **Addresses** such as `2c57` or `0xb7a` are offsets in the COM segment,
  matching the `0000:xxxx` column in `PARANOID.asm`. Find code with
  `grep -n '0000:2c57' paranoid-v1.8/PARANOID.asm`.
- **Data tables** are easier to read straight from the binary. The file offset
  is `address - 0x100`:
  `xxd -s $((0xb7a-0x100)) -l 16 paranoid-v1.8/PARANOID.COM`.
- radare2 sometimes decodes code as `.string` (for example
  `"<\xd2\x80><\xd2"`). When a listing looks garbled, read the raw bytes with
  `xxd` and decode them by hand.
- **Tick** = one iteration of the original game loop. It waits for one vertical
  retrace (`653b` → `65e9`), so it runs at **70 Hz** (EGA mode 0x10 on VGA).
  `sound.cpp` already uses `TICK_HZ = 70`.
- **`paranoid-v1.8/PARANOID.c`** is a decompiled C version of the same code
  (function names like `fcn.00002bec` = address `2bec`, RAM as `*0xd247`). It
  is often easier to read than the asm; check doubtful branches against the
  asm bytes.
- **Coordinates** are in 640×350 screen pixels unless marked "col". A "col" is
  an 8-pixel byte column, so col 10 = x 80.
- Text calls such as `fcn.3e8a` take `ax` = col and `bx` = y in pixels.
  `fcn.3da6` takes `ax` = x in pixels, `bx` = y, `dl` = colour.

### RAM map of the original (useful for every item)

| Address | Meaning |
|---|---|
| `0xc16d` | Ball/sprite table: 16 slots × 16 bytes. `+0` x, `+2` y, `+4` dx, `+6` dy (words, signed), `+8` flags, `+9` speed sub-step counter (word, 0..2). Flags: bit0 active, bit1 through-bricks, bit2 below the bat (no bat collision), bit3 stuck to the bat. |
| `0xc2cd` | Falling icons: 5 slots × 9 bytes. `+0` x (col), `+2` y, `+4` type, `+5` current frame, `+6` first frame, `+7` last frame, `+8` active. |
| `0xc30e` | Laser shots: 4 slots × 16 bytes. `+0` x, `+2` y, `+4` active. |
| `0xcf17` | Brick flash queue: 3-byte entries (col, row, timer=5). |
| `0x8100` / `0x820a` | Brick grid / icon-attribute grid, 14 cols × 19 rows, index = `col*19 + row` (`2a14`). An attribute with bit 7 set means no icon. |
| `0xd23a` | Icon animation divider (advances every 5 ticks). |
| `0xd23b` | Icon fall divider (moves every 2 ticks). |
| `0xd23c` | Frame phase, cycles 0,1,2. |
| `0xd23d` | Speed-up timer, reloads to 0x600 = 1536 ticks. |
| `0xd247` | Bat x (pixels, left edge). |
| `0xd249` | Bat width in 8-px units: 4, 6 or 8 (32/48/64 px). Default 6. |
| `0xd24a` | Maximum bat x. |
| `0xd24c` | Bat mode: 0 normal, 1 sticky, 2 laser. |
| `0xd24d` | How far the bat moved this tick (used to carry stuck balls). |
| `0xd24f` | Level, starting at 1. |
| `0xd250` | Lives. |
| `0xd251` | Balls in play. |
| `0xd252` | Bricks remaining. |
| `0xd255` | Split count. |
| `0xd256` | Through-bricks pending. |
| `0xd257` | Barrier on. |
| `0xd259` | Bitmask of collected letters. |
| `0xd262` | Next expected letter bit. |
| `0xd263` | Letters collected in order. |
| `0xd264` | Skip level. |
| `0xd265` | Escape pressed. |
| `0xd398` | Score count-up divider. |
| `0xd399` | Pending points not yet added to the score. |
| `0xd39b..0xd3a0` | Score as 6 decimal digits (one per byte). |
| `0xd3a2..0xd3a4` | Next extra-ball threshold as decimal digits (starts at 4000, +4000 each time). |
| `0xd3a8/9` | Level digits. |
| `0xd3ab/c` | Lives digits. |
| `0xced0` | Demo mode. |
| `0xced1` | Quiet mode (`/Q`). |
| `0xced2` | Skip video detection (`/V`). |
| `0xd41d` | Key scan codes, 6 × 2 bytes: left, right, action, Esc, F10, P. Defaults (copied from `0x105`): `2a 36 39 01 44 19` (LShift, RShift, Space, Esc, F10, P). |
| `0xd42a..0xd42f` | Key-down states written by the keyboard handler at `5045`, same order. |
| `0xd266` / `0xd2ac` / `0xd34c` | High-score scores (10 × 7) / names (10 × 16) / levels (10 × 3). |

### Original game flow

This is what items 13–23 need to reproduce.

```
entry 5111: init 5134, cmdline 6105, file check 60f7, load files, title 6367
title (6367): draw 624e, then 64d9 = bouncing balls + scrolling credits until SPACE
main loop 51d6: forever { attract 3c38 ; dispatch 3c75 }
  attract 3c38: loop { demo level (3b69) ; key? ; high-score screen (4ba7) ; key? }
  dispatch on key: F1 → info 4bb4, F10 → quit 3c95, Space → game 39b2
game 39b2: init 39f3 (level 1, score 0, lives 3)
  level: 37db (clear, "Level xx" box, draw field, scroll-in transition)
  life:  3610 (reset bat and powers, spawn ball, wait 120 ticks)
  play:  3658 loop until result
     result 0 (balls gone) → 3a59 lives--; if any left → life; else 3ab5 "Game Over" → 4882 high score
     result 1 (cleared)    → level++; if > 30 → 3caf ending → 4882; else 38b7 wait 30 ticks → level
     result 2 (Escape)     → return to the attract loop
```

---

## Part 0 — verification against the original in DOSBox-X

The original is fully deterministic. It never reads the timer, never uses
random numbers and never changes the palette; the only `int 10h` calls set the
video mode and the text cursor. Each tick depends only on the previous state
and the keys held. So an exact port must reproduce the original's memory
**tick for tick**, and these items make that checkable.

Put the tools under `tools/` and the reference data under `tests/reference/`.
Add the DOSBox-X output folders to `.gitignore`.

### [x] V1. DOSBox-X setup for the original

Create `tools/dosbox/paranoid.conf` and start it with
`dosbox-x -conf tools/dosbox/paranoid.conf`. Use `-fastlaunch`, and
`-set "section property=value"` for one-off overrides. Settings:

- `[dosbox] machine = svga_s3`. Mode 0x10 then runs at **70 Hz**, the rate
  the TODO assumes. A real EGA card runs at 60 Hz; don't use `machine=ega`
  for the reference data.
- `[cpu] core = normal`, `cycles = max` or a fixed high value such as 30000.
  The game waits for vertical retrace each tick, so extra speed doesn't
  change the logic. It only has to be fast enough never to miss a frame.
- `[render] aspect = false`, so screenshots are the raw 640×350 picture.
- `[dosbox] captures = <absolute path>/tests/capture`.
- `[autoexec]`: copy `paranoid-v1.8/*` into a scratch folder first and mount
  **that**, not the repo folder. The game writes `HiScores.PAR`, and each run
  should start from the default table. Then `c:` and `PARTRACE` (V2) or
  `PARANOID`.

Wrap it in `tools/run_original.sh [--trace] [--keep-hiscores]`, which makes
the scratch copy, runs DOSBox-X, and copies `TRACE.BIN` and the captures back
to `tests/capture/`.

**Accept:** one command starts the original, and closing it leaves the repo
unchanged except for `tests/capture/`.

**Done:** `tools/dosbox/paranoid.conf` and `tools/run_original.sh`. Options:
- `--trace` runs `PARTRACE.COM` and copies `TRACE.BIN` to `tests/capture/`.
- `--type "ARGS"` passes keys to DOSBox-X `AUTOTYPE`; `--type "-w 4 space"`
  gets past the title screen.
- `--time-limit N` stops DOSBox-X after N seconds.
- `--keep-hiscores` keeps the high-score file between runs.

Checked: the trace has 1024 demo ticks per demo level, separated by
1024-tick high-score screens. That matches about 70 ticks per second in real
time, so the machine setting gives 70 Hz.

### [x] V2. Trace build of the original (`PARTRACE.COM`)

Write `tools/make_trace_com.py`. It reads `PARANOID.COM` and writes a patched
`PARTRACE.COM` that saves a snapshot of the game state once per tick.

- **Where to hook.** The game loops call `653b` (page flip + wait for
  retrace) exactly once per tick, at the end of the update:
  - play loop `3658`: the `call 653b` at **`0x36b5`** (bytes `e8 83 2e`),
  - demo loop `3bbd`: the `call 653b` at **`0x3bff`** (bytes `e8 39 29`).

  Change each to a `call` into a stub, and have the stub write the snapshot
  and then `jmp 653b`. Use two entry points so the record says which loop it
  came from (1 = play, 2 = demo). Check the original bytes before patching and
  fail if they differ.
- **Where the stub goes.** The file ends at `0x66be` (26046 bytes), so append
  the stub there. First check nothing uses `0x66be…0x6800`: grep the asm and
  `PARANOID.c` for addresses in that range (`0x6701` shows up once; work out
  what it is). Also check how far the stack grows down towards it (look at
  where SP is set, around `4882`). If the space isn't safe, use a real
  free gap instead.
- **The stub.** Save all registers and flags. On the first call, create
  `TRACE.BIN` (`int 21h` AH=3Ch) and keep the handle in the stub's own data.
  Each call writes one record (AH=40h). Every 64 records, flush by duplicating
  the handle (AH=45h) and closing the copy (AH=3Eh), so data survives if
  DOSBox-X is closed. DOS closes the main handle when the game exits through
  F10 (`int 21h` AX=4C00h).
- **Record format** (little-endian, fixed size; write it up in
  `tools/TRACE_FORMAT.md`):

  | Field | Source | Bytes |
  |---|---|---|
  | magic `'PT'`, loop id, tick counter (u32, kept by the stub) | — | 8 |
  | ball table | `0xc16d` | 256 |
  | icons | `0xc2cd` | 45 |
  | lasers | `0xc30e` | 64 |
  | flash queue count + entries | `0xd235`, `0xcf17` | 1 + 798 |
  | game variables | `0xd237…0xd3b0` | 378 |
  | key states | `0xd42a…0xd42f` | 6 |
  | bricks + icon attributes | `0x8100`, `0x820a` | 266 + 266 |

  The game variables cover the bat, level, lives, counters, score digits and
  letters. Leave out the page variables `0xd237`/`0xd239` when comparing,
  because the remake has no display pages.
- Also write `tools/trace_dump.py TRACE.BIN [--tick N] [--field name]`, which
  prints records with field names from the RAM map in this file.

**Accept:** running the demo for one full cycle (10 demo levels) gives a
`TRACE.BIN` in which the ball positions change by dx/dy each tick and the
level byte follows `2,5,6,9,10,7,4,3,1,8`.

**Done:**
- `tools/make_trace_com.py` writes `PARTRACE.COM`. It checks the file size and
  both hooked `call 653b` instructions before patching. The routine sits at
  `0x66be–0x6781`; nothing in the program uses that range, and DOS starts a
  COM program's stack at the top of the segment.
- `tools/trace_format.py` defines the layout (2088 bytes per record) and
  names the fields. `tools/trace_dump.py` prints records or a `--summary`.
- The format is documented in `tools/TRACE_FORMAT.md`. One correction to the
  table above: in the demo, `level` (`0xd24f`) isn't set, so use
  `level_digits` (`0xd3a8`).
- Record a trace with
  `tools/run_original.sh --trace --type "-w 4 space" --time-limit 320`.

### [ ] V3. Reference traces (demo done; play traces need a person)

Record and commit small reference traces under `tests/reference/` (or
compress them; each tick is about 2 KB):

1. **`demo.trace`**: start, press nothing, let the attract loop run the 10
   demo levels. No keys are pressed, so this is identical on every run, and it
   is the main test.
2. **`play_level1.trace`**, **`play_powerups.trace`**: a human plays the
   original with `PARTRACE`. Key states are in every record, so the remake can
   replay them exactly (V4) even though the human pressed keys at random
   moments. Pick levels with many icons; play long enough to catch every icon
   type, lose a life, and clear a level.

Write down how each trace was made (command, levels, what happened) in
`tests/reference/README.md`.

**Status:** `demo.trace.gz` is recorded (11264 ticks, 403 KB). It covers all
10 demo levels plus level 02 again, and the two level-02 runs match, which
confirms the original is deterministic. `tools/trace_format.py` reads `.gz`
directly. The README there lists what a replay must reproduce: the frame phase
isn't reset between demo levels, and demo points pile up in `pending_points`.
**Still to do:** the `play_*` traces. These need a person to play the original
with `tools/run_original.sh --trace`.

### [ ] V4. Trace and replay modes in the remake

- `--trace out.bin` writes a record in the **same format** after every
  simulated tick of the play and demo loops (the same moment as the patched
  `call 653b`). Fill it by converting the remake's state to the original's
  layout (a `ToOriginalRam()` helper). Doing this on top of item 1's literal
  port is easiest.
- `--replay ref.trace` runs headless without a window, or with
  `SetTargetFPS(0)`. It takes the key states for each tick from the reference
  records, starting at the same point (the first game-start record; for the
  demo, the first demo record), and writes its own trace.
- `tools/trace_diff.py ref.trace ours.trace` reports the **first** differing
  tick, the fields that differ (by RAM-map name) and a few ticks of context.
  Return non-zero on a mismatch so it can run in CI.
- Add a CTest test that replays `demo.trace` and compares. Expect it to fail
  until Part A is done; mark it `WILL_FAIL` or skip it until then, but keep it
  in the build.

**Accept:** `trace_diff` on `demo.trace` reports the first difference and
names the field.

### [ ] V5. Screenshot comparison

- In DOSBox-X, take screenshots from the **Capture** menu (its hotkey is shown
  there). They land in the `captures` folder from V1 as 640×350 PNGs. Save
  references in `tests/reference/screens/`:
  - title
  - demo play with the side panel
  - high-score table
  - the five F1 pages
  - "Level 01"
  - in-game with each bat width / laser / barrier / icons
  - "Game Over"
  - the New High Score message and name entry
  - the exit registration screen (from a text-mode capture)
- Add `--screenshot NAME out.png` to the remake. It puts the game into the
  named state (for example `title`, `info3`, `level:5:tick:200` together with
  a replay), renders one frame to the 640×350 texture and saves it with
  `ExportImage`.
- `tools/screen_diff.py ref.png ours.png` reports the number of different
  pixels and writes a highlight image. Use Pillow, or ImageMagick
  `compare -metric AE`.

**Accept:** every static screen (title boxes, help pages, side panel,
high-score layout) matches to 0 different pixels. Item 30 and the help-page
items are only done when their screens match.

### [ ] V6. Sound comparison

- Record the original's PC speaker with the **Capture** menu's WAV recording.
  Trigger each effect: wall, top, bat, brick, laser, laser hit, barrier, each
  pickup, ball lost, level complete, extra ball.
- Add `--dump-sounds dir/` to the remake, writing each `Sounds` entry as a WAV
  (`ExportWave`).
- Compare each effect's length and pitch sequence. Matching the waveform
  sample by sample isn't the goal; matching the timing in ticks at 70 Hz and
  the PIT divisors is.

### [ ] V7. Aspect ratio of the window

EGA 640×350 was shown on a 4:3 monitor, so each pixel was about 1.37 times
taller than wide. The remake scales x and y equally (`main.cpp` ~177), so
everything looks flatter than on the original. Draw the 640×350 texture into
the largest 4:3 rectangle that fits the window (for example 640×480 at 1×).
Make it switchable (a key and a command-line flag) for anyone who wants square
pixels. Screenshot comparisons (V5) always use the raw 640×350 texture.

---

## Part A — simulation fidelity

### [ ] 1. Fixed 70 Hz tick with whole-pixel movement

**Original:** every moving object uses whole-pixel steps per tick (see the RAM
map). The ball also moves one extra pixel vertically on some ticks to give
fractional speed (item 3).

**Remake:** `UpdatePlay(float dt, …)` (`game.cpp` ~257) moves everything with
`dt` and px/s constants: `BALL_INIT_DY`, `paddle.speed = 300`, icons at
80 px/s, lasers at 300 px/s, `SPEED_INCREASE_INTERVAL = 30 s`.

**Do:** add an accumulator in `main()` and call a `TickPlay()` once per
1/70 s. Keep rendering at the display rate. Store ball/bat/icon/laser
positions and velocities as `int`. Port the constants in items 2–9 as
per-tick values. The 120-tick start delay (`LIFE_START_DELAY`) becomes a tick
counter.

**Accept:** the game speed doesn't depend on frame rate (check with
`SetTargetFPS(30)` and `SetTargetFPS(144)`). All movement constants in later
items are per-tick integers.

### [ ] 2. Bat movement and bat–ball collision (six fixed zones)

**Original:**
- Movement (`2dbc`): ±3 px per tick while the left/right key is held. x is
  clamped to `[15, maxX]` with `maxX = 0x1a0` (416) at width 6. Enlarge
  subtracts 16 from maxX, shrink adds 16.
- Initial bat (`3904`): x = 216, width 6.
- Collision (`2bec`) is only checked when ball y ≥ 0x143 (323) and the ball
  isn't flagged "below bat" or stuck (`2da8`). The ball hits when
  `ball.x >= batx - 7` and `ball.x <= batx + w*8 - 1` (ball.x is the left edge
  of its 8×6 box).
- On a hit: clear the ball's through flag, then set it if `0xd256` is pending
  (and clear `0xd256`). Play sound `0xC7C`. Set y = 323 and negate dy.
- dx comes from a zone table. `off = ball.x - batx + 7`. The table row starts
  at `0xb7a + 5*((w-4)/2)`:
  - w=4: `6 12 20 27 33`
  - w=6: `9 18 28 37 46`
  - w=8: `12 24 36 48 60`

  `off <= t0` → dx = −3, `<= t1` → −2, `<= t2` → −1, `<= t3` → +1,
  `<= t4` → +2, otherwise +3. dx is never 0. dy keeps its size.
- Sticky mode (`0xd24c & 1`): set the stuck flag (bit 3).
- Then split (`3970`): if the split count > 0, spawn a copy of the ball with
  dx negated (same x, y, dy, sub-step counter and flags), split count −1,
  balls +1.
- A ball with y > 323 gets the "below bat" flag (bit 2) and can't be hit by
  the bat any more (`2d0a`). The flag is recomputed every tick.
- The bat test (`2bec`) doesn't check which way the ball is moving. A ball
  coming back **up** off the barrier that is at exactly y = 323 over the bat
  gets dy flipped downward again. Porting `2bec` literally reproduces this;
  don't "fix" it without asking.

**Remake:** `game.cpp` ~376–414 uses a smooth angle (`hitPos * BALL_INIT_DX * 2`),
a circle-vs-rect test, a speed floor at `BALL_INIT_DY`, and a split copy offset
by −6 px.

**Accept:** six distinct bounce angles per bat width; the ball never goes
straight up; the ball can't be saved once it is past y = 323.

### [ ] 3. Ball speed model (base dy + thirds counter)

**Original:**
- New ball (`38e0`): x = 237, y = 304, dx = +2, dy = −2, counter = 0.
- Per tick (`2d3e`): x += dx, y += dy. Then, if `phase (0xd23c, cycling 0,1,2)
  < counter`, y moves one more pixel in the direction of dy. Effective vertical
  speed is `|dy| + counter/3` px per tick.
- Gradual speed-up (`2e2b`): every 1536 ticks, for each active ball with
  |dy| ≠ 7, counter++. When the counter reaches 3, it resets to 0 and |dy|++.
  So |dy| goes up by 1 roughly every 66 s, capped at 7.
- Speed-up icon (`25c6`): the same single counter step for every ball, with
  |dy| capped at 6.
- Slow-down icon (`260a`): every ball gets counter = 0, |dy| = 2 (sign kept),
  and the 1536 timer is reset.
- The timer resets to 1536 at each new life (`3610`) and each level.

**Remake:** `SPEED_INCREASE_*`, the speed-up icon adds +50 px/s, slow-down sets
`BALL_INIT_DY` (`game.cpp` ~302–319, `game.cpp` ~606–622).

**Accept:** matches the numbers above, all per tick.

### [ ] 4. Ball collision box and multi-brick hits

**Original:**
- The ball is an **8×6** box. Its (x, y) is the **top-left corner**. The
  remake currently uses the centre (`y = paddle.y - 4`), so change every
  constant to the original's meaning (bat top = 329, ball rests on it at
  y = 323; barrier stop at y = 328; lost at y > 337).
- Walls (`2b8c`): x < 16 → x = 16; x > 456 → x = 456; dx is negated (except
  for stuck balls), sound `0xC83`. y < 12 → y = 12, dy negated, sound `0xC8A`.
- Bricks (`2693`, `2858`, `290d`): bricks are 32×12; grid col =
  `(x-16)/32`, row = `y/12 - 1`. The 2×2 cells under the box corners are
  checked. Every brick touched is hit (`2a25` → `2a73` for up to 4 cells).
- The bounce axis is decided by how many cells were touched and the corner
  pattern (lookup tables at `0xb5a` and `0xb6a`), with a sub-cell tie-break in
  `27c2…2853`.
- Bounces (`2b0b` reverses dx and snaps x to the 8-px grid; `2b49` reverses dy
  and snaps y to the 6-px grid) both play sound `0xC91`. They are skipped when
  the ball has the through flag.
- The brick-hit logic in `2a73` is already ported as `HitBrick` (scores at
  `0xb89` match `BRICK_SCORE`).

**Remake:** `game.cpp` ~416–479 uses a radius-4 circle, hits only the first
brick, and picks the axis by smallest overlap.

**Do:** port `2693` and its helpers literally (they are integer-only). Draw
the ball as the original's 8×6 white (colour 15) sprite, with its top-left at
(x, y) (`52ff`, shape table `0xa53`, drawn by `564a`; rows below y = 338 are
clipped):

```
..####..
.######.
########
########
.######.
..####..
```

The remake draws `DrawCircle(x, y, 4)` (`draw.cpp` ~271).

**Accept:** a ball hitting the gap between two bricks breaks both, like the
original.

### [ ] 5. Through-bricks ball also passes unbreakable bricks

**Original:** while bit 1 is set, `2b0b`/`2b49` don't bounce at all, including
off type `0x1C`. The unbreakable brick isn't damaged (`2a73` ignores `0x1C`).
The flag lasts from one bat hit to the next.

**Remake:** `game.cpp` ~432–453 still bounces off `0x1C`, and the comment says
so. Remove that special case and its comment.

### [ ] 6. Icons are released on the first hit of a brick

**Original:** `2a73` calls `22fe` **first**, before checking the brick type.
So the icon drops on the first hit even for bricks that need several hits.
The attribute is then set to `0xff` so it only drops once. The icon spawns at
col `brickcol*4 + 3` (x = `brickcol*32 + 24`), y = `row*12 + 12`.

**Remake:** `HitBrick` (`game.cpp` ~118) spawns the icon only when the brick is
destroyed.

**Accept:** a two-hit brick with an icon drops it on the first hit.

### [ ] 7. Sticky bat details

**Original:**
- A stuck ball moves with the bat by `0xd24d` each tick (`2d8f`).
- The action key releases **all** stuck balls at once (`3a7f` → `3a9b`, which
  clears bit 3 on every slot). A released ball keeps the dx/dy it got at the
  bat hit; it isn't relaunched.
- Catching the laser icon (`258b`) also releases all stuck balls.
- Shrinking the bat (`2516` → `2643`) moves stuck balls so they stay within
  `[batx-7, batx + w*8 + 4)`.
- The action key acts once per press (the handler clears `0xd42c`).
- The ball at the start of a life is **not** stuck; it moves by itself after
  the 120-tick wait. The remake already does this.

**Remake:** `game.cpp` ~290–300 releases one ball per Space press and calls
`LaunchBall`, which picks a new angle. The laser pickup at `game.cpp` ~586 doesn't
release stuck balls. `ICON_SHRINK` doesn't move stuck balls.

### [ ] 8. Laser: one shot from the centre of the bat, 4 slots

**Original:**
- Fire (`220a` → `21e0`): one shot at x = `batx + w*4 - 1` (bat centre),
  y = 320, in the first free of 4 slots. Nothing is fired if all 4 are in use.
  Sound `0xCB7`. There is no other cooldown.
- Move (`2222`): y −= 3 per tick; removed when y ≤ 8.
- Hit (`2255`): looks up the one cell at (x, y). If any brick is there, run
  `2a73` (does nothing for `0x1C`), play `0xC9E`, remove the shot.
- Lasers move only during play (`2298`, called from `3658`).
- Drawing (`5e23` → `5c3a`, shape table `0xa9f`): a solid 3×8 yellow
  (colour 14) bar with its top-left at (x, y), clipped at the top of the
  playfield. The remake's 3×8 rectangle is the right size but is centred on
  (x, y) (`draw.cpp` ~265).

**Remake:** `game.cpp` ~481–533 fires two shots from the bat edges, has 10
slots, a 0.2 s cooldown, moves at 300 px/s, and uses the wall sound for
unbreakable bricks.

### [ ] 9. Falling icons: 5 slots, fall rate, animation rate, catch box

**Original:**
- At most **5** icons at once (`0xc2cd`). Spawn (`22be`) uses the first free
  slot and drops the icon if none is free.
- Fall (`233b`): +1 px every 2 ticks. Removed when y > 0x151 (337).
- Animate (`23d0`): every 5 ticks, frame += 2. Past the last frame it wraps to
  the first. Frame ranges are in table `0xc31` (byte offsets into the sprite
  pointer table `0xba9`). The remake's `icon_anim` table already gives the
  frames; check it against `0xc31` and change only the timing.
- Catch (`2493`): `317 < y < 334` and the 16-px icon at `x*8` overlaps the
  bat `[batx, batx + w*8)`. The icon is not applied in demo mode (`0xced0`).
  Then call the handler from table `0xc4c` and play the sound from table
  `0xc64` (already in `sound.cpp`).
- Handlers:

  | # | Address | Effect |
  |---|---|---|
  | 0 | `24f6` | Enlarge: w += 2 up to 8, maxX −= 16, batx −= 8 |
  | 1 | `2516` | Shrink: w −= 2 down to 4, maxX += 16, batx += 8, fix stuck balls |
  | 2 | `2539` | Sticky (mode 1) |
  | 3 | `253f` | +500 points |
  | 4 | `258b` | Laser (mode 2) and release stuck balls |
  | 5 | `2594` | Split count += 2 |
  | 6 | `259a` | Lives +1 |
  | 7 | `25ba` | Barrier on |
  | 8 | `25c0` | Skip level |
  | 9 | `25c6` | Speed-up step |
  | 10 | `260a` | Slow-down |
  | 11 | `263d` | Through-bricks pending |

**Remake:** `MAX_POWERUPS = 16`, 80 px/s fall, 8 fps animation, catch is any
overlap with the bat (`game.h` ~61, `game.cpp` ~535–630).

### [ ] 10. Up to 16 balls

**Original:** the ball table has 16 slots (`0xc16d`). A split fails quietly if
no slot is free (`3933`).

**Remake:** `MAX_BALLS = 5` (`game.h` ~32). Raise it to 16.

### [ ] 11. Barrier and ball-loss lines (check only)

**Original (`2cd3`, `2d0a`):** with the barrier on and y > 328: y = 328,
negate dy, barrier off, sound `0xCBE`. y > 323 sets "below bat". y > 337 makes
the ball inactive and balls −1.

**Remake:** `game.cpp` ~352–374 mostly matches. After item 1, check the
numbers and add the "below bat" flag (item 2).

---

## Part B — feedback and effects

### [ ] 12. Bricks flash white when hit

**Original:** every hit, including a hit that only damages a multi-hit brick,
queues the brick in `0xcf17` with a 5-tick timer (`5bbd`). The flash is drawn
and counted down by `5b26`/`5be5` (read those to get the exact look; the help
text says "the brick flashes white and disappears"). Damaged bricks flash and
then show their next state.

**Remake:** no flash. Add a small list of (col, row, ticks) and draw a white
32×12 rectangle, or the original's pattern, while ticks > 0.

### [ ] 13. Score counts up gradually; extra-ball sound

**Original:**
- Points go into a pending counter (`0xd399`) and are added to the displayed
  score one point per 2 ticks (`5ee1`: divider `0xd398` = 2).
- On each increment, `5f79` compares the score with the next threshold. When
  reached: lives +1 (`259a`), play sound **`0xD3C`**, threshold += 4000.
- The +500 icon (`253f`) and the letter bonus (`3ad1`, +200 out of order /
  `253f`, +500 in order; but see item 32: in practice it is always 2 × 200)
  add to the score digits **directly**, not through the pending counter.
- The bonus is awarded from `5e83` when the letter mask equals `0x1F`.

**Remake:** `AddScore` (`game.cpp` ~108) adds at once and plays no sound for
an extra ball. Add `pending_points`, add one point every 2 ticks, and keep the
4000 check in the step. Add `snd_extra_life` to `sound.h`/`sound.cpp`: decode
the pattern at `0xD3C` the same way the other sounds were decoded (see the
comments in `sound.cpp`; the player is at `521a`/`52df`).

**Accept:** the score panel visibly counts up after a hit; the extra-ball
sound plays at 4000, 8000, …

### [ ] 14. Fix the sound-effect mapping

The play sites in the original (`grep -n 'mov di, 0xc' PARANOID.asm`):

| Event | Original sound | Remake now |
|---|---|---|
| Ball hits bat (every hit, sticky or not) | `0xC7C` (`2c49`) | `snd_paddle` (= `0xC91`); `0xC7C` only for a sticky catch |
| Ball bounces off any brick, including `0x1C` | `0xC91` (`2b0b`/`2b49`) | `snd_paddle`, and `snd_bounce` for `0x1C` |
| Side wall | `0xC83` | ok |
| Top wall | `0xC8A` | ok |
| Laser fire | `0xCB7` | ok |
| Laser hits a brick (any brick) | `0xC9E` | `snd_bounce` for `0x1C` |
| Barrier | `0xCBE` | ok |
| Last ball lost (every life) | `0xCC5` (`36d7`) | only at game over |
| Level cleared | `0xCDE` (`36e3`) | ok |
| Extra ball | `0xD3C` (`5f89`) | missing (item 13) |
| Skip-level icon caught | its pickup sound, then `0xCDE` when the level ends (`36c7` → `36e3`) | pickup sound only |

Also rename `snd_paddle`/`snd_paddle_catch`/`snd_game_over` in `sound.h` to
say what they really are (brick bounce / bat hit / ball lost), and fix the
comments in `sound.cpp` (~114, ~124, ~200).

The original sound priority rule is in `52df`: a new sound plays only if its
first byte (priority) is ≥ the current one. Check that the `play_sound`
priorities in `main.cpp` match those first bytes.

---

## Part C — screens and game flow

### [ ] 15. "Level xx" screen before each level

**Original (`37db` → `382c`):** clear both pages and show a message
(`44ac`). The message data at `0x9b2` is: width 14, height 3, then the text
`"   Level xx"` with xx replaced by the two-digit level (leading zero kept:
"Level 01"). Wait 240 ticks or a key (`3b29`). Then draw the play screen and
play the scroll/bounce transition (item 24). Between levels there is first a
30-tick pause (`38b7`).

**How `44ac` draws messages** (used by items 15, 16, 17 and 19): there is
**no box**. The lines are drawn as white (colour 15) 14-px text on top of
whatever is on screen. Data format: `word width_in_chars, word line_count`,
then NUL-terminated lines.
- Position: col = `(80 - width) / 2`, or `(80 - width)/2 - 10` when called with
  `dl = 1`, which centres it over the 480-px playfield. y = `(350 - lines*14) / 2`.
- "Level xx" uses `dl = 0` (whole screen). Game Over, the ending and
  New High Score use `dl = 1`.

**Remake:** none. `LoadLevel` goes straight to play. Add a `STATE_LEVEL_INTRO`.

### [ ] 16. Game-over sequence

**Original (`3ab5`):** show message `0x8c0` (width 16, height 3,
`"   Game  Over   "`, centred over the playfield, see item 15), wait 240 ticks or a key, then go to the
high-score check (item 19), then back to the attract loop.

**Remake:** a separate `STATE_GAMEOVER` screen where Space restarts the game
straight away (`main.cpp` ~120–129, `main.cpp` ~163–166). Replace it.

### [ ] 17. Ending message after level 30

**Original (`3caf`):** message `0x8d7` (42 wide, 9 lines, item 15 style) with these lines,
then wait for a key (`4f72`), then the high-score check:

```
   Congratulations - you have completed
   all thirty levels.  Register now for
   another thirty plus a level designer
   to create your own.     See the file
   Paranoid.DOC for more details.

   Press a key ...
```

Decode the exact line layout from `0x8d7…0x9b1`. The strings are listed near
`PARANOID.asm` line 255.

**Remake:** `STATE_WIN` shows its own shorter text (`main.cpp` ~167–171).
Skipping past level 30 with the skip icon must lead here too.

### [ ] 18. Pause behaviour

**Original (`3cc8`):** P freezes the game until P is pressed again. Nothing
else resumes it.

**Remake:** P or Space resumes, Esc goes to the title, and a "PAUSED" bar is
drawn (`main.cpp` ~114–118, `main.cpp` ~158–162). Find out whether the original
draws anything (search callers of `3cc8`). If not, remove the bar and the
extra keys.

### [ ] 19. High-score table: file, entry and name input

**File `HiScores.PAR`** (`3475` read, `34d7` write, `352f` create with
defaults): 260 bytes, in this order:
1. 10 scores × 7 bytes: 6 decimal digits (0–9, most significant first) + `0xFF`.
2. 10 names × 16 bytes: ASCII, NUL-terminated, at most 15 characters.
3. 10 levels × 3 bytes: 2 decimal digits + `0xFF`.

Default table (`0x5fc`, 260 bytes):
- Scores: 5000, 4500, 4000, 3500, 3000, 2500, 2000, 1500, 1000, 500.
- Names: alternating `"The Bit Bucket "` / `" Brothers      "`.
- Levels: 5, 4, 4, 4, 3, 3, 2, 2, 2, 1.

The original creates the file if it is missing, and fails with "Fatal error
creating/writing high score table file" if that isn't possible. In the remake,
keep the same format, read and write it in the current working directory (decided, see Decisions), and keep going (with
a warning) if the write fails.

**Entering the table (`4882`):**
1. `49c9` finds the rank, comparing digit by digit from the bottom (`4866`).
2. If the score qualifies, `49ec` shifts lower entries down and `4945` writes
   the score and level and clears the name.
3. Show message `0x597` (20 wide, 7 lines, item 15 style):
   `" Congratulations !!"`, `"   New High Score"`, `" Congratulations !!"`.
   Wait 200 ticks or a key.
4. Draw the table (`4a3a`) and let the player type a name on their row
   (`48c0` → `4f7f`). The text is yellow (colour 14) and the cursor is drawn
   in colour 7 (`470b`/`46bf`). Limit 15 characters (`0xd36a = 15`). The
   routine uses BIOS `int 16h` key codes:
   - Backspace (`0x08`) deletes the last character; nothing happens if the name
     is empty.
   - Enter (`0x0D`) finishes.
   - Characters `0x20..0x5F` and `a..z` are accepted (the font has lower case
     at `0xc364`). Anything else is ignored.
   - When the name is full, more characters are ignored.
   - The finished name is copied into the table row and NUL-terminated.
5. Save (`34d7`).

**Table layout (`4a53`):**
- Header `"Name               Level     Score"` at col 23, y = 128.
- Rows start at y = 156 with 14 px per row.
- Name at col 23, level at col 44, score at col 51.

**Remake:** nothing. Add `hiscore.cpp/.h` for load/save/insert and a name-entry
state.

### [ ] 20. High-score screen in the attract loop ("BEST BALL BOUNCERS")

**Original (`4ba7` → `4a3a` + `4abd`):**
- Draws the table (item 19).
- Draws 3D boxes (`4b36`): see the calls to `42f2`/`4372` with their
  rectangles (x, y, x2, y2).
- Draws a title in the large font (`4b7b`): glyph indices at `0x700` =
  `BEST BALL BOUNCERS` (index 11 is a space; the glyph order is the same as
  `"BESTALOUNCRPID"` in `DrawTextEGALarge`). It starts at col 13, y = 44,
  with 3 cols (24 px) per glyph.
- Spawns 8 bouncing balls from table `0x723`. Each entry is
  `[counter, dy, dx, y, x]`:
  `[0,-2,-2,125,50] [1,-2,-3,220,100] [2,-2,-2,320,270] [0,-2,-3,305,500]
  [1,-2,2,180,600] [2,2,3,115,570] [0,2,-1,45,610] [1,2,2,30,190]`.
- The balls move like game balls (`31b4`, including the thirds counter) and
  bounce inside x ∈ [16, 615], y ∈ [12, 332] (`3109`). They also bounce off
  the rectangles at `0x713` = (48,38)–(591,85) and `0x71b` = (152,112)–(487,311),
  using the box rules in `2ed7`.
- Lasts 1024 ticks or until a key. The key goes to the dispatcher (item 21).

### [ ] 21. Demo (attract) mode and the main menu loop

**Original:**
- `3c38` loops between a demo level and the high-score screen until a key is
  pressed.
- `3c55`/`3c75` dispatch: **F1** → info (item 22), **F10** → quit,
  **Space** → new game. Other keys continue the attract loop.
- Demo (`3b69` → `3b94` → `3bbd`):
  - Plays the levels in `0x775` in turn: `2,5,6,9,10,7,4,3,1,8`, wrapping.
  - Resets the level state, sets the demo flag `0xced0 = 1` (icons fall but
    aren't applied, `2493`), and runs the normal update for **1024 ticks** or
    until a key.
  - The bat follows the ball (`3c1b`): `batx = clamp(ball0.x - 21, 15, maxX)`
    every tick.
  - The side panel shows three boxes at (506,24)–(629,60), (506,80)–(629,116),
    (506,136)–(629,196) with this text at col 65 (from `0x9cc`; `\x84` starts
    a colour, `\x80` ends it, `\x81` selects another colour — decode in
    `3e8a`):
    `Press F1 for` (y 28), `information` (42), `Press F10 to` (84),
    `quit to dos` (98), `Press space` (140), `to play` (156),
    `Paranoid` (col 67, y 177).
- Escape during a game (`3cdc` sets `0xd265`) returns here, not to the title.

**Remake:** `STATE_TITLE` waits for Space/F1 (`main.cpp` ~93–103); Escape
in play goes to the title (`game.cpp` ~260).

### [ ] 22. F1 information: five pages

**Original (`4bb4`):** `4beb` (pages 1–2), `4c87` (bricks), `4cf2` (icons ×2).
Each page has the heading `"Paranoid - information"` at col 29, y = 3, and a
footer at y = 332. Body text is light green (colour 10), 14 px per line.
`4bc4` clears between pages; any key goes to the next page.

1. **Page 1** — text list at `0xd84` (NUL-separated, ends with `0xFF`), col 10,
   from y = 33. Footer `"Press a key for the next page"` at col 25.
2. **Page 2** — text list at `0x110d`, same layout. Footer
   `"Press a key for brick descriptions"` at col 23.
3. **Bricks** — draws each brick type 1..31 with `5ab0` at the (col, y) in
   table `0x141f` (`0xFFFF` = skipped):
   - 1–3 (10,168) (15,168) (20,168)
   - 4 (10,80); 6 (10,94); 8 (10,212); 9 (30,36)
   - 10–14 letters (10,272) (15,279) (20,286) (25,293) (30,300)
   - 15 (30,50); 16–19 (10,50) (15,50) (20,50) (25,50)
   - 20–23 (10,124) (15,129) (20,133) (25,138)
   - 24–27 (10,36) (15,36) (20,36) (25,36)
   - 28 (10,242)
   - 29–31 (10,182) (15,182) (20,182)

   Text from table `0x149b` (col, y, string):

   ```
   (36,34)  These are normal bricks - the top
   (36,48)  row score 10 each, the rest 15.
   (16,78)  You need to hit these twice each - score 15 for the
   (16,92)  first hit, then 10 for the second.
   (31,122) Four hits are needed to remove this
   (31,136) type, scoring 70 points in total.
   (26,166) The ones with pretty pictures on are worth
   (26,180) 20 points each.
   (16,210) This sort only gives you a paltry 5 points.
   (16,240) No amount of battering can demolish this sturdy block.
   (36,270) Collect these in the right order
   (36,284) and score 500, otherwise only 200.
   (36,298) 10 points for each one anyway.
   ```

   Footer `"Press a key for icon descriptions"` at col 23.
4. **Icons 1** — text list at `0x16b1` at col 14 from y = 33. Animated icons
   0–5 at col 10, y = 33, 89, 131, 187, 229, 285 (table `0x1922`; setup in
   `4dcb`, animation in `4e9b`/`4e5b` using the same 5-tick rule as item 9).
   Footer `"Press a key for the next page"`.
5. **Icons 2** — text list at `0x193a` at col 14 from y = 35 (an empty string
   adds 5 px instead of a line). Icons 6–11 at col 10, y = 35, 82, 143, 190,
   237, 284 (table `0x1b87`). Footer `"Press a key to return to the demo"`.

Dump any text list with a small script that reads NUL-separated strings until
a `0xFF` byte (offset = address − 0x100).

**Remake:** one made-up page (`main.cpp` ~143–154) that lists arrow keys and
says letters are worth 500. Replace it.

### [ ] 23. Opening title screen: bouncing balls and credits scroller

**Original (`6367`):**
- `624e`/`6299` draw the boxes and the large `PARANOID` (glyphs at `0x550`,
  starting x = 229, y = 126, 24 px apart).
- `6300` draws `EVALUATION COPY` at (0, 324) (the text at `0x51de` is stored
  bit-inverted).
- `" PRESS SPACE"` at (552, 333) and `"   TO START"` at (552, 342), colour 15;
  `" VERSION 1.8"` at (544, 306).
- Then `64d9` loops until **Space only** (`cmp al, 0x20`):
  - **6 bouncing balls** from table `0x559`, entries `[counter, dy, dx, y, x]`:
    `[0,2,3,36,556] [1,2,3,36,316] [0,2,3,36,79] [2,2,3,543,556]
    [1,2,3,543,316] [0,2,3,543,79]`. They move with `3158`, bounce in
    x ∈ [16, 615], y ∈ [12, 272] (`30ba`), and bounce off the title box
    (182,90)–(457,197) (`0x548`, via `2ed7`). The y = 543 values get clamped
    on the first tick; check whether the order is really (x, y) or (y, x).
  - A **credits scroller** (`633a`/`6377`): text from `0x3a5` to `0x523`,
    looping:

    ```
    * - * - * - * - * - * - * - * - * - * -   The Bit Bucket Brothers proudly
    present Paranoid   ...    Chief executive in charge of programming - Ben
    North   ...   Chief executive in charge of graphics - Tom North   ...
    Program code production - Ben North   ...   Graphics design - Tom North
    ...   Additional programming - Ben North   ...   Additional graphics -
    Tom North
    ```

    (This is one continuous line; it is wrapped here for reading.) It is
    20 characters wide in the 14-row font (lower case uses the 8-row font at
    `0xc364`), scrolls 2 px per tick, and is drawn at screen offset `0x637e`
    (y ≈ 318, col 46) with plane mask `0x0A` (colour 10). Read `63cd` for the
    exact glyph composition.
- After Space, the program goes to the attract loop (item 21), not straight
  into a game.

**Remake:** `DrawTitleScreen` (`draw.cpp` ~140) doesn't move, shows
`"PRESS SPACE TO PLAY"` and `"F1 INFORMATION  F10 QUIT"` (neither is in the
original title), and accepts F1.

### [ ] 24. Screen transitions (hardware scroll)

**Original:** the game draws to a hidden page and reveals it by changing the
CRTC start address.
- `6555` slides the new screen in: start address `0x6e00` → 0 in steps of
  `0x190` (5 lines) per retrace. A key skips it.
- `658d` bounces: a decelerating drop (velocity −80 bytes per step) followed by
  a smaller second bounce. A key skips it.
- Both are used at level start (`37db`), and `6555` is used after `38b7`.

**Do:** emulate them as vertical offsets of the 640×350 render texture in
`main()`. Ask the user whether this one is wanted before spending time on it.

---

## Part D — options

### [ ] 25. Quiet mode (`/Q`)

**Original:** `/Q` (or `-q`; handlers at `0x121`) sets `0xced1`. The sound
player (`521a`) then does nothing.

**Remake:** add `-q` / `/q` to the argument loop in `main()` (`main.cpp` ~34) and make
`play_sound` return early. A key to toggle sound during play is a nice extra
but isn't in the original.

### [ ] 26. Custom keys (`/K llrraa`)

**Original (`6160`):** three hex scan codes for left, right and action. A code
starting with `E0` uses two bytes (`/K E04BE04D39` = arrow keys + Space).
They overwrite the first three entries of `0xd41d`. Pause (P), Esc and F10
stay fixed.

**Remake:** controls are hard-coded (`game.cpp` ~278–281). Add `-k`/`/k`
taking the same string. Map PC set-1 scan codes to raylib `KEY_*` with a
table, and fall back to the defaults on a bad code with the original
"Bad command-line switch" message. Keep the arrow keys working by default as
well — the remake already allows them.

### [ ] 27. Command-line errors

**Original (`6105`):** an unknown switch prints the text at `0x2ca`
("Bad command-line switch. Available switches are: /Q … /V … /K …") and exits.
`/V` (skip the video check) can be accepted and ignored. Keep the remake's
`-l N` level switch, and list it in the help text.

---

## Part E — found in a second pass

### [ ] 28. Settle phase after a level ends or the last ball is lost

**Original (`36fd`, called at the end of `3658` for every result):** the game
doesn't switch screens straight away.
1. It redraws twice.
2. It keeps looping, with the ball, bat and lasers frozen and icons drawn but
   not moving, while running:
   - the brick-flash countdown (`5b26`),
   - the score count-up (`5ee1`),
   - the sound player (`521a`).
3. It leaves the loop only when no flash is left **and** no pending points are
   left (`0xd254` stays 1).
4. Then it clears balls (`375b`), lasers (`3778`) and `37b8`.

So after the last brick breaks, the player sees it flash and the score finish
counting before the next screen appears. The same happens after losing a ball.

**Remake:** `UpdatePlay` calls `LoadLevel`/`StartLife` at once
(`game.cpp` ~362–372, `game.cpp` ~632–640). Add a short settle state that runs only the
flash and score steps (needs items 12 and 13).

### [ ] 29. What survives a lost life

**Original:** `3610` (new life) and `3904` reset only:
- bat x and width, and bat mode (sticky/laser off),
- split count (`0xd255`) and through pending (`0xd256`),
- the score divider, the icon dividers and the speed-up timer,
- the ball (a new one).

These are **not** reset on a lost life; they are cleared only at level start
(`3863`):
- **Falling icons** (`3798`, the icon slots, is called only from `3863`). An
  icon still falling when the ball is lost keeps falling in the next life (it
  is frozen during the settle phase, item 28).
- **Barrier** (`0xd257` is cleared only at `2cfa` when used, and in `3863`).
  In practice this rarely shows: a barrier is used up by the first ball that
  reaches it. It only matters if the icon is caught while the last ball is
  already below y = 328.
- **Bonus letters** (`0xd259/0xd262/0xd263`). The remake already keeps these.

**Remake:** `StartLife` clears `powerups[]` and `ResetPowerups` clears
`barrier_active` (`game.cpp` ~169–222). Keep the falling icons and the
barrier flag across lives.

**Accept:** with an icon falling when the last ball is lost, the same icon is
still falling after the new ball appears, and it can be caught.

### [ ] 30. Screen layout pixel fixes

Coordinates the remake has slightly wrong, taken from the drawing tables:

- **Barrier line** (`5be5` → `419c(x1=15, x2=463, y=335, colour)`): a 1-px
  white (colour 15) line at **y = 335** from x = 15 to 463, erased with colour
  0 when the barrier goes away. The remake draws a 2-px line at y = 328
  (`draw.cpp` ~248). (The ball's 6-px box stops at y = 328, so its bottom edge
  touches this line.)
- **"PARANOID" across the bottom of the playfield** (`483c`): large-font glyphs
  from `0x550` at **x = 147, y = 255**, colour 8, 24 px apart. The remake uses
  (144, 256) (`draw.cpp` ~252).
- **Title-screen "PARANOID"** (`6299`): x = 229, y = 126. The remake uses
  (224, 119) (`draw.cpp` ~159).
- **Side panel** (`3f08`, tables `0xaaf` and `0xae9`):
  - Raised boxes (`42f2`) at (524,22)–(610,64), (524,74)–(610,116),
    (524,126)–(610,168), (524,178)–(610,220).
  - Each has a sunken inner box (`4372`) inset by 17 px horizontally and 13 px
    vertically.
  - Labels SCORE/LEVEL/BALLS/BONUS at x = 549, y = 25/77/129/181.
  - The remake draws 88×44 boxes at y = 20/72/124/176 and labels at x = 548,
    y = 23/75/127/179 (`draw.cpp` ~212–277).
  - Digits: score 6 digits from x = 544, y = 37 (`5fc3`); level 2 digits from
    x = 576, y = 89 (`5fd6`); balls 2 digits from x = 576, y = 141 (`5fe9`).
    Leading zeros are drawn as the blank digit (`3d00`).
  - Read `42f2`/`4372` for the exact raised/sunken edge colours, and the
    "Paranoid is a Bit Bucket Brothers production" boxes from table `0xb03`
    and texts from `0xb15` (`3f9a`).
- **Playfield frame** (`3f08`): raised (0,0)–(479,349), sunken (15,11)–(463,337),
  raised (496,0)–(639,349). Compare with `DrawPlay`.

Dump any table with a small script (offset = address − 0x100; words are
little-endian; `0xFFFF` ends a list).

### [ ] 31. F10 shows the registration screen before quitting

**Original:** F10 quits from the attract loop (`3c95`) and during play
(`4f53` → table `0x113` → `3c95`; also `3cdc`). Before exiting it:
1. silences the speaker and restores the keyboard handler and text mode,
2. **saves the high-score table** (`34d7`),
3. shows a text-mode exit screen (`4f26` → `4ed0`) and waits for a key
   (`4f72`),
4. moves the cursor to row 24 and exits.

The screen is 80×25 text. The text at `0x1b9f…0x21dd` is stored bit-inverted
(NOT each byte; `4f0e`) as NUL-separated pieces, ending with `0xFF`. **Each
piece is one row**, written from row 1, col 1 downward (start offset `0xa2`,
+160 bytes per row), in white on black (attribute `0x0F`). Then `4ed0`
recolours a 58×19 area, rows 2–20 and cols 11–68, to yellow on blue
(attribute `0x1E`, start offset `0x157`). Decoded as cp437, the rows below
are numbered from row 1:

```
        ╔════════════════════════════════════════════════════════════╗
        ║                                                            ║
      ╔═╣  Paranoid is shareware.  If you continue to play Paranoid  ╠═╗
      ║ ║  for more than its trial period of one month, you must     ║ ║
    ╔═╣ ║  pay a £10 registration fee.  This can be in the form of   ║ ╠═╗
    ║ ║ ║  a cheque or Postal Order made payable to Ben North; no    ║ ║ ║
  ╔═╣ ║ ║  cash, postage stamps, or credit cards please.  The Bit    ║ ║ ╠═╗
  ║ ║ ║ ║  Bucket Brothers can be contacted at                       ║ ║ ║ ║
╔═╣ ║ ║ ║                                                            ║ ║ ║ ╠═╗
║ ║ ║ ║ ║             The Bit Bucket Brothers,                       ║ ║ ║ ║ ║
║ ║ ║ ║ ║             "Amaroo", Weir Lane, Hanwood,                  ║ ║ ║ ║ ║
║ ║ ║ ║ ║             Shrewsbury, Shropshire.  SY5 8JY.              ║ ║ ║ ║ ║
╚═╣ ║ ║ ║                                                            ║ ║ ║ ╠═╝
  ║ ║ ║ ║  Please mark the envelope "Paranoid".                      ║ ║ ║ ║
  ╚═╣ ║ ║                                                            ║ ║ ╠═╝
    ║ ║ ║  When you register this game, not only will you be free    ║ ║ ║
    ╚═╣ ║  from guilt, you will receive a registered copy of the     ║ ╠═╝
      ║ ║  game, another thirty levels of ball-bouncing fun, a       ║ ║
      ╚═╣  level designer, and cut-price updates when available.     ╠═╝
        ║                                                            ║
        ╚════════════════════════════════════════════════════════════╝


Press a key.
```

Regenerate it from the binary if in doubt (offset = address − 0x100).

**Remake:** F10 breaks out of the main loop at once (`main.cpp` ~87), and
nothing is saved. Add a `STATE_EXIT` that saves the high scores (item 19),
draws this screen with an 8×14 or 8×16 text font on a black background (the
game fonts have no box characters, so either draw the boxes as lines or bundle
a CP437 font), waits for a key, then closes. The window close button should
skip the screen but still save.

### [ ] 32. Bonus-letter bugs in the original (decide first)

The decompiled code shows two bugs in the BONUS letters. **Ask the user
whether to reproduce them** before changing the remake. Both the help text and
`PARANOID.DOC` describe the intended behaviour (500 in order, otherwise 200).

1. **The in-order bonus can never be awarded.** In `2a73` at `0x2adc`:
   `cmp al,[d262]; jne +4; shl byte [d262],1; je +5; mov byte [d263],0`.
   On the expected letter, `shl` gives a non-zero result, so the `je` isn't
   taken and the in-order flag `0xd263` is cleared anyway. A wrong letter
   clears it too. So after the first letter the flag is always 0, and `3ad1`
   always awards **200** (`253f`, +500, is never reached from here).
2. **The bonus is awarded twice.** `5e65` keeps a "last drawn letters" copy
   **per display page** (`0xd25a` / `0xd25b`, picked by `0xd239`, which flips
   every tick in `653b`). When the mask changes, it calls `5e83` once for each
   page, and `5e83` awards the bonus whenever the mask is `0x1F`. So completing
   BONUS gives the award twice: **+400 in total** in practice. It also goes
   straight into the score digits, skipping the count-up (item 13), and each
   award runs the extra-ball check (`5f79`).

**Remake:** `HitBrick` (`game.cpp` ~126–138) awards 500 in order / 200 out of
order, once. Options to offer the user:
- **(a)** keep it as now (intended behaviour),
- **(b)** match the original exactly (always 2 × 200),
- **(c)** add a "faithful bugs" setting.

Whichever is chosen, add a comment citing `0x2adc` and `5e65`.

---

## Out of scope (in the binary, but don't port)

- **Video card detection** (`609b`, `651b`) and the 256 KB / EGA error
  messages. Accept `/V` and ignore it.
- **File-check messages** ("The following files are missing or corrupt",
  `5ffc`/`6041`). The remake has its own error messages; keep those.
- **Level data decryption** (`35a2`, key at `0x61c0`). Already done in
  `levels.cpp`.
- **Keyboard interrupt handler and double-buffered EGA pages** (`5045`,
  `653b`, `6637`/`6665`). raylib replaces them; only their behaviour matters
  (items 18, 24, 26).
- **Leftover switch code** at `619c` that reads a level-file name into the
  `Levels.PAR` name buffer (`0x804e`). It isn't in the switch table at
  `0x121` (only Q, V, K are), so it can't be reached in v1.8. It is probably
  from the registered version.
- **Registered-only features** listed in `PARANOID.DOC` (cheat, save game,
  30 extra levels, level designer). They aren't in this binary.
