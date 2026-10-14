# Reference data from the original

Recorded from the original `PARANOID.COM` in DOSBox-X with the tools in
`tools/` (see `TODO.md` Part 0 and `tools/TRACE_FORMAT.md`).

## demo.trace.gz

The attract-mode demo, recorded with no keys pressed after the title screen:

```sh
tools/run_original.sh --trace --type "-w 4 space" --time-limit 320
gzip -9 -c tests/capture/TRACE.BIN > tests/reference/demo.trace.gz
```

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
  `TODO.md` item V3.
- `screens/`: DOSBox-X screenshots. See `TODO.md` item V5.
