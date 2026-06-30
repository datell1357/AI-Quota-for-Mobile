# Claude login native QA - 2026-07-01 06:38 KST

Scope: preserve app data, install debug APK with `adb install -r`, launch Claude debug login.

Result: PASS.

Evidence:
- `nativeCollectorStart=aboutblank reason=resource` after Claude authenticated organization API resource.
- `nativeUsage provider=claude ok=true diagnostic=ok`.
- Native request statuses: organizations 200, account profile 200, subscription details 200, usage 200.
- `rawPayloadPresent=true`.
- `trusted_usage_payload` debug cookie snapshot saved.
- `source=structured-script lineCount=3 keptPreviousSnapshot=false`.
- After `finish()`, resumed activity returned away from `WebLoginActivity`.
