#!/usr/bin/env python3
"""Print records from a trace file (PARTRACE.COM's TRACE.BIN or the remake's
--trace output) with field names. See tools/TRACE_FORMAT.md.

usage: trace_dump.py TRACE [--from N] [--count N] [--summary]
  --from N    first record to print (0-based, default 0)
  --count N   number of records to print (default 20)
  --summary   one line per run of records: loop, ticks, levels, record count
"""

import argparse
import os
import sys

sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
from trace_format import decode, read_records  # noqa: E402


def digits(values):
    return "".join(str(v) for v in values)


def line(i, r):
    balls = " ".join(f"#{n}({b['x']},{b['y']} {b['dx']:+},{b['dy']:+} c{b['counter']} f{b['flags']:x})" for n, b in r["balls"])
    icons = " ".join(f"i{n}:t{c['type']}({c['x']},{c['y']})" for n, c in r["icons"])
    lasers = " ".join(f"L{n}({l['x']},{l['y']})" for n, l in r["lasers"])
    return (
        f"{i:6d} {r['loop']:4} t{r['tick']:<6} lvl{digits(r['level_digits'])} lives{r['lives']} "
        f"score {digits(r['score_digits'])}+{r['pending_points']} bat {r['bat_x']}/w{r['bat_w']} m{r['bat_mode']} "
        f"bricks {r['bricks_left']} ph{r['phase']} {balls} {icons} {lasers} {' '.join(r['keys'])}".rstrip()
    )


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("trace")
    ap.add_argument("--from", dest="start", type=int, default=0)
    ap.add_argument("--count", type=int, default=20)
    ap.add_argument("--summary", action="store_true")
    args = ap.parse_args()

    if args.summary:
        run = None
        total = 0
        for i, rec in enumerate(read_records(args.trace)):
            r = decode(rec)
            key = (r["loop"], digits(r["level_digits"]))
            if run is None or run[0] != key or r["tick"] != run[2] + 1:
                if run:
                    print(f"records {run[1]:6d}..{i - 1:6d}  {run[0][0]:4} level {run[0][1]}")
                run = [key, i, r["tick"]]
            run[2] = r["tick"]
            total = i + 1
        if run:
            print(f"records {run[1]:6d}..{total - 1:6d}  {run[0][0]:4} level {run[0][1]}")
        print(f"{total} records")
        return 0

    for i, rec in enumerate(read_records(args.trace)):
        if i < args.start:
            continue
        if i >= args.start + args.count:
            break
        print(line(i, decode(rec)))
    return 0


if __name__ == "__main__":
    sys.exit(main())
