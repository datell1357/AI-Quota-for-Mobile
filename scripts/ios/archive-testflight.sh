#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/../.." && pwd)"
cd "$ROOT_DIR"

ARCHIVE_DIR="${ARCHIVE_DIR:-build/ios/archive}"
EXPORT_DIR="${EXPORT_DIR:-build/ios/export}"
ARCHIVE_PATH="$ARCHIVE_DIR/AIQuotaMobile.xcarchive"

mkdir -p "$ARCHIVE_DIR" "$EXPORT_DIR"

xcodebuild -list -project ios/AIQuotaMobile.xcodeproj

xcodebuild archive \
  -project ios/AIQuotaMobile.xcodeproj \
  -scheme AIQuotaMobile \
  -configuration Release \
  -destination "generic/platform=iOS" \
  -archivePath "$ARCHIVE_PATH"

xcodebuild -exportArchive \
  -archivePath "$ARCHIVE_PATH" \
  -exportOptionsPlist ios/ExportOptions.plist \
  -exportPath "$EXPORT_DIR"

cat <<EOF
Archive exported to: $EXPORT_DIR

Next upload gate:
1. Open Xcode Organizer or Transporter on the signing Mac.
2. Upload the exported IPA.
3. Confirm App Store Connect processing starts under TestFlight.
EOF
