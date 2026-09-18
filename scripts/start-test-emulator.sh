#!/usr/bin/env bash
set -euo pipefail
sdk_dir="${ANDROID_HOME:-$HOME/Library/Android/sdk}"
serial="emulator-5580"
if [[ "$("$sdk_dir/platform-tools/adb" -s "$serial" get-state 2>/dev/null || true)" == device ]]; then
  echo 'AI Quota test emulator is already running (emulator-5580).'
  exit 0
fi
exec "$sdk_dir/emulator/emulator" -avd AI_Quota_Recovery_API_36 -port 5580 -gpu host -no-snapshot-load -no-boot-anim "$@"
