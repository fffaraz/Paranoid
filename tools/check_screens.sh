#!/bin/sh
# CTest test (TODO V5): draw every scene that has a reference screen from the
# original (tests/reference/screens/SCENE.png, ':' written as '_') with
# --screenshot and compare. Exits 77 (skipped) without a display.
#
# usage: tools/check_screens.sh PATH/TO/paranoid
set -u
bin=$1
root=$(cd "$(dirname "$0")/.." && pwd)
out=$root/tests/capture/screens
mkdir -p "$out"
cd "$root"
failed=0
for ref in tests/reference/screens/*.png; do
    name=$(basename "$ref" .png)
    scene=$(echo "$name" | tr '_' ':')
    "$bin" --screenshot "$scene" "$out/$name.png" >/dev/null 2>&1
    status=$?
    if [ $status = 77 ]; then
        echo "SKIPPED: no display for the screenshots"
        exit 77
    fi
    if [ $status != 0 ]; then
        echo "$scene: --screenshot failed ($status)"
        failed=1
        continue
    fi
    if ! result=$(python3 -I tools/screen_diff.py "$ref" "$out/$name.png" --highlight "$out/$name.diff.png"); then
        echo "$scene: $result (see $out/$name.diff.png)"
        failed=1
    fi
done
[ $failed = 0 ] && echo "all screens match"
exit $failed
