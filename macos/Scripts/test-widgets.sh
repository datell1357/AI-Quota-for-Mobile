#!/bin/bash
set -euo pipefail
cd "$(dirname "$0")/../.."
swift build --package-path macos/Packages/AIQuotaCore --scratch-path macos/.build/core
CORE_BIN="$(swift build --package-path macos/Packages/AIQuotaCore --scratch-path macos/.build/core --show-bin-path)"
mkdir -p macos/.build/widgets artifacts/macos-widget-probes
xcrun swiftc -swift-version 6 -target "$(uname -m)-apple-macos14.0" -parse-as-library \
  -I "$CORE_BIN/Modules" -I macos/Packages/AIQuotaCore/Sources/CSQLite \
  "$CORE_BIN"/AIQuotaCore.build/*.swift.o \
  macos/Shared/SharedPaths.swift macos/WidgetSupport/QuotaWidgetContent.swift \
  macos/Widgets/AccountEntity.swift macos/Widgets/WidgetIntents.swift macos/Widgets/WidgetTimeline.swift \
  macos/Tests/Widgets/WidgetProbe.swift -o macos/.build/widgets/WidgetProbe
WIDGET_PROBE_OUTPUT="$(mktemp -d "$PWD/artifacts/macos-widget-probes/run-XXXXXXXX")"
macos/.build/widgets/WidgetProbe "$WIDGET_PROBE_OUTPUT"
printf '%s\n' "$WIDGET_PROBE_OUTPUT" > artifacts/macos-widget-probes/latest-path.txt
