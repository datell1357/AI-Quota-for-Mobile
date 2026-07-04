# glm-first-login-session-recovery-20260704 - Work Plan

## TL;DR (For humans)
<!-- Fill this LAST, after the detailed plan below is written, so it summarizes the REAL plan. -->
<!-- Plain English for a non-engineer: NO file paths, NO todo numbers, NO wave/agent/tool names. -->

**What you'll get:** GLM에서 Google 첫 로그인 직후 앱이 오류/사용 불가로 돌아오지 않고 바로 사용량 수집까지 이어집니다. 이후 저장된 GLM 세션이 만료돼도 앱이 가능한 범위에서 조용히 갱신을 시도해 장기 수집을 유지합니다.

**Why this approach:** 지금 문제는 로그인 성공 자체가 아니라 사용량 수집에 필요한 신뢰 가능한 GLM 세션 자료가 저장되기 전에 흐름이 종료되는 것입니다. 그래서 채팅 페이지 인증 신호를 중간 성공으로 보고, 실제 사용량 API는 기존 native/about:blank 경로로만 확인합니다.

**What it will NOT do:** 다른 provider 로직은 건드리지 않습니다. 화면 DOM을 읽거나 과거 값을 성공처럼 보여주는 우회 처리는 넣지 않습니다. 전역 쿠키 삭제나 광범위한 세션 초기화도 하지 않습니다.

**Effort:** Medium
**Risk:** High - 로그인/세션/외부 WebView 흐름이며 실기기 Google 로그인 타이밍에 민감합니다.
**Decisions to sanity-check:** GLM만 수정하고, 배터리/데이터 보호를 위해 isolated renewal은 저장 세션 실패 때만 실행합니다.

Your next move: execute immediately. Full execution detail follows below.

---

> TL;DR (machine): Medium, high-risk session/auth fix. GLM first-login collection and long-session renewal only, no DOM/fallback/stale-success.

## Scope
### Must have
- GLM Google first-login flow must continue from authenticated `chat.z.ai`/`z.ai` pages to usage/native collection without forcing the user to press login a second time.
- GLM Web OAuth background refresh must first use stored cookie + Authorization request headers, then attempt isolated WebView about:blank native renewal when the stored auth is expired or missing.
- Automatic isolated renewal must remain rate-limited enough to protect battery/data, but must not turn a newly expired session into a 10-minute dead zone after a failed stored-header attempt.
- GLM failures must remain explicit failures/pending states, never fake fresh usage.
- The implementation must be GLM-scoped.

### Must NOT have (guardrails, anti-slop, scope boundaries)
- No edits to Claude/Codex/Cursor/Gemini/OpenCode/Copilot logic.
- No DOM scan, visible text usage extraction, localStorage/sessionStorage scraping, or stale-success fallback.
- No global cookie wipe, no broad provider cleanup changes.
- No lowering existing GLM tests that prevent chat bootstrap Authorization from being treated as quota API replay auth.
- No AAB/Play Console work in this branch task.

## Verification strategy
> Zero human intervention - all verification is agent-executed.
- Test decision: TDD with Gradle unit/source-policy tests, then emulator/logcat surface proof if a device session is available without new credentials.
- Evidence root: `.omo/evidence/glm-first-login-session-recovery-20260704/`
- RED proof: focused GLM tests fail for first-login continuation and renewal cooldown.
- GREEN proof: same focused tests pass plus existing GLM/native bridge regression tests pass.
- Scope proof: diff scan must show touched product files are GLM-related branches only and no forbidden DOM/fallback/stale-success additions.

## Execution strategy
### Parallel execution waves
> Target 5-8 todos per wave. Fewer than 3 (except the final) means you under-split.
- Wave 1: RED tests for first-login continuation and renewal behavior.
- Wave 2: Minimal GLM-only implementation.
- Wave 3: Focused verification, scope audit, commit, push.

### Dependency matrix
| Todo | Depends on | Blocks | Can parallelize with |
| --- | --- | --- | --- |
| T01 RED first-login continuation | none | T03 | T02 |
| T02 RED renewal cooldown/session path | none | T03 | T01 |
| T03 GLM implementation | T01, T02 | T04, T05 | none |
| T04 focused tests/scope scans | T03 | T06 | T05 |
| T05 emulator/logcat surface proof | T03 | T06 | T04 |
| T06 commit/push | T04, T05 | final | none |

## Todos
> Implementation + Test = ONE todo. Never separate.
<!-- APPEND TASK BATCHES BELOW THIS LINE WITH edit/apply_patch - never rewrite the headers above. -->
- [ ] T01. Add RED proof for first GLM Google login continuation.
  What to do / Must NOT do: Add a focused test showing GLM must not finish or surface `login_complete_without_payload` after authenticated chat/resource progress; it must keep the WebView alive and continue toward usage/about:blank native collection. Do not make chat bootstrap Authorization a quota replay header.
  Parallelization: Wave 1 | Blocked by: none | Blocks: T03
  References: `android/app/src/main/java/com/aiquota/mobile/providers/WebLoginActivity.kt:312`, `:671`, `:929`, `:986`; `android/app/src/test/java/com/aiquota/mobile/providers/GlmWebSessionClearPolicyTest.kt`
  Acceptance criteria: `gradle -p android --no-daemon -Pkotlin.incremental=false :app:testDebugUnitTest --tests "com.aiquota.mobile.providers.GlmWebSessionClearPolicyTest"` exits non-zero before implementation for the new assertion only.
  QA scenarios: auxiliary CLI, exact invocation above, RED evidence `.omo/evidence/glm-first-login-session-recovery-20260704/t01-red-first-login.txt`.
  Commit: N | included with implementation commit.

- [ ] T02. Add RED proof for GLM Web OAuth long-session renewal.
  What to do / Must NOT do: Add a focused test showing an auth-required stored Web OAuth fetch must be allowed to trigger isolated renewal immediately on that cycle and must record cooldown only for the isolated renewal attempt, not for every stored-header auth failure. Do not change other providers' auth failure policy.
  Parallelization: Wave 1 | Blocked by: none | Blocks: T03
  References: `android/app/src/main/java/com/aiquota/mobile/providers/ProviderBackgroundRefreshService.kt:496`; `android/app/src/main/java/com/aiquota/mobile/providers/GlmUsageRepository.kt:165`; `android/app/src/test/java/com/aiquota/mobile/providers/ProviderBackgroundRefreshServicePolicyTest.kt`
  Acceptance criteria: `gradle -p android --no-daemon -Pkotlin.incremental=false :app:testDebugUnitTest --tests "com.aiquota.mobile.providers.ProviderBackgroundRefreshServicePolicyTest"` exits non-zero before implementation for the new assertion only.
  QA scenarios: auxiliary CLI, exact invocation above, RED evidence `.omo/evidence/glm-first-login-session-recovery-20260704/t02-red-session-renewal.txt`.
  Commit: N | included with implementation commit.

- [ ] T03. Implement the minimal GLM-only fix.
  What to do / Must NOT do: Change only GLM branches. First-login path should keep waiting/redirecting until trusted GLM usage native bridge starts or explicit auth-required is proven. Renewal path should keep stored native replay first, then isolated about:blank native renewal when replay says `glm_auth_required`/`glm_web_authorization_missing`, with cooldown scoped to isolated renewal attempts.
  Parallelization: Wave 2 | Blocked by: T01, T02 | Blocks: T04, T05
  References: `WebLoginActivity.kt`, `GlmUsageRepository.kt`, `ProviderBackgroundRefreshService.kt`, `GlmIsolatedWebSessionService.kt`
  Acceptance criteria: T01/T02 focused tests pass without weakening existing GLM guardrail tests.
  QA scenarios: auxiliary CLI, `git diff -- android/app/src/main/java/com/aiquota/mobile/providers android/app/src/test/java/com/aiquota/mobile/providers`, evidence `.omo/evidence/glm-first-login-session-recovery-20260704/t03-green-diff.txt`.
  Commit: Y | `fix(provider): GLM 첫 로그인과 세션 갱신 안정화`

- [ ] T04. Run focused regression and forbidden-scope scans.
  What to do / Must NOT do: Run GLM/session/native bridge tests and scan added product diff for forbidden DOM/fallback/stale-success tokens. Do not count grep-only success as behavior proof.
  Parallelization: Wave 3 | Blocked by: T03 | Blocks: T06
  References: `GlmWebSessionClearPolicyTest.kt`, `ProviderBackgroundRefreshServicePolicyTest.kt`, `GlmUsageFetcherTest.kt`, `ProviderWebCollectorScriptsTest.kt`, `ProviderNativeUsagePayloadFetcherTest.kt`
  Acceptance criteria: focused Gradle command exits 0; product diff forbidden scan returns no added DOM/localStorage/sessionStorage/fallback/stale-success usage path.
  QA scenarios: auxiliary CLI, `gradle -p android --no-daemon -Pkotlin.incremental=false :app:testDebugUnitTest --tests "com.aiquota.mobile.providers.GlmWebSessionClearPolicyTest" --tests "com.aiquota.mobile.providers.ProviderBackgroundRefreshServicePolicyTest" --tests "com.aiquota.mobile.providers.GlmUsageFetcherTest" --tests "com.aiquota.mobile.providers.ProviderWebCollectorScriptsTest" --tests "com.aiquota.mobile.providers.ProviderNativeUsagePayloadFetcherTest"`, evidence `.omo/evidence/glm-first-login-session-recovery-20260704/t04-focused-tests.txt`.
  Commit: N | verification only.

- [ ] T05. Run install/logcat surface proof when emulator is available.
  What to do / Must NOT do: Build/install debug APK, trigger GLM manual refresh if an existing GLM session exists, and capture redacted log markers showing stored fetch then isolated/native path or successful snapshot. If credentials are required, record blocked evidence instead of asking during this branch task.
  Parallelization: Wave 3 | Blocked by: T03 | Blocks: T06
  References: `android/app/build/outputs/apk/debug/app-debug.apk`, `ProviderBackgroundRefreshService`
  Acceptance criteria: app installs; logcat marker capture either shows GLM native success/renewal path or records credential-required blocker with no secrets.
  QA scenarios: computer/ADB surface, exact invocation `adb install -r android/app/build/outputs/apk/debug/app-debug.apk` then provider-scoped refresh broadcast, evidence `.omo/evidence/glm-first-login-session-recovery-20260704/t05-emulator-glm-refresh/`.
  Commit: N | verification only.

- [ ] T06. Commit and push 29version-code.
  What to do / Must NOT do: Stage only GLM-related product/tests plus this plan if committed; exclude `.idea`, broad `.omo` state, build outputs, and unrelated provider changes.
  Parallelization: final | Blocked by: T04, T05 | Blocks: final
  References: git status, git diff --cached
  Acceptance criteria: `git push -u origin 29version-code` exits 0 and final status lists only pre-existing local `.idea/.omo` noise.
  QA scenarios: auxiliary CLI, `git log --oneline origin/28version-code..HEAD`, evidence in final response.
  Commit: Y | atomic Conventional Commit(s)

## Final verification wave
> Runs in parallel after ALL todos. ALL must APPROVE. Surface results and wait for the user's explicit okay before declaring complete.
- [ ] F1. Plan compliance audit
- [ ] F2. Code quality review
- [ ] F3. Real manual QA
- [ ] F4. Scope fidelity

## Commit strategy
- One implementation commit for GLM behavior and tests.
- Optional docs commit for this plan only if staging it does not pull unrelated `.omo` state.
- Final branch push: `origin/29version-code`.

## Success criteria
- First GLM Google login does not require a second manual login before usage collection starts.
- GLM Web OAuth long-session refresh can recover from expired stored native headers through isolated about:blank native renewal.
- Existing GLM guardrails remain green: no chat bootstrap Authorization as quota replay header, no DOM/pageText usage success path, no stale success.
- No non-GLM provider product logic is modified.
