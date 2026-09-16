#!/bin/bash
set -euo pipefail
MACOS_ROOT="$(cd "$(dirname "$0")/.." && pwd)"
PACKAGE_PATH="$MACOS_ROOT/Packages/AIQuotaCollectors"
BUILD_PATH="$MACOS_ROOT/.build/collectors"
swift build --package-path "$PACKAGE_PATH" --scratch-path "$BUILD_PATH" --build-tests
BIN_PATH="$(swift build --package-path "$PACKAGE_PATH" --scratch-path "$BUILD_PATH" --show-bin-path)"
# Exercise the shipping resource layout in a standalone host, outside the SwiftPM build directory.
SMOKE_HOST="$(mktemp -d "$BUILD_PATH/resource-smoke.XXXXXX")"
cp "$BIN_PATH/AIQuotaResourceProbe" "$SMOKE_HOST/AIQuotaResourceProbe"
python3 "$MACOS_ROOT/Scripts/stage-resource-bundles.py" "$BIN_PATH" "$SMOKE_HOST"
"$SMOKE_HOST/AIQuotaResourceProbe"
swift test --package-path "$PACKAGE_PATH" --scratch-path "$BUILD_PATH" --skip-build "$@"
