#!/bin/sh
# CTest test (TODO V6): write the remake's sound effects with --dump-sounds
# and check that each one, measured tick by tick, is its own pattern from
# PARANOID.COM, played to the end, with no tick off.
#
# usage: tools/check_sounds.sh PATH/TO/paranoid
set -u
bin=$1
root=$(cd "$(dirname "$0")/.." && pwd)
out=$root/tests/capture/sounds
mkdir -p "$out"
cd "$root"
"$bin" --dump-sounds "$out" || exit 1
failed=0
for wav in "$out"/*.wav; do
    name=$(basename "$wav" .wav)
    result=$(python3 -I tools/sound_ticks.py "$wav")
    first=$(echo "$result" | head -1)
    case "$first" in
    *"0x$name "*"("* | *"?"*) failed=1; echo "$name: $first" ;;
    *"0x$name "*) ;;
    *) failed=1; echo "$name: $first" ;;
    esac
done
[ $failed = 0 ] && echo "all 21 sounds match their patterns"
exit $failed
