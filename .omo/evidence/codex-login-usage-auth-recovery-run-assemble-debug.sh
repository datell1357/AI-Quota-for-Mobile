#!/usr/bin/env bash
set -o pipefail
cd '/d/Vibe Project/AI Usage for Mobile' || exit 98
gradle -p android :app:assembleDebug --console=plain --no-daemon
code=$?
printf '%s\n' "$code" > '.omo/evidence/codex-login-usage-auth-recovery-assemble-debug.exit.txt'
exit "$code"