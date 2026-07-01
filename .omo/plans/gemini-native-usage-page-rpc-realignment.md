# gemini-native-usage-page-rpc-realignment - Work Plan

## TL;DR (For humans)

**What you'll get:** Gemini login remains a normal Google/Gemini web login, but usage collection is corrected so the app stores the same remaining-usage percentages shown on the real Gemini usage page.

**Why this approach:** The current app already reaches about:blank and performs native RPC collection, but it only calls one generic `jSf9Qc` usage-page RPC and accepts the old 100% fixture. The fix is to identify and replay the actual native usage-page RPC payload used by the visible page, then make tests reject the stale/generic 100% result.

**What it will NOT do:** No DOM scraping, no visible-page text scanning, no fallback collector, no Gemini CLI/OAuth/Code Assist switch, and no saved-cookie reinjection path.

**Effort:** Medium
**Risk:** Medium - Gemini's usage page RPC contract is live-service dependent and must be discovered with sanitized runtime evidence.
**Decisions to sanity-check:** QA may use screenshots/manual page values only as reference evidence; product code must use native HTTP/RPC calls from the about:blank bridge only.

Your next move: approve this plan for implementation, or ask for a high-accuracy plan review first. Full execution detail follows below.

---

> TL;DR (machine): Medium-risk Gemini native usage-page RPC realignment; preserve web login/about:blank bridge, replace stale `jSf9Qc`-only parsing with actual usage-page RPC parsing, and verify no DOM/fallback path exists.

## Scope
### Must have
- Keep Gemini authentication as web login through `WebLoginActivity` and Google account chooser from `android/app/src/main/java/com/aiquota/mobile/providers/ProviderDefinitions.kt`.
- Keep Gemini in the about:blank native collector allowlist in `android/app/src/main/java/com/aiquota/mobile/providers/ProviderAboutBlankCollectorPolicy.kt`.
- Keep `ProviderNativeUsagePayloadFetcher` dispatching Gemini to `GeminiUsagePageNativeFetcher.fetchUsagePayload(...)`, not to `GoogleWebSessionCodeAssistFetcher`.
- Determine why the current `GeminiUsagePageNativeFetcher` returns values that differ from the visible usage page.
- Add a sanitized debug discovery path that records only endpoint host/path, RPC ids, HTTP status, payload byte counts, row counts, labels, and numeric quota summaries. It must never print cookies, auth tokens, raw HTML, raw RPC payloads, account ids, or email addresses.
- Update the Gemini native fetcher to call the real usage-page RPC or RPC sequence that produces the visible Gemini usage values.
- Update parsing and normalization so Gemini lines show remaining usage percentages matching the usage page, including non-100% cases after actual usage decreases.
- Add tests that fail on the current stale/generic 100% behavior.
- Preserve account-scoped usage URLs such as `https://gemini.google.com/u/0/usage`.
- Run device QA with `adb install -r` only; do not clear app data.
- Verify refresh for at least 3 minutes with no DOM/fallback usage path.
- Commit and push the finished implementation work.

### Must NOT have (guardrails, anti-slop, scope boundaries)
- No DOM collection in product code: no `document.documentElement`, `innerText`, `querySelector`, page text parsing, visible DOM walking, or WebView DOM fallback for Gemini usage.
- No fallback collector for Gemini: no structured-script observed payload fallback, network-row fallback, visible text fallback, stored stale payload fallback, or external debug cookie restore.
- No Gemini CLI OAuth path and no Code Assist web-session replacement. The previous `.omo/plans/gemini-native-usage-codeassist.md` plan is superseded and must not be executed.
- No hardcoded quota values, no fake usage, and no treating stale 100% values as current trusted usage.
- No app data clearing during QA. Use `adb install -r` and provider-scoped disconnect/reset only.
- No printing, storing, committing, or pushing raw session cookies, request headers, tokens, account identifiers, raw HTML, or raw RPC response bodies.
- No unrelated provider behavior changes except shared tests or shared bridge guardrails needed to keep Gemini native-only behavior consistent.

## Verification strategy
> Zero human intervention for normal verification once the current WebView session is valid; if the session expires, stop and request a fresh Gemini WebView login instead of injecting saved cookies.
- Test decision: TDD + Android/JUnit unit tests + real-device/emulator QA.
- Evidence: `.omo/evidence/task-<N>-gemini-native-usage-page-rpc-realignment.<ext>`
- Baseline reference: visible Gemini usage-page values may be captured by screenshot/manual transcription for QA comparison only. Product code must not collect from DOM, screenshots, or OCR.
- Build/test command standard for this repo: run from repo root with system Gradle, because the checkout does not contain a Gradle wrapper:
  - `gradle -p android :app:testDebugUnitTest`
  - `gradle -p android :app:assembleDebug`
- Device QA command standard:
  - `adb install -r android/app/build/outputs/apk/debug/app-debug.apk`
  - `adb shell am broadcast -a com.aiquota.mobile.debug.RESET_PROVIDER --es provider_id gemini`
  - `adb shell am broadcast -a com.aiquota.mobile.debug.REFRESH_PROVIDER --es provider_id gemini`
  - `adb logcat -c`, then capture at least 210 seconds of logcat to `.omo/evidence/...log`.

## Execution strategy
### Parallel execution waves
> Target 5-8 todos per wave. Fewer than 3 except the final means under-splitting.

Wave 1 - diagnosis locks:
- Todo 1: lock current source constraints and write failing tests for stale/generic Gemini usage.
- Todo 2: add sanitized native RPC discovery instrumentation.
- Todo 3: capture current live mismatch evidence from the existing WebView session.

Wave 2 - native RPC correction:
- Todo 4: identify and implement the real usage-page RPC or RPC sequence.
- Todo 5: update parser/normalizer for actual visible-page quota values and percent conversion.
- Todo 6: strengthen login/background bridge routing and no-cookie-restore guardrails.

Wave 3 - validation:
- Todo 7: run focused and full tests.
- Todo 8: run device QA for initial collection plus 3-minute refresh and compare against visible page values.
- Todo 9: final audit, commit, and push.

### Dependency matrix
| Todo | Depends on | Blocks | Can parallelize with |
| --- | --- | --- | --- |
| 1 | none | 4, 5, 7 | 2, 3 |
| 2 | none | 3, 4 | 1 |
| 3 | 2 | 4, 8 | 1 |
| 4 | 1, 2, 3 | 5, 7, 8 | 6 |
| 5 | 1, 4 | 7, 8 | 6 |
| 6 | 1 | 7, 8 | 4, 5 |
| 7 | 4, 5, 6 | 8, 9 | none |
| 8 | 7 | 9 | none |
| 9 | 8 | none | none |

## Todos
> Implementation + Test = ONE todo. Never separate.
<!-- APPEND TASK BATCHES BELOW THIS LINE WITH edit/apply_patch - never rewrite the headers above. -->

- [ ] 1. Lock Gemini native-only constraints and stale-value regression tests

  What to do: Add or update focused unit/source-inspection tests so the current implementation fails when it accepts only the generic `jSf9Qc` fixture as proof of correctness. Tests must assert that Gemini remains about:blank native-only, that `ProviderNativeUsagePayloadFetcher` does not call Code Assist for Gemini, and that non-100% visible-page fixtures normalize to the exact expected remaining percentages.

  Must NOT do: Do not add tests that pass by accepting `600/600` and `12096/12096` as sufficient correctness. Do not add DOM fixture tests.

  Parallelization: Wave 1 | Blocked by: none | Blocks: 4, 5, 7

  References:
  - `android/app/src/main/java/com/aiquota/mobile/providers/ProviderAboutBlankCollectorPolicy.kt:5` - Gemini is allowlisted for about:blank native collection.
  - `android/app/src/main/java/com/aiquota/mobile/providers/ProviderNativeUsagePayloadFetcher.kt:44` - Gemini dispatch currently enters native fetcher path.
  - `android/app/src/main/java/com/aiquota/mobile/providers/ProviderNativeUsagePayloadFetcher.kt:170` - Gemini payload fetch wrapper.
  - `android/app/src/main/java/com/aiquota/mobile/providers/GeminiUsagePageNativeFetcher.kt:181` - current parser only extracts `jSf9Qc`.
  - `android/app/src/main/java/com/aiquota/mobile/providers/GeminiUsagePageNativeFetcher.kt:219` - current row parser hardcodes type `1` and `2`.
  - `android/app/src/test/java/com/aiquota/mobile/providers/ProviderNativeUsagePayloadFetcherTest.kt:13` - current source test already rejects Gemini Code Assist.
  - `android/app/src/test/java/com/aiquota/mobile/providers/ProviderNativeUsagePayloadFetcherTest.kt:23` - current fixture proves only old 100% `jSf9Qc` behavior.
  - `android/app/src/test/java/com/aiquota/mobile/providers/GeminiUsagePageNativeFetcherTest.kt:44` - account-scoped source-path coverage.

  Acceptance criteria:
  - [ ] `gradle -p android :app:testDebugUnitTest --tests "com.aiquota.mobile.providers.ProviderNativeUsagePayloadFetcherTest" --tests "com.aiquota.mobile.providers.GeminiUsagePageNativeFetcherTest"` exits 0 after implementation.
  - [ ] A fixture with used usage produces less than 100% remaining in normalized Gemini lines.
  - [ ] Source tests fail if `GoogleWebSessionCodeAssistFetcher.fetchUsagePayload(ProviderId.GEMINI)` is reintroduced.
  - [ ] Source tests fail if Gemini product collection depends on DOM strings such as `document.documentElement`, `innerText`, `querySelector`, or observed payload fallback symbols.

  QA scenarios:
  ```powershell
  Scenario: Gemini native fixture tests pass
    Tool:     PowerShell
    Steps:    gradle -p android :app:testDebugUnitTest --tests "com.aiquota.mobile.providers.ProviderNativeUsagePayloadFetcherTest" --tests "com.aiquota.mobile.providers.GeminiUsagePageNativeFetcherTest" *> .omo/evidence/task-1-gemini-native-usage-page-rpc-realignment.txt
    Expected: Gradle exits 0 and the new non-100% Gemini fixture passes.
    Evidence: .omo/evidence/task-1-gemini-native-usage-page-rpc-realignment.txt

  Scenario: forbidden Gemini collection paths stay absent
    Tool:     PowerShell
    Steps:    rg -n "GoogleWebSessionCodeAssistFetcher\.fetchUsagePayload\(ProviderId\.GEMINI\)|postGeminiObservedPayload|installGeminiNetworkHook|SAGE_USAGE_EXTRACTOR\.buildGeminiUsagePayload|GeminiUsagePageRpcSession\.captureScript" android/app/src/main/java android/app/src/test *> .omo/evidence/task-1-gemini-native-usage-page-rpc-realignment-forbidden.txt
    Expected: No production Gemini fallback path is present; any test-only mentions are negative assertions.
    Evidence: .omo/evidence/task-1-gemini-native-usage-page-rpc-realignment-forbidden.txt
  ```

  Commit: YES | `test(provider): Gemini 사용량 회귀 기준 강화`

- [ ] 2. Add sanitized native usage-page RPC discovery

  What to do: Extend `GeminiUsagePageNativeFetcher` with a debug-safe discovery mode that runs from the same native HTTP path as production. It should inspect the usage-page HTML/bootstrap and native RPC responses enough to list candidate RPC ids, endpoint path, status, response byte length, parsed top-level shapes, labels, row counts, and numeric quota summaries. Add unit tests for redaction and shape extraction.

  Must NOT do: Do not log raw HTML, raw RPC bodies, cookies, headers, tokens, account ids, emails, or full URLs with query secrets. Do not rely on DOM, WebView DevTools, or page JavaScript hooks for product collection.

  Parallelization: Wave 1 | Blocked by: none | Blocks: 3, 4

  References:
  - `android/app/src/main/java/com/aiquota/mobile/providers/GeminiUsagePageNativeFetcher.kt:93` - native HTML GET for usage-page params.
  - `android/app/src/main/java/com/aiquota/mobile/providers/GeminiUsagePageNativeFetcher.kt:124` - `WIZ_global_data` parser for `SNlM0e`, `FdrFJe`, `cfb2h`, and `hl`.
  - `android/app/src/main/java/com/aiquota/mobile/providers/GeminiUsagePageNativeFetcher.kt:249` - current batchExecute URL construction.
  - `android/app/src/main/java/com/aiquota/mobile/providers/GeminiUsagePageRoutes.kt:25` - canonical usage URL handling.
  - `.omo/evidence/gemini-refresh-diagnosis-20260701-093947.log:410` - current HTML fetch returns about 798 KB.
  - `.omo/evidence/gemini-refresh-diagnosis-20260701-093947.log:413` - current RPC response is only about 225 bytes.

  Acceptance criteria:
  - [ ] Discovery logs include `provider=gemini`, `usagePath`, `rpcId`, `status`, `payloadBytes`, `rowCount`, and sanitized numeric quota summaries.
  - [ ] Discovery logs do not contain cookie names/values, auth header values, account emails, or raw payload lines.
  - [ ] Discovery code is only diagnostic; production success must still depend on parsed native payload and `ProviderUsageNormalizer`.

  QA scenarios:
  ```powershell
  Scenario: redaction tests pass
    Tool:     PowerShell
    Steps:    gradle -p android :app:testDebugUnitTest --tests "com.aiquota.mobile.providers.GeminiUsagePageNativeFetcherTest" *> .omo/evidence/task-2-gemini-native-usage-page-rpc-realignment.txt
    Expected: Tests prove diagnostics are metadata-only.
    Evidence: .omo/evidence/task-2-gemini-native-usage-page-rpc-realignment.txt

  Scenario: discovery output has only metadata
    Tool:     PowerShell
    Steps:    adb logcat -d | rg "AIQuotaGeminiUsageRpc|geminiUsageDiscovery" > .omo/evidence/task-2-gemini-native-usage-page-rpc-realignment-log-sample.txt
    Expected: Lines contain RPC metadata but no raw cookies, raw request bodies, raw response bodies, emails, or tokens.
    Evidence: .omo/evidence/task-2-gemini-native-usage-page-rpc-realignment-log-sample.txt
  ```

  Commit: YES | `feat(provider): Gemini 사용량 RPC 진단 추가`

- [ ] 3. Capture current live mismatch evidence without cookie reinjection

  What to do: Build and install with `adb install -r`, preserve app data, run Gemini-only provider reset/refresh, and capture a 210-second logcat. If the current session is valid, also capture a reference screenshot or user-visible value transcription from the Gemini usage page for comparison. Record whether the current native result is still the generic 100% `jSf9Qc` output.

  Must NOT do: Do not run `adb shell pm clear`. Do not push or restore saved Gemini cookies. Do not collect product usage from DOM. The visible page reference is QA evidence only.

  Parallelization: Wave 1 | Blocked by: 2 | Blocks: 4, 8

  References:
  - `android/app/src/main/java/com/aiquota/mobile/providers/WebLoginActivity.kt:677` - login flow switches Gemini usage page to about:blank native collection.
  - `android/app/src/main/java/com/aiquota/mobile/providers/WebLoginActivity.kt:690` - canonical usage URL is saved before about:blank load.
  - `android/app/src/main/java/com/aiquota/mobile/providers/ProviderScopedStateRepository.kt:73` - saved Gemini usage URL.
  - `android/app/src/main/java/com/aiquota/mobile/providers/ProviderScopedStateRepository.kt:82` - background refresh reads saved Gemini usage URL.
  - `.omo/evidence/gemini-refresh-diagnosis-20260701-093947.log:414` - current native usage returns ok=true despite mismatch.
  - `.omo/evidence/gemini-refresh-diagnosis-20260701-093947.log:417` - current result saves two lines.

  Acceptance criteria:
  - [ ] Evidence file includes install command result, reset/refresh broadcast result, logcat path, visible-page reference values, and app-saved values.
  - [ ] Evidence explicitly states whether the app value differs from the usage page value.
  - [ ] Evidence includes no raw cookie/header/token/account values.

  QA scenarios:
  ```powershell
  Scenario: current mismatch is reproduced
    Tool:     PowerShell
    Steps:    gradle -p android :app:assembleDebug; adb install -r android/app/build/outputs/apk/debug/app-debug.apk; adb logcat -c; adb shell am broadcast -a com.aiquota.mobile.debug.RESET_PROVIDER --es provider_id gemini; adb shell am broadcast -a com.aiquota.mobile.debug.REFRESH_PROVIDER --es provider_id gemini; Start-Sleep -Seconds 210; adb logcat -d > .omo/evidence/task-3-gemini-native-usage-page-rpc-realignment.log
    Expected: Log shows Gemini about:blank native collection and records the current mismatch or confirms it is resolved before implementation.
    Evidence: .omo/evidence/task-3-gemini-native-usage-page-rpc-realignment.log

  Scenario: QA used no cookie restore
    Tool:     PowerShell
    Steps:    rg -n "debugCookieRestore=true.*provider=gemini|source=external.*provider=gemini" .omo/evidence/task-3-gemini-native-usage-page-rpc-realignment.log > .omo/evidence/task-3-gemini-native-usage-page-rpc-realignment-cookie-restore.txt
    Expected: No Gemini external cookie restore appears.
    Evidence: .omo/evidence/task-3-gemini-native-usage-page-rpc-realignment-cookie-restore.txt
  ```

  Commit: NO | evidence-only task

- [ ] 4. Implement the actual Gemini usage-page native RPC call

  What to do: Based on Todo 3 discovery, update `GeminiUsagePageNativeFetcher` so it calls the RPC id or RPC sequence that matches the visible usage page. Keep request construction native: GET usage page for session params, POST batchExecute with cookies/user-agent/referer/source-path from the WebView session, parse the native response, and return a compact provider payload. Prefer a small explicit parser for the confirmed RPC shape over broad recursive scraping.

  Must NOT do: Do not fall back to `jSf9Qc` if the real RPC fails unless evidence proves `jSf9Qc` is the real visible-page payload for that account. Do not return stale `600/600` or `12096/12096` as success when the actual usage-page payload is unavailable.

  Parallelization: Wave 2 | Blocked by: 1, 2, 3 | Blocks: 5, 7, 8

  References:
  - `android/app/src/main/java/com/aiquota/mobile/providers/GeminiUsagePageNativeFetcher.kt:22` - main entrypoint to preserve.
  - `android/app/src/main/java/com/aiquota/mobile/providers/GeminiUsagePageNativeFetcher.kt:38` - current single batchExecute endpoint call.
  - `android/app/src/main/java/com/aiquota/mobile/providers/GeminiUsagePageNativeFetcher.kt:41` - current request body always sends `jSf9Qc`.
  - `android/app/src/main/java/com/aiquota/mobile/providers/GeminiUsagePageNativeFetcher.kt:66` - current RPC status logging.
  - `android/app/src/main/java/com/aiquota/mobile/providers/GeminiUsagePageNativeFetcher.kt:191` - current response payload finder.
  - `android/app/src/main/java/com/aiquota/mobile/providers/GeminiUsagePageNativeFetcher.kt:249` - current source-path URL builder.

  Acceptance criteria:
  - [ ] Native fetcher calls the discovered real usage-page RPC id or RPC sequence.
  - [ ] If the RPC payload does not contain trustworthy quota data, `fetchUsagePayload` returns `payload=null` with a diagnostic such as `gemini_usage_page_rpc_unavailable`, not stale/fake usage.
  - [ ] Unit tests cover the discovered response shape and at least one failure shape.
  - [ ] `collectorMode` remains `native-usage-page-rpc`.

  QA scenarios:
  ```powershell
  Scenario: actual usage-page RPC fixture parses
    Tool:     PowerShell
    Steps:    gradle -p android :app:testDebugUnitTest --tests "com.aiquota.mobile.providers.GeminiUsagePageNativeFetcherTest" *> .omo/evidence/task-4-gemini-native-usage-page-rpc-realignment.txt
    Expected: Tests prove the real sanitized RPC fixture parses into expected quota lines.
    Evidence: .omo/evidence/task-4-gemini-native-usage-page-rpc-realignment.txt

  Scenario: missing quota fails closed
    Tool:     PowerShell
    Steps:    gradle -p android :app:testDebugUnitTest --tests "com.aiquota.mobile.providers.GeminiUsagePageNativeFetcherTest" *> .omo/evidence/task-4-gemini-native-usage-page-rpc-realignment-failure.txt
    Expected: Missing or irrelevant RPC payload returns unavailable diagnostic and no payload.
    Evidence: .omo/evidence/task-4-gemini-native-usage-page-rpc-realignment-failure.txt
  ```

  Commit: YES | `fix(provider): Gemini 사용량 페이지 RPC 수집 보정`

- [ ] 5. Normalize actual Gemini usage values as remaining percentages

  What to do: Update `ProviderUsageNormalizer.normalizeGemini(...)` only as needed so the compact native payload from Todo 4 becomes visible lines with remaining percentages. Preserve labels from the usage page when possible. Compute `remainingPercent` from explicit remaining percent, remaining fraction, or remaining/limit amounts; reject ambiguous rows instead of manufacturing 100%.

  Must NOT do: Do not add a default 100% value when usage data is incomplete. Do not classify a parser failure as successful current usage.

  Parallelization: Wave 2 | Blocked by: 1, 4 | Blocks: 7, 8

  References:
  - `android/app/src/main/java/com/aiquota/mobile/providers/ProviderUsageNormalizer.kt:630` - Gemini normalizer entrypoint.
  - `android/app/src/main/java/com/aiquota/mobile/providers/ProviderUsageNormalizer.kt:634` - current compact usage array source.
  - `android/app/src/main/java/com/aiquota/mobile/providers/ProviderUsageNormalizer.kt:659` - usage-page line conversion.
  - `android/app/src/main/java/com/aiquota/mobile/providers/ProviderUsageNormalizer.kt:668` - remaining percent field detection.
  - `android/app/src/main/java/com/aiquota/mobile/providers/ProviderUsageNormalizer.kt:680` - current remaining/limit percent calculation.
  - `android/app/src/main/java/com/aiquota/mobile/providers/ProviderUsageNormalizer.kt:692` - Code Assist fallback normalization must not become the Gemini web-login collection path.

  Acceptance criteria:
  - [ ] Non-100% Gemini fixture normalizes to exact expected `remainingPercent` values.
  - [ ] Ambiguous or missing Gemini quota rows are rejected and do not produce trusted lines.
  - [ ] Existing Claude, Codex, and Copilot normalization tests still pass.

  QA scenarios:
  ```powershell
  Scenario: Gemini normalization handles actual usage-page values
    Tool:     PowerShell
    Steps:    gradle -p android :app:testDebugUnitTest --tests "com.aiquota.mobile.providers.ProviderUsageNormalizerTest" *> .omo/evidence/task-5-gemini-native-usage-page-rpc-realignment.txt
    Expected: Gemini remaining percentages match fixture values and no default 100% is produced.
    Evidence: .omo/evidence/task-5-gemini-native-usage-page-rpc-realignment.txt

  Scenario: no stale usage masquerades as success
    Tool:     PowerShell
    Steps:    gradle -p android :app:testDebugUnitTest --tests "com.aiquota.mobile.providers.ProviderNativeUsagePayloadFetcherTest" *> .omo/evidence/task-5-gemini-native-usage-page-rpc-realignment-failure.txt
    Expected: Invalid Gemini native payload produces unavailable diagnostic rather than saved usage lines.
    Evidence: .omo/evidence/task-5-gemini-native-usage-page-rpc-realignment-failure.txt
  ```

  Commit: YES | `fix(provider): Gemini 남은 사용량 비율 정규화`

- [ ] 6. Preserve Gemini web-login bridge routing and remove stale saved-cookie assumptions

  What to do: Review and update only the routing/guardrail pieces needed for Gemini first collection and background refresh. Keep `AccountChooser` web login, canonical `/u/{n}/usage` persistence, about:blank transition, and background bridge URL propagation. Ensure Gemini debug QA does not rely on external cookie restore files.

  Must NOT do: Do not restore the old Gemini CLI OAuth screen. Do not reintroduce saved Gemini cookie injection. Do not clear foreground service or battery optimization settings.

  Parallelization: Wave 2 | Blocked by: 1 | Blocks: 7, 8

  References:
  - `android/app/src/main/java/com/aiquota/mobile/providers/ProviderDefinitions.kt:119` - Gemini provider definition.
  - `android/app/src/main/java/com/aiquota/mobile/providers/ProviderDefinitions.kt:120` - current Google AccountChooser login URL.
  - `android/app/src/main/java/com/aiquota/mobile/providers/ProviderDefinitions.kt:139` - preferred usage endpoint.
  - `android/app/src/main/java/com/aiquota/mobile/providers/WebLoginActivity.kt:677` - Gemini usage page triggers native collection.
  - `android/app/src/main/java/com/aiquota/mobile/providers/WebLoginActivity.kt:691` - native usage page URL saved for bridge.
  - `android/app/src/main/java/com/aiquota/mobile/providers/WebLoginActivity.kt:1071` - native bridge page URL selection.
  - `android/app/src/main/java/com/aiquota/mobile/providers/ProviderScopedStateRepository.kt:73` - Gemini usage URL storage.

  Acceptance criteria:
  - [ ] Gemini connect button opens Google/Gemini web login, not CLI OAuth.
  - [ ] After successful login to `/usage` or `/u/{n}/usage`, WebView transitions to about:blank and native collection starts.
  - [ ] Background refresh passes the saved canonical usage URL into `ProviderNativeUsagePayloadFetcher`.
  - [ ] No Gemini external cookie restore is needed or used in QA.

  QA scenarios:
  ```powershell
  Scenario: Gemini login route is web login
    Tool:     PowerShell
    Steps:    gradle -p android :app:testDebugUnitTest --tests "com.aiquota.mobile.providers.ProviderDefinitionRegistryTest" --tests "com.aiquota.mobile.providers.ProviderLoginUrlRewriterTest" *> .omo/evidence/task-6-gemini-native-usage-page-rpc-realignment.txt
    Expected: Tests show Gemini login starts from Google AccountChooser and remains WebView-based.
    Evidence: .omo/evidence/task-6-gemini-native-usage-page-rpc-realignment.txt

  Scenario: about:blank transition is preserved
    Tool:     PowerShell
    Steps:    gradle -p android :app:testDebugUnitTest --tests "com.aiquota.mobile.providers.WebLoginActivityNativeBridgeTest" --tests "com.aiquota.mobile.providers.GeminiUsagePageRoutesTest" *> .omo/evidence/task-6-gemini-native-usage-page-rpc-realignment-bridge.txt
    Expected: Tests confirm account-scoped usage URL and native bridge routing.
    Evidence: .omo/evidence/task-6-gemini-native-usage-page-rpc-realignment-bridge.txt
  ```

  Commit: YES | `fix(provider): Gemini 웹 로그인 수집 경로 유지`

- [ ] 7. Run focused and full verification

  What to do: Run all focused provider tests touched by the implementation, then the full debug unit test suite and debug build.

  Must NOT do: Do not skip full tests because focused tests pass. Do not use stale logs from before the implementation as proof.

  Parallelization: Wave 3 | Blocked by: 4, 5, 6 | Blocks: 8, 9

  References:
  - `android/app/src/test/java/com/aiquota/mobile/providers/GeminiUsagePageNativeFetcherTest.kt:9` - native fetcher tests.
  - `android/app/src/test/java/com/aiquota/mobile/providers/ProviderNativeUsagePayloadFetcherTest.kt:12` - native bridge tests.
  - `android/app/src/test/java/com/aiquota/mobile/providers/GeminiUsagePageRoutesTest.kt:8` - account route tests.
  - `android/app/src/main/java/com/aiquota/mobile/providers/ProviderUsageNormalizer.kt:630` - normalizer surface likely touched.

  Acceptance criteria:
  - [ ] `gradle -p android :app:testDebugUnitTest` exits 0.
  - [ ] `gradle -p android :app:assembleDebug` exits 0.
  - [ ] `git diff --check` exits 0 except pre-existing CRLF warnings if any are documented.

  QA scenarios:
  ```powershell
  Scenario: full unit suite passes
    Tool:     PowerShell
    Steps:    gradle -p android :app:testDebugUnitTest *> .omo/evidence/task-7-gemini-native-usage-page-rpc-realignment-test.txt
    Expected: Build successful and no unit tests fail.
    Evidence: .omo/evidence/task-7-gemini-native-usage-page-rpc-realignment-test.txt

  Scenario: debug APK builds
    Tool:     PowerShell
    Steps:    gradle -p android :app:assembleDebug *> .omo/evidence/task-7-gemini-native-usage-page-rpc-realignment-build.txt; git diff --check *> .omo/evidence/task-7-gemini-native-usage-page-rpc-realignment-diffcheck.txt
    Expected: APK exists at `android/app/build/outputs/apk/debug/app-debug.apk`; diff check has no new whitespace errors.
    Evidence: .omo/evidence/task-7-gemini-native-usage-page-rpc-realignment-build.txt and .omo/evidence/task-7-gemini-native-usage-page-rpc-realignment-diffcheck.txt
  ```

  Commit: NO | verification-only task

- [ ] 8. Run Gemini device QA against visible usage values for at least 3 minutes

  What to do: Install with `adb install -r`, preserve data, run Gemini-only reset/refresh, and capture 210 seconds of logcat. Compare the app-saved Gemini lines against the visible Gemini usage page reference values. Confirm initial collection and refresh both use about:blank native RPC and no DOM/fallback.

  Must NOT do: Do not clear app data. Do not use saved cookie injection. Do not accept `nativeUsage ok=true` alone as sufficient if the values differ from the visible page.

  Parallelization: Wave 3 | Blocked by: 7 | Blocks: 9

  References:
  - `.omo/evidence/gemini-refresh-diagnosis-20260701-093947.log:410` - prior native HTML fetch success.
  - `.omo/evidence/gemini-refresh-diagnosis-20260701-093947.log:413` - prior small RPC response.
  - `.omo/evidence/gemini-refresh-diagnosis-20260701-093947.log:414` - prior ok=true was insufficient.
  - `.omo/evidence/gemini-refresh-diagnosis-20260701-093947.log:417` - prior lineCount=2 was insufficient.

  Acceptance criteria:
  - [ ] Log contains `provider=gemini nativeCollectorStart=aboutblank` for first collection when login flow is exercised.
  - [ ] Log contains `nativeUsage provider=gemini ok=true diagnostic=ok`.
  - [ ] Log contains `collectorMode=native-usage-page-rpc`.
  - [ ] App-saved remaining percentages match the visible usage page reference.
  - [ ] Refresh runs for at least 210 seconds and updates/retains the same correct values without user intervention while the session is valid.
  - [ ] No log/source evidence of Gemini DOM collection or fallback collection appears.

  QA scenarios:
  ```powershell
  Scenario: Gemini native collection matches visible page
    Tool:     PowerShell
    Steps:    adb install -r android/app/build/outputs/apk/debug/app-debug.apk; adb logcat -c; adb shell am broadcast -a com.aiquota.mobile.debug.RESET_PROVIDER --es provider_id gemini; adb shell am broadcast -a com.aiquota.mobile.debug.REFRESH_PROVIDER --es provider_id gemini; Start-Sleep -Seconds 210; adb logcat -d > .omo/evidence/task-8-gemini-native-usage-page-rpc-realignment.log
    Expected: Gemini saves trusted usage values matching visible page remaining percentages.
    Evidence: .omo/evidence/task-8-gemini-native-usage-page-rpc-realignment.log plus .omo/evidence/task-8-gemini-native-usage-page-rpc-realignment-visible-reference.txt

  Scenario: no DOM or fallback was used
    Tool:     PowerShell
    Steps:    rg -n "provider=gemini.*(fallback|observed|DOM|document|querySelector|innerText|debugCookieRestore=true|source=external)" .omo/evidence/task-8-gemini-native-usage-page-rpc-realignment.log > .omo/evidence/task-8-gemini-native-usage-page-rpc-realignment-no-dom.txt
    Expected: No Gemini DOM/fallback/external-cookie restore usage path appears. Any unrelated browser internals are documented and excluded only if they are not app collector logs.
    Evidence: .omo/evidence/task-8-gemini-native-usage-page-rpc-realignment-no-dom.txt
  ```

  Commit: NO | QA-only task

- [ ] 9. Final audit, commit, and push

  What to do: Review changed files, ensure plan constraints are met, stage only relevant files, commit with a Korean Conventional Commit message based on the actual diff, and push branch `25version-code`.

  Must NOT do: Do not stage raw logs containing secrets. Do not stage unrelated untracked evidence unless it is part of this task and sanitized. Do not rewrite unrelated user changes.

  Parallelization: Wave 3 | Blocked by: 8 | Blocks: none

  References:
  - `git status --short --branch` - confirm current branch and dirty set.
  - `.omo/evidence/task-7-gemini-native-usage-page-rpc-realignment-test.txt` - full test evidence.
  - `.omo/evidence/task-8-gemini-native-usage-page-rpc-realignment.log` - device QA evidence.

  Acceptance criteria:
  - [ ] `git status --short --branch` is reviewed before staging.
  - [ ] Commit includes only source/test/plan files relevant to Gemini native usage correction and sanitized evidence if intentionally tracked.
  - [ ] `git push origin 25version-code` succeeds.

  QA scenarios:
  ```powershell
  Scenario: final diff is scoped
    Tool:     PowerShell
    Steps:    git status --short --branch > .omo/evidence/task-9-gemini-native-usage-page-rpc-realignment-status.txt; git diff --stat > .omo/evidence/task-9-gemini-native-usage-page-rpc-realignment-diffstat.txt
    Expected: Diff contains only Gemini native usage, route/bridge guardrail, tests, and plan/evidence files for this task.
    Evidence: .omo/evidence/task-9-gemini-native-usage-page-rpc-realignment-status.txt and .omo/evidence/task-9-gemini-native-usage-page-rpc-realignment-diffstat.txt

  Scenario: push succeeds
    Tool:     PowerShell
    Steps:    git push origin 25version-code *> .omo/evidence/task-9-gemini-native-usage-page-rpc-realignment-push.txt
    Expected: Push exits 0.
    Evidence: .omo/evidence/task-9-gemini-native-usage-page-rpc-realignment-push.txt
  ```

  Commit: YES | actual message must be based on final diff, likely `fix(provider): Gemini 사용량 페이지 수집값 보정`

## Final verification wave
> Runs in parallel after ALL todos. ALL must APPROVE. Surface results and wait for the user's explicit okay before declaring complete.
- [ ] F1. Plan compliance audit: confirm every implemented change traces to this plan, Gemini remains about:blank native-only, and no old Code Assist/cookie-restore plan was executed.
- [ ] F2. Code quality review: review `GeminiUsagePageNativeFetcher`, `ProviderNativeUsagePayloadFetcher`, `ProviderUsageNormalizer`, and route/bridge tests for overbroad parsing, stale data success, and secret logging.
- [ ] F3. Real manual QA: review device evidence for first collection, 210-second refresh, visible-page value match, and absence of Gemini DOM/fallback/external-cookie restore.
- [ ] F4. Scope fidelity: confirm Claude, Codex, and Copilot paths were not changed except shared tests/guardrails, and Gemini login remains web login.

## Commit strategy
- Commit after meaningful implementation slices if the execution is long:
  - `test(provider): Gemini 사용량 회귀 기준 강화`
  - `feat(provider): Gemini 사용량 RPC 진단 추가`
  - `fix(provider): Gemini 사용량 페이지 수집값 보정`
  - `fix(provider): Gemini 웹 로그인 수집 경로 유지`
- Final commit message must follow repository instructions and be based only on the actual diff.
- Push each completed implementation task to `origin/25version-code` when its tests pass, matching the user's standing instruction.
- Do not commit raw private cookies, raw RPC bodies, raw HTML, or unsanitized logcat.

## Success criteria
- Gemini login opens a web Google/Gemini account flow, not CLI OAuth.
- Gemini first collection and background refresh both run through about:blank native JS bridge.
- Gemini native fetcher uses native HTTP/RPC calls from the WebView session and source-path, not DOM.
- Stored Gemini usage percentages match the visible Gemini usage page after actual usage decreases.
- If native RPC data is unavailable or ambiguous, app reports an unavailable diagnostic instead of stale/fake usage.
- Unit tests and debug build pass.
- Device QA passes for initial collection and at least 210 seconds of refresh.
- Source and logs show no Gemini DOM collection, fallback collection, Code Assist replacement, or saved-cookie reinjection.
- Relevant changes are committed and pushed to `25version-code`.
