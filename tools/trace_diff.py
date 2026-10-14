#!/usr/bin/env python3
"""Compare two trace files record by record and report the first difference.
See tools/TRACE_FORMAT.md. Bytes that don't matter (header, display page,
collision scratch) are skipped; see trace_format.ignored().

usage: trace_diff.py REF OURS [--from N] [--context K]
  --from N      first record to compare (0-based, default 0)
  --context K   records of both traces to print before the difference
                (default 5)

Exit status: 0 when the traces match, 1 on a difference or when one trace is
shorter than the other.
"""

import argparse
import os
import sys
from collections import deque

sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
from trace_dump import digits, line  # noqa: E402
from trace_format import RECORD_SIZE, decode, field_at, field_span, field_value, ignored, read_records  # noqa: E402

COMPARED = [i for i in range(RECORD_SIZE) if not ignored(i)]


def differing_fields(ref, ours):
    """(name, ref value, our value) for each field with a differing byte, in
    record order."""
    out, seen = [], set()
    for i in COMPARED:
        if ref[i] == ours[i]:
            continue
        start = field_span(i)[0]
        if start in seen:
            continue
        seen.add(start)
        out.append((field_at(i), field_value(ref, i), field_value(ours, i)))
    return out


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("ref")
    ap.add_argument("ours")
    ap.add_argument("--from", dest="start", type=int, default=0)
    ap.add_argument("--context", type=int, default=5)
    args = ap.parse_args()

    history = deque(maxlen=args.context)
    refs, ourss = read_records(args.ref), read_records(args.ours)
    i = 0
    while True:
        ref, ours = next(refs, None), next(ourss, None)
        if ref is None or ours is None:
            break
        if i >= args.start:
            if any(ref[k] != ours[k] for k in COMPARED):
                r = decode(ref)
                print(f"first difference at record {i}: {r['loop']} loop, tick {r['tick']}, level {digits(r['level_digits'])}")
                for name, a, b in differing_fields(ref, ours):
                    print(f"  {name:28} ref {a}  ours {b}")
                if history:
                    print(f"\ncontext ({len(history)} records before):")
                    for j, a, b in history:
                        print(f"ref  {line(j, decode(a))}")
                        print(f"ours {line(j, decode(b))}")
                print("\nat the difference:")
                print(f"ref  {line(i, r)}")
                print(f"ours {line(i, decode(ours))}")
                return 1
            history.append((i, ref, ours))
        i += 1

    if ref is not None or ours is not None:
        longer = "ref" if ref is not None else "ours"
        rest = 1 + sum(1 for _ in (refs if ref is not None else ourss))
        print(f"records 0..{i - 1} match, but {longer} has {rest} more record(s)")
        return 1
    print(f"match: {i} records (compared from record {min(args.start, i)})")
    return 0


if __name__ == "__main__":
    sys.exit(main())
