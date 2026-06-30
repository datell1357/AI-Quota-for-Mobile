# ai-usage-provider-native-alignment - Work Plan

## TL;DR (For humans)
**What you'll get:** Claude, Codex, Gemini, Copilot usage collection will be aligned to the AI Usage principle: authenticated direct API/native fetch only, with WebView limited to login or session acquisition. QA will reuse saved provider session cookies so every provider can be disconnected, restored, collected, and refreshed for more than 3 minutes without another manual login.

**Why this approach:** AI Usage does not use browser DOM or a usage page scrape for the first fetch; it reads local credentials and calls provider APIs through host HTTP. Android cannot rely on those desktop files/keychains, so the closest faithful implementation is to keep WebView as the credential/session source and force all actual usage collection through the existing about:blank native bridge.

**What it will NOT do:**
- It will not add DOM scanning, page text parsing, HTML/rawText fallback, or provider-page JavaScript collection for Claude/Codex/Gemini/Copilot.
- It will not test long-term session retention yet; the target is successful collection and refresh for at least 3 minutes.
- It will not use `adb shell pm clear` during QA because that would reset foreground/battery setup.

**Effort:** Medium
**Risk:** Medium - auth/session behavior changes across four external providers and needs real-device QA.
**Decisions to sanity-check:** Gemini keeps the current usage-page RPC-session capture as an authentication/session bootstrap only; a full Gemini CLI OAuth login migration is out of scope for this pass.

Your next move: approve execution with `$omo:start-work`, or ask for a high-accuracy review of this plan first. Full execution detail follows below.

---

> TL;DR (machine): Medium effort, medium risk; strict about:blank native collection for Claude/Codex/Gemini/Copilot plus debug-cookie QA restore and 3+ minute refresh evidence.

## Scope
### Must have
- Define the local "AI Usage 방식" invariant for Android: WebView may acquire or restore auth/session, but usage payload collection for `claude`, `codex`, `gemini`, and `copilot` must run only from `about:blank` via native bridge/direct HTTP.
- Keep saved debug provider session cookies as the QA credential source. QA starts from all target providers disconnected, injects/restores each provider's saved cookie snapshot, then triggers refresh.
- Make `ProviderWebCollectorScripts.shouldRunCollector(...)`, `shouldAcceptCollectorPayload(...)`, and `build(...)` enforce about:blank-only collection for the four scoped providers.
- Remove or block scoped-provider legacy script fallbacks from `ProviderScriptProviders`/`ProviderWebCollectorScripts` so an empty or non-about:blank `pageUrl` cannot silently use DOM/network-hook scripts.
- Keep Gemini's `gemini.google.com/usage` visit only for `GeminiUsagePageRpcSession.captureScript()` and then immediately collect through `GeminiUsagePageNativeFetcher` from `about:blank`.
- Prefer direct native provider fetchers:
  - Claude: `ProviderNativeUsagePayloadFetcher.fetchClaudePayload(...)` with Claude API endpoints.
  - Codex: `ProviderNativeUsagePayloadFetcher.fetchCodexPayload(...)` with authenticated `backend-api/wham/usage`.
  - Gemini: `GeminiUsagePageNativeFetcher.fetchUsagePayload(...)` using captured RPC params/cookies.
  - Copilot: `CopilotNativeUsageFetcher` using `api.github.com/copilot_internal/user` or authorization observed from GitHub, without settings/billing HTML parsing fallback.
- Add a debug-only provider state reset/disconnect path so QA can disconnect all providers without clearing app data.
- Produce real-device/emulator evidence that each provider can collect once and refresh for at least 3 minutes after disconnect + cookie restore.

### Must NOT have (guardrails, anti-slop, scope boundaries)
- No DOM scan, `document.body`, `innerText`, visible text parsing, usage-card scraping, injected `window.fetch`/`XMLHttpRequest` network hooks, or HTML/rawText fallback for Claude/Codex/Gemini/Copilot.
- No fake, stale, or hardcoded usage payloads. If direct native collection fails, return an explicit failure/diagnostic.
- No long-term session persistence guarantee in this pass. Cookie snapshots are a debug QA tool, not product auth storage.
- No data clear during QA. Use disconnect/reset state plus cookie restore, preserving foreground-service and battery settings.
- No logging of cookie headers, bearer tokens, authorization headers, account identifiers beyond existing redacted safe logs.
- No CodeGraph use.

## Verification strategy
> Zero human intervention after the user has already supplied saved debug cookie snapshots.
- Test decision: TDD for policy/fallback removals and tests-after for debug QA receiver wiring. Use existing JUnit unit tests under `android/app/src/test/java`.
- Unit evidence: `.omo/evidence/task-1-ai-usage-provider-native-alignment-unit.log`
- Build evidence: `.omo/evidence/task-6-ai-usage-provider-native-alignment-assemble.log`
- Real QA evidence: `.omo/evidence/task-7-ai-usage-provider-native-alignment-<provider>.log`
- Manual QA surface: Android debug APK on connected device/emulator, driven by `adb` broadcasts and logcat.

## Execution strategy
### Parallel execution waves
- Wave 1: Add failing characterization tests for the invariant and debug QA hooks.
- Wave 2: Implement the smallest policy and fetcher changes that make the tests pass.
- Wave 3: Build/install debug APK and execute provider QA with restored cookies.
- Wave 4: Run final verification/audit.

### Dependency matrix
| Todo | Depends on | Blocks | Can parallelize with |
| --- | --- | --- | --- |
| 1 | none | 2, 3 | none |
| 2 | 1 | 4, 6, 7 | 3 after tests are in place |
| 3 | 1 | 6, 7 | 2 |
| 4 | 1 | 7 | 2, 3 |
| 5 | 2, 3, 4 | 7 | 6 |
| 6 | 2, 3, 4 | 7 | 5 |
| 7 | 5, 6 | final verification | none |

## Todos
> Implementation + Test = ONE todo. Never separate.
<!-- APPEND TASK BATCHES BELOW THIS LINE WITH edit/apply_patch - never rewrite the headers above. -->
- [ ] 1. Add failing tests for scoped provider about:blank-only collection
  What to do / Must NOT do: Add or extend tests so Claude/Codex/Gemini/Copilot fail if non-about:blank pages can start collection, accept payloads, or build legacy scripts. Do not loosen GLM/OpenCode/Antigravity/Cursor behavior.
  Parallelization: Wave 1 | Blocked by: none | Blocks: 2, 3, 4
  References: `android/app/src/main/java/com/aiquota/mobile/providers/ProviderWebCollectorScripts.kt:117`, `:369`, `:435`; `android/app/src/main/java/com/aiquota/mobile/providers/ProviderAboutBlankCollectorPolicy.kt:5`; `android/app/src/test/java/com/aiquota/mobile/providers/WebLoginActivityNativeBridgeTest.kt`; `android/app/src/test/java/com/aiquota/mobile/providers/ProviderBackgroundRefreshServicePolicyTest.kt`
  Acceptance criteria (agent-executable): `cd android; .\gradlew.bat testDebugUnitTest --tests "*WebLoginActivityNativeBridgeTest" --tests "*ProviderBackgroundRefreshServicePolicyTest" --tests "*ProviderWebCollectorScripts*"` fails before implementation and passes after.
  QA scenarios (name the exact tool + invocation): Unit red/green. Run `cd android; .\gradlew.bat testDebugUnitTest --tests "*WebLoginActivityNativeBridgeTest" --tests "*ProviderBackgroundRefreshServicePolicyTest"` and save output to `.omo/evidence/task-1-ai-usage-provider-native-alignment-unit.log`. PASS if tests prove non-about:blank scoped provider collection is blocked and about:blank native bridge still works.
  Commit: Y | `test(provider): 네이티브 수집 정책 회귀 테스트 추가`

- [ ] 2. Enforce about:blank-only bridge injection for Claude/Codex/Gemini/Copilot
  What to do / Must NOT do: In login and background refresh flows, reject provider-page injection for every provider enabled by `ProviderAboutBlankCollectorPolicy`, not just Codex. Keep Gemini's RPC-session capture path separate: capture params on usage page, then navigate to `about:blank`; do not post usage from the usage page.
  Parallelization: Wave 2 | Blocked by: 1 | Blocks: 5, 6, 7
  References: `android/app/src/main/java/com/aiquota/mobile/providers/WebLoginActivity.kt:629`, `:838`; `android/app/src/main/java/com/aiquota/mobile/providers/ProviderBackgroundRefreshService.kt:649`, `:683`, `:1208`; `android/app/src/main/java/com/aiquota/mobile/providers/ProviderWebCollectorScripts.kt:117`, `:369`
  Acceptance criteria (agent-executable): The scoped providers only log/evaluate collector scripts when `pageUrl == "about:blank"`; Gemini usage page can only produce an RPC session and a subsequent `about:blank` navigation.
  QA scenarios (name the exact tool + invocation): Run `cd android; .\gradlew.bat testDebugUnitTest --tests "*WebLoginActivityNativeBridgeTest" --tests "*ProviderBackgroundRefreshServicePolicyTest"` and save output to `.omo/evidence/task-2-ai-usage-provider-native-alignment-policy.log`. PASS if about:blank bridge tests pass and no test expects non-about:blank scoped provider injection.
  Commit: Y | `fix(provider): 네이티브 브리지 수집을 about blank로 제한`

- [ ] 3. Remove scoped-provider legacy fallback scripts and HTML/rawText fallback parsing
  What to do / Must NOT do: Make `ProviderWebCollectorScripts.build(...)` return only `nativeProviderPayload(...)`/`codexAboutBlankJsonPayload(...)` for scoped providers on `about:blank`, and blank/error for scoped provider non-about:blank or missing `pageUrl`. Remove or bypass Copilot settings/billing HTML parsing fallback from production fetch paths. Do not delete fallback behavior for providers outside scope.
  Parallelization: Wave 2 | Blocked by: 1 | Blocks: 5, 6, 7
  References: `android/app/src/main/java/com/aiquota/mobile/providers/ProviderWebCollectorScripts.kt:435`, `:1083`, `:1105`, `:646`, `:2800`; `android/app/src/main/java/com/aiquota/mobile/providers/ProviderScriptProviders.kt`; `android/app/src/main/java/com/aiquota/mobile/providers/CopilotNativeUsageFetcher.kt:12`; `D:/Vibe Project/AI Usage for Windows/upstream-openusage/plugins/copilot/plugin.js`
  Acceptance criteria (agent-executable): Tests fail if scoped provider scripts contain DOM/network-hook markers or if Copilot production fetch can succeed from GitHub settings/billing HTML without direct API payload.
  QA scenarios (name the exact tool + invocation): Run `cd android; .\gradlew.bat testDebugUnitTest --tests "*CopilotNativeUsageFetcherTest" --tests "*ProviderWebCollectorScripts*"` and save output to `.omo/evidence/task-3-ai-usage-provider-native-alignment-fallback.log`. PASS if Copilot native payload comes from direct API/token path and scoped legacy script markers are absent.
  Commit: Y | `fix(provider): 스코프 provider fallback 수집 제거`

- [ ] 4. Add debug-only provider disconnect/reset automation for QA
  What to do / Must NOT do: Add a debug-only broadcast receiver/action that marks one provider or all four scoped providers disconnected using existing repository/state APIs, without clearing app data, WebView data, foreground permission, or battery settings. Reuse `LocalUsageRepository.markSessionExpired(...)` or the existing disconnect path; do not create product UI.
  Parallelization: Wave 2 | Blocked by: 1 | Blocks: 7
  References: `android/app/src/debug/java/com/aiquota/mobile/debug/ProviderRefreshDebugReceiver.kt`; `android/app/src/debug/AndroidManifest.xml`; `android/app/src/main/java/com/aiquota/mobile/local/LocalUsageRepository.kt:211`; `android/app/src/main/java/com/aiquota/mobile/providers/DebugProviderSessionCookieStore.kt:57`, `:98`
  Acceptance criteria (agent-executable): A debug broadcast can set all scoped provider snapshots to disconnected while preserving external cookie snapshot files under `/sdcard/Android/data/com.aiquota.mobile/files/debug-session-cookies/`.
  QA scenarios (name the exact tool + invocation): Run `cd android; .\gradlew.bat testDebugUnitTest --tests "*DebugProviderSessionCookieStoreTest" --tests "*ProviderRefreshDebugReceiver*"` and save output to `.omo/evidence/task-4-ai-usage-provider-native-alignment-debug-reset.log`. PASS if debug manifest exposes reset only in debug and main manifest remains clean.
  Commit: Y | `test(provider): debug 세션 QA 리셋 경로 추가`

- [ ] 5. Align provider native fetch payloads with AI Usage direct API behavior
  What to do / Must NOT do: Compare each mobile native fetch path against AI Usage plugin behavior and keep only direct/native API collection. Codex stays on `backend-api/wham/usage`; Copilot prefers `api.github.com/copilot_internal/user`; Claude stays on Claude API endpoints; Gemini stays on batchExecute native fetch after RPC-session capture unless the already-existing Gemini CLI OAuth repository can be activated without new login UX. Do not add desktop credential file import.
  Parallelization: Wave 2 | Blocked by: 2, 3, 4 | Blocks: 7
  References: `android/app/src/main/java/com/aiquota/mobile/providers/ProviderNativeUsagePayloadFetcher.kt:91`, `:121`, `:162`; `android/app/src/main/java/com/aiquota/mobile/providers/GeminiUsagePageNativeFetcher.kt`; `android/app/src/main/java/com/aiquota/mobile/providers/GeminiCliOAuthRepository.kt`; `D:/Vibe Project/AI Usage for Windows/upstream-openusage/plugins/codex/plugin.js`; `D:/Vibe Project/AI Usage for Windows/upstream-openusage/plugins/gemini/plugin.js`; `D:/Vibe Project/AI Usage for Windows/upstream-openusage/plugins/copilot/plugin.js`; `D:/Vibe Project/AI Usage for Windows/upstream-openusage/plugins/claude/plugin.js`; `D:/Vibe Project/AI Usage for Windows/upstream-openusage/src-tauri/src/plugin_engine/host_api.rs`
  Acceptance criteria (agent-executable): Each scoped provider returns a payload only from a native/direct API result; failures preserve diagnostics and never synthesize usage.
  QA scenarios (name the exact tool + invocation): Run `cd android; .\gradlew.bat testDebugUnitTest --tests "*ProviderNativeUsagePayloadFetcherTest" --tests "*CopilotNativeUsageFetcherTest" --tests "*GeminiUsagePageNativeFetcher*"` and save output to `.omo/evidence/task-5-ai-usage-provider-native-alignment-native-fetch.log`. PASS if direct API parsing tests pass and forbidden fallback strings are absent from scoped production paths.
  Commit: Y | `fix(provider): AI Usage 방식 네이티브 fetch 정렬`

- [ ] 6. Build the debug APK and run static guard checks
  What to do / Must NOT do: Build debug APK and run grep/static guards that fail on scoped provider DOM/fallback markers in production collector paths. Do not rely on grep alone as final proof.
  Parallelization: Wave 3 | Blocked by: 2, 3, 4, 5 | Blocks: 7
  References: `android/app/build.gradle.kts:81`; `android/app/src/main/java/com/aiquota/mobile/providers/ProviderWebCollectorScripts.kt`; `android/app/src/main/java/com/aiquota/mobile/providers/CopilotNativeUsageFetcher.kt`
  Acceptance criteria (agent-executable): `cd android; .\gradlew.bat :app:assembleDebug testDebugUnitTest` succeeds; static guard report has no scoped provider DOM/fallback violations.
  QA scenarios (name the exact tool + invocation): Run `cd android; .\gradlew.bat :app:assembleDebug testDebugUnitTest *> ..\.omo\evidence\task-6-ai-usage-provider-native-alignment-assemble.log`. PASS if Gradle exits 0 and `android/app/build/outputs/apk/debug/app-debug.apk` exists.
  Commit: N | included in prior commits unless only QA script/test wiring changed.

- [ ] 7. Real QA: disconnect all, restore provider cookies, collect, then observe 3+ minute refresh
  What to do / Must NOT do: For each scoped provider, start from disconnected state, push the saved debug session cookie JSON, trigger refresh through debug receiver, and observe at least 190 seconds of refresh logs. Do not manually log in during QA, do not clear app data, and do not accept stale/previous usage as success.
  Parallelization: Wave 3 | Blocked by: 4, 5, 6 | Blocks: final verification
  References: `android/app/src/main/java/com/aiquota/mobile/providers/DebugProviderSessionCookieStore.kt:57`, `:107`; `android/app/src/debug/java/com/aiquota/mobile/debug/ProviderRefreshDebugReceiver.kt`; `android/app/src/main/java/com/aiquota/mobile/providers/ProviderBackgroundRefreshService.kt:589`; `android/app/src/main/java/com/aiquota/mobile/providers/ProviderRefreshPlan.kt:98`
  Acceptance criteria (agent-executable): For every provider in `claude codex gemini copilot`, log evidence contains `debugCookieRestore=true`, an about:blank/native collector start, a successful snapshot outcome, and another refresh cycle after more than 180 seconds. Evidence must not contain provider-page JS collection, DOM fallback, or auth-required/disconnected final state.
  QA scenarios (name the exact tool + invocation): For each `<provider>`, run:
  `adb install -r android/app/build/outputs/apk/debug/app-debug.apk`
  `adb push .omo/secrets/provider-session-cookies/<provider>.json /sdcard/Android/data/com.aiquota.mobile/files/debug-session-cookies/<provider>.json`
  `adb logcat -c`
  `adb shell am broadcast -a com.aiquota.mobile.debug.RESET_PROVIDER -n com.aiquota.mobile/.debug.ProviderStateDebugReceiver --es provider_id all`
  `adb shell am broadcast -a com.aiquota.mobile.debug.REFRESH_PROVIDER -n com.aiquota.mobile/.debug.ProviderRefreshDebugReceiver --es provider_id <provider>`
  `powershell -NoProfile -Command "Start-Sleep -Seconds 190"`
  `adb logcat -d -v time -s AIQuotaBgRefreshService AIQuotaCollector AIQuotaLogin AIQuotaDebugCookie AIQuotaDebugRefresh > .omo/evidence/task-7-ai-usage-provider-native-alignment-<provider>.log`
  PASS if the log satisfies the acceptance criteria and app state shows the provider connected with fresh usage after the final refresh.
  Commit: N | QA evidence only.

## Final verification wave
> Runs in parallel after ALL todos. ALL must APPROVE. Surface results and wait for the user's explicit okay before declaring complete.
- [ ] F1. Plan compliance audit
  Command: review the final diff and evidence against this plan; save `.omo/evidence/f1-ai-usage-provider-native-alignment-plan-audit.md`.
  PASS if every Must have is implemented and every Must NOT guardrail has evidence.
- [ ] F2. Code quality review
  Command: inspect changed Kotlin/test/debug files for minimality, token/cookie logging, stale state masking, and unrelated edits; save `.omo/evidence/f2-ai-usage-provider-native-alignment-code-review.md`.
  PASS if there are no unhandled findings.
- [ ] F3. Real manual QA
  Command: rerun Todo 7 for all four providers after the final APK build.
  PASS if all four provider logs pass and no provider requires manual login.
- [ ] F4. Scope fidelity
  Command: `git diff --check` and `git diff --stat`; compare changed files to this plan.
  PASS if the diff is scoped to provider collection policy/fetchers/tests/debug QA support and contains no unrelated refactor.

## Commit strategy
- Use small commits if the implementation naturally splits:
  1. `test(provider): 네이티브 수집 정책 회귀 테스트 추가`
  2. `fix(provider): 네이티브 수집을 about blank로 제한`
  3. `fix(provider): 스코프 provider fallback 수집 제거`
  4. `test(provider): debug 세션 QA 리셋 경로 추가`
- If the final diff is small and tightly coupled, one commit is acceptable:
  `fix(provider): AI Usage 방식 네이티브 수집 정렬`
- Do not commit automatically unless the user explicitly asks.

## Success criteria
- AI Usage behavior is represented correctly in Android terms: credential/session acquisition may use WebView, but scoped provider usage payloads come only from native/direct fetch started on `about:blank`.
- Claude, Codex, Gemini, and Copilot have no production DOM scan, page text parsing, HTML/rawText fallback, or provider-page JS collection path.
- QA can run without another manual provider login by restoring saved provider session cookie snapshots.
- QA starts from all scoped providers disconnected, then proves collection and more than 3 minutes of refresh for each provider.
- Failure states remain explicit; no stale or fake usage is shown as normal.
