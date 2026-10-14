# Trace format

A trace is a file of fixed-size records, one per game tick, holding the state
of the original game's memory after that tick's update. `PARTRACE.COM` (built
by `make_trace_com.py`) writes `TRACE.BIN` in this format, and the remake's
`--trace` option must write the same format (TODO.md, item V4).

The layout is defined in one place, `trace_format.py`. This file explains it.

## When a record is written

The original's play loop (`fcn 3658`) and demo loop (`fcn 3bbd`) end each
tick with one `call 653b` (page flip + wait for vertical retrace), at `0x36b5`
and `0x3bff`. `PARTRACE.COM` redirects those two calls to a routine appended
at `0x66be`. The routine writes the record and then jumps to `653b`. So a
record is the state **after** the tick's update and **before** the flip.

Other loops are not traced: the 120-tick wait at the start of a life, the
settle phase (`36fd`), the high-score and title screens, and the help pages.

The routine flushes the file every 64 records, so a trace cut off by closing
DOSBox-X loses at most the last 63 records.

## Record layout (2088 bytes, little-endian)

| Block | Original address | Bytes | Contents |
|---|---|---|---|
| header | — | 8 | `'P' 'T'`, loop id (1 = play, 2 = demo), 0, u32 tick counter (counts traced ticks from 1) |
| balls | `0xc16d` | 256 | 16 slots × 16: `+0` x, `+2` y, `+4` dx, `+6` dy (s16), `+8` flags, `+9` speed counter (u16) |
| icons | `0xc2cd` | 45 | 5 slots × 9: `+0` x (8-px column), `+2` y, `+4` type, `+5` frame, `+6` first, `+7` last, `+8` active |
| lasers | `0xc30e` | 64 | 4 slots × 16: `+0` x, `+2` y, `+4` active |
| flash_count | `0xd235` | 1 | number of queued brick flashes |
| flash | `0xcf17` | 798 | 266 × (col, row, timer) |
| vars | `0xd237…0xd3b0` | 378 | game variables; names in `trace_format.VARS` |
| keys | `0xd42a` | 6 | key down: left, right, action, Esc, F10, P |
| bricks | `0x8100` | 266 | brick type, index `col*19 + row` |
| attrs | `0x820a` | 266 | icon attribute per brick, same index |

The tick counter and the display-page variables (`0xd237`, `0xd239`) are
ignored when comparing. The remake has no display pages; it should write
zeros there.

Notes:

- In the demo, `level` (`0xd24f`) isn't updated. Use `level_digits`
  (`0xd3a8`).
- Points scored in the demo collect in `pending_points` (`0xd399`) and are
  never added to the score, because the demo loop doesn't call `5ee1`.
- The frame phase (`0xd23c`) isn't reset when a level or demo level starts,
  so it carries on across loops.
- The collision scratch bytes `0xd37c–0xd397` keep leftovers from earlier
  calls and are ignored when comparing (`trace_format.ignored()`).
- The key bytes come from the original's keyboard handler. For replay, the
  remake takes the left/right/action/pause state for a tick from the
  record of that tick.

## Tools

- `trace_dump.py TRACE [--from N] [--count N] [--summary]` prints records.
- `trace_diff.py` (TODO item V4) compares two traces.
