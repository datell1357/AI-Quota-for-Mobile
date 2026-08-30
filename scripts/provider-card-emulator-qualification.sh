#!/usr/bin/env bash
set -euo pipefail

ADB="${ADB:-/Users/yeoreum/Library/Android/sdk/platform-tools/adb}"
SERIAL="${ANDROID_SERIAL:-emulator-5554}"
ROOT_DIR="$(cd "$(dirname "$0")/.." && pwd)"
OUT_DIR="${1:?usage: $0 EVIDENCE_DIR}"
if [[ "$OUT_DIR" != /* ]]; then
  OUT_DIR="$ROOT_DIR/$OUT_DIR"
fi
PKG="com.aiquota.mobile"

mkdir -p "$OUT_DIR/screenshots" "$OUT_DIR/ui-xml" "$OUT_DIR/receipts"
LOG="$OUT_DIR/actions.log"
: > "$LOG"

log() { printf '%s\n' "$*" | tee -a "$LOG"; }
adbq() { "$ADB" -s "$SERIAL" "$@"; }

dump_ui() {
  local name="$1"
  local remote="/sdcard/aiquota-task24-$name.xml"
  local attempt
  for attempt in 1 2 3 4 5; do
    if adbq shell uiautomator dump --compressed "$remote" >/dev/null 2>&1; then
      adbq pull "$remote" "$OUT_DIR/ui-xml/$name.xml" >/dev/null
      return 0
    fi
    sleep 1
  done
  log "FAIL dump_ui $name"
  return 1
}

capture() {
  local name="$1"
  dump_ui "$name"
  adbq exec-out screencap -p > "$OUT_DIR/screenshots/$name.png"
  log "CAPTURE $name"
}

center_for() {
  local xml="$1" attr="$2" value="$3" occurrence="${4:-0}"
  python3 - "$xml" "$attr" "$value" "$occurrence" <<'PY'
import re, sys, xml.etree.ElementTree as ET
path, attr, value, occurrence = sys.argv[1], sys.argv[2], sys.argv[3], int(sys.argv[4])
root = ET.parse(path).getroot()
parents = {child: parent for parent in root.iter() for child in parent}
matches = [node for node in root.iter("node") if node.attrib.get(attr) == value]
if occurrence >= len(matches):
    raise SystemExit(f"missing {attr}={value!r} occurrence={occurrence}; matches={len(matches)}")
node = matches[occurrence]
while node.attrib.get("clickable") != "true" and node in parents:
    node = parents[node]
m = re.fullmatch(r"\[(\d+),(\d+)\]\[(\d+),(\d+)\]", node.attrib["bounds"])
if not m:
    raise SystemExit(f"invalid bounds: {node.attrib.get('bounds')}")
x1, y1, x2, y2 = map(int, m.groups())
print((x1 + x2) // 2, (y1 + y2) // 2)
PY
}

tap_attr() {
  local attr="$1" value="$2" occurrence="${3:-0}" point
  dump_ui current
  point="$(center_for "$OUT_DIR/ui-xml/current.xml" "$attr" "$value" "$occurrence")"
  log "TAP $attr=$value occurrence=$occurrence at $point"
  adbq shell input tap $point
  sleep 1
}

assert_xml() {
  local name="$1" needle="$2"
  if ! rg -Fq "$needle" "$OUT_DIR/ui-xml/$name.xml"; then
    log "FAIL $name missing: $needle"
    return 1
  fi
  log "PASS $name contains: $needle"
}

add_provider() {
  local provider="$1" alias="${2:-}"
  tap_attr content-desc "Add provider"
  tap_attr content-desc "$provider"
  tap_attr text "Next"
  if [[ -n "$alias" ]]; then
    adbq shell input text "$alias"
    sleep 1
  fi
  tap_attr text "Add"
}

run_instrumentation() {
  local name="$1" classes="$2" runner="${3:-com.aiquota.mobile.ui.AIQuotaInstrumentationRunner}"
  log "RUN instrumentation $name"
  set +e
  adbq shell am instrument -w -r -e class "$classes" "$PKG.test/$runner" > "$OUT_DIR/receipts/$name.txt" 2>&1
  local code=$?
  set -e
  if [[ $code -ne 0 ]] || ! rg -q 'OK \(' "$OUT_DIR/receipts/$name.txt"; then
    log "FAIL instrumentation $name exit=$code"
    return 1
  fi
  log "PASS instrumentation $name"
}

log "Task 24 provider-card emulator qualification"
log "serial=$SERIAL package=$PKG"
adbq get-state | tee "$OUT_DIR/receipts/device-state.txt"
adbq shell getprop ro.build.version.sdk | tee "$OUT_DIR/receipts/api-level.txt"

cd "$ROOT_DIR/android"
./gradlew --no-daemon :app:assembleDebug :app:assembleDebugAndroidTest > "$OUT_DIR/receipts/build.txt"
adbq install -r app/build/outputs/apk/debug/app-debug.apk > "$OUT_DIR/receipts/install-app.txt"
adbq install -r app/build/outputs/apk/androidTest/debug/app-debug-androidTest.apk > "$OUT_DIR/receipts/install-test.txt"

adbq shell pm clear "$PKG" | tee "$OUT_DIR/receipts/pm-clear.txt"
adbq shell am start -W -n "$PKG/.MainActivity" > "$OUT_DIR/receipts/main-start.txt"
sleep 6
capture 01-fresh-onboarding
assert_xml 01-fresh-onboarding 'text="Later"'
assert_xml 01-fresh-onboarding 'content-desc="Cursor"'

tap_attr text "Later"
capture 02-empty-dashboard
assert_xml 02-empty-dashboard 'text="Choose an AI provider to track"'
assert_xml 02-empty-dashboard 'content-desc="Add provider"'

add_provider Cursor
capture 03-cursor-default
assert_xml 03-cursor-default 'content-desc="Cursor, Cursor, Disconnected, Connect"'

tap_attr content-desc "Add provider"
dump_ui 04-cursor-singleton
python3 - "$OUT_DIR/ui-xml/04-cursor-singleton.xml" <<'PY'
import sys, xml.etree.ElementTree as ET
nodes = [n for n in ET.parse(sys.argv[1]).getroot().iter("node") if n.attrib.get("content-desc", "").startswith("Cursor,")]
if not nodes or nodes[0].attrib.get("enabled") != "false":
    raise SystemExit("Cursor singleton row was not disabled")
PY
log "PASS Cursor singleton rejection"
tap_attr text "Cancel"

add_provider Codex
capture 05-codex-default
assert_xml 05-codex-default 'content-desc="Codex, Codex, Disconnected, Connect"'
add_provider Codex
capture 06-codex-second-default
assert_xml 06-codex-second-default 'content-desc="Codex 2, Codex, Disconnected, Connect"'

tap_attr content-desc "Add provider"
tap_attr content-desc "Codex"
tap_attr text "Next"
adbq shell input text cursor
sleep 1
tap_attr text "Add"
capture 07-casefold-collision
assert_xml 07-casefold-collision 'text="That card name is already in use."'
tap_attr text "Cancel"

adbq shell am force-stop "$PKG"
adbq shell am start -W -n "$PKG/.MainActivity" > "$OUT_DIR/receipts/restart.txt"
sleep 6
capture 08-restart-persistence
assert_xml 08-restart-persistence 'content-desc="Cursor, Cursor, Disconnected, Connect"'
assert_xml 08-restart-persistence 'content-desc="Codex 2, Codex, Disconnected, Connect"'

adbq shell run-as "$PKG" ls -l databases > "$OUT_DIR/receipts/database-files.txt"
adbq exec-out run-as "$PKG" sh -c 'for f in databases/*; do echo "=== $f"; stat -c "%n %s" "$f"; done' > "$OUT_DIR/receipts/database-stat.txt"

tap_attr content-desc "Remove provider"
tap_attr content-desc "Codex 2 (Codex)"
capture 09-remove-selection
assert_xml 09-remove-selection 'text="1 selected"'
tap_attr text "Continue"
capture 10-remove-confirmation
assert_xml 10-remove-confirmation 'text="Selected cards: Codex 2 (Codex)"'
tap_attr text "Remove"
sleep 2
capture 11-remove-result
assert_xml 11-remove-result 'text="Codex 2 (Codex): Removed"'
tap_attr text "Close"
capture 12-after-exact-delete
assert_xml 12-after-exact-delete 'content-desc="Codex, Codex, Disconnected, Connect"'
if rg -Fq 'content-desc="Codex 2, Codex, Disconnected, Connect"' "$OUT_DIR/ui-xml/12-after-exact-delete.xml"; then
  log "FAIL deleted Codex 2 remains visible"
  exit 1
fi
log "PASS exact destructive deletion preserved sibling"

run_instrumentation exact-login-profile \
  'com.aiquota.mobile.accounts.ExactAccountLoginProfileInstrumentationTest'
run_instrumentation exact-web-login \
  'com.aiquota.mobile.providers.ExactWebLoginActivityInstrumentationTest'
run_instrumentation exact-widget-notification \
  'com.aiquota.mobile.widget.ProviderWidgetExactInstrumentationTest,com.aiquota.mobile.notification.ProviderCardNotificationControllerInstrumentationTest'
run_instrumentation exact-dashboard-restart \
  'com.aiquota.mobile.ui.dashboard.ExactAccountDashboardUiTest'
run_instrumentation settings-rename \
  'com.aiquota.mobile.ui.settings.SettingsConnectionManagementUiTest'

adbq shell am force-stop "$PKG"
adbq shell am force-stop "$PKG.test" || true
adbq shell cmd locale set-app-locales "$PKG" --user 0 en-US || true
adbq shell wm size reset
adbq shell wm density reset
adbq shell settings put system font_scale 1.0
{
  printf 'app_processes='; adbq shell pidof "$PKG" || true
  printf 'test_processes='; adbq shell pidof "$PKG.test" || true
  adbq shell wm size
  adbq shell wm density
  adbq shell settings get system font_scale
} > "$OUT_DIR/cleanup.txt"

cat > "$OUT_DIR/verdict.txt" <<'EOF'
PASS
Fresh onboarding Later, empty Add, Cursor singleton rejection, two Codex defaults,
case-folded alias collision, restart persistence, exact B deletion with sibling
preservation, synthetic exact login/profile, widget/notification exact routing,
session-loss/reorder, and settings rename coverage all passed without real-provider traffic.
EOF
log "PASS Task 24 qualification"
