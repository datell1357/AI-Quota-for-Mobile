# Codex Login Return Code Quality Re-Review

codeQualityStatus: WATCH
recommendation: APPROVE
reportPath: .omo/evidence/codex-login-return-20260630-code-review.md
blockers: []

## Scope

Goal reviewed: saved debug session cookie restore, top-level `about:blank` native JS usage collection for Codex, no hidden iframe, no ChatGPT DOM scan/fallback in the reviewed login-return path, and no Codex native dashboard/html fallback.

Primary files inspected:
- `android/app/src/main/java/com/aiquota/mobile/providers/WebLoginActivity.kt`
- `android/app/src/main/java/com/aiquota/mobile/providers/ProviderWebCollectorScripts.kt`
- `android/app/src/main/java/com/aiquota/mobile/providers/ProviderNativeUsagePayloadFetcher.kt`
- `android/app/src/main/java/com/aiquota/mobile/providers/CodexNativeCollectionRoutes.kt`
- `android/app/src/main/java/com/aiquota/mobile/providers/DebugProviderSessionCookieStore.kt`
- `android/app/src/main/java/com/aiquota/mobile/providers/ProviderBackgroundRefreshService.kt`
- `android/app/src/test/java/com/aiquota/mobile/providers/WebLoginActivityNativeBridgeTest.kt`
- related focused tests and named evidence artifacts

Review avoided raw cookie/token value output. Evidence sampling used pass/fail markers, route names, counts, booleans, and redacted runtime lines.

## Skill-Perspective Check

Ran.

- `omo:remove-ai-slops`: loaded and applied as an overfit/slop review pass. No blocking deletion-only or tautological test is the sole proof of the change; the Android runtime artifact is the main user-outcome proof. WATCH item remains for dormant legacy Codex web-state collector code and older implementation-string tests outside the replaced file.
- `omo:programming`: loaded and applied through its shared review criteria. Kotlin is outside this skill's language-specific reference table, so no extra appendix applied. The reviewed diff does not add an untyped escape hatch or needless abstraction for the requested path.

## Findings By Severity

### CRITICAL

None.

### HIGH

None.

### MEDIUM

None.

### LOW

1. Dormant legacy Codex web-state collector code still exists, although the reviewed login-return path no longer selects it.

Files:
- `android/app/src/main/java/com/aiquota/mobile/providers/ProviderScriptProviders.kt:38`
- `android/app/src/main/java/com/aiquota/mobile/providers/ProviderWebCollectorScripts.kt:1125`
- `android/app/src/main/java/com/aiquota/mobile/providers/ProviderWebCollectorScripts.kt:1937`

`ProviderScriptProviders` still maps Codex to `codexWebViewState()`, which contains the old DOM/page-state scanner. Current `WebLoginActivity` gates Codex injection to `about:blank`, and `ProviderWebCollectorScripts.build(..., pageUrl = "about:blank")` emits only the native payload bridge, so this is not a blocker for the requested user path. It is worth cleaning later if the project wants the stronger invariant that no legacy Codex DOM collector remains anywhere in production source.

2. Some older tests remain implementation-string checks.

Files:
- `android/app/src/test/java/com/aiquota/mobile/providers/DebugProviderSessionCookieStoreTest.kt:10`
- `android/app/src/test/java/com/aiquota/mobile/providers/WebViewSessionPersistenceTest.kt:10`
- `android/app/src/test/java/com/aiquota/mobile/providers/ProviderWebCollectorScriptsTest.kt:2101`

The requested `WebLoginActivityNativeBridgeTest` source-file checks were replaced with policy/API tests. The remaining source-string tests are outside that file and should not be treated as the primary proof for this fix.

## criteriaCoverage

originalIntent:
- Covered. `WebLoginActivityNativeBridgeTest` no longer imports `java.io.File` and no longer uses `File(...)`, `readText()`, or `source.contains(...)`.
- Covered. `CodexNativeCollectionRoutes.shouldStartFromResource` starts only from ChatGPT `/backend-api/wham/usage`; it rejects root, session, `me`, analytics, and non-ChatGPT hosts.
- Covered. `CodexNativeCollectionRoutes.isAboutBlankNavigation` requires `collectionStarted=true`, so arbitrary `about:blank` navigation is not enough.
- Covered for the active reviewed path. `WebLoginActivity` starts Codex native collection by stopping the top-level WebView and loading `about:blank`; no hidden iframe marker or frame injection remains in that path.

desiredOutcome:
- Covered. `DebugProviderSessionCookieStore.restore` is debug-only and restores saved headers with `Secure` and `Path=/`, then flushes the cookie manager without logging raw values.
- Covered. `ProviderWebCollectorScripts.codexAboutBlankJsonPayload()` calls `c.fetchNativeUsagePayload()` and does not call JS `fetchJson` for Wham or analytics.
- Covered. `ProviderNativeUsagePayloadFetcher.fetchCodexPayload` fetches native JSON endpoints and parses `/backend-api/wham/usage`; focused tests cover header forwarding, Wham usage, and no dashboard/html fallback.
- Covered. Runtime evidence shows top-level `about:blank` injection and a connected Codex snapshot after debug cookie restore.

userOutcomeReview:
- Pass. `.omo/ulw-loop/codex-login-return-20260630/android-surface-codex-cookie-restore-login-10.txt` shows debug cookie restore, `nativeCollectorStart=aboutblank`, collector injection on `about:blank`, raw payload present, and `snapshot_connectionState=CONNECTED`.
- Pass. `.omo/ulw-loop/codex-login-return-20260630/targeted-codex-top-aboutblank-native-tests-4.txt` shows focused tests `BUILD SUCCESSFUL`.
- Pass. `.omo/ulw-loop/codex-login-return-20260630/assemble-debug-top-aboutblank-native-3.txt` shows debug APK `BUILD SUCCESSFUL`.
- Pass. `.omo/ulw-loop/codex-login-return-20260630/install-debug-top-aboutblank-native-3.txt` shows install `Success`.

## Verification

Commands/evidence inspected:
- `gradle :app:testDebugUnitTest --tests "com.aiquota.mobile.providers.WebLoginActivityNativeBridgeTest" --tests "com.aiquota.mobile.providers.ProviderNativeUsagePayloadFetcherTest" --tests "com.aiquota.mobile.providers.DebugProviderSessionCookieStoreTest"` from `android/`: PASS, `BUILD SUCCESSFUL in 3s`.
- `git diff --check`: PASS with CRLF normalization warnings only.
- `rg -n "File\\(|readText\\(|source\\.contains" android/app/src/test/java/com/aiquota/mobile/providers/WebLoginActivityNativeBridgeTest.kt`: no matches.
- Named evidence files listed under `userOutcomeReview`.

Final verdict: APPROVE with WATCH-level cleanup notes. No CRITICAL or HIGH finding remains.
