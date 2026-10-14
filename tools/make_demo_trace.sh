#!/usr/bin/env bash
# Regenerate tests/reference/demo.trace.gz from the original game.
# Runs the attract-mode demo in DOSBox-X for about 5 minutes (a window opens)
# and records one state record per tick. See tests/reference/README.md.

set -euo pipefail

ROOT="$(cd "$(dirname "$0")/.." && pwd)"
rm -f "$ROOT/tests/capture/TRACE.BIN"
"$ROOT/tools/run_original.sh" --trace --type "-w 4 space" --time-limit 320
mkdir -p "$ROOT/tests/reference"
gzip -9 -c "$ROOT/tests/capture/TRACE.BIN" > "$ROOT/tests/reference/demo.trace.gz"
python3 -I "$ROOT/tools/trace_dump.py" "$ROOT/tests/reference/demo.trace.gz" --summary
