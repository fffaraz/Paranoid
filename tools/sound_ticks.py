#!/usr/bin/env python3
"""Measure PC-speaker sounds in a WAV tick by tick and decode them into the
original's sound patterns (TODO V6).

usage: sound_ticks.py WAV [--com PARANOID.COM] [--ticks]

Each sound (a stretch of sound between silences) is cut into 1/70 s ticks
from its start; each tick's pitch is measured from its zero crossings and
given as a PIT divisor (1193182 / Hz). The ticks are then matched against the
patterns at 0xc7c..0xd77 in PARANOID.COM, stepped as the sound player (521a)
does: start divisor, then each segment's delta added once per tick. A sound
cut short by another (as the original's player does when a sound of equal or
higher priority starts) decodes as a prefix of one pattern followed by
another. --ticks prints every tick's divisor.

Exit status: 0 if every tick fits a pattern, 1 otherwise.
"""

import argparse
import os
import struct
import sys
import wave
from array import array

PIT = 1193182
TICK_HZ = 70
TOLERANCE = 0.004  # relative; the smallest pattern step is about 1 %
PATTERNS = [0xC7C, 0xC83, 0xC8A, 0xC91, 0xC9E, 0xCB7, 0xCBE, 0xCC5, 0xCDE] + [
    0xCF7, 0xD01, 0xD08, 0xD15, 0xD28, 0xD2F, 0xD3C, 0xD4F, 0xD5C, 0xD63, 0xD6D, 0xD77]
NAMES = {0xC7C: "bat", 0xC83: "side wall", 0xC8A: "top wall", 0xC91: "brick", 0xC9E: "laser hit",
         0xCB7: "laser", 0xCBE: "barrier", 0xCC5: "ball lost", 0xCDE: "level cleared"}
for i, p in enumerate(PATTERNS[9:]):
    NAMES[p] = f"pickup {i}" + (" / extra ball" if p == 0xD3C else "")


def expected_ticks(com, pattern):
    """The divisor on each tick of a pattern, as 521a plays it."""
    o = pattern - 0x100 + 1  # after the priority byte
    divisor = struct.unpack_from("<H", com, o)[0]
    o += 2
    ticks = []
    while com[o] != 0xFF:
        count, delta = com[o], struct.unpack_from("<h", com, o + 1)[0]
        for _ in range(count):
            divisor = (divisor + delta) & 0xFFFF
            ticks.append(divisor)
        o += 3
    return ticks


def read_wav(path):
    """The sample rate and the samples (mono) of a WAV file."""
    with wave.open(path, "rb") as w:
        rate, channels, width = w.getframerate(), w.getnchannels(), w.getsampwidth()
        data = w.readframes(w.getnframes())
    if width == 1:
        x = [b - 128 for b in data]
    else:
        x = array({2: "h", 4: "i"}[width])
        x.frombytes(data)
        if sys.byteorder == "big":
            x.byteswap()
        x = list(x)
    if channels > 1:
        x = [sum(x[i:i + channels]) / channels for i in range(0, len(x), channels)]
    return rate, x


def sounds(x, rate):
    """(start, end) sample ranges of sound between silences."""
    block = max(1, rate // 1000)
    peak = max((abs(v) for v in x), default=0)
    if peak == 0:
        return []
    n = len(x) // block
    loud = [max(abs(v) for v in x[i * block:(i + 1) * block]) > peak * 0.3 for i in range(n)]
    gap = int(rate / TICK_HZ / 2 / block)  # a silence of half a tick ends a sound
    out, start, quiet = [], None, 0
    for i, on in enumerate(loud):
        if on:
            if start is None:
                start = i
            quiet = 0
        elif start is not None:
            quiet += 1
            if quiet > gap:
                out.append((start * block, (i - quiet + 1) * block))
                start, quiet = None, 0
    if start is not None:
        out.append((start * block, n * block))
    return out


def tick_divisor(seg, rate):
    """The PIT divisor of a square wave from its periods between rising zero
    crossings: the mean of those within 1.5 samples of the median. That drops the one
    period cut short when the next tick's divisor is loaded (it drifts into
    the window, as the original's ticks are a little faster than 70 Hz) and
    still averages a square wave whose periods alternate between whole
    sample counts."""
    mean = sum(seg) / len(seg)
    seg = [v - mean for v in seg]
    times = []
    for i in range(len(seg) - 1):
        if seg[i] <= 0 < seg[i + 1]:
            # Interpolate the crossing between the two samples.
            times.append(i - seg[i] / (seg[i + 1] - seg[i]))
    if len(times) < 3:
        return None
    periods = sorted(times[i + 1] - times[i] for i in range(len(times) - 1))
    median = periods[len(periods) // 2]
    kept = [p for p in periods if abs(p - median) <= 1.5]
    return PIT * sum(kept) / len(kept) / rate


def decode(measured, table):
    """Split the ticks into the fewest pieces that are each the start of a
    pattern (a sound cut off by the next one is a prefix); on a tie, prefer
    pieces played to their end. A tick that fits nothing is a piece of its
    own (None)."""
    n = len(measured)
    best = [None] * (n + 1)  # (pieces, -complete pieces, parts) for measured[:i]
    best[0] = (0, 0, [])
    for i in range(n):
        if best[i] is None:
            continue
        pieces, neg_full, parts = best[i]
        options = []
        for p, exp in table.items():
            run = 0
            while run < len(exp) and i + run < n:
                m = measured[i + run]
                if m is None or abs(m - exp[run]) > exp[run] * TOLERANCE:
                    break
                run += 1
            for length in range(1, run + 1):
                full = length == len(exp)
                options.append((i + length, (pieces + 1, neg_full - full, parts + [(p, length, full)])))
        if not options:
            options.append((i + 1, (pieces + 100, neg_full, parts + [(None, 1, False)])))
        for j, cand in options:
            if best[j] is None or cand[:2] < best[j][:2]:
                best[j] = cand
    return best[n][2]


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("wav")
    ap.add_argument("--com", default=os.path.join(os.path.dirname(os.path.abspath(__file__)), "..", "paranoid-v1.8", "PARANOID.COM"))
    ap.add_argument("--ticks", action="store_true")
    args = ap.parse_args()

    com = open(args.com, "rb").read()
    table = {p: expected_ticks(com, p) for p in PATTERNS}
    rate, x = read_wav(args.wav)
    tick = rate / TICK_HZ
    bad = 0
    for start, end in sounds(x, rate):
        n = max(1, round((end - start) / tick))
        margin = int(tick * 0.1)
        measured = []
        for k in range(n):
            a = int(start + k * tick) + margin
            b = int(start + (k + 1) * tick) - margin
            measured.append(tick_divisor(x[a:b], rate) if b - a > 8 else None)
        # Ticks with no tone at the end are the speaker settling, not sound.
        while measured and measured[-1] is None:
            measured.pop()
        if not measured:
            continue
        n = len(measured)
        # Ticks with no tone inside a stretch are silence between sounds:
        # decode the toned runs on their own.
        parts, run = [], []
        for m in measured + [None]:
            if m is not None:
                run.append(m)
            elif run:
                parts += decode(run, table)
                run = []
        text = ", ".join(
            ("?" if p is None else f"{p:#06x} {NAMES[p]}" + ("" if full else f" (first {run} of {len(table[p])} ticks)"))
            for p, run, full in parts)
        bad += sum(run for p, run, _ in parts if p is None)
        print(f"{start / rate:8.3f} s  {n:3d} ticks: {text}")
        if args.ticks:
            print("           " + " ".join("-" if m is None else f"{m:.0f}" for m in measured))
    print(f"{bad} tick(s) fit no pattern")
    return 1 if bad else 0


if __name__ == "__main__":
    sys.exit(main())
