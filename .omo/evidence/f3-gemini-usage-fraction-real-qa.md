# F3 Real QA - Gemini Usage Fraction

Status: PASS

## Device
- `adb devices`: `emulator-5554 device`
- App install method: `adb install -r android/app/build/outputs/apk/debug/app-debug.apk`
- Data preservation: no uninstall, no `pm clear`, no app-data clear, no provider disconnect.

## Commands
- `gradle -p android :app:assembleDebug`
- `adb install -r android/app/build/outputs/apk/debug/app-debug.apk`
- `adb shell am broadcast -p com.aiquota.mobile -a com.aiquota.mobile.debug.REFRESH_PROVIDER --es provider_id gemini`
- `adb logcat -d -v time -s AIQuotaDebugRefresh AIQuotaGeminiUsageRpc AIQuotaNativeUsage AIQuotaBgRefreshService AIQuotaCollector AIQuotaLogin`
- `adb shell run-as com.aiquota.mobile cat shared_prefs/usage_data_gemini.xml`

## Evidence paths
- Build: `.omo/evidence/task-4-gemini-usage-fraction-assemble-20260701.txt`
- Install: `.omo/evidence/task-4-gemini-usage-fraction-install-20260701.txt`
- Sanitized refresh log: `.omo/evidence/task-4-gemini-usage-fraction-refresh-20260701.log`
- Sanitized snapshot summary: `.omo/evidence/task-4-gemini-usage-fraction-snapshot-20260701.txt`

## Observed result
- Refresh broadcast completed with `result=0`.
- Gemini native refresh logged `nativeUsage provider=gemini ok=true`.
- Gemini RPC evidence logged `rpcId=jSf9Qc` and `collectorMode=native-usage-page-rpc`.
- Live native row was `remaining=2357.0/used=0.02/limit=2357.02`.
- Stored Gemini snapshot updated at `2026-07-01T07:26:28.425325Z`.
- Stored 5-hour UI backing state is `usedPercent=2`, `remainingPercent=0.98`, `remainingText=98% left`.
- Stored weekly UI backing state is `usedPercent=0`, `remainingPercent=1`, `remainingText=100% left`.

## Sanitization
- Refresh evidence was rewritten to Gemini-only metadata after the first capture included unrelated scheduled-provider lines.
- No cookies, auth headers, raw account identifiers, or raw payload bodies are retained in the final QA artifacts.

## Residual risks
- I verified the stored UI backing snapshot rather than saving a screen capture, to avoid writing visible account/session details into evidence.
