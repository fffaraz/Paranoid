#!/usr/bin/env python3
"""Compare two screenshots pixel by pixel (TODO V5).

usage: screen_diff.py REF OURS [--highlight OUT.png]
  Prints the number of differing pixels and the box around them. With
  --highlight, writes REF dimmed with the differing pixels in red.
Exit status: 0 when the pictures are the same, 1 otherwise.
"""

import argparse
import sys

from PIL import Image


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("ref")
    ap.add_argument("ours")
    ap.add_argument("--highlight")
    args = ap.parse_args()

    ref = Image.open(args.ref).convert("RGB")
    ours = Image.open(args.ours).convert("RGB")
    if ref.size != ours.size:
        print(f"different sizes: {ref.size} and {ours.size}")
        return 1
    a, b = ref.load(), ours.load()
    width, height = ref.size
    diff = [(x, y) for y in range(height) for x in range(width) if a[x, y] != b[x, y]]
    if not diff:
        print("0 pixels differ")
        return 0
    xs = [x for x, _ in diff]
    ys = [y for _, y in diff]
    print(f"{len(diff)} pixels differ, within ({min(xs)},{min(ys)})-({max(xs)},{max(ys)})")
    if args.highlight:
        out = ref.point(lambda v: v // 3)
        px = out.load()
        for x, y in diff:
            px[x, y] = (255, 0, 0)
        out.save(args.highlight)
    return 1


if __name__ == "__main__":
    sys.exit(main())
