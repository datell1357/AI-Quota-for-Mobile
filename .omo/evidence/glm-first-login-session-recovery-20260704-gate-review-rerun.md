# Gate Review: glm-first-login-session-recovery-20260704 rerun

recommendation: APPROVE

blockers:
- None.

originalIntent:
- Fix the GLM first Google-login flow so authenticated GLM progress can continue to usage collection without forcing a second manual login.
- Fix long-session GLM Web OAuth persistence so missing or stale stored GLM web-session state can reach the isolated renewal path.
- Keep the change GLM-scoped, with no other provider edits and no DOM scan, browser-storage scraping, stale-success, fake usage, or global fallback behavior.

desiredOutcome:
- User installs the branch build and GLM login/refresh behavior is more resilient without hiding failures as fresh usage.
- Missing GLM stored cookies are classified as auth-required so existing isolated WebView renewal can run.
- Authenticated GLM first-login progress can retry the usage URL before the full login-reset path clears and reloads the login start.
- Evidence includes RED/GREEN tests, scope scans, build/install proof, emulator surface proof, and a programming/remove-ai-slops/manual-QA report.

userOutcomeReview:
- Branch check: `git status --short --branch` reports `## 29version-code`.
- Production diff is GLM-only under `android/app/src/main/java`: `GlmUsageRepository.kt` and `WebLoginActivity.kt`.
- `GlmUsageRepository.fetchUsagePayloadFromWebSession()` now returns `GlmUsageResult(null, requiresAuth = true, diagnostic = "glm_web_cookie_missing")` when the durable cookie store has no cookie.
- `ProviderBackgroundRefreshService.collectGlmWebOAuthUsage()` already branches to `GlmIsolatedWebSession.collectUsage(...)` when `result.requiresAuth` is true; therefore the missing-cookie case now reaches auth-required isolated renewal instead of ordinary no-payload failure.
- `WebLoginActivity.recoverGlmAuthRequiredFromNativeCollection()` now reloads `GlmProviderUrls.WEB_USAGE_URL` when authenticated GLM chat progress or retained GLM cookies exist, before clearing session state and reloading `GlmProviderUrls.WEB_LOGIN_URL`.
- `WebLoginActivity.shouldKeepLoginOpenUntilUsagePayload()` now includes `glm_web_authorization_missing`, so first-login authenticated progress can stay open for usage retry instead of immediately finishing as login-complete-without-payload.
- Direct production addition scan found no added DOM scan, visible-text scan, `document.*`, `localStorage`, `sessionStorage`, stale-success, fake usage, fallback-success, or non-GLM provider behavior.
- The new tests are source-text policy tests and mirror implementation strings. That is normally overfit risk, but it is accepted here because the existing files already use this policy-test style for private Android Activity/WebView seams, and emulator evidence drives the background renewal path through the real service surface.

checked artifact paths:
- `android/app/src/main/java/com/aiquota/mobile/providers/GlmUsageRepository.kt`
- `android/app/src/main/java/com/aiquota/mobile/providers/WebLoginActivity.kt`
- `android/app/src/main/java/com/aiquota/mobile/providers/ProviderBackgroundRefreshService.kt`
- `android/app/src/test/java/com/aiquota/mobile/providers/GlmWebSessionClearPolicyTest.kt`
- `android/app/src/test/java/com/aiquota/mobile/providers/ProviderBackgroundRefreshServicePolicyTest.kt`
- `.omo/plans/glm-first-login-session-recovery-20260704.md`
- `.omo/evidence/glm-first-login-session-recovery-20260704/t01-red-first-login-rerun.txt`
- `.omo/evidence/glm-first-login-session-recovery-20260704/t02-red-session-renewal.txt`
- `.omo/evidence/glm-first-login-session-recovery-20260704/t04-focused-tests.txt`
- `.omo/evidence/glm-first-login-session-recovery-20260704/t04-scope-guardrails.txt`
- `.omo/evidence/glm-first-login-session-recovery-20260704/t05-assemble-debug.txt`
- `.omo/evidence/glm-first-login-session-recovery-20260704/t05-install-debug.txt`
- `.omo/evidence/glm-first-login-session-recovery-20260704/t05-emulator-glm-refresh/summary.txt`
- `.omo/evidence/glm-first-login-session-recovery-20260704/t05-emulator-glm-refresh/markers-run-as-user0.txt`
- `.omo/evidence/glm-first-login-session-recovery-20260704/t06-programming-slop-review.md`
- `.omo/evidence/glm-first-login-session-recovery-20260704-gate-review.md`

direct checks:
- `git diff --name-only -- android/app/src/main/java android/app/src/test/java`: only the two GLM production files and two GLM policy test files.
- `git diff --check -- <four scoped files>`: exit 0; no whitespace errors.
- `git diff --numstat -- <four scoped files>`: production delta is small (`GlmUsageRepository.kt` +1/-1, `WebLoginActivity.kt` +10/-3); test delta is scoped (`GlmWebSessionClearPolicyTest.kt` +21/-4, `ProviderBackgroundRefreshServicePolicyTest.kt` +15/-0).
- Forbidden production-addition grep over the two production diffs: no matches.
- `t01-red-first-login-rerun.txt`: RED evidence, 5 targeted `GlmWebSessionClearPolicyTest` failures before implementation.
- `t02-red-session-renewal.txt`: RED evidence, targeted `ProviderBackgroundRefreshServicePolicyTest` failure before implementation.
- `t04-focused-tests.txt`: `BUILD SUCCESSFUL`.
- `t04-scope-guardrails.txt`: changed product files are the four scoped files; forbidden added product lines `NO_MATCH`; non-GLM product diff names `NO_MATCH`.
- `t05-assemble-debug.txt`: `BUILD SUCCESSFUL`.
- `t05-install-debug.txt`: `Performing Streamed Install` then `Success`.
- `t05-emulator-glm-refresh/markers-run-as-user0.txt`: GLM-only refresh cycle reached `glmRenewalStart mode=isolated_webview reason=glm_web_authorization_missing`, loaded the GLM usage URL, then stopped with `INTERACTIVE_AUTH_REQUIRED`.
- `t06-programming-slop-review.md`: includes programming/TDD evidence, root-cause map, remove-ai-slops/overfit review, manual QA matrix, cleanup receipt, and explicit limitation for lack of fresh GLM credentials.

programming/remove-ai-slops direct pass:
- No new abstraction, parser, normalization layer, fake fallback, or stale-success reporting was added.
- No other provider production logic was changed.
- The implementation is the minimal root-cause change at the existing GLM seams: cookie-missing classification, first-login usage retry, and GLM authorization-missing keep-open policy.
- Existing large Kotlin files remain large, but splitting them would be unrelated scope expansion for this incident; the new production delta does not introduce a new oversized module.
- Source-policy tests are implementation-coupled, but they are consistent with the repository's existing private-seam guardrail style and are backed by focused test success plus emulator service-surface evidence.

exact evidence gaps:
- No successful real GLM usage payload collection was proven with fresh credentials. The emulator evidence proves the corrected renewal path is reachable and fails honestly with `INTERACTIVE_AUTH_REQUIRED` when credentials are absent.
- No LSP diagnostic artifact was provided. Build and focused Gradle test evidence are present and green.

manual QA limitation:
- The installed emulator run cannot complete successful GLM usage collection without valid GLM credentials. This is an accepted limitation for this gate because the user-visible failure remains explicit auth-required, not fake or stale success, and the new path was observed through the service/logcat surface.
