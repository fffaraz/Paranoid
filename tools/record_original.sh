#!/usr/bin/env bash
# Record the original's PC speaker into a WAV file (TODO V6). DOSBox-X's audio
# stream is moved to a temporary PulseAudio null sink, so nothing is heard,
# and parecord records that sink's monitor. The sink is removed afterwards.
#
# usage: tools/record_original.sh OUT.wav SECONDS [KEYS]
#   KEYS   DOSBox-X AUTOTYPE arguments, as for run_original.sh --type.
# Then: python3 -I tools/sound_ticks.py OUT.wav
#
# Needs PulseAudio or PipeWire's pulse server (pactl, parecord).

set -euo pipefail

out=$1
secs=$2
keys=${3:-}
ROOT="$(cd "$(dirname "$0")/.." && pwd)"

mod=$(pactl load-module module-null-sink sink_name=paranoid_rec sink_properties=device.description=paranoid_rec)
rec=""
cleanup() {
    [ -n "$rec" ] && kill "$rec" 2>/dev/null || true
    pactl unload-module "$mod"
}
trap cleanup EXIT
parecord --device=paranoid_rec.monitor --channels=1 --rate=44100 --file-format=wav "$out" &
rec=$!
before=$(pactl list short sink-inputs | awk '{print $1}')
args=(--time-limit "$secs")
[ -n "$keys" ] && args+=(--type "$keys")
"$ROOT/tools/run_original.sh" "${args[@]}" >/dev/null 2>&1 &
game=$!
moved=""
# DOSBox-X ignores PULSE_SINK, so move its stream as soon as it appears.
while kill -0 "$game" 2>/dev/null; do
    for id in $(pactl list short sink-inputs | awk '{print $1}'); do
        case " $before $moved " in
        *" $id "*) ;;
        *) pactl move-sink-input "$id" paranoid_rec && moved="$moved $id" ;;
        esac
    done
    sleep 0.2
done
sleep 0.5
echo "recorded $out"
