#!/bin/sh
# CTest test (TODO V4): replay the original's attract-mode demo in the remake
# and compare the two traces. Exits 77 (skipped) when the reference trace is
# missing; it isn't in git.
#
# usage: tools/check_demo_replay.sh PATH/TO/paranoid
set -eu
bin=$1
root=$(cd "$(dirname "$0")/.." && pwd)
ref=$root/tests/reference/demo.trace.gz
if [ ! -f "$ref" ]; then
    echo "SKIPPED: $ref is missing. Regenerate it with tools/make_demo_trace.sh"
    exit 77
fi
mkdir -p "$root/tests/capture"
out=$root/tests/capture/demo_replay.trace
cd "$root"
"$bin" --replay "$ref" --trace "$out"
python3 -I tools/trace_diff.py "$ref" "$out"
