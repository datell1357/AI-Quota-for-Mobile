#!/bin/bash
set -euo pipefail
cd "$(dirname "$0")/../.."
mkdir -p macos/.build/host-state/fixtures
xcrun swiftc -swift-version 6 -parse-as-library \
  macos/App/DesktopPreferences.swift macos/App/DesktopPanelState.swift macos/Shared/SharedPaths.swift macos/Tests/Host/HostStateTests.swift \
  -o macos/.build/host-state/HostStateTests
macos/.build/host-state/HostStateTests macos/.build/host-state/fixtures
