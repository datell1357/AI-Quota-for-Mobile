# Codex About:Blank Native Cookie Restore Code Review

codeQualityStatus: BLOCK
recommendation: REQUEST_CHANGES
reportPath: .omo/evidence/codex-aboutblank-native-cookie-restore-code-review.md

## Scope

Goal reviewed: Codex usage collection should work with saved debug session cookies and a pure about:blank native JS path, with no DOM scan/dashboard/html fallback, Secure/Path on restored debug cookies, and no Codex collector injection on chatgpt.com non-aboutblank pages.

Changed areas inspected:
- android/app/src/main/java/com/aiquota/mobile/providers/ProviderNativeUsagePayloadFetcher.kt
- android/app/src/main/java/com/aiquota/mobile/providers/ProviderWebCollectorScripts.kt
- android/app/src/main/java/com/aiquota/mobile/providers/DebugProviderSessionCookieStore.kt
- android/app/src/main/java/com/aiquota/mobile/providers/WebLoginActivity.kt
- android/app/src/main/java/com/aiquota/mobile/providers/ProviderBackgroundRefreshService.kt
- related Codex native header helper/tests and policy tests

Skill-perspective check:
- remove-ai-slops: loaded and applied as an overfit/slop review pass. The diff violates this perspective in the WebLoginActivity tests because they are source-text assertions that missed an alternate injection path and one test asserts the unwanted iframe path.
- programming: loaded and applied for test relevance/maintainability. The diff violates this perspective because the blocking tests mirror implementation strings instead of testing observable behavior at the WebView/client seam.
- review-work: loaded for review workflow context; no subagents used because this was an assigned read-only reviewer pass.

No cookie or token values were intentionally inspected or included. Evidence review used status/log markers, header names, endpoint paths, and counts only.

## Findings By Severity

### CRITICAL

None.

### HIGH

1. WebLoginActivity still injects the Codex collector from a non-aboutblank ChatGPT page via a hidden iframe.

File: android/app/src/main/java/com/aiquota/mobile/providers/WebLoginActivity.kt:703

`maybeStartCodexNativeCollection` runs while the main WebView is on a ChatGPT page, sets `currentBridgePageUrl` to `about:blank`, then calls `injectCodexAboutBlankFrameCollector(view, url)` instead of navigating the main WebView to `about:blank`. The helper builds the Codex about:blank collector and evaluates JavaScript into the current nonblank page to create an `about:blank` iframe at lines 714-755. That violates the stated requirement that WebLoginActivity must not inject the Codex collector on chatgpt.com non-aboutblank pages.

Evidence: `.omo/ulw-loop/codex-login-return-20260630/android-surface-codex-cookie-restore-login-7.txt` reports `nativeCollectorStart=aboutblank` from `chatgpt.com/codex/cloud/settings/analytics`, then `collectorMode=webview-js inject host=aboutblank-frame`, and `has_aboutblank_frame_inject=True`.

Required fix: switch the login path to the same main-frame `view.loadUrl("about:blank")` style used by Gemini/background, or otherwise prove no collector script is evaluated in the nonblank ChatGPT document before the main-frame about:blank page is reached.

2. The passing WebLoginActivity tests give false confidence by asserting implementation strings, and one test explicitly blesses the iframe path.

File: android/app/src/test/java/com/aiquota/mobile/providers/WebLoginActivityNativeBridgeTest.kt:42

`codexLoginSwitchesToAboutBlankBeforeNativeCollection` asserts `private fun injectCodexAboutBlankFrameCollector`, `frame.src = "about:blank"`, and `__aiquota_codex_native_frame` at lines 71-74. That directly contradicts the no-nonblank-injection requirement. The later `codexLoginNeverInjectsCollectorOnNonAboutBlankPages` test only checks the generic `injectCollectorIfReady` guard at line 85, so it misses the direct iframe injection path at WebLoginActivity.kt:710.

Required fix: replace these source-text assertions with a behavior-level seam that fails if `evaluateJavascript(frameScript, ...)` can be called while the main page URL is a ChatGPT non-aboutblank URL, and passes only when the main WebView reaches `about:blank` before the Codex collector is evaluated.

### MEDIUM

1. Background service has a fragile Codex nonblank guard shape.

File: android/app/src/main/java/com/aiquota/mobile/providers/ProviderBackgroundRefreshService.kt:915

`onPageStarted` still calls `injectCollectorIfReady(ownerProviderId, view, url, "")` for Codex non-login pages. Today that does not evaluate a Codex script because `ProviderWebCollectorScripts.build(..., pageUrl = nonblank)` returns an empty collector string for Codex, and later `onLoadResource`/`onPageFinished` have explicit nonblank guards. This is not the same concrete bug as WebLoginActivity, but it leaves the safety invariant split across callers and builder internals.

Suggested fix: put the Codex non-aboutblank rejection in `ProviderBackgroundRefreshService.injectCollectorIfReady`, matching WebLoginActivity, so future builder changes cannot re-enable nonblank injection.

### LOW

1. Debug cookie restore unit coverage is mostly source-text and helper-level.

File: android/app/src/test/java/com/aiquota/mobile/providers/DebugProviderSessionCookieStoreTest.kt:44

The Secure/Path helper test is useful, but the activity/service cookie capture tests assert source strings instead of invoking behavior. This is lower risk than the WebLoginActivity iframe issue because the helper itself is simple and was exercised, but it is still brittle maintenance coverage.

## Criteria Coverage

originalIntent:
- Covered in part. Codex native fetcher now uses native JSON and no dashboard/html fallback in `ProviderNativeUsagePayloadFetcher.kt`; `ProviderWebCollectorScripts.codexAboutBlankJsonPayload` calls `fetchNativeUsagePayload()`.
- Not fully covered because WebLoginActivity still injects a Codex collector script into a nonblank ChatGPT page to create an about:blank iframe.

desiredOutcome:
- Debug cookie restore adds `Secure` and `Path=/` for restorable cookies in `DebugProviderSessionCookieStore.kt:117`.
- Background native start is gated on authenticated `/backend-api/wham/usage` resource headers.
- Login path does produce successful native usage in the supplied surface evidence, but via the disallowed iframe injection path.

userOutcomeReview:
- A user with saved debug cookies can reach a successful Codex usage payload in the evidence.
- The implementation does not meet the requested purity/safety property because the login surface still executes collector setup JavaScript on `chatgpt.com/codex/cloud/settings/analytics`.

## Verification

Commands run:
- `git diff --check`: PASS, line-ending warnings only.
- `gradle :app:testDebugUnitTest --tests "com.aiquota.mobile.providers.ProviderNativeUsagePayloadFetcherTest" --tests "com.aiquota.mobile.providers.ProviderWebCollectorScriptsTest" --tests "com.aiquota.mobile.providers.DebugProviderSessionCookieStoreTest" --tests "com.aiquota.mobile.providers.WebLoginActivityNativeBridgeTest" --tests "com.aiquota.mobile.providers.ProviderBackgroundRefreshServicePolicyTest" --tests "com.aiquota.mobile.providers.CodexNativeHeaderSelectorTest" --tests "com.aiquota.mobile.providers.CodexNativeHeaderStoreTest"` from `android/`: PASS, `BUILD SUCCESSFUL in 7s`.

Evidence inspected:
- `.omo/ulw-loop/codex-login-return-20260630/targeted-codex-pure-aboutblank-native-tests-2.txt`: BUILD SUCCESSFUL.
- `.omo/ulw-loop/codex-login-return-20260630/assemble-debug-final-codex-aboutblank-native.txt`: BUILD SUCCESSFUL.
- `.omo/ulw-loop/codex-login-return-20260630/green-codex-debug-cookie-restore-tests.txt`: BUILD SUCCESSFUL.
- `.omo/ulw-loop/codex-login-return-20260630/android-surface-codex-cookie-restore-login-7.txt`: shows debug cookie restore, wham/native success, and the blocking aboutblank-frame injection.

## Blockers

- Remove or replace the WebLoginActivity hidden about:blank iframe collector path so Codex collection is not injected from a non-aboutblank ChatGPT page.
- Replace source-text tests that bless or miss that path with a behavior-level test that proves the collector only runs after main-frame about:blank.

Final verdict: BLOCK
