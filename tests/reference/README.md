# Reference data from the original

Recorded from the original `PARANOID.COM` in DOSBox-X with the tools in
`tools/` (see `TODO.md` Part 0 and `tools/TRACE_FORMAT.md`).

Trace files (`*.trace.gz`) are **not committed** (see `.gitignore`).
Regenerate them locally as described below. The original is deterministic,
so a regenerated demo trace has the same game state every time.

## demo.trace.gz

The attract-mode demo, recorded with no keys pressed after the title screen.
To regenerate it (about 5 minutes; a DOSBox-X window opens, so don't type
into it):

```sh
tools/make_demo_trace.sh
```

This runs these steps:

```sh
tools/run_original.sh --trace --type "-w 4 space" --time-limit 320
gzip -9 -c tests/capture/TRACE.BIN > tests/reference/demo.trace.gz
python3 -I tools/trace_dump.py tests/reference/demo.trace.gz --summary
```

The summary should list 11 runs of 1024 records (levels 02, 05, 06, 09, 10,
07, 04, 03, 01, 08, 02), 11264 records in total, and the file should be about
400 KB. The run includes one extra level-02 run because 320 s is a little
more than one full cycle. If DOSBox-X starts slowly and the last run is cut
short, that's fine; the first 10240 records are what matter.

Needs: DOSBox-X on `PATH` (`dosbox-x`), Python 3 and gzip.

- 11264 records = 11 demo levels × 1024 ticks. The levels are
  02, 05, 06, 09, 10, 07, 04, 03, 01, 08, then 02 again. The high-score
  screens between demo levels aren't traced.
- Repeatable: the second level-02 run (records 10240–11263) matches the first
  (records 0–1023) in all game state. The only differences are the ones listed
  below.
- Things a replay must reproduce:
  - **Frame phase** (`0xd23c`, cycling 0,1,2) isn't reset when a demo level
    starts. It carries on from wherever the previous loop left it. The first
    demo record has phase 2 because the title screen ran before it.
  - **Pending points** (`0xd399`) in the demo are never added to the score,
    and they aren't reset between demo levels. They are reset only when a game
    starts (`39f3`).
- The collision scratch bytes `0xd37c–0xd397` are left over from earlier
  calls, so `trace_format.ignored()` skips them.

## To record (needs a person)

- `play_*.trace.gz`: real games played in the original with `--trace`. See
  `TODO.md` item V3. These can't be regenerated automatically, because they
  depend on what the player did. Keep them outside git, for example as release
  attachments, and say here where they are.
- `screens/`: DOSBox-X screenshots. See `TODO.md` item V5.
