#!/usr/bin/env bash
set -o pipefail
cd '/d/Vibe Project/AI Usage for Mobile' || exit 98
gradle -p android :app:testDebugUnitTest --tests 'com.aiquota.mobile.providers.CodexNativeHeaderSelectorTest' --tests 'com.aiquota.mobile.providers.WebLoginActivityNativeBridgeTest' --tests 'com.aiquota.mobile.providers.ProviderNativeUsagePayloadFetcherTest' --console=plain --no-daemon
code=$?
printf '%s\n' "$code" > '.omo/evidence/codex-login-usage-auth-recovery-focused-tests.exit.txt'
exit "$code"