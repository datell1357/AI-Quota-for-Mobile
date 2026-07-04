# GLM First Login Session Recovery Review

## Scope
- Branch: `29version-code`
- User-facing issue: GLM first Google login returns through Z.ai/login flow without first-run usage collection, and long-running Web OAuth refresh can stop after stored GLM web session state is missing or stale.
- Production files reviewed:
  - `android/app/src/main/java/com/aiquota/mobile/providers/GlmUsageRepository.kt`
  - `android/app/src/main/java/com/aiquota/mobile/providers/WebLoginActivity.kt`
- Test files reviewed:
  - `android/app/src/test/java/com/aiquota/mobile/providers/GlmWebSessionClearPolicyTest.kt`
  - `android/app/src/test/java/com/aiquota/mobile/providers/ProviderBackgroundRefreshServicePolicyTest.kt`

## Programming / TDD Review
- RED first-login evidence: `t01-red-first-login-rerun.txt`
  - Failing assertions covered authenticated GLM chat progress not continuing into the usage route, missing quota Authorization not keeping login open, and premature GLM login reset.
- RED long-session evidence: `t02-red-session-renewal.txt`
  - Failing assertion covered missing stored GLM web cookie not being classified as auth-required, which prevented isolated GLM WebView renewal.
- GREEN evidence: `t04-focused-tests.txt`
  - `GlmWebSessionClearPolicyTest`
  - `ProviderBackgroundRefreshServicePolicyTest`
  - `GlmUsageFetcherTest`
  - `ProviderWebCollectorScriptsTest`
  - `ProviderNativeUsagePayloadFetcherTest`
  - Result: `BUILD SUCCESSFUL`.
- Build evidence: `t05-assemble-debug.txt`
  - Result: `BUILD SUCCESSFUL`.

## Root Cause Map
- First-login root cause:
  - After Google login, GLM can show authenticated `chat.z.ai` progress before quota usage headers are available.
  - The old foreground login route could reset/reload login when native usage collection returned `glm_web_authorization_missing` or `glm_no_trusted_payload`, even though authenticated GLM progress had already been observed.
  - The fix keeps the login surface open and reloads `GlmProviderUrls.WEB_USAGE_URL` once authenticated GLM progress or retained GLM cookies are present, instead of forcing the user through a second manual login.
- Long-session root cause:
  - When the durable GLM Web OAuth cookie store is missing, `GlmUsageRepository.fetchUsagePayloadFromWebSession()` returned `requiresAuth = false`.
  - That classified the condition as an ordinary no-payload result instead of an auth-required renewal case, so the background service could skip isolated renewal.
  - The fix returns `requiresAuth = true` for `glm_web_cookie_missing`, allowing the existing GLM renewal path to run.

## Remove-AI-Slops / Overfit Review
- Scope mode: explicit four-file GLM change set.
- Behavior lock:
  - Existing project tests are source-policy seam tests for `WebLoginActivity` and background refresh policy; new assertions follow the same file style.
  - The tests intentionally guard high-risk route ordering and forbidden branches because the relevant methods are private Android Activity seams.
  - Overfit risk is mitigated by also running the focused GLM/native/background test suite and emulator surface proof.
- Slop scan result:
  - No new production DOM scan, visible-text scan, `document.*`, `localStorage`, `sessionStorage`, stale-success, fake usage, or fallback-success lines were added.
  - No non-GLM provider production diff was added.
  - No new helper abstraction was introduced for a single caller.
  - No stale usage is reported as a trusted success.
- Deliberate non-cleanup:
  - `WebLoginActivity.kt`, `GlmUsageRepository.kt`, and the policy test files are pre-existing large Kotlin files.
  - Splitting those files is out of scope for this GLM incident because it would expand blast radius into unrelated login/provider flows. The current fix is deliberately surgical.

## Manual QA Matrix
| Scenario | Evidence | Result |
| --- | --- | --- |
| Debug APK builds | `t05-assemble-debug.txt` | PASS |
| Debug APK installs on emulator | `t05-install-debug.txt` | PASS |
| Provider-scoped GLM refresh broadcast reaches GLM-only cycle | `t05-emulator-glm-refresh/trigger-run-as-user0.txt`, `markers-run-as-user0.txt` | PASS |
| Missing/expired emulator GLM session routes into isolated renewal | `markers-run-as-user0.txt` | PASS |
| Expired emulator GLM credentials complete usage collection | `t05-emulator-glm-refresh/summary.txt` | BLOCKED: emulator reached provider login page and required real GLM credentials |

## Cleanup Receipt
- No long-running QA shell session was left open.
- The service run self-stopped after `INTERACTIVE_AUTH_REQUIRED`.
- Subagents used for implementation/review are to be closed before final response.
- Unrelated local files under `.idea`, `.omo/boulder.json`, `.omo/start-work/ledger.jsonl`, older `.omo/drafts`, and older `.omo/evidence` remain unstaged.

## Final Status
APPROVE FOR COMMIT, with one explicit limitation:
- Real-device verification still needs a fresh GLM credential run after installing this branch build. Emulator evidence proves the corrected renewal path is reachable, but it cannot prove successful GLM usage collection without valid provider credentials.
