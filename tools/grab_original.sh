#!/usr/bin/env bash
# Run the original in DOSBox-X and save its screen every few tenths of a
# second, as 640x350 PNGs named by the time since the window opened (TODO V5).
#
# usage: tools/grab_original.sh OUTDIR SECONDS [KEYS]
#   KEYS   DOSBox-X AUTOTYPE arguments. -w is the wait before the first key,
#          -p the pause between keys, e.g. "-w 4 -p 3 space space" starts a
#          game (Space on the title screen, Space again in the demo).
#
# Needs an X server (it forces DOSBox-X onto X11, which works under XWayland
# too), xprop, ImageMagick and bc. Grabs aren't synchronised with the game's
# frames; compare each grab with every frame of the remake you expect there.

set -euo pipefail

out=$1
secs=$2
keys=${3:-}
mkdir -p "$out"
ROOT="$(cd "$(dirname "$0")/.." && pwd)"

before=$(xprop -root _NET_CLIENT_LIST)
args=(--time-limit $((secs + 3)))
[ -n "$keys" ] && args+=(--type "$keys")
SDL_VIDEODRIVER=x11 "$ROOT/tools/run_original.sh" "${args[@]}" >/dev/null 2>&1 &

win=""
for _ in $(seq 1 40); do
    sleep 0.25
    for id in $(xprop -root _NET_CLIENT_LIST | grep -o '0x[0-9a-f]*'); do
        case "$before" in *"$id"*) ;; *) win=$id ;; esac
    done
    [ -n "$win" ] && break
done
if [ -z "$win" ]; then
    echo "no DOSBox-X window found" >&2
    exit 1
fi

start=$(date +%s.%N)
n=0
while [ "$(echo "$(date +%s.%N) - $start < $secs" | bc)" = 1 ]; do
    t=$(printf '%05.1f' "$(echo "$(date +%s.%N) - $start" | bc)")
    # The window is the 640x350 screen under a 17-px menu bar.
    if import -window "$win" "$out/raw.png" 2>/dev/null; then
        magick "$out/raw.png" -crop 640x350+0+17 +repage "$out/t$t.png"
        n=$((n + 1))
    fi
    sleep 0.2
done
rm -f "$out/raw.png"
wait
echo "$n grabs in $out"
