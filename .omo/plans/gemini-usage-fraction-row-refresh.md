# gemini-usage-fraction-row-refresh - Work Plan

## TL;DR (For humans)
**What you'll get:** Gemini 사용량 화면에서 `1% 사용됨`처럼 실제로 변한 값이 앱에도 반영되게 한다. 현재처럼 업데이트 시간만 바뀌고 사용량은 `100% left`로 고정되는 상태를 고친다.

**Why this approach:** 수집 자체는 성공하고 있다. 문제는 Gemini native RPC row의 두 번째 값 `0.01`을 사용률 fraction이 아니라 사용한 요청 수로 잘못 해석하는 collector 경계에 있으므로, 표시/위젯/normalizer가 아니라 Gemini native parser에서 바로잡는다.

**What it will NOT do:** DOM scan, visible DOM fallback, webview-js fallback, Gemini CLI OAuth, Code Assist, saved-cookie restore를 사용하지 않는다. QA 중 앱 데이터 삭제, uninstall, `pm clear`도 금지한다.

**Effort:** Short
**Risk:** Medium - Google/Gemini private RPC row shape에 대한 해석을 고치는 작업이라 실기기 QA가 필수다.
**Decisions to sanity-check:** `row[1]`이 `0.0..1.0` 범위면 used fraction으로 해석하고, `row[1] > 1.0`은 기존 amount 해석을 유지한다. HTML bootstrap은 이미 native HTTP 응답 기반 경로지만 이번 수정의 성공 기준은 `jSf9Qc` direct RPC row다.

Your next move: `$omo:start-work` 또는 “계획 진행해”로 실행을 시작한다. Full execution detail follows below.

---

> TL;DR (machine): Short/Medium risk; fix Gemini `jSf9Qc` direct row fraction semantics with TDD, preserve-data device QA, no DOM/fallback.

## Scope
### Must have
- Fix Gemini usage-page native RPC direct row parsing in `android/app/src/main/java/com/aiquota/mobile/providers/GeminiUsagePageNativeFetcher.kt`.
- For `jSf9Qc` direct quota rows shaped like `[remaining, second, type, reset]`:
  - `second == 0.0`: emit `used_percent=0.0`, `remaining_percent=100.0`, preserve remaining amount.
  - `0.0 < second <= 1.0`: treat `second` as used fraction; for `0.01`, emit `used_percent=1.0`, `remaining_percent=99.0`.
  - `second > 1.0`: preserve existing amount behavior; `[450,150,1]` remains 75% remaining.
- Keep `collectorMode=native-usage-page-rpc` for accepted direct rows.
- Keep `otAQ7b` nested/deep candidate rows metadata-only; they must not become payload.
- Add focused unit coverage proving raw payload and normalized snapshot both reflect `1% used`.
- Run preserve-data APK QA on device/emulator with Gemini-only refresh and snapshot readback.

### Must NOT have (guardrails, anti-slop, scope boundaries)
- No DOM scan, no visible-DOM parser, no `document.documentElement`, no `innerText`, no `querySelector`.
- No `collectorMode=webview-js`, no fallback collector, no `native-usage-page-rpc-deep` payload.
- No Gemini CLI OAuth, Google Code Assist, saved-cookie restore, or saved-cookie injection path.
- No app data wipe: do not use uninstall, `adb shell pm clear`, `RESET_PROVIDER`, or any command that forces foreground service / battery optimization setup again.
- Do not change Claude, Codex, or Copilot behavior unless a shared-file edit unexpectedly requires regression verification.
- Do not weaken existing tests that guard `jSf9Qc` direct rows or `otAQ7b` deep rows.

## Verification strategy
> Zero human intervention - all verification is agent-executed. The only human action after execution is accepting the completed report, not performing QA.
- Test decision: TDD with JUnit/Gradle.
- RED evidence: `.omo/evidence/task-1-gemini-usage-fraction-row-refresh-red.txt`.
- GREEN evidence: `.omo/evidence/task-1-gemini-usage-fraction-row-refresh-green.txt`.
- Device QA evidence: `.omo/evidence/task-4-gemini-usage-fraction-refresh.log` and `.omo/evidence/task-4-gemini-usage-fraction-snapshot.txt`.
- Commands must set Java 17 first in PowerShell:
  - `$env:JAVA_HOME='C:\Users\datell1357\Tools\android-reversing\jdk-17'`
  - `$env:PATH="$env:JAVA_HOME\bin;$env:PATH"`

## Execution strategy
### Parallel execution waves
- Wave 1: TDD and implementation in the Gemini native fetcher.
- Wave 2: focused regression/source guard checks.
- Wave 3: preserve-data device QA.
- Wave 4: final review and commit/push.

### Dependency matrix
| Todo | Depends on | Blocks | Can parallelize with |
| --- | --- | --- | --- |
| 1 | none | 2, 3, 4 | none |
| 2 | 1 | 3, 4 | none |
| 3 | 1, 2 | 4 | none |
| 4 | 1, 2, 3 | 5 | none |
| 5 | 4 | final | none |

## Todos
> Implementation + Test = ONE todo. Never separate.
<!-- APPEND TASK BATCHES BELOW THIS LINE WITH edit/apply_patch - never rewrite the headers above. -->

- [ ] 1. `GeminiUsagePageNativeFetcherTest.kt` + `GeminiUsagePageNativeFetcher.kt`: TDD fraction-row semantics for `jSf9Qc`
  What to do / Must NOT do: Add a failing test in `android/app/src/test/java/com/aiquota/mobile/providers/GeminiUsagePageNativeFetcherTest.kt` using a direct `jSf9Qc` payload with 5-hour row `[2374.0,0.01,1,[[1782793673,919528000]]]` and weekly row `[48318.0,0.0,2,[[1783337273,919653000]]]`. The RED assertion must prove the current implementation incorrectly normalizes 5-hour to `remaining_percent=100` / no `used_percent=1`. Then change only `android/app/src/main/java/com/aiquota/mobile/providers/GeminiUsagePageNativeFetcher.kt` so `quotaLine` emits `used_percent=1.0`, `remaining_percent=99.0` for the 5-hour row, and `used_percent=0.0`, `remaining_percent=100.0` for weekly. Do not touch DOM scripts or fallback paths.
  Parallelization: Wave 1 | Blocked by: none | Blocks: 2, 3, 4
  References (executor has NO interview context - be exhaustive): `android/app/src/main/java/com/aiquota/mobile/providers/GeminiUsagePageNativeFetcher.kt:627`, `android/app/src/main/java/com/aiquota/mobile/providers/GeminiUsagePageNativeFetcher.kt:636`, `android/app/src/main/java/com/aiquota/mobile/providers/GeminiUsagePageNativeFetcher.kt:646`, `android/app/src/test/java/com/aiquota/mobile/providers/GeminiUsagePageNativeFetcherTest.kt:93`, `.omo/evidence/gemini-plan-refresh-20260701-153036.log`
  Acceptance criteria (agent-executable): First run `gradle -p android :app:testDebugUnitTest --tests "com.aiquota.mobile.providers.GeminiUsagePageNativeFetcherTest"` and capture RED output to `.omo/evidence/task-1-gemini-usage-fraction-row-refresh-red.txt`. After implementation, the same command exits 0 and is captured to `.omo/evidence/task-1-gemini-usage-fraction-row-refresh-green.txt`.
  QA scenarios (name the exact tool + invocation): Unit scenario via PowerShell: `gradle -p android :app:testDebugUnitTest --tests "com.aiquota.mobile.providers.GeminiUsagePageNativeFetcherTest"`. PASS if the new test confirms raw payload lines contain `remaining_percent=99.0` and `used_percent=1.0` for 5-hour, and existing zero-row/direct-row and `otAQ7b` metadata-only tests still pass. Evidence `.omo/evidence/task-1-gemini-usage-fraction-row-refresh-green.txt`.
  Commit: Y | `fix(provider): Gemini 사용률 fraction row 반영`

- [ ] 2. `ProviderNativeUsagePayloadFetcherTest.kt` or existing normalizer test: prove normalized snapshot surfaces 1% used
  What to do / Must NOT do: Add the smallest focused test that feeds the new Gemini native payload through `ProviderUsageNormalizer.normalize(...)` and asserts the resulting 5-hour line has `usedPercent=1`, `remainingPercent=0.99f`, and `remainingText="99% left"` while weekly remains `usedPercent=0`, `remainingPercent=1f`. Prefer extending `android/app/src/test/java/com/aiquota/mobile/providers/ProviderNativeUsagePayloadFetcherTest.kt` because it already covers Gemini native batchExecute normalization. Do not add a broad UI test for this unit boundary.
  Parallelization: Wave 2 | Blocked by: 1 | Blocks: 3, 4
  References: `android/app/src/test/java/com/aiquota/mobile/providers/ProviderNativeUsagePayloadFetcherTest.kt:45`, `android/app/src/main/java/com/aiquota/mobile/providers/ProviderUsageNormalizer.kt:1572`, `android/app/src/main/java/com/aiquota/mobile/providers/ProviderUsageNormalizer.kt:1589`
  Acceptance criteria (agent-executable): `gradle -p android :app:testDebugUnitTest --tests "com.aiquota.mobile.providers.ProviderNativeUsagePayloadFetcherTest"` exits 0 and evidence is saved to `.omo/evidence/task-2-gemini-usage-fraction-normalizer-green.txt`.
  QA scenarios (name the exact tool + invocation): Unit scenario via PowerShell: `gradle -p android :app:testDebugUnitTest --tests "com.aiquota.mobile.providers.ProviderNativeUsagePayloadFetcherTest"`. PASS if the normalized snapshot assertion proves the user-facing percent changes, not just raw JSON. Evidence `.omo/evidence/task-2-gemini-usage-fraction-normalizer-green.txt`.
  Commit: same as Todo 1

- [ ] 3. Source guard and focused regression: keep DOM/fallback/deep payload prohibited
  What to do / Must NOT do: Re-run source guard tests and, if needed, add a source-inspection assertion that `GeminiUsagePageNativeFetcher.kt` still does not contain `native-usage-page-rpc-deep` as a payload mode and Gemini dispatch still does not use `GoogleWebSessionCodeAssistFetcher.fetchUsagePayload(ProviderId.GEMINI)`. Do not remove metadata-only deep discovery logging.
  Parallelization: Wave 2 | Blocked by: 1, 2 | Blocks: 4
  References: `android/app/src/test/java/com/aiquota/mobile/providers/ProviderNativeUsagePayloadFetcherTest.kt:24`, `android/app/src/main/java/com/aiquota/mobile/providers/GeminiUsagePageNativeFetcher.kt:297`, `android/app/src/main/java/com/aiquota/mobile/providers/ProviderNativeUsagePayloadFetcher.kt:178`
  Acceptance criteria (agent-executable): `gradle -p android :app:testDebugUnitTest --tests "com.aiquota.mobile.providers.GeminiUsagePageNativeFetcherTest" --tests "com.aiquota.mobile.providers.ProviderNativeUsagePayloadFetcherTest"` exits 0 and evidence is saved to `.omo/evidence/task-3-gemini-usage-fraction-focused-green.txt`.
  QA scenarios (name the exact tool + invocation): Source guard scenario via PowerShell: `rg -n "collectorMode=webview-js|native-usage-page-rpc-deep|document\\.documentElement|innerText|querySelector|GoogleWebSessionCodeAssistFetcher.fetchUsagePayload\\(ProviderId.GEMINI\\)" android/app/src/main/java/com/aiquota/mobile/providers android/app/src/test/java/com/aiquota/mobile/providers`. PASS if only allowed historical tests or non-Gemini providers appear, and no Gemini native collector production path violates guardrails. Evidence `.omo/evidence/task-3-gemini-usage-fraction-source-guard.txt`.
  Commit: same as Todo 1

- [ ] 4. Preserve-data device QA: prove Gemini refresh updates the stored usage percent
  What to do / Must NOT do: Build and install the debug APK without clearing data, then run Gemini-only refresh. Use existing logged-in WebView/session state. Do not call `RESET_PROVIDER`, do not inject saved cookies, and do not perform login unless the refresh explicitly returns auth-required evidence.
  Parallelization: Wave 3 | Blocked by: 1, 2, 3 | Blocks: 5
  References: `.omo/evidence/gemini-plan-refresh-20260701-153036.log`, `android/app/src/debug/java/com/aiquota/mobile/debug/ProviderRefreshDebugReceiver.kt:31`, `android/app/src/main/java/com/aiquota/mobile/providers/ProviderBackgroundRefreshService.kt:278`
  Acceptance criteria (agent-executable): Build/install/refresh commands all exit 0; logcat contains `nativeUsage provider=gemini ok=true`, `rpcId=jSf9Qc`, `collectorMode=native-usage-page-rpc`, and does not contain `collectorMode=webview-js`, `native-usage-page-rpc-deep`, `fallback`, `document.documentElement`, `innerText`, or `querySelector` for Gemini. Snapshot readback contains Gemini `connectionState":"CONNECTED"` and 5-hour `usedPercent":1` or `remainingPercent":0.99`.
  QA scenarios (name the exact tool + invocation):
  - Build: `gradle -p android :app:assembleDebug | Tee-Object -FilePath .omo/evidence/task-4-gemini-usage-fraction-assemble.txt`. PASS if `BUILD SUCCESSFUL`.
  - Install: `adb install -r android\app\build\outputs\apk\debug\app-debug.apk | Tee-Object -FilePath .omo/evidence/task-4-gemini-usage-fraction-install.txt`. PASS if `Success`; this must be preserve-data.
  - Refresh/logcat: `adb logcat -c; adb shell am broadcast -p com.aiquota.mobile -a com.aiquota.mobile.debug.REFRESH_PROVIDER --es provider_id gemini; Start-Sleep -Seconds 90; adb logcat -d -v time -s AIQuotaDebugRefresh AIQuotaGeminiUsageRpc AIQuotaNativeUsage AIQuotaBgRefreshService AIQuotaCollector AIQuotaLogin | Tee-Object -FilePath .omo/evidence/task-4-gemini-usage-fraction-refresh.log`. PASS if log strings match acceptance.
  - Snapshot: `adb shell run-as com.aiquota.mobile cat shared_prefs/usage_data_gemini.xml | Tee-Object -FilePath .omo/evidence/task-4-gemini-usage-fraction-snapshot.txt`. PASS if `updated_at` is after the refresh and current usage is not stuck at `usedPercent":0` when the live page/log row shows fraction `0.01`.
  Commit: same as Todo 1

- [ ] 5. Final cleanup, diff review, commit, push
  What to do / Must NOT do: Review the final diff, run `git diff --check`, stage only touched code/test files and intentional `.omo/plans/gemini-usage-fraction-row-refresh.md` if the user wants plan committed with execution, commit with Conventional Commit Korean message, and push `25version-code`. Do not stage unrelated `.omo/evidence`, `.omo/boulder.json`, `.idea`, or prior untracked team artifacts unless explicitly requested.
  Parallelization: Wave 4 | Blocked by: 4 | Blocks: final
  References: repository root `AGENTS.md`, current branch `25version-code`, user standing instruction "매 작업마다 git commit/push까지 진행".
  Acceptance criteria (agent-executable): `git diff --check` exits 0 except known CRLF warnings; `git status --short` shows only intended staged files before commit; `git push origin 25version-code` exits 0.
  QA scenarios (name the exact tool + invocation): Git scenario via PowerShell: `git diff --check`, `git status --short`, `git log -1 --oneline`, `git push origin 25version-code`. PASS if commit exists on `25version-code` and no unrelated dirty files were staged. Evidence `.omo/evidence/task-5-gemini-usage-fraction-git.txt`.
  Commit: Y | `fix(provider): Gemini 사용률 fraction row 반영`

## Final verification wave
> Runs in parallel after ALL todos. ALL must APPROVE. This wave is agent-executed; user acceptance is only after evidence is reported.
- [ ] F1. Plan compliance audit: verify every Must have / Must NOT have item above has direct evidence in unit logs, logcat, snapshot, or diff. Evidence `.omo/evidence/f1-gemini-usage-fraction-plan-compliance.md`.
- [ ] F2. Code quality review: review final diff for smallest root fix, no unrelated refactor, no new fallback path, no broad normalizer damage. Evidence `.omo/evidence/f2-gemini-usage-fraction-code-review.md`.
- [ ] F3. Real manual QA: rerun the Gemini-only preserve-data refresh scenario from Todo 4 after final build; attach logcat and snapshot paths. Evidence `.omo/evidence/f3-gemini-usage-fraction-real-qa.md`.
- [ ] F4. Scope fidelity: confirm Claude/Codex/Copilot files were not modified and Gemini still uses about:blank native collection only. Evidence `.omo/evidence/f4-gemini-usage-fraction-scope.md`.

## Commit strategy
- One implementation commit after Todo 4 passes: `fix(provider): Gemini 사용률 fraction row 반영`.
- Include only changed production/test files. Include this plan file only if execution policy for the current branch requires plan artifacts in commits; otherwise leave `.omo/plans` as local evidence.
- Push to `origin 25version-code`.
- Never amend existing commits; create a new commit.

## Success criteria
- Current Gemini visible usage `1% 사용됨` is represented in app storage as 5-hour `usedPercent=1` / `remainingPercent=0.99`, not `usedPercent=0` / `remainingPercent=1`.
- Weekly `0% 사용됨` remains `usedPercent=0` / `remainingPercent=1`.
- Native collection remains about:blank/native HTTP/RPC only: no DOM scan, no fallback, no webview-js, no `otAQ7b` deep payload.
- Preserve-data APK QA proves timestamp and values both update after Gemini-only refresh.
- Focused tests and final build pass.
