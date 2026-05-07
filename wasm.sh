#!/usr/bin/env bash
# Build Paranoid for WebAssembly using emscripten + raylib's Web platform.
# Requires emsdk to be installed and either activated in PATH or EMSDK set.
# Output: build-wasm/paranoid.{html,js,wasm,data}

set -euo pipefail

cd "$(dirname "$0")"

if ! command -v emcmake >/dev/null 2>&1; then
    if [ -n "${EMSDK:-}" ] && [ -f "${EMSDK}/emsdk_env.sh" ]; then
        # shellcheck disable=SC1091
        source "${EMSDK}/emsdk_env.sh"
    else
        echo "error: emcmake not found." >&2
        echo "install emsdk (https://emscripten.org/docs/getting_started/downloads.html)" >&2
        echo "then either 'source /path/to/emsdk_env.sh' or export EMSDK=/path/to/emsdk" >&2
        exit 1
    fi
fi

BUILD_DIR="build-wasm"
mkdir -p "$BUILD_DIR"

emcmake cmake -S . -B "$BUILD_DIR" \
    -DCMAKE_BUILD_TYPE=Release \
    -DPLATFORM=Web

cmake --build "$BUILD_DIR" -j"$(nproc)"

echo
echo "build complete:"
ls -lh "$BUILD_DIR"/paranoid.* 2>/dev/null || true
echo
echo "to run locally:"
echo "  emrun --no-browser --port 8080 $BUILD_DIR/paranoid.html"
echo "or:"
echo "  (cd $BUILD_DIR && python3 -m http.server 8080)"
echo "  then open http://localhost:8080/paranoid.html"
