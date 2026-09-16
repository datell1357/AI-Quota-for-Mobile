#!/bin/bash
set -euo pipefail
cd "$(dirname "$0")/../.."
mkdir -p macos/.build/panel artifacts/macos-panel-probes
xcrun swiftc -swift-version 6 -target "$(uname -m)-apple-macos14.0" -parse-as-library \
  macos/App/DesktopPanelState.swift macos/App/DesktopPreferences.swift macos/App/DesktopPanelController.swift \
  macos/Tests/Panel/PanelWindowProbe.swift -o macos/.build/panel/PanelWindowProbe
PANEL_PROBE_OUTPUT="$(mktemp -d "$PWD/artifacts/macos-panel-probes/run-XXXXXXXX")"
macos/.build/panel/PanelWindowProbe "$PANEL_PROBE_OUTPUT"
printf '%s\n' "$PANEL_PROBE_OUTPUT" > artifacts/macos-panel-probes/latest-path.txt
