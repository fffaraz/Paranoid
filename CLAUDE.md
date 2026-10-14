# CLAUDE.md

A remake of **Paranoid v1.8** (DOS, 1993, The Bit Bucket Brothers) in C++17
with raylib. The goal is an exact copy of the original: same game logic tick
for tick, same screens pixel for pixel, same sounds.

## Build and run

```sh
cmake -S . -B build -DCMAKE_BUILD_TYPE=Release
cmake --build build -j
./build/paranoid            # optional: -l N to start at level N
./wasm.sh                   # WebAssembly build (needs emsdk)
```

The build uses `-Werror`, so fix every warning. Code style is
`.clang-format` (WebKit). clang-format isn't installed here; match the
surrounding code by hand. raylib 6.0 is fetched by CMake.

The game loads `BITMAPS.PAR`, `FONTS.PAR` and `LEVELS.PAR` from `.`,
`./paranoid-v1.8` or `../paranoid-v1.8`.

## Source layout

- `sim.h` / `sim.cpp`: the literal port of the original's simulation (TODO
  Part A). Its state is the original's memory (`OrigState`).
- `game.h` / `game.cpp`: the play flow around `sim` at 70 ticks per second
  (life wait, play, settle, next level) and the key mapping; `UpdatePlay`.
- `replay.h` / `replay.cpp`: headless `--replay` of a demo trace through `sim`.
- `draw.h` / `draw.cpp`: EGA palette, textures, text, `DrawTitleScreen`,
  `DrawPlay` (draws from `OrigState`).
- `main.cpp`: start-up, the state machine and the simple screens.
- `bitmaps`, `fonts`, `levels`: loaders for the original `.PAR` files.
  `levels.cpp` also decrypts the levels.
- `sound`: PC-speaker effects rebuilt from the original's tables, at 70 ticks
  per second.
- `paranoid-v1.8/`: the original game files plus the references:
  - `PARANOID.asm`: radare2 disassembly.
  - `PARANOID.c`: decompiled C of the same code (`fcn.00002bec` = address
    `2bec`).
  - `PARANOID.DOC`: the original manual.

  **Never modify anything in this folder.**
- `tools/`: verification tools (see below). `tests/capture/` is scratch output
  and is git-ignored.

## How work is organised

**Start with `NEXT.md`**: it is the handoff from the last session and says
what to do next.

`TODO.md` is the work list. Work on one item at a time:

1. Read the item and its addresses, and check them in `PARANOID.asm` /
   `PARANOID.c` before writing code. The TODO describes what the original
   does; the code is the authority if they disagree. If they disagree, fix the
   TODO too.
2. Implement it, build, and verify it (next section).
3. Tick its box in `TODO.md` and add a short "Done:" note with anything the
   next person needs. Commit only if the user asked for commits.

Read the **Decisions** section at the top of `TODO.md` first. Questions listed
there as open must be **asked**, not decided. Don't guess a default for them.

Part A (items 1–11) is meant to be done as **one literal port** of the
original's simulation; see "How to do Part A" in `TODO.md`.

## Reading the original

- An address like `2bec` or `0xd247` is an offset in the COM segment. Find
  code with `grep -n '0000:2bec' paranoid-v1.8/PARANOID.asm`, or
  `grep -n 'fcn.00002bec' paranoid-v1.8/PARANOID.c`.
- Data is easiest to read from the binary; the file offset is
  `address - 0x100`:
  `xxd -s $((0xb7a-0x100)) -l 16 paranoid-v1.8/PARANOID.COM`.
  For lists of strings or words, write a small Python script, run with
  `python3 -I`.
- radare2 sometimes shows code as `.string`, and the decompiler sometimes gets
  branches wrong. When a listing looks odd, decode the raw bytes. For example,
  `objdump -D -b binary -mi8086 --adjust-vma=0x100 PARANOID.COM --start-address=0x2ad1 --stop-address=0x2af0`.
- One tick = one game-loop iteration = one 70 Hz vertical retrace. All
  movement in the original is whole pixels per tick.
- The RAM map, the game flow and the meaning of the main variables are at the
  top of `TODO.md`. The field layout used by the trace tools is in
  `tools/trace_format.py`.

## Verifying against the original

The original is deterministic (no timer reads, no random numbers), so the
remake can be checked exactly. DOSBox-X is installed (`/usr/bin/dosbox-x`).

```sh
tools/run_original.sh                                  # play the original
tools/run_original.sh --trace --type "-w 4 space" --time-limit 320
                                                       # record the demo to tests/capture/TRACE.BIN
python3 -I tools/trace_dump.py tests/capture/TRACE.BIN --summary
python3 -I tools/trace_dump.py tests/capture/TRACE.BIN --from 1000 --count 10
```

- `PARTRACE.COM` is the original patched by `tools/make_trace_com.py` to write
  one state record per tick (format in `tools/TRACE_FORMAT.md`).
- Reference data goes in `tests/reference/` (TODO V3, V5). Trace files
  (`*.trace.gz`) are git-ignored. If `tests/reference/demo.trace.gz` is
  missing, regenerate it with `tools/make_demo_trace.sh` (about 5 minutes,
  opens a DOSBox-X window).
- Check the simulation against the demo: `cd build && ctest` (test
  `demo_replay`, skipped when the reference is missing). By hand:
  `./build/paranoid --replay tests/reference/demo.trace.gz --trace OUT` runs
  without a window, then `python3 -I tools/trace_diff.py REF OUT`. Only demo
  traces can be replayed so far (TODO V4).

Run the original from the script, not from `paranoid-v1.8/` directly. The game
writes `HiScores.PAR`, and the script keeps that in a scratch copy.

## Decisions already made

- Screen transitions (TODO item 24) are wanted.
- The remake reads and writes `HiScores.PAR` in the current working directory.
