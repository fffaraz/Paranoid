#!/usr/bin/env bash
# Run the original PARANOID v1.8 in DOSBox-X from a scratch copy of the data
# files, so the repo (and its HiScores.PAR) is never modified.
#
# usage: tools/run_original.sh [--trace] [--keep-hiscores] [--time-limit N] [-- dosbox-x args...]
#   --trace          run PARTRACE.COM (built by tools/make_trace_com.py) and
#                    copy TRACE.BIN to tests/capture/
#   --keep-hiscores  keep tests/capture/HiScores.PAR between runs
#   --time-limit N   kill DOSBox-X after N seconds
#   --type "ARGS"    type keys with DOSBox-X AUTOTYPE before the game starts,
#                    e.g. --type "-w 3 space" presses Space after 3 seconds
#
# Screenshots and WAV recordings from the DOSBox-X Capture menu go to
# tests/capture/.

set -euo pipefail

ROOT="$(cd "$(dirname "$0")/.." && pwd)"
DATA="$ROOT/paranoid-v1.8"
CAPTURE="$ROOT/tests/capture"
PROGRAM=PARANOID
KEEP_HISCORES=0
AUTOTYPE=()
EXTRA=()

while [ $# -gt 0 ]; do
    case "$1" in
    --trace) PROGRAM=PARTRACE ;;
    --keep-hiscores) KEEP_HISCORES=1 ;;
    --type)
        AUTOTYPE=(-c "AUTOTYPE $2")
        shift
        ;;
    --time-limit)
        EXTRA+=(-time-limit "$2")
        shift
        ;;
    --)
        shift
        EXTRA+=("$@")
        break
        ;;
    *)
        echo "unknown option: $1" >&2
        exit 1
        ;;
    esac
    shift
done

mkdir -p "$CAPTURE"
SCRATCH="$(mktemp -d)"
trap 'rm -rf "$SCRATCH"' EXIT

cp "$DATA"/BITMAPS.PAR "$DATA"/FONTS.PAR "$DATA"/LEVELS.PAR "$DATA"/PARANOID.COM "$SCRATCH"/
if [ "$PROGRAM" = PARTRACE ]; then
    if [ ! -f "$ROOT/tests/capture/PARTRACE.COM" ]; then
        python3 -I "$ROOT/tools/make_trace_com.py" "$DATA/PARANOID.COM" "$ROOT/tests/capture/PARTRACE.COM"
    fi
    cp "$ROOT/tests/capture/PARTRACE.COM" "$SCRATCH"/
fi
if [ "$KEEP_HISCORES" = 1 ] && [ -f "$CAPTURE/HiScores.PAR" ]; then
    cp "$CAPTURE/HiScores.PAR" "$SCRATCH"/
fi

dosbox-x -conf "$ROOT/tools/dosbox/paranoid.conf" -fastlaunch \
    -set "dosbox captures=$CAPTURE" \
    -c "mount c \"$SCRATCH\"" -c "c:" "${AUTOTYPE[@]}" -c "$PROGRAM" -c "exit" \
    "${EXTRA[@]}" || true

[ -f "$SCRATCH/TRACE.BIN" ] && cp "$SCRATCH/TRACE.BIN" "$CAPTURE/TRACE.BIN" && echo "trace: $CAPTURE/TRACE.BIN"
[ "$KEEP_HISCORES" = 1 ] && [ -f "$SCRATCH/HISCORES.PAR" ] && cp "$SCRATCH/HISCORES.PAR" "$CAPTURE/HiScores.PAR"
exit 0
