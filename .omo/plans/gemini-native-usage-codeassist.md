# Gemini Native Usage Code Assist

## TL;DR
> Summary:      Route Gemini usage collection through the existing about:blank native JS bridge and `GoogleWebSessionCodeAssistFetcher` Code Assist calls, then remove the old Gemini usage-page/DOM/text fallbacks.
> Deliverables:
> - Gemini native payload fetch uses `loadCodeAssist` + `retrieveUserQuota` from WebView session cookies only.
> - Gemini collector script posts only about:blank native bridge payloads and fails closed when unavailable.
> - Old Gemini usage page HTML/text parsing and DOM/network-row fallback assertions are inverted or preserved if already inverted.
> - Real-device QA evidence using `.omo/private/provider-session-cookies/gemini.json`.
> Effort:       Short
> Risk:         Medium - Code Assist cookie/API behavior is live-service dependent and the worktree is already dirty.

## Scope
### Must have
- Change `android/app/src/main/java/com/aiquota/mobile/providers/ProviderNativeUsagePayloadFetcher.kt` so `ProviderId.GEMINI` delegates to `GoogleWebSessionCodeAssistFetcher.fetchUsagePayload(ProviderId.GEMINI)` and bridges that result.
- Remove or make unreachable Gemini-specific `https://gemini.google.com/usage`, `rawText`, HTML, visible text, and script-JSON parsing from `ProviderNativeUsagePayloadFetcher.kt`.
- Change `android/app/src/main/java/com/aiquota/mobile/providers/ProviderWebCollectorScripts.kt` so Gemini collection only runs on `about:blank`, calls `postGeminiNativePayload`, and then posts payload or fails with `gemini_no_trusted_payload`.
- Remove Gemini fallback to `installGeminiNetworkHook`, `clickGeminiSetupSkip`, `postGeminiObservedPayload`, `c.rows()`, page text, `SAGE_USAGE_EXTRACTOR.buildGeminiUsagePayload`, and DOM/network rows.
- Keep existing structured quota normalization through `ProviderUsageNormalizer.normalizeGemini(...)`, especially Code Assist `limits`/`quotaBuckets` support.
- Update or preserve tests in `ProviderNativeUsagePayloadFetcherTest`, `ProviderWebCollectorScriptsTest`, `GoogleProviderWebViewFirstCollectionTest`, and `WebLoginActivityNativeBridgeTest` so they assert no Gemini DOM/page fallback.
- Capture real-device or emulator evidence under `.omo/evidence/task-6-gemini-native-usage-codeassist-real-device.txt` using saved Gemini cookies from `.omo/private/provider-session-cookies/gemini.json`.

### Must NOT have (guardrails, anti-slop, scope boundaries)
- No CodeGraph.
- No DOM collection for Gemini.
- No fallback collection for Gemini from `https://gemini.google.com/usage`, WebView visible text, network rows, page-state rows, or `gemini_collector.js`.
- No fake, hardcoded, or stale Gemini usage values.
- No user-facing stale usage presented as trusted current usage.
- No changes to unrelated providers except shared code touched only to keep Gemini/about:blank behavior consistent.
- No printing or committing raw cookie values from `.omo/private/provider-session-cookies/*.json`.
- Do not revert unrelated dirty worktree changes; current dirty files include provider/debug changes outside this narrow fix.

## Verification strategy
> Zero human intervention - all verification is agent-executed.
- Test decision: TDD + Android/JUnit unit tests, then debug-device QA.
- QA policy: every task has agent-executed scenarios.
- Evidence: `.omo/evidence/task-<N>-gemini-native-usage-codeassist.<ext>`

## Execution strategy
### Parallel execution waves
> Target 5-8 tasks per wave. <3 per wave (except final) = under-splitting.
> Extract shared dependencies as Wave-1 tasks to maximize parallelism.

Wave 1 (no dependencies):
- Task 1: Lock Gemini native bridge tests against page/text fallback.
- Task 2: Lock Gemini collector script tests against DOM/network fallback.
- Task 3: Verify existing Code Assist normalization and cookie contract tests.

Wave 2 (after Wave 1):
- Task 4: Replace Gemini native fetcher implementation with Code Assist session fetch.
- Task 5: Simplify Gemini WebView collector to about:blank native-only fail-closed behavior.

Wave 3 (after Wave 2):
- Task 6: Run real-device saved-cookie QA and final focused verification.

Critical path: Task 1 -> Task 4 -> Task 6

### Dependency matrix
| Task | Depends on | Blocks | Can parallelize with |
|------|------------|--------|----------------------|
| 1    | none       | 4, 6   | 2, 3                 |
| 2    | none       | 5, 6   | 1, 3                 |
| 3    | none       | 4, 6   | 1, 2                 |
| 4    | 1, 3       | 6      | 5                    |
| 5    | 2          | 6      | 4                    |
| 6    | 4, 5       | none   | none                 |

## Todos
> Implementation + Test = ONE task. Never separate.
> Every task MUST have: References + Acceptance Criteria + QA Scenarios + Commit.

- [ ] 1. Lock Gemini native bridge tests against page/text fallback

  What to do: Update `ProviderNativeUsagePayloadFetcherTest` only as needed. The current dirty tree already has desired assertions at `android/app/src/test/java/com/aiquota/mobile/providers/ProviderNativeUsagePayloadFetcherTest.kt:13`; if the executor's branch differs, invert the old tests that expected `geminiUsagePayloadFromRawForTest` or `geminiNativePayloadParsesUsagePageTextWithoutDomFallback`. The test must require `GoogleWebSessionCodeAssistFetcher.fetchUsagePayload(ProviderId.GEMINI)` inside `fetchGeminiPayload` and reject `GEMINI_USAGE_URL`, `geminiUsagePayloadFromRaw`, `geminiUsagePayloadFromText`, and `MAX_GEMINI_HTML_SCAN_CHARS`.
  Must NOT do: Do not keep any passing test that proves Gemini HTML/text parsing still works.

  Parallelization: Can parallel: YES | Wave 1 | Blocks: [4, 6] | Blocked by: []

  References (executor has NO interview context - be exhaustive):
  - Pattern:  `android/app/src/test/java/com/aiquota/mobile/providers/ProviderNativeUsagePayloadFetcherTest.kt:13` - desired source-inspection test shape already present in dirty tree.
  - Pattern:  `android/app/src/main/java/com/aiquota/mobile/providers/ProviderNativeUsagePayloadFetcher.kt:158` - current `fetchGeminiPayload` still fetches `GEMINI_USAGE_URL`.
  - Pattern:  `android/app/src/main/java/com/aiquota/mobile/providers/ProviderNativeUsagePayloadFetcher.kt:260` - old `geminiUsagePayloadFromRawForTest` test helper must disappear.
  - Pattern:  `android/app/src/main/java/com/aiquota/mobile/providers/ProviderNativeUsagePayloadFetcher.kt:264` - old raw HTML/text parser entrypoint must disappear.
  - Pattern:  `android/app/src/main/java/com/aiquota/mobile/providers/ProviderNativeUsagePayloadFetcher.kt:709` - old Gemini HTML scan limit must disappear.
  - Test:     `android/app/src/test/java/com/aiquota/mobile/providers/GoogleWebSessionCodeAssistFetcherTest.kt:46` - existing Code Assist allowed-method tests.
  - External: `https://developer.android.com/reference/android/webkit/JavascriptInterface` - native bridge methods are exposed through explicit Android JS interface methods.

  Acceptance criteria (agent-executable only):
  - [ ] `cd android; .\gradlew.bat :app:testDebugUnitTest --tests "com.aiquota.mobile.providers.ProviderNativeUsagePayloadFetcherTest"` exits 0 after production changes.
  - [ ] `rg -n "geminiUsagePayloadFromRawForTest|geminiUsagePayloadFromText|MAX_GEMINI_HTML_SCAN_CHARS|GEMINI_USAGE_URL" android/app/src/main/java/com/aiquota/mobile/providers/ProviderNativeUsagePayloadFetcher.kt` returns no matches.

  QA scenarios (MANDATORY - task incomplete without these):
  ```
  Scenario: focused native bridge tests pass
    Tool:     bash
    Steps:    cd android && ./gradlew :app:testDebugUnitTest --tests "com.aiquota.mobile.providers.ProviderNativeUsagePayloadFetcherTest" | tee ../.omo/evidence/task-1-gemini-native-usage-codeassist.txt
    Expected: Gradle exits 0 and the output includes ProviderNativeUsagePayloadFetcherTest with no failed tests.
    Evidence: .omo/evidence/task-1-gemini-native-usage-codeassist.txt

  Scenario: old Gemini page parser symbols are absent
    Tool:     bash
    Steps:    ! rg -n "geminiUsagePayloadFromRawForTest|geminiUsagePayloadFromText|MAX_GEMINI_HTML_SCAN_CHARS|GEMINI_USAGE_URL" android/app/src/main/java/com/aiquota/mobile/providers/ProviderNativeUsagePayloadFetcher.kt | tee .omo/evidence/task-1-gemini-native-usage-codeassist-error.txt
    Expected: Command exits 0 because rg finds no forbidden symbols.
    Evidence: .omo/evidence/task-1-gemini-native-usage-codeassist-error.txt
  ```

  Commit: YES | Message: `test(gemini): lock native usage bridge against page fallback` | Files: [`android/app/src/test/java/com/aiquota/mobile/providers/ProviderNativeUsagePayloadFetcherTest.kt`]

- [ ] 2. Lock Gemini collector script tests against DOM/network fallback

  What to do: Update `ProviderWebCollectorScriptsTest` and any overlapping source-inspection tests so Gemini collector output is allowed to use `fetchNativeUsagePayload` only on `about:blank`, and the generated Gemini script no longer contains fallback functions or symbols. Existing dirty-tree test coverage at `ProviderNativeUsagePayloadFetcherTest.kt:33` and `ProviderWebCollectorScriptsTest.kt:107` already checks part of this; preserve or strengthen it.
  Must NOT do: Do not assert that Gemini still runs on `https://gemini.google.com/usage` as a DOM collector.

  Parallelization: Can parallel: YES | Wave 1 | Blocks: [5, 6] | Blocked by: []

  References (executor has NO interview context - be exhaustive):
  - Pattern:  `android/app/src/main/java/com/aiquota/mobile/providers/ProviderWebCollectorScripts.kt:117` - `about:blank` allowlist gate for native providers.
  - Pattern:  `android/app/src/main/java/com/aiquota/mobile/providers/ProviderWebCollectorScripts.kt:170` - current Gemini collector readiness still allows `gemini.google.com` app/usage pages.
  - Pattern:  `android/app/src/main/java/com/aiquota/mobile/providers/ProviderWebCollectorScripts.kt:2386` - desired `postGeminiNativePayload` entrypoint.
  - Pattern:  `android/app/src/main/java/com/aiquota/mobile/providers/ProviderWebCollectorScripts.kt:2398` - forbidden `postGeminiObservedPayload` fallback.
  - Pattern:  `android/app/src/main/java/com/aiquota/mobile/providers/ProviderWebCollectorScripts.kt:2444` - current fallback control flow to remove.
  - Test:     `android/app/src/test/java/com/aiquota/mobile/providers/ProviderWebCollectorScriptsTest.kt:107` - source-inspection test for native-only scoped providers.
  - Test:     `android/app/src/test/java/com/aiquota/mobile/providers/ProviderNativeUsagePayloadFetcherTest.kt:33` - dirty-tree Gemini about:blank no-fallback assertion.
  - External: `https://developer.android.com/develop/ui/views/layout/webapps/webview#BindingJavaScript` - WebView bridge binding reference; use only the bridge, not DOM scraping.

  Acceptance criteria (agent-executable only):
  - [ ] `cd android; .\gradlew.bat :app:testDebugUnitTest --tests "com.aiquota.mobile.providers.ProviderWebCollectorScriptsTest"` exits 0.
  - [ ] Generated Gemini script contains `fetchNativeUsagePayload` and does not contain `postGeminiObservedPayload`, `clickGeminiSetupSkip`, `installGeminiNetworkHook`, `SAGE_USAGE_EXTRACTOR.buildGeminiUsagePayload`, or `c.rows()`.

  QA scenarios (MANDATORY - task incomplete without these):
  ```
  Scenario: collector script tests pass
    Tool:     bash
    Steps:    cd android && ./gradlew :app:testDebugUnitTest --tests "com.aiquota.mobile.providers.ProviderWebCollectorScriptsTest" | tee ../.omo/evidence/task-2-gemini-native-usage-codeassist.txt
    Expected: Gradle exits 0 and ProviderWebCollectorScriptsTest has no failures.
    Evidence: .omo/evidence/task-2-gemini-native-usage-codeassist.txt

  Scenario: forbidden Gemini fallback symbols are absent from generated script source
    Tool:     bash
    Steps:    ! rg -n "postGeminiObservedPayload|clickGeminiSetupSkip|installGeminiNetworkHook|SAGE_USAGE_EXTRACTOR\.buildGeminiUsagePayload|c\.rows\(\)" android/app/src/main/java/com/aiquota/mobile/providers/ProviderWebCollectorScripts.kt | tee .omo/evidence/task-2-gemini-native-usage-codeassist-error.txt
    Expected: Command exits 0 because rg finds no forbidden Gemini fallback symbols.
    Evidence: .omo/evidence/task-2-gemini-native-usage-codeassist-error.txt
  ```

  Commit: YES | Message: `test(gemini): reject web collector fallback paths` | Files: [`android/app/src/test/java/com/aiquota/mobile/providers/ProviderWebCollectorScriptsTest.kt`, `android/app/src/test/java/com/aiquota/mobile/providers/ProviderNativeUsagePayloadFetcherTest.kt`]

- [ ] 3. Verify existing Code Assist normalization and cookie contract tests

  What to do: Keep `GoogleWebSessionCodeAssistFetcher` as the shared Code Assist transport. Add minimal tests only if current coverage does not prove Gemini permits `loadCodeAssist`, `onboardUser`, and `retrieveUserQuota`, uses WebView cookies, and never uses client secrets. Keep `ProviderUsageNormalizer` Code Assist fallback rows intact.
  Must NOT do: Do not add a second Gemini HTTP client, new dependency, new OAuth flow, or new fallback API.

  Parallelization: Can parallel: YES | Wave 1 | Blocks: [4, 6] | Blocked by: []

  References (executor has NO interview context - be exhaustive):
  - API/Type: `android/app/src/main/java/com/aiquota/mobile/providers/GoogleWebSessionCodeAssistFetcher.kt:32` - `fetchUsagePayload` dispatches Gemini to Code Assist.
  - Pattern:  `android/app/src/main/java/com/aiquota/mobile/providers/GoogleWebSessionCodeAssistFetcher.kt:40` - Gemini Code Assist flow calls `loadCodeAssist`, optional onboard, then `retrieveUserQuota`.
  - Pattern:  `android/app/src/main/java/com/aiquota/mobile/providers/GoogleWebSessionCodeAssistFetcher.kt:154` - fetcher reads WebView session cookies.
  - Pattern:  `android/app/src/main/java/com/aiquota/mobile/providers/GoogleWebSessionCodeAssistFetcher.kt:251` - provider/method allowlist includes Gemini Code Assist calls.
  - Pattern:  `android/app/src/main/java/com/aiquota/mobile/providers/GoogleWebSessionCodeAssistFetcher.kt:375` - cookie URLs include Google and Gemini domains.
  - API/Type: `android/app/src/main/java/com/aiquota/mobile/providers/GeminiCliOAuthRepository.kt:148` - existing `loadCodeAssistPayload` request body factory.
  - API/Type: `android/app/src/main/java/com/aiquota/mobile/providers/GeminiCliOAuthRepository.kt:36` - existing native-token path uses the same Code Assist quota payload shape.
  - Pattern:  `android/app/src/main/java/com/aiquota/mobile/providers/ProviderUsageNormalizer.kt:630` - Gemini normalizer accepts compact `usage.x`.
  - Pattern:  `android/app/src/main/java/com/aiquota/mobile/providers/ProviderUsageNormalizer.kt:643` - Gemini normalizer falls back to Code Assist `limits`/`quotaBuckets`.
  - Test:     `android/app/src/test/java/com/aiquota/mobile/providers/GoogleWebSessionCodeAssistFetcherTest.kt:46` - allowed method contract.
  - External: `https://developer.android.com/reference/android/webkit/CookieManager#getCookie(java.lang.String)` - WebView cookie reads are the session source.

  Acceptance criteria (agent-executable only):
  - [ ] `cd android; .\gradlew.bat :app:testDebugUnitTest --tests "com.aiquota.mobile.providers.GoogleWebSessionCodeAssistFetcherTest"` exits 0.
  - [ ] `rg -n "client_secret|GEMINI_OAUTH_SECRET|aiquota.geminiOAuthSecret" android/app/src/main/java android/app/build.gradle.kts` returns no new Gemini web-session matches.

  QA scenarios (MANDATORY - task incomplete without these):
  ```
  Scenario: Code Assist session contract tests pass
    Tool:     bash
    Steps:    cd android && ./gradlew :app:testDebugUnitTest --tests "com.aiquota.mobile.providers.GoogleWebSessionCodeAssistFetcherTest" | tee ../.omo/evidence/task-3-gemini-native-usage-codeassist.txt
    Expected: Gradle exits 0 and GoogleWebSessionCodeAssistFetcherTest has no failures.
    Evidence: .omo/evidence/task-3-gemini-native-usage-codeassist.txt

  Scenario: no Gemini client secret or private OAuth fallback appears
    Tool:     bash
    Steps:    ! rg -n "GEMINI_OAUTH_SECRET|aiquota\.geminiOAuthSecret|client_secret" android/app/src/main/java android/app/build.gradle.kts | tee .omo/evidence/task-3-gemini-native-usage-codeassist-error.txt
    Expected: Command exits 0 or any remaining matches are pre-existing non-Gemini AppAuth constants explicitly documented in the evidence.
    Evidence: .omo/evidence/task-3-gemini-native-usage-codeassist-error.txt
  ```

  Commit: YES | Message: `test(gemini): cover code assist web session contract` | Files: [`android/app/src/test/java/com/aiquota/mobile/providers/GoogleWebSessionCodeAssistFetcherTest.kt`, `android/app/src/test/java/com/aiquota/mobile/providers/ProviderUsageNormalizerTest.kt`]

- [ ] 4. Replace Gemini native fetcher implementation with Code Assist session fetch

  What to do: In `ProviderNativeUsagePayloadFetcher.fetchGeminiPayload`, call `GoogleWebSessionCodeAssistFetcher.fetchUsagePayload(ProviderId.GEMINI)`. Convert `UsageResult(payload, diagnostic, statuses)` into `NativePayloadResult(payload, diagnostic ?: "ok", statuses)` and keep the existing `bridgeResult` shape. Remove now-dead Gemini page parser methods/constants/imports from `ProviderNativeUsagePayloadFetcher.kt`.
  Must NOT do: Do not fetch `https://gemini.google.com/usage`; do not parse raw page text; do not add a fallback if Code Assist returns null.

  Parallelization: Can parallel: YES | Wave 2 | Blocks: [6] | Blocked by: [1, 3]

  References (executor has NO interview context - be exhaustive):
  - Pattern:  `android/app/src/main/java/com/aiquota/mobile/providers/ProviderNativeUsagePayloadFetcher.kt:40` - provider dispatch; keep Gemini in about:blank allowlisted bridge.
  - Pattern:  `android/app/src/main/java/com/aiquota/mobile/providers/ProviderNativeUsagePayloadFetcher.kt:158` - exact old method to replace.
  - Pattern:  `android/app/src/main/java/com/aiquota/mobile/providers/ProviderNativeUsagePayloadFetcher.kt:181` - `verifiedPayload` may be bypassed because `GoogleWebSessionCodeAssistFetcher` already returns normalized/trusted payload or null.
  - API/Type: `android/app/src/main/java/com/aiquota/mobile/providers/GoogleWebSessionCodeAssistFetcher.kt:427` - `UsageResult` fields to map.
  - Pattern:  `android/app/src/main/java/com/aiquota/mobile/providers/ProviderBackgroundRefreshService.kt:1111` - JS bridge calls `ProviderNativeUsagePayloadFetcher.bridgeUsagePayload`.
  - Test:     `android/app/src/test/java/com/aiquota/mobile/providers/ProviderNativeUsagePayloadFetcherTest.kt:13` - expected source contract.

  Acceptance criteria (agent-executable only):
  - [ ] `cd android; .\gradlew.bat :app:testDebugUnitTest --tests "com.aiquota.mobile.providers.ProviderNativeUsagePayloadFetcherTest"` exits 0.
  - [ ] `rg -n "geminiUsagePayloadFromRaw|geminiUsagePayloadFromText|GEMINI_USAGE_URL|MAX_GEMINI_HTML_SCAN_CHARS" android/app/src/main/java/com/aiquota/mobile/providers/ProviderNativeUsagePayloadFetcher.kt` returns no matches.
  - [ ] `rg -n "GoogleWebSessionCodeAssistFetcher.fetchUsagePayload\\(ProviderId.GEMINI\\)" android/app/src/main/java/com/aiquota/mobile/providers/ProviderNativeUsagePayloadFetcher.kt` returns exactly one match.

  QA scenarios (MANDATORY - task incomplete without these):
  ```
  Scenario: native bridge routes Gemini to Code Assist only
    Tool:     bash
    Steps:    cd android && ./gradlew :app:testDebugUnitTest --tests "com.aiquota.mobile.providers.ProviderNativeUsagePayloadFetcherTest.geminiNativeUsageBridgeRoutesThroughWebSessionCodeAssistOnly" | tee ../.omo/evidence/task-4-gemini-native-usage-codeassist.txt
    Expected: Gradle exits 0 and the named test passes.
    Evidence: .omo/evidence/task-4-gemini-native-usage-codeassist.txt

  Scenario: Code Assist unavailable fails closed
    Tool:     bash
    Steps:    cd android && ./gradlew :app:testDebugUnitTest --tests "com.aiquota.mobile.providers.ProviderNativeUsagePayloadFetcherTest.geminiNativeFetcherDoesNotContainUsagePageHtmlTextFallback" | tee ../.omo/evidence/task-4-gemini-native-usage-codeassist-error.txt
    Expected: Gradle exits 0 and no usage-page fallback symbols remain.
    Evidence: .omo/evidence/task-4-gemini-native-usage-codeassist-error.txt
  ```

  Commit: YES | Message: `fix(gemini): use code assist for native usage payload` | Files: [`android/app/src/main/java/com/aiquota/mobile/providers/ProviderNativeUsagePayloadFetcher.kt`, `android/app/src/test/java/com/aiquota/mobile/providers/ProviderNativeUsagePayloadFetcherTest.kt`]

- [ ] 5. Simplify Gemini WebView collector to about:blank native-only fail-closed behavior

  What to do: In `ProviderWebCollectorScripts.gemini`, delete or bypass all page-observation code and make `collectGeminiUsage()` only call `postGeminiNativePayload()`. If it returns false, immediately call `c.fail("gemini_no_trusted_payload", "Gemini usage payload was not available.")` or retry a small existing timer only if the bridge itself is asynchronous. Adjust `shouldRunCollector` for Gemini so collection is true for `about:blank` and false for Gemini app/usage pages unless login-page detection needs separate non-collector handling. Review `ProviderRefreshPlan.hiddenCollectorUrl` and `WebLoginActivity` only to ensure Gemini hidden refresh starts from about:blank and does not reintroduce a usage-page collector.
  Must NOT do: Do not keep `gemini_collector.js` in the Gemini collector path; do not keep skip-click, DOM text, XHR/fetch hook, or network-row logic.

  Parallelization: Can parallel: YES | Wave 2 | Blocks: [6] | Blocked by: [2]

  References (executor has NO interview context - be exhaustive):
  - Pattern:  `android/app/src/main/java/com/aiquota/mobile/providers/ProviderWebCollectorScripts.kt:117` - about:blank native-provider collector gate.
  - Pattern:  `android/app/src/main/java/com/aiquota/mobile/providers/ProviderWebCollectorScripts.kt:170` - current Gemini page readiness to tighten.
  - Pattern:  `android/app/src/main/java/com/aiquota/mobile/providers/ProviderWebCollectorScripts.kt:2290` - forbidden network hook logic.
  - Pattern:  `android/app/src/main/java/com/aiquota/mobile/providers/ProviderWebCollectorScripts.kt:2314` - forbidden setup-skip click.
  - Pattern:  `android/app/src/main/java/com/aiquota/mobile/providers/ProviderWebCollectorScripts.kt:2398` - forbidden observed payload fallback.
  - Pattern:  `android/app/src/main/java/com/aiquota/mobile/providers/ProviderRefreshPlan.kt:98` - about:blank hidden collector URL policy already applies to allowlisted native providers.
  - Pattern:  `android/app/src/main/java/com/aiquota/mobile/providers/ProviderAboutBlankCollectorPolicy.kt:5` - Gemini is about:blank-enabled.
  - Pattern:  `android/app/src/main/java/com/aiquota/mobile/providers/ProviderBackgroundRefreshService.kt:650` - background injection gate uses `shouldRunCollector`.
  - Pattern:  `android/app/src/main/java/com/aiquota/mobile/providers/WebLoginActivity.kt:519` - login JS bridge exposes native usage payload.
  - Test:     `android/app/src/test/java/com/aiquota/mobile/providers/ProviderWebCollectorScriptsTest.kt:117` - native-only source inspection.
  - Test:     `android/app/src/test/java/com/aiquota/mobile/providers/GoogleProviderWebViewFirstCollectionTest.kt:10` - update misleading test name/assertions if it still says DOM collector.

  Acceptance criteria (agent-executable only):
  - [ ] `cd android; .\gradlew.bat :app:testDebugUnitTest --tests "com.aiquota.mobile.providers.ProviderWebCollectorScriptsTest"` exits 0.
  - [ ] `cd android; .\gradlew.bat :app:testDebugUnitTest --tests "com.aiquota.mobile.providers.GoogleProviderWebViewFirstCollectionTest"` exits 0.
  - [ ] `rg -n "postGeminiObservedPayload|installGeminiNetworkHook|clickGeminiSetupSkip|__AIQuotaGeminiNetworkRows|buildGeminiUsagePayload" android/app/src/main/java/com/aiquota/mobile/providers/ProviderWebCollectorScripts.kt` returns no matches.

  QA scenarios (MANDATORY - task incomplete without these):
  ```
  Scenario: Gemini collector is native-only
    Tool:     bash
    Steps:    cd android && ./gradlew :app:testDebugUnitTest --tests "com.aiquota.mobile.providers.ProviderWebCollectorScriptsTest" --tests "com.aiquota.mobile.providers.GoogleProviderWebViewFirstCollectionTest" | tee ../.omo/evidence/task-5-gemini-native-usage-codeassist.txt
    Expected: Gradle exits 0 and both test classes pass.
    Evidence: .omo/evidence/task-5-gemini-native-usage-codeassist.txt

  Scenario: no Gemini DOM/network fallback symbols remain
    Tool:     bash
    Steps:    ! rg -n "postGeminiObservedPayload|installGeminiNetworkHook|clickGeminiSetupSkip|__AIQuotaGeminiNetworkRows|buildGeminiUsagePayload|gemini_usage_page_text" android/app/src/main/java/com/aiquota/mobile/providers android/app/src/main/assets/gemini_collector.js | tee .omo/evidence/task-5-gemini-native-usage-codeassist-error.txt
    Expected: Command exits 0 for production Gemini collector usage; if `gemini_collector.js` remains only as an unused asset, evidence must include the follow-up deletion or a clear build-system reason it cannot be removed in this task.
    Evidence: .omo/evidence/task-5-gemini-native-usage-codeassist-error.txt
  ```

  Commit: YES | Message: `fix(gemini): remove web collector fallback` | Files: [`android/app/src/main/java/com/aiquota/mobile/providers/ProviderWebCollectorScripts.kt`, `android/app/src/main/java/com/aiquota/mobile/providers/ProviderRefreshPlan.kt`, `android/app/src/main/java/com/aiquota/mobile/providers/WebLoginActivity.kt`, `android/app/src/test/java/com/aiquota/mobile/providers/ProviderWebCollectorScriptsTest.kt`, `android/app/src/test/java/com/aiquota/mobile/providers/GoogleProviderWebViewFirstCollectionTest.kt`]

- [ ] 6. Run real-device saved-cookie QA and focused verification

  What to do: Build/install debug, push the saved Gemini cookie snapshot to the debug app external files path, trigger Gemini background refresh through the debug receiver, and capture redacted logs proving Code Assist/native bridge success. Then run focused unit tests and `:app:assembleDebug`. Use existing debug cookie tooling; never print cookie contents.
  Must NOT do: Do not manually inspect or paste cookie JSON; do not accept a payload sourced from `structured-script`, `gemini_usage_page_text`, or `webview-js` page fallback.

  Parallelization: Can parallel: NO | Wave 3 | Blocks: [] | Blocked by: [4, 5]

  References (executor has NO interview context - be exhaustive):
  - Pattern:  `.omo/evidence/debug-cookie-gemini-reinstall-restore-test.txt:1` - prior saved-cookie refresh evidence shape.
  - Secret path: `.omo/private/provider-session-cookies/gemini.json` - saved Gemini session cookie snapshot; use as file, do not print.
  - Pattern:  `android/app/src/debug/java/com/aiquota/mobile/debug/ProviderRefreshDebugReceiver.kt:31` - debug broadcast action.
  - Pattern:  `android/app/src/debug/AndroidManifest.xml:13` - debug receiver is exported in debug builds.
  - Pattern:  `android/app/src/main/java/com/aiquota/mobile/providers/DebugProviderSessionCookieStore.kt:57` - debug restore reads external snapshot or internal store.
  - Pattern:  `android/app/src/main/java/com/aiquota/mobile/providers/DebugProviderSessionCookieStore.kt:103` - device external path is `debug-session-cookies/<provider>.json`.
  - Pattern:  `android/app/src/main/java/com/aiquota/mobile/providers/GoogleWebSessionCodeAssistFetcher.kt:224` - log line includes `webSessionCodeAssist method=... status=...` without raw cookie values.
  - Test:     `android/app/src/test/java/com/aiquota/mobile/providers/ProviderNativeUsagePayloadFetcherTest.kt:13` - native fetcher contract.
  - Test:     `android/app/src/test/java/com/aiquota/mobile/providers/ProviderWebCollectorScriptsTest.kt:107` - collector contract.

  Acceptance criteria (agent-executable only):
  - [ ] `cd android; .\gradlew.bat :app:testDebugUnitTest --tests "com.aiquota.mobile.providers.ProviderNativeUsagePayloadFetcherTest" --tests "com.aiquota.mobile.providers.ProviderWebCollectorScriptsTest" --tests "com.aiquota.mobile.providers.GoogleWebSessionCodeAssistFetcherTest" --tests "com.aiquota.mobile.providers.GoogleProviderWebViewFirstCollectionTest"` exits 0.
  - [ ] `cd android; .\gradlew.bat :app:assembleDebug` exits 0.
  - [ ] Real-device evidence contains `debugCookieRestore=true provider=gemini`, `webSessionCodeAssist method=loadCodeAssist status=2`, `webSessionCodeAssist method=retrieveUserQuota status=2`, `outcome provider=gemini type=Payload`, and no `postGeminiObservedPayload`, `structured-script`, `gemini_usage_page_text`, or raw cookie values.

  QA scenarios (MANDATORY - task incomplete without these):
  ```
  Scenario: saved Gemini cookie drives native Code Assist payload
    Tool:     bash
    Steps:    mkdir -p .omo/evidence && cd android && ./gradlew :app:installDebug && cd .. && adb shell run-as com.aiquota.mobile mkdir -p files >/dev/null 2>&1 || true && adb push .omo/private/provider-session-cookies/gemini.json /sdcard/Android/data/com.aiquota.mobile/files/debug-session-cookies/gemini.json && adb logcat -c && adb shell am broadcast -a com.aiquota.mobile.debug.REFRESH_PROVIDER --es provider_id gemini && timeout 90 adb logcat -d | rg "AIQuotaDebugCookie|AIQuotaGoogleWeb|AIQuotaBgRefreshService|AIQuotaCollector" | rg -v "cookieHeader|SID=|SAPISID=|APISID=|HSID=|SSID=" | tee .omo/evidence/task-6-gemini-native-usage-codeassist-real-device.txt
    Expected: Evidence includes Gemini cookie restore, Code Assist `loadCodeAssist` and `retrieveUserQuota` 2xx statuses, Gemini payload outcome, and no raw cookie values.
    Evidence: .omo/evidence/task-6-gemini-native-usage-codeassist-real-device.txt

  Scenario: no saved cookie fails closed without fallback
    Tool:     bash
    Steps:    adb shell rm -f /sdcard/Android/data/com.aiquota.mobile/files/debug-session-cookies/gemini.json && adb logcat -c && adb shell am broadcast -a com.aiquota.mobile.debug.REFRESH_PROVIDER --es provider_id gemini && timeout 60 adb logcat -d | rg "missing_google_web_session_cookie|gemini_no_trusted_payload|gemini_usage_unavailable|AIQuotaGoogleWeb|AIQuotaBgRefreshService" | tee .omo/evidence/task-6-gemini-native-usage-codeassist-error.txt
    Expected: Evidence shows missing cookie or no trusted payload and does not show usage-page, DOM, structured-script, or raw-text fallback success.
    Evidence: .omo/evidence/task-6-gemini-native-usage-codeassist-error.txt
  ```

  Commit: YES | Message: `test(gemini): verify native code assist collection` | Files: [`.omo/evidence/task-6-gemini-native-usage-codeassist-real-device.txt`, `.omo/evidence/task-6-gemini-native-usage-codeassist-error.txt`]

## Final verification wave (MANDATORY - after all implementation tasks)
> Runs in PARALLEL. ALL must APPROVE. Surface results to the caller and wait for an explicit "okay" before declaring complete.
- [ ] F1. Plan compliance audit - every task done, every acceptance criterion met
- [ ] F2. Code quality review - diagnostics clean, idioms match, no dead code
- [ ] F3. Real manual QA - every QA scenario executed with evidence captured
- [ ] F4. Scope fidelity - nothing extra shipped beyond Must-Have, nothing Must-NOT-Have introduced

## Commit strategy
- One logical change per commit. Conventional Commits (`<type>(<scope>): <subject>` body + footer).
- Atomic: every commit builds and passes tests on its own.
- No "WIP" / "fix typo squash later" commits on the final branch - clean up before merge.
- Reference the plan file path in the final commit footer: `Plan: .omo/plans/gemini-native-usage-codeassist.md`.

## Success criteria
- All Must-Have shipped; all QA scenarios pass with captured evidence; F1-F4 approved; commit history clean.
