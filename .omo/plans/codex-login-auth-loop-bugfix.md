# Codex Login Auth Loop Usage Recovery

## TL;DR
> Summary:      Fix the Codex login loop where ChatGPT reaches a usable session but the app starts collection too early, loses auth context, then fails later native fetches with 401/no payload. Based on exploration, the dirty worktree already contains a candidate fix; first verify and harden that exact path instead of rewriting collectors.
> Deliverables:
> - Failing-first evidence for Codex native collection routing and auth-header retention.
> - Minimal source fix or validation of the current candidate fix.
> - Focused JVM tests, debug APK build, and emulator evidence for login return plus refresh behavior.
> - Final review notes and commit-ready file list.
> Effort:       Medium
> Risk:         High - auth/session/WebView bridge behavior affects login, collection, and background refresh.

## Scope
### Must have
- Preserve the existing dirty worktree; inspect current diffs before changing anything.
- Codex login must not start about:blank native collection from the ChatGPT root/home `onPageFinished` path before post-login redirect/resource logic can run.
- Authenticated Codex native request headers must not be overwritten by later unauthenticated captures for the same endpoint or fallback slot.
- Codex native payload fetches must receive the selected WebView headers for `/api/auth/session`, `/backend-api/me`, `/backend-api/accounts/check`, `/backend-api/subscriptions`, and `/codex/cloud/settings/analytics`.
- `codex_usage_unavailable` must remain a recoverable/no-trusted-payload state; only explicit login redirect, main-frame 401/403, or `codex_auth_required` may require interactive auth.
- Real-surface QA must use a debug APK installed on an emulator/device and capture logcat, UI XML, and screenshot evidence.

### Must NOT have (guardrails, anti-slop, scope boundaries)
- Do not use CodeGraph.
- Do not revert dirty files or unrelated generated evidence.
- Do not fake, hardcode, or synthesize usage values.
- Do not add a DOM/text fallback for native collectors.
- Do not broaden provider behavior for Gemini, Claude, Copilot, GLM, OpenCode, Cursor, or Antigravity unless a focused regression test proves the current Codex fix broke them.
- Do not add a new abstraction if the existing route/header helper files cover the case.
- Do not commit automatically unless the user explicitly asks.

## Verification strategy
> Zero human intervention - all verification is agent-executed.
- Test decision: TDD + Android/JVM unit tests. If the current dirty worktree already contains the RED evidence, preserve and cite `.omo/evidence/codex-login-usage-auth-recovery-red.txt`; otherwise add exactly one failing test before production changes.
- QA policy: every task has agent-executed scenarios
- Evidence: `.omo/evidence/task-<N>-codex-login-auth-loop.<ext>`

## Execution strategy
### Parallel execution waves
> Target 5-8 tasks per wave. <3 per wave (except final) = under-splitting.
> Extract shared dependencies as Wave-1 tasks to maximize parallelism.

Wave 1 (no dependencies):
- Task 1: Dirty-worktree and prior-evidence baseline
- Task 2: Failing-first Codex collection-route seam
- Task 3: Failing-first Codex auth-header retention/forwarding seam
- Task 4: Failing-first auth/error classification guardrails
- Task 5: Android QA harness and target APK baseline

Wave 2 (after Wave 1):
- Task 6: Minimal WebLoginActivity collection/return fix depends [1, 2]
- Task 7: Minimal native header selection/forwarding fix depends [1, 3]
- Task 8: Minimal policy guardrail fix depends [1, 4]

Wave 3 (after Wave 2):
- Task 9: Focused JVM and build verification depends [6, 7, 8]
- Task 10: Real emulator Codex login-return QA depends [5, 9]
- Task 11: Real emulator Codex refresh/auth-failure QA depends [5, 9]

Critical path: Task 1 -> Task 2 -> Task 6 -> Task 9 -> Task 10

### Dependency matrix
| Task | Depends on | Blocks | Can parallelize with |
|------|------------|--------|----------------------|
| 1    | none       | 6, 7, 8 | 2, 3, 4, 5 |
| 2    | none       | 6 | 1, 3, 4, 5 |
| 3    | none       | 7 | 1, 2, 4, 5 |
| 4    | none       | 8 | 1, 2, 3, 5 |
| 5    | none       | 10, 11 | 1, 2, 3, 4 |
| 6    | 1, 2       | 9 | 7, 8 |
| 7    | 1, 3       | 9 | 6, 8 |
| 8    | 1, 4       | 9 | 6, 7 |
| 9    | 6, 7, 8    | 10, 11 | none |
| 10   | 5, 9       | F1-F4 | 11 |
| 11   | 5, 9       | F1-F4 | 10 |

## Todos
> Implementation + Test = ONE task. Never separate.
> Every task MUST have: References + Acceptance Criteria + QA Scenarios + Commit.

- [ ] 1. Dirty-worktree and prior-evidence baseline

  What to do: Record current branch, HEAD, dirty files, relevant diffs, and whether current Codex candidate files are already modified. Read prior evidence and decide whether `.omo/evidence/codex-login-usage-auth-recovery-red.txt` is valid RED evidence for this exact fix.
  Must NOT do: Do not revert, stash, format, delete generated evidence, or mark old evidence valid if it does not match the current diff.

  Parallelization: Can parallel: YES | Wave 1 | Blocks: [6, 7, 8] | Blocked by: []

  References (executor has NO interview context - be exhaustive):
  - Pattern:  `android/app/src/main/java/com/aiquota/mobile/providers/WebLoginActivity.kt:269` - `shouldInterceptRequest` captures Codex account/headers and can trigger resource-based collection.
  - Pattern:  `android/app/src/main/java/com/aiquota/mobile/providers/WebLoginActivity.kt:322` - `onPageFinished` is the risky early collection/redirect ordering seam.
  - Pattern:  `android/app/src/main/java/com/aiquota/mobile/providers/WebLoginActivity.kt:445` - Codex collector errors reset native collection state while keeping login open.
  - Pattern:  `android/app/src/main/java/com/aiquota/mobile/providers/WebLoginActivity.kt:945` - Codex native header capture path.
  - Test:     `android/app/src/test/java/com/aiquota/mobile/providers/WebLoginActivityNativeBridgeTest.kt:41` - current string-level regression tests around about:blank collection.
  - Test:     `.omo/evidence/codex-login-usage-auth-recovery-red.txt` - prior RED evidence for missing `selectStoredHeaders`.
  - Test:     `.omo/evidence/codex-login-usage-auth-recovery-green.txt` - prior focused-test GREEN evidence.

  Acceptance criteria (agent-executable only):
  - [ ] `git status --short > .omo/evidence/task-1-codex-login-auth-loop-status.txt` captures dirty files and includes no destructive cleanup.
  - [ ] `git diff -- android/app/src/main/java/com/aiquota/mobile/providers/WebLoginActivity.kt android/app/src/main/java/com/aiquota/mobile/providers/ProviderNativeUsagePayloadFetcher.kt android/app/src/main/java/com/aiquota/mobile/providers/CodexNativeHeaderStore.kt android/app/src/main/java/com/aiquota/mobile/providers/CodexNativeHeaderSelector.kt android/app/src/main/java/com/aiquota/mobile/providers/CodexNativeCollectionRoutes.kt android/app/src/test/java/com/aiquota/mobile/providers/CodexNativeHeaderSelectorTest.kt android/app/src/test/java/com/aiquota/mobile/providers/WebLoginActivityNativeBridgeTest.kt android/app/src/test/java/com/aiquota/mobile/providers/ProviderNativeUsagePayloadFetcherTest.kt > .omo/evidence/task-1-codex-login-auth-loop-diff.txt` is non-empty or a note records that no candidate fix exists yet.
  - [ ] `.omo/evidence/task-1-codex-login-auth-loop-baseline.md` states whether prior RED/GREEN evidence is accepted, rejected, or superseded.

  QA scenarios (MANDATORY - task incomplete without these):
  ```
  Scenario: baseline evidence inventory
    Tool:     bash
    Steps:    git status --short; git branch --show-current; git rev-parse --short HEAD; ls .omo/evidence/codex-login-usage-auth-recovery-* | sort
    Expected: Branch/HEAD are recorded; existing dirty files are listed; no source file content changes.
    Evidence: .omo/evidence/task-1-codex-login-auth-loop-status.txt

  Scenario: dirty worktree safety check
    Tool:     bash
    Steps:    git diff --check > .omo/evidence/task-1-codex-login-auth-loop-diff-check.txt
    Expected: Exit code 0, or exact whitespace/conflict errors captured before any edits.
    Evidence: .omo/evidence/task-1-codex-login-auth-loop-diff-check.txt
  ```

  Commit: NO | Message: `chore(collector): record codex auth loop baseline` | Files: [.omo/evidence/task-1-codex-login-auth-loop-status.txt, .omo/evidence/task-1-codex-login-auth-loop-diff.txt, .omo/evidence/task-1-codex-login-auth-loop-baseline.md]

- [ ] 2. Failing-first Codex collection-route seam

  What to do: Ensure one focused test fails before production changes when `onPageFinished` starts Codex about:blank collection from `https://chatgpt.com/` or `/codex` before resource/usage-page evidence appears. Prefer extending `WebLoginActivityNativeBridgeTest.codexPageFinishedStartsNativeCollectionOnlyOnUsagePages`.
  Must NOT do: Do not test private implementation by only searching for removed strings if a behavior helper can carry the assertion. Do not make the route allowlist broader than known Codex usage pages.

  Parallelization: Can parallel: YES | Wave 1 | Blocks: [6] | Blocked by: []

  References (executor has NO interview context - be exhaustive):
  - API/Type: `android/app/src/main/java/com/aiquota/mobile/providers/CodexNativeCollectionRoutes.kt:6` - helper currently allows page-finished collection only on `/codex/cloud/settings/analytics` and `/codex/settings/usage`.
  - Pattern:  `android/app/src/main/java/com/aiquota/mobile/providers/WebLoginActivity.kt:322` - `onPageFinished` uses `CodexNativeCollectionRoutes.shouldStartFromPageFinished`.
  - Pattern:  `android/app/src/main/java/com/aiquota/mobile/providers/WebLoginActivity.kt:291` - resource path can start native collection after relevant Codex resources appear.
  - Test:     `android/app/src/test/java/com/aiquota/mobile/providers/WebLoginActivityNativeBridgeTest.kt:79` - existing route behavior test.
  - External: `https://developer.android.com/reference/android/webkit/WebViewClient#onPageFinished(android.webkit.WebView,%20java.lang.String)` - Android notes `onPageFinished` is main-frame only and DOM readiness is not guaranteed.

  Acceptance criteria (agent-executable only):
  - [ ] RED: `cd android; $env:JAVA_HOME='C:\Program Files\Android\Android Studio\jbr'; gradle :app:testDebugUnitTest --tests 'com.aiquota.mobile.providers.WebLoginActivityNativeBridgeTest' --console=plain --no-daemon` fails for the new/adjusted Codex root collection assertion before production edits, unless Task 1 accepted prior RED evidence.
  - [ ] GREEN after Task 6: same command passes and `.omo/evidence/task-2-codex-login-auth-loop-green.txt` contains `BUILD SUCCESSFUL`.

  QA scenarios (MANDATORY - task incomplete without these):
  ```
  Scenario: route helper rejects early roots
    Tool:     bash
    Steps:    cd android && JAVA_HOME='/c/Program Files/Android/Android Studio/jbr' gradle :app:testDebugUnitTest --tests 'com.aiquota.mobile.providers.WebLoginActivityNativeBridgeTest.codexPageFinishedStartsNativeCollectionOnlyOnUsagePages' --console=plain --no-daemon
    Expected: Test passes after fix; root `https://chatgpt.com/` and `https://chatgpt.com/codex` are false, analytics and settings usage are true.
    Evidence: .omo/evidence/task-2-codex-login-auth-loop-green.txt

  Scenario: regression proof for old early-start behavior
    Tool:     bash
    Steps:    Save the pre-fix failing output from the same focused command, or cite `.omo/evidence/codex-login-usage-auth-recovery-red.txt` if Task 1 accepted it.
    Expected: Failure is caused by the Codex collection ordering assertion, not by syntax/import errors unrelated to the behavior.
    Evidence: .omo/evidence/task-2-codex-login-auth-loop-red.txt
  ```

  Commit: NO | Message: `test(collector): cover codex page-finished route gate` | Files: [android/app/src/test/java/com/aiquota/mobile/providers/WebLoginActivityNativeBridgeTest.kt, android/app/src/main/java/com/aiquota/mobile/providers/CodexNativeCollectionRoutes.kt]

- [ ] 3. Failing-first Codex auth-header retention/forwarding seam

  What to do: Ensure a focused test proves authenticated headers survive later unauthenticated captures and are forwarded to every Codex native fetch. Prefer the existing `CodexNativeHeaderSelectorTest` and `ProviderNativeUsagePayloadFetcherTest` seams.
  Must NOT do: Do not log raw token/cookie values. Do not forward `Host`, `Connection`, `Content-Length`, or `Accept-Encoding`.

  Parallelization: Can parallel: YES | Wave 1 | Blocks: [7] | Blocked by: []

  References (executor has NO interview context - be exhaustive):
  - API/Type: `android/app/src/main/java/com/aiquota/mobile/providers/CodexNativeHeaderSelector.kt:3` - chooses whether captured or fallback headers win based on auth context.
  - API/Type: `android/app/src/main/java/com/aiquota/mobile/providers/CodexNativeHeaderStore.kt:6` - stores endpoint and fallback header maps.
  - Pattern:  `android/app/src/main/java/com/aiquota/mobile/providers/WebLoginActivity.kt:945` - captures headers from WebView resource requests.
  - Pattern:  `android/app/src/main/java/com/aiquota/mobile/providers/WebLoginActivity.kt:966` - selects headers for native bridge fetches.
  - Pattern:  `android/app/src/main/java/com/aiquota/mobile/providers/ProviderNativeUsagePayloadFetcher.kt:117` - fetches Codex session/account/subscription/analytics endpoints.
  - Pattern:  `android/app/src/main/java/com/aiquota/mobile/providers/ProviderNativeJsonBridge.kt:42` - applies caller-provided request headers to `HttpURLConnection`.
  - Test:     `android/app/src/test/java/com/aiquota/mobile/providers/CodexNativeHeaderSelectorTest.kt:7` - retention and fallback-selection tests.
  - Test:     `android/app/src/test/java/com/aiquota/mobile/providers/ProviderNativeUsagePayloadFetcherTest.kt:113` - verifies forwarded headers reach Codex native fetches.
  - External: `https://developer.android.com/reference/android/webkit/WebView#addJavascriptInterface(java.lang.Object,%20java.lang.String)` - Android bridge methods exposed to JavaScript must be explicitly annotated on modern targets.

  Acceptance criteria (agent-executable only):
  - [ ] RED: focused test fails before production edits because authenticated headers can be overwritten or not forwarded, unless Task 1 accepted prior RED evidence.
  - [ ] GREEN: `cd android; $env:JAVA_HOME='C:\Program Files\Android\Android Studio\jbr'; gradle :app:testDebugUnitTest --tests 'com.aiquota.mobile.providers.CodexNativeHeaderSelectorTest' --tests 'com.aiquota.mobile.providers.ProviderNativeUsagePayloadFetcherTest.codexNativeUsagePayloadFetchUsesForwardedWebViewHeaders' --console=plain --no-daemon` passes.
  - [ ] Evidence logs/header summaries redact values and show only header names or synthetic test values.

  QA scenarios (MANDATORY - task incomplete without these):
  ```
  Scenario: authenticated fallback survives unauthenticated capture
    Tool:     bash
    Steps:    cd android && JAVA_HOME='/c/Program Files/Android/Android Studio/jbr' gradle :app:testDebugUnitTest --tests 'com.aiquota.mobile.providers.CodexNativeHeaderSelectorTest' --console=plain --no-daemon
    Expected: All selector/store tests pass.
    Evidence: .omo/evidence/task-3-codex-login-auth-loop-selector-green.txt

  Scenario: native fetch receives selected headers
    Tool:     bash
    Steps:    cd android && JAVA_HOME='/c/Program Files/Android/Android Studio/jbr' gradle :app:testDebugUnitTest --tests 'com.aiquota.mobile.providers.ProviderNativeUsagePayloadFetcherTest.codexNativeUsagePayloadFetchUsesForwardedWebViewHeaders' --console=plain --no-daemon
    Expected: Captured dashboard fetch has `Authorization=Selected auth` and `X-Selected-Url=https://chatgpt.com/codex/cloud/settings/analytics` in test-only data.
    Evidence: .omo/evidence/task-3-codex-login-auth-loop-fetcher-green.txt
  ```

  Commit: NO | Message: `test(collector): cover codex native header retention` | Files: [android/app/src/test/java/com/aiquota/mobile/providers/CodexNativeHeaderSelectorTest.kt, android/app/src/test/java/com/aiquota/mobile/providers/ProviderNativeUsagePayloadFetcherTest.kt, android/app/src/main/java/com/aiquota/mobile/providers/CodexNativeHeaderSelector.kt, android/app/src/main/java/com/aiquota/mobile/providers/CodexNativeHeaderStore.kt]

- [ ] 4. Failing-first auth/error classification guardrails

  What to do: Preserve policies that separate no-payload from auth-required. Add a failing guard only if current policy does not already cover the symptom path: root collector error `codex_usage_unavailable`, explicit `codex_auth_required`, and main-frame 401/403.
  Must NOT do: Do not classify generic no-payload, timeout, or parser failure as auth failure.

  Parallelization: Can parallel: YES | Wave 1 | Blocks: [8] | Blocked by: []

  References (executor has NO interview context - be exhaustive):
  - API/Type: `android/app/src/main/java/com/aiquota/mobile/providers/ProviderCollectorErrorPolicy.kt:6` - maps collector errors to refresh failure kinds.
  - API/Type: `android/app/src/main/java/com/aiquota/mobile/providers/ProviderCollectorErrorPolicy.kt:73` - retries `codex_usage_unavailable` twice.
  - API/Type: `android/app/src/main/java/com/aiquota/mobile/providers/ProviderRefreshHttpErrorPolicy.kt:15` - maps Codex main-frame 401/403 to interactive auth.
  - Pattern:  `android/app/src/main/java/com/aiquota/mobile/providers/ProviderBackgroundRefreshService.kt:1083` - receives collector errors, retries, then fails via policy.
  - Test:     `android/app/src/test/java/com/aiquota/mobile/providers/ProviderCollectorErrorPolicyTest.kt:11` - `codex_usage_unavailable` stays no-trusted-payload.
  - Test:     `android/app/src/test/java/com/aiquota/mobile/providers/ProviderRefreshHttpErrorPolicyTest.kt:53` - Codex main-frame 401/403 requires auth.

  Acceptance criteria (agent-executable only):
  - [ ] `cd android; $env:JAVA_HOME='C:\Program Files\Android\Android Studio\jbr'; gradle :app:testDebugUnitTest --tests 'com.aiquota.mobile.providers.ProviderCollectorErrorPolicyTest' --tests 'com.aiquota.mobile.providers.ProviderRefreshHttpErrorPolicyTest' --console=plain --no-daemon` passes.
  - [ ] Any changed policy has a RED artifact first; if no policy code changes are needed, `.omo/evidence/task-4-codex-login-auth-loop-nochange.md` states why existing tests are sufficient.

  QA scenarios (MANDATORY - task incomplete without these):
  ```
  Scenario: no-payload is recoverable
    Tool:     bash
    Steps:    cd android && JAVA_HOME='/c/Program Files/Android/Android Studio/jbr' gradle :app:testDebugUnitTest --tests 'com.aiquota.mobile.providers.ProviderCollectorErrorPolicyTest.codexUsageUnavailableIsPayloadFailureNotInteractiveAuth' --tests 'com.aiquota.mobile.providers.ProviderCollectorErrorPolicyTest.codexUsageUnavailableRetriesBeforeFailing' --console=plain --no-daemon
    Expected: Tests pass; `codex_usage_unavailable` maps to `NO_TRUSTED_PAYLOAD` and does not require interactive auth.
    Evidence: .omo/evidence/task-4-codex-login-auth-loop-no-payload.txt

  Scenario: explicit auth remains auth
    Tool:     bash
    Steps:    cd android && JAVA_HOME='/c/Program Files/Android/Android Studio/jbr' gradle :app:testDebugUnitTest --tests 'com.aiquota.mobile.providers.ProviderCollectorErrorPolicyTest.codexAuthRequiredStaysInteractiveAuth' --tests 'com.aiquota.mobile.providers.ProviderRefreshHttpErrorPolicyTest.codexMainFrameUnauthorizedOrForbiddenRequiresInteractiveAuth' --console=plain --no-daemon
    Expected: Tests pass; explicit `codex_auth_required` and main-frame `401/403` require interactive auth.
    Evidence: .omo/evidence/task-4-codex-login-auth-loop-auth-required.txt
  ```

  Commit: NO | Message: `test(collector): preserve codex auth failure boundaries` | Files: [android/app/src/test/java/com/aiquota/mobile/providers/ProviderCollectorErrorPolicyTest.kt, android/app/src/test/java/com/aiquota/mobile/providers/ProviderRefreshHttpErrorPolicyTest.kt, android/app/src/main/java/com/aiquota/mobile/providers/ProviderCollectorErrorPolicy.kt, android/app/src/main/java/com/aiquota/mobile/providers/ProviderRefreshHttpErrorPolicy.kt]

- [ ] 5. Android QA harness and target APK baseline

  What to do: Confirm emulator/device, package, debug entry points, and Gradle invocation before implementation validation. Use existing debug activity/receiver to avoid brittle UI traversal where possible.
  Must NOT do: Do not require manual login secrets in the plan. If an account is not already authenticated in WebView, record the auth-screen blocker and still prove no premature about:blank collection before login completion.

  Parallelization: Can parallel: YES | Wave 1 | Blocks: [10, 11] | Blocked by: []

  References (executor has NO interview context - be exhaustive):
  - Pattern:  `android/app/src/debug/AndroidManifest.xml:3` - exported `ProviderLoginDebugActivity`.
  - Pattern:  `android/app/src/debug/java/com/aiquota/mobile/debug/ProviderLoginDebugActivity.kt:8` - starts `WebLoginActivity` for `provider_id`.
  - Pattern:  `android/app/src/debug/AndroidManifest.xml:13` - exported `ProviderRefreshDebugReceiver`.
  - Pattern:  `android/app/src/debug/java/com/aiquota/mobile/debug/ProviderRefreshDebugReceiver.kt:12` - starts provider refresh service for `provider_id`.
  - External: `https://developer.android.com/tools/adb` - adb is the official device control/install/log channel.

  Acceptance criteria (agent-executable only):
  - [ ] `adb devices > .omo/evidence/task-5-codex-login-auth-loop-adb-devices.txt` lists at least one `device`.
  - [ ] `cd android; $env:JAVA_HOME='C:\Program Files\Android\Android Studio\jbr'; gradle :app:assembleDebug --console=plain --no-daemon` passes and `android/app/build/outputs/apk/debug/app-debug.apk` exists.
  - [ ] `adb -s <serial> install -r android/app/build/outputs/apk/debug/app-debug.apk` succeeds and package resolves.

  QA scenarios (MANDATORY - task incomplete without these):
  ```
  Scenario: debug APK installs
    Tool:     bash
    Steps:    adb devices; cd android && JAVA_HOME='/c/Program Files/Android/Android Studio/jbr' gradle :app:assembleDebug --console=plain --no-daemon; adb -s <serial> install -r app/build/outputs/apk/debug/app-debug.apk
    Expected: Gradle build says `BUILD SUCCESSFUL`; adb install says `Success`.
    Evidence: .omo/evidence/task-5-codex-login-auth-loop-install.txt

  Scenario: debug entry points resolve
    Tool:     bash
    Steps:    adb -s <serial> shell cmd package resolve-activity --brief com.aiquota.mobile/.debug.ProviderLoginDebugActivity; adb -s <serial> shell cmd package query-receivers -a com.aiquota.mobile.debug.REFRESH_PROVIDER
    Expected: Login debug activity and refresh receiver are present in the debug build.
    Evidence: .omo/evidence/task-5-codex-login-auth-loop-debug-entrypoints.txt
  ```

  Commit: NO | Message: `chore(qa): record codex debug apk baseline` | Files: [.omo/evidence/task-5-codex-login-auth-loop-adb-devices.txt, .omo/evidence/task-5-codex-login-auth-loop-install.txt, .omo/evidence/task-5-codex-login-auth-loop-debug-entrypoints.txt]

- [ ] 6. Minimal WebLoginActivity collection/return fix

  What to do: Apply or validate the smallest `WebLoginActivity` change so `onPageFinished` cannot trigger Codex about:blank collection from ChatGPT root/home, resource-triggered collection can still start from known Codex endpoints, collector errors that mean “usage unavailable” keep login open, and the app can return once a trusted payload is posted.
  Must NOT do: Do not rewrite OAuth flow, do not add timers, do not broaden navigation blocking, and do not touch unrelated providers.

  Parallelization: Can parallel: YES | Wave 2 | Blocks: [9] | Blocked by: [1, 2]

  References (executor has NO interview context - be exhaustive):
  - Pattern:  `android/app/src/main/java/com/aiquota/mobile/providers/WebLoginActivity.kt:256` - Codex local auth callback recovery hook.
  - Pattern:  `android/app/src/main/java/com/aiquota/mobile/providers/WebLoginActivity.kt:291` - resource-triggered post-login redirect/collection.
  - Pattern:  `android/app/src/main/java/com/aiquota/mobile/providers/WebLoginActivity.kt:322` - `onPageFinished` route gate.
  - Pattern:  `android/app/src/main/java/com/aiquota/mobile/providers/WebLoginActivity.kt:401` - login-complete navigation currently fails if no trusted payload exists.
  - Pattern:  `android/app/src/main/java/com/aiquota/mobile/providers/WebLoginActivity.kt:445` - recoverable collector errors keep login open and reset Codex collection state.
  - API/Type: `android/app/src/main/java/com/aiquota/mobile/providers/CodexNativeCollectionRoutes.kt:6` - route helper to keep page-finished starts narrow.
  - Test:     `android/app/src/test/java/com/aiquota/mobile/providers/WebLoginActivityNativeBridgeTest.kt:41` - about:blank native bridge regression.

  Acceptance criteria (agent-executable only):
  - [ ] Focused Task 2 tests pass after this task.
  - [ ] `git diff -- android/app/src/main/java/com/aiquota/mobile/providers/WebLoginActivity.kt android/app/src/main/java/com/aiquota/mobile/providers/CodexNativeCollectionRoutes.kt` shows no unrelated provider rewrites.
  - [ ] Log strings needed for QA remain present: `awaitingUsagePayload`, `capturedNativeHeaders`, and `nativeUsage provider=codex`.

  QA scenarios (MANDATORY - task incomplete without these):
  ```
  Scenario: collection route unit proof
    Tool:     bash
    Steps:    cd android && JAVA_HOME='/c/Program Files/Android/Android Studio/jbr' gradle :app:testDebugUnitTest --tests 'com.aiquota.mobile.providers.WebLoginActivityNativeBridgeTest' --console=plain --no-daemon
    Expected: All `WebLoginActivityNativeBridgeTest` tests pass.
    Evidence: .omo/evidence/task-6-codex-login-auth-loop-web-login-tests.txt

  Scenario: diff scope proof
    Tool:     bash
    Steps:    git diff -- android/app/src/main/java/com/aiquota/mobile/providers/WebLoginActivity.kt android/app/src/main/java/com/aiquota/mobile/providers/CodexNativeCollectionRoutes.kt > .omo/evidence/task-6-codex-login-auth-loop-diff.txt
    Expected: Diff only changes Codex collection routing/order or validates no further changes were needed.
    Evidence: .omo/evidence/task-6-codex-login-auth-loop-diff.txt
  ```

  Commit: NO | Message: `fix(collector): 코덱스 로그인 수집 시작 순서 보정` | Files: [android/app/src/main/java/com/aiquota/mobile/providers/WebLoginActivity.kt, android/app/src/main/java/com/aiquota/mobile/providers/CodexNativeCollectionRoutes.kt, android/app/src/test/java/com/aiquota/mobile/providers/WebLoginActivityNativeBridgeTest.kt]

- [ ] 7. Minimal native header selection/forwarding fix

  What to do: Apply or validate the smallest header-store/native-fetch change so authenticated WebView headers are retained and passed to native Codex fetches. Use the helper objects already present; do not inline this logic in every caller.
  Must NOT do: Do not persist tokens to disk unless an existing secure store already owns that behavior. Do not print raw header values in logcat.

  Parallelization: Can parallel: YES | Wave 2 | Blocks: [9] | Blocked by: [1, 3]

  References (executor has NO interview context - be exhaustive):
  - API/Type: `android/app/src/main/java/com/aiquota/mobile/providers/CodexNativeHeaderSelector.kt:3` - minimal selector abstraction; reuse it.
  - API/Type: `android/app/src/main/java/com/aiquota/mobile/providers/CodexNativeHeaderStore.kt:6` - endpoint/fallback storage and host/path keying.
  - Pattern:  `android/app/src/main/java/com/aiquota/mobile/providers/WebLoginActivity.kt:945` - captures headers from `WebResourceRequest`.
  - Pattern:  `android/app/src/main/java/com/aiquota/mobile/providers/ProviderNativeUsagePayloadFetcher.kt:123` - every Codex fetch should call `requestHeadersForUrl`.
  - Pattern:  `android/app/src/main/java/com/aiquota/mobile/providers/ProviderNativeJsonBridge.kt:42` - applies forwarded headers.
  - Test:     `android/app/src/test/java/com/aiquota/mobile/providers/CodexNativeHeaderSelectorTest.kt:24` - fallback retention.
  - Test:     `android/app/src/test/java/com/aiquota/mobile/providers/ProviderNativeUsagePayloadFetcherTest.kt:113` - header forwarding through native fetcher.

  Acceptance criteria (agent-executable only):
  - [ ] Focused Task 3 tests pass after this task.
  - [ ] `git diff -- android/app/src/main/java/com/aiquota/mobile/providers/CodexNativeHeaderSelector.kt android/app/src/main/java/com/aiquota/mobile/providers/CodexNativeHeaderStore.kt android/app/src/main/java/com/aiquota/mobile/providers/ProviderNativeUsagePayloadFetcher.kt android/app/src/main/java/com/aiquota/mobile/providers/ProviderNativeJsonBridge.kt` shows no broad collector/parser rewrite.
  - [ ] No production log line includes `Authorization`, `Cookie`, token, or full header values.

  QA scenarios (MANDATORY - task incomplete without these):
  ```
  Scenario: native header tests
    Tool:     bash
    Steps:    cd android && JAVA_HOME='/c/Program Files/Android/Android Studio/jbr' gradle :app:testDebugUnitTest --tests 'com.aiquota.mobile.providers.CodexNativeHeaderSelectorTest' --tests 'com.aiquota.mobile.providers.ProviderNativeUsagePayloadFetcherTest.codexNativeUsagePayloadFetchUsesForwardedWebViewHeaders' --console=plain --no-daemon
    Expected: Focused tests pass.
    Evidence: .omo/evidence/task-7-codex-login-auth-loop-header-tests.txt

  Scenario: no secret logging
    Tool:     bash
    Steps:    rg -n 'Log\\.(d|i|w|e).*Authorization|Log\\.(d|i|w|e).*Cookie|Log\\.(d|i|w|e).*Bearer' android/app/src/main/java/com/aiquota/mobile/providers > .omo/evidence/task-7-codex-login-auth-loop-secret-log-scan.txt; test ! -s .omo/evidence/task-7-codex-login-auth-loop-secret-log-scan.txt
    Expected: Scan file is empty and command exits 0.
    Evidence: .omo/evidence/task-7-codex-login-auth-loop-secret-log-scan.txt
  ```

  Commit: NO | Message: `fix(collector): 코덱스 네이티브 요청 헤더 보존` | Files: [android/app/src/main/java/com/aiquota/mobile/providers/CodexNativeHeaderSelector.kt, android/app/src/main/java/com/aiquota/mobile/providers/CodexNativeHeaderStore.kt, android/app/src/main/java/com/aiquota/mobile/providers/ProviderNativeUsagePayloadFetcher.kt, android/app/src/main/java/com/aiquota/mobile/providers/ProviderNativeJsonBridge.kt, android/app/src/test/java/com/aiquota/mobile/providers/CodexNativeHeaderSelectorTest.kt, android/app/src/test/java/com/aiquota/mobile/providers/ProviderNativeUsagePayloadFetcherTest.kt]

- [ ] 8. Minimal policy guardrail fix

  What to do: Apply or validate only the policy changes required by Task 4. In the likely case, no source change is needed because current policy already separates `codex_usage_unavailable`, `codex_auth_required`, and main-frame `401/403`.
  Must NOT do: Do not convert all Codex fetch 401s to interactive auth unless they are observed on main-frame/login-required paths.

  Parallelization: Can parallel: YES | Wave 2 | Blocks: [9] | Blocked by: [1, 4]

  References (executor has NO interview context - be exhaustive):
  - API/Type: `android/app/src/main/java/com/aiquota/mobile/providers/ProviderCollectorErrorPolicy.kt:16` - explicit auth errors.
  - API/Type: `android/app/src/main/java/com/aiquota/mobile/providers/ProviderCollectorErrorPolicy.kt:19` - Codex usage unavailable maps to no trusted payload.
  - API/Type: `android/app/src/main/java/com/aiquota/mobile/providers/ProviderRefreshHttpErrorPolicy.kt:26` - Codex main-frame 401/403 auth decision.
  - Test:     `android/app/src/test/java/com/aiquota/mobile/providers/ProviderCollectorErrorPolicyTest.kt:11` - no-payload guard.
  - Test:     `android/app/src/test/java/com/aiquota/mobile/providers/ProviderRefreshHttpErrorPolicyTest.kt:53` - 401/403 guard.

  Acceptance criteria (agent-executable only):
  - [ ] Task 4 policy tests pass.
  - [ ] If no code changed, `.omo/evidence/task-8-codex-login-auth-loop-nochange.md` states that current policy already satisfies the guardrail and names the passing tests.

  QA scenarios (MANDATORY - task incomplete without these):
  ```
  Scenario: policy tests
    Tool:     bash
    Steps:    cd android && JAVA_HOME='/c/Program Files/Android/Android Studio/jbr' gradle :app:testDebugUnitTest --tests 'com.aiquota.mobile.providers.ProviderCollectorErrorPolicyTest' --tests 'com.aiquota.mobile.providers.ProviderRefreshHttpErrorPolicyTest' --console=plain --no-daemon
    Expected: Policy tests pass.
    Evidence: .omo/evidence/task-8-codex-login-auth-loop-policy-tests.txt

  Scenario: policy diff scope
    Tool:     bash
    Steps:    git diff -- android/app/src/main/java/com/aiquota/mobile/providers/ProviderCollectorErrorPolicy.kt android/app/src/main/java/com/aiquota/mobile/providers/ProviderRefreshHttpErrorPolicy.kt > .omo/evidence/task-8-codex-login-auth-loop-policy-diff.txt
    Expected: Empty diff if no policy change was needed, or only targeted Codex auth/no-payload classification changes.
    Evidence: .omo/evidence/task-8-codex-login-auth-loop-policy-diff.txt
  ```

  Commit: NO | Message: `fix(collector): 코덱스 인증 실패 분류 유지` | Files: [android/app/src/main/java/com/aiquota/mobile/providers/ProviderCollectorErrorPolicy.kt, android/app/src/main/java/com/aiquota/mobile/providers/ProviderRefreshHttpErrorPolicy.kt, android/app/src/test/java/com/aiquota/mobile/providers/ProviderCollectorErrorPolicyTest.kt, android/app/src/test/java/com/aiquota/mobile/providers/ProviderRefreshHttpErrorPolicyTest.kt]

- [ ] 9. Focused JVM and build verification

  What to do: Run the focused test set and debug build with the known repository command shape. There is no Gradle wrapper in this checkout; use system `gradle -p android` and Android Studio JBR.
  Must NOT do: Do not report success from a cached old evidence file; rerun after tasks 6-8.

  Parallelization: Can parallel: NO | Wave 3 | Blocks: [10, 11] | Blocked by: [6, 7, 8]

  References (executor has NO interview context - be exhaustive):
  - Test:     `android/app/src/test/java/com/aiquota/mobile/providers/WebLoginActivityNativeBridgeTest.kt:8` - login bridge/route tests.
  - Test:     `android/app/src/test/java/com/aiquota/mobile/providers/CodexNativeHeaderSelectorTest.kt:6` - header selector/store tests.
  - Test:     `android/app/src/test/java/com/aiquota/mobile/providers/ProviderNativeUsagePayloadFetcherTest.kt:11` - native payload fetcher tests.
  - Test:     `android/app/src/test/java/com/aiquota/mobile/providers/ProviderCollectorErrorPolicyTest.kt:9` - collector error policy tests.
  - Test:     `android/app/src/test/java/com/aiquota/mobile/providers/ProviderRefreshHttpErrorPolicyTest.kt:9` - HTTP auth policy tests.

  Acceptance criteria (agent-executable only):
  - [ ] `cd android; $env:JAVA_HOME='C:\Program Files\Android\Android Studio\jbr'; gradle :app:testDebugUnitTest --tests 'com.aiquota.mobile.providers.CodexNativeHeaderSelectorTest' --tests 'com.aiquota.mobile.providers.WebLoginActivityNativeBridgeTest' --tests 'com.aiquota.mobile.providers.ProviderNativeUsagePayloadFetcherTest' --tests 'com.aiquota.mobile.providers.ProviderCollectorErrorPolicyTest' --tests 'com.aiquota.mobile.providers.ProviderRefreshHttpErrorPolicyTest' --console=plain --no-daemon` passes.
  - [ ] `cd android; $env:JAVA_HOME='C:\Program Files\Android\Android Studio\jbr'; gradle :app:assembleDebug --console=plain --no-daemon` passes.
  - [ ] `git diff --check` passes.

  QA scenarios (MANDATORY - task incomplete without these):
  ```
  Scenario: focused JVM tests
    Tool:     bash
    Steps:    cd android && JAVA_HOME='/c/Program Files/Android/Android Studio/jbr' gradle :app:testDebugUnitTest --tests 'com.aiquota.mobile.providers.CodexNativeHeaderSelectorTest' --tests 'com.aiquota.mobile.providers.WebLoginActivityNativeBridgeTest' --tests 'com.aiquota.mobile.providers.ProviderNativeUsagePayloadFetcherTest' --tests 'com.aiquota.mobile.providers.ProviderCollectorErrorPolicyTest' --tests 'com.aiquota.mobile.providers.ProviderRefreshHttpErrorPolicyTest' --console=plain --no-daemon
    Expected: `BUILD SUCCESSFUL`.
    Evidence: .omo/evidence/task-9-codex-login-auth-loop-focused-tests.txt

  Scenario: debug build
    Tool:     bash
    Steps:    cd android && JAVA_HOME='/c/Program Files/Android/Android Studio/jbr' gradle :app:assembleDebug --console=plain --no-daemon
    Expected: `BUILD SUCCESSFUL` and APK exists at `android/app/build/outputs/apk/debug/app-debug.apk`.
    Evidence: .omo/evidence/task-9-codex-login-auth-loop-assemble-debug.txt
  ```

  Commit: NO | Message: `test(collector): verify codex auth loop recovery` | Files: [.omo/evidence/task-9-codex-login-auth-loop-focused-tests.txt, .omo/evidence/task-9-codex-login-auth-loop-assemble-debug.txt]

- [ ] 10. Real emulator Codex login-return QA

  What to do: Drive the debug activity for Codex login on an emulator/device, capture logcat around the flow, and verify the app returns or reaches the exact external-auth blocker without premature root about:blank collection. If the existing WebView session is authenticated, verify a trusted payload or recoverable usage state appears after returning to the app.
  Must NOT do: Do not enter secrets in automation. Do not call the flow pass if the app stays in a loading loop with no logged reason.

  Parallelization: Can parallel: YES | Wave 3 | Blocks: [F1, F2, F3, F4] | Blocked by: [5, 9]

  References (executor has NO interview context - be exhaustive):
  - Pattern:  `android/app/src/debug/java/com/aiquota/mobile/debug/ProviderLoginDebugActivity.kt:11` - accepts `provider_id`.
  - Pattern:  `android/app/src/main/java/com/aiquota/mobile/providers/WebLoginActivity.kt:322` - page-finished route gate under test.
  - Pattern:  `android/app/src/main/java/com/aiquota/mobile/providers/WebLoginActivity.kt:945` - native header capture log source.
  - Pattern:  `android/app/src/main/java/com/aiquota/mobile/providers/WebLoginActivity.kt:970` - trusted payload starts collection service and finishes login.
  - External: `https://developer.android.com/tools/adb` - official adb command channel for install, activity launch, UI dump, screenshots, and logcat.

  Acceptance criteria (agent-executable only):
  - [ ] `adb -s <serial> shell am start -n com.aiquota.mobile/.debug.ProviderLoginDebugActivity --es provider_id codex` starts the Codex login flow.
  - [ ] Logcat evidence contains no `nativeCollectorStart` or equivalent start log with `reason=page_finished` for `https://chatgpt.com/` or `/codex` before usage resources appear.
  - [ ] Logcat evidence contains at least one of: `capturedNativeHeaders`, `nativeUsage provider=codex`, `awaitingUsagePayload=true`, `trusted_usage_payload`, or explicit auth-required/main-frame 401/403.
  - [ ] UI evidence shows app returned to `com.aiquota.mobile/.MainActivity`, or the blocker states the browser is at an external sign-in screen requiring human credentials.

  QA scenarios (MANDATORY - task incomplete without these):
  ```
  Scenario: authenticated or recoverable Codex login flow
    Tool:     bash
    Steps:    adb -s <serial> logcat -c; adb -s <serial> shell am start -n com.aiquota.mobile/.debug.ProviderLoginDebugActivity --es provider_id codex; sleep 30; adb -s <serial> shell dumpsys activity activities | rg 'topResumedActivity|ResumedActivity' > .omo/evidence/task-10-codex-login-auth-loop-activity.txt; adb -s <serial> exec-out uiautomator dump /dev/tty > .omo/evidence/task-10-codex-login-auth-loop-ui.xml; adb -s <serial> exec-out screencap -p > .omo/evidence/task-10-codex-login-auth-loop-screen.png; adb -s <serial> logcat -d > .omo/evidence/task-10-codex-login-auth-loop-logcat.txt
    Expected: Flow either returns to MainActivity with Codex usage/recoverable state, or records an external sign-in blocker; no premature root page-finished native collection appears before usage resource evidence.
    Evidence: .omo/evidence/task-10-codex-login-auth-loop-logcat.txt

  Scenario: premature collection regression scan
    Tool:     bash
    Steps:    rg 'provider=codex.*(nativeCollectorStart|about:blank|page_finished).*chatgpt.com(/|/codex)(\\s|$)' .omo/evidence/task-10-codex-login-auth-loop-logcat.txt > .omo/evidence/task-10-codex-login-auth-loop-premature-scan.txt; test ! -s .omo/evidence/task-10-codex-login-auth-loop-premature-scan.txt
    Expected: Scan file is empty. If non-empty, task fails and executor must diagnose the logged sequence.
    Evidence: .omo/evidence/task-10-codex-login-auth-loop-premature-scan.txt
  ```

  Commit: NO | Message: `test(qa): capture codex login return evidence` | Files: [.omo/evidence/task-10-codex-login-auth-loop-activity.txt, .omo/evidence/task-10-codex-login-auth-loop-ui.xml, .omo/evidence/task-10-codex-login-auth-loop-screen.png, .omo/evidence/task-10-codex-login-auth-loop-logcat.txt, .omo/evidence/task-10-codex-login-auth-loop-premature-scan.txt]

- [ ] 11. Real emulator Codex refresh/auth-failure QA

  What to do: Trigger a Codex refresh through the debug receiver and prove background refresh handles no-payload/retry/auth-failure boundaries correctly after the login fix. This is separate from the login flow because prior reports mention later authless fetches returning 401.
  Must NOT do: Do not force-clear app data unless the user approves; it could destroy reusable authenticated WebView state.

  Parallelization: Can parallel: YES | Wave 3 | Blocks: [F1, F2, F3, F4] | Blocked by: [5, 9]

  References (executor has NO interview context - be exhaustive):
  - Pattern:  `android/app/src/debug/java/com/aiquota/mobile/debug/ProviderRefreshDebugReceiver.kt:12` - debug receiver starts provider refresh.
  - Pattern:  `android/app/src/main/java/com/aiquota/mobile/providers/ProviderBackgroundRefreshService.kt:1083` - collector error retry path.
  - Pattern:  `android/app/src/main/java/com/aiquota/mobile/providers/ProviderBackgroundRefreshService.kt:1164` - background native JSON fetch forwards Codex headers.
  - Pattern:  `android/app/src/main/java/com/aiquota/mobile/providers/ProviderBackgroundRefreshService.kt:1180` - background native usage payload fetch forwards Codex headers.
  - Test:     `android/app/src/test/java/com/aiquota/mobile/providers/ProviderBackgroundRefreshServicePolicyTest.kt:239` - guardrails against non-production Codex route fallbacks.

  Acceptance criteria (agent-executable only):
  - [ ] `adb -s <serial> shell am broadcast -a com.aiquota.mobile.debug.REFRESH_PROVIDER --es provider_id codex` logs `debugProviderRefresh=true provider=codex`.
  - [ ] Logcat does not show an uncaught crash or `ForegroundServiceStartNotAllowedException`.
  - [ ] If Codex returns 401/403 on main-frame auth paths, evidence records interactive auth required; if native payload is unavailable without auth evidence, state remains recoverable/no-trusted-payload.

  QA scenarios (MANDATORY - task incomplete without these):
  ```
  Scenario: debug refresh trigger
    Tool:     bash
    Steps:    adb -s <serial> logcat -c; adb -s <serial> shell am broadcast -a com.aiquota.mobile.debug.REFRESH_PROVIDER --es provider_id codex; sleep 30; adb -s <serial> logcat -d > .omo/evidence/task-11-codex-login-auth-loop-refresh-logcat.txt; adb -s <serial> exec-out uiautomator dump /dev/tty > .omo/evidence/task-11-codex-login-auth-loop-refresh-ui.xml; adb -s <serial> exec-out screencap -p > .omo/evidence/task-11-codex-login-auth-loop-refresh-screen.png
    Expected: `debugProviderRefresh=true provider=codex`; no crash; resulting failure state matches auth/no-payload policy.
    Evidence: .omo/evidence/task-11-codex-login-auth-loop-refresh-logcat.txt

  Scenario: refresh failure classification scan
    Tool:     bash
    Steps:    rg 'ForegroundServiceStartNotAllowedException|FATAL EXCEPTION|provider=codex.*(INTERACTIVE_AUTH_REQUIRED|NO_TRUSTED_PAYLOAD|codex_usage_unavailable|codex_auth_required|status=401|status=403)' .omo/evidence/task-11-codex-login-auth-loop-refresh-logcat.txt > .omo/evidence/task-11-codex-login-auth-loop-refresh-scan.txt
    Expected: No crash strings; any 401/403 or auth/no-payload strings are summarized in `.omo/evidence/task-11-codex-login-auth-loop-refresh-summary.md` with the policy result.
    Evidence: .omo/evidence/task-11-codex-login-auth-loop-refresh-scan.txt
  ```

  Commit: NO | Message: `test(qa): capture codex refresh auth evidence` | Files: [.omo/evidence/task-11-codex-login-auth-loop-refresh-logcat.txt, .omo/evidence/task-11-codex-login-auth-loop-refresh-ui.xml, .omo/evidence/task-11-codex-login-auth-loop-refresh-screen.png, .omo/evidence/task-11-codex-login-auth-loop-refresh-scan.txt, .omo/evidence/task-11-codex-login-auth-loop-refresh-summary.md]

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
- Match recent touched-path style: Korean Conventional Commit subjects such as `fix(collector): 코덱스 로그인 수집 시작 순서 보정`.
- Do not commit automatically. If the user explicitly asks for commit, stage only the verified Codex auth-loop files and evidence that belongs to the same unit.
- Reference the plan file path in the final commit footer: `Plan: .omo/plans/codex-login-auth-loop-bugfix.md`.

## Success criteria
- All Must-Have shipped; all QA scenarios pass with captured evidence; F1-F4 approved; commit history clean.
- Codex login either returns to the app with trusted usage/recoverable state or records an explicit external-auth blocker; it must not loop silently.
- No premature Codex root/home `page_finished` about:blank collection occurs before usage-resource evidence.
- Codex native fetches use retained authenticated headers when available.
- `codex_usage_unavailable` is not misclassified as interactive auth without explicit auth evidence.
