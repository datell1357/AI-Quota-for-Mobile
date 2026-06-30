# Codex Login Return Fix Notepad

## Bootstrap
- Skills: omo:ulw-loop for evidence-bound execution; tdd for failing-first bugfix.
- Tier: HEAVY. Reason: auth/session/WebView login flow and external Codex usage integration.
- Session: `.omo/ulw-loop/codex-login-return-20260630`.
- Existing default ULW plan is complete and only covered the prior root-cause report.
- CLI note: `omo.cmd` fails with `The syntax of the command is incorrect`; using cached Node CLI.

## Success Criteria
- C001 happy: after Codex login reaches authenticated usage surface, app collects usage and finishes login activity.
- C002 edge: auth-required/no-payload states do not falsely mark connected or hang on ChatGPT.
- C003 regression: native/about:blank collection constraints remain intact; no DOM fallback.

## QA Scenario
- Unit RED/GREEN: focused WebLoginActivity/Codex provider test fails before production fix and passes after.
- Android surface: install debug APK, inject saved Codex session if available, trigger provider login/refresh, capture logcat + provider snapshot showing Codex usage and no foreground ChatGPT login activity.

## 2026-06-30 Findings
- Root cause: Codex reached `https://chatgpt.com/codex/cloud/settings/analytics`, but native collection could not use the actual usage payload because `/backend-api/wham/usage` was not allowlisted for Codex native JSON/resource capture, and the generic native payload fetcher only queried the dashboard analytics URL.
- Fix: allow Codex native JSON capture for `https://chatgpt.com/backend-api/wham/usage` and fetch that endpoint from the about:blank/native path, preferring Wham usage JSON over dashboard analytics when normalizing Codex usage.
- Guardrail: tests assert the default page-state Codex collector still does not embed the direct Wham URL; the direct usage API is limited to the native about:blank bridge path.
- Unit evidence: focused RED files captured at `red-wham-endpoint-tests.txt` and `red-wham-fetcher-test.txt`; focused GREEN files captured at `green-wham-endpoint-tests.txt`, `green-codex-wham-tests.txt`, and `targeted-tests-final.txt`.
- Build evidence: `assemble-debug-final.txt` shows debug APK build success.
- Surface QA status: blocked by current emulator session being logged out of ChatGPT/Codex. `codex-login-postfix-monitor.txt` shows Codex remains `CONNECTING/REFRESHING` with `lines=[]`; current foreground activity is still `WebLoginActivity`. A fresh user login is required to verify C001 end-to-end.

## 2026-06-30 Follow-up
- User reported a stronger state: Codex usage page opens as already logged in, but usage collection and return still do not happen.
- Isolated RED evidence: `isolated-authenticated-stuck-red.txt` shows WebLoginActivity stays foreground and Codex remains `CONNECTING/REFRESHING`. Logs show early `/backend-api/wham/usage` requests returning 401, then authenticated Wham headers arriving later.
- Root cause update: WebLoginActivity could start Codex native collection from `pageFinished` or from the first unauthenticated Wham resource before authenticated `Authorization`/`ChatGPT-Account-ID`/`OAI-Session-Id` headers were captured. That made the collector produce `codex_usage_unavailable` and wait forever.
- Fix update: WebLoginActivity now starts Codex about:blank/native collection only from `/backend-api/wham/usage` resources after captured native fetch headers contain auth context; pageFinished no longer starts Codex native collection.
- TDD evidence: `red-authenticated-resource-trigger-test.txt` captured the failing contract; `green-authenticated-resource-trigger-tests.txt` passed after the fix.
- Build/install evidence: `assemble-debug-auth-trigger-fix.txt` and `install-auth-trigger-fix.txt`.
- Current surface QA blocker: after reinstall, current saved/debug Codex session redirects from analytics to `unauth-mweb`; `android-surface-auth-trigger-fix.txt` remains `CONNECTING/REFRESHING` with `WebLoginActivity` foreground. A fresh user login in the open WebView is required for final C001 PASS.

## 2026-06-30 Continuation Check
- Current state rechecked from device: `usage_data_codex.xml` is still `CONNECTING/REFRESHING` with `lines=[]`, and `WebLoginActivity` remains the top resumed activity.
- Recent logcat still has no `nativeUsage provider=codex ok=true` and no `rawPayloadPresent=true` for Codex after the installed auth-trigger fix.
- UI dump evidence: `current-ui-auth-block.txt` shows the visible `Sign in to Codex` activity shell; WebView content is not exposed in the UI hierarchy, but logcat already showed `unauth-mweb` navigation.
- Targeted verification rerun: `continuation-targeted-tests.txt` passed for WebLoginActivity native bridge, Codex header selection/store, native payload fetcher, and Codex about:blank collector tests.
- Status: implementation evidence is current, but C001 remains blocked on fresh user login in the open WebView.

## 2026-06-30 Final Cookie-Restore QA
- Debug Codex session snapshot was saved separately at `C:\Users\datell1357\.aiquota-debug-session-cookies\codex.json`; token/cookie values were not printed. The accidental workspace copy path was removed earlier and `codex-debug-cookie-snapshot-check-fixed.txt` records `bad_workspace_copy_exists=false`.
- Additional root cause: the saved snapshot contained `__Secure-*` and `__Host-*` cookies, but restoring raw cookie pairs without `Secure; Path=/` can make WebView reject those session cookies after APK reinstall. `DebugProviderSessionCookieStore` now restores debug cookie headers with `Secure; Path=/`.
- Additional root cause: Codex about:blank script still used per-URL JS `fetchJson()` plus `parseCodexFetchedPayload()`, including a dashboard analytics fetch. It now calls `fetchNativeUsagePayload()` so Kotlin native fetcher is the only Codex usage path, and `ProviderNativeUsagePayloadFetcher` no longer has dashboard/html fallback for Codex.
- Runtime guardrail: `WebLoginActivity` and background refresh skip Codex collector injection on non-`about:blank`; reviewer-blocked hidden iframe collection was removed. Final QA uses top-level WebView `about:blank`; source-string WebLoginActivity tests were replaced with `CodexNativeCollectionRoutes` policy tests.
- Final Android QA: `android-surface-codex-cookie-restore-login-10.txt` shows `debugCookieRestore=true`, `has_dom_inject_host_chatgpt=False`, `has_aboutblank_frame_inject=False`, `has_top_aboutblank_inject=True`, `nativeUsage provider=codex ok=true`, `snapshot_connectionState=CONNECTED`, `snapshot_refreshState=IDLE`, 2 usage lines, and `activity_has_WebLoginActivity=False`.
- Verification: `targeted-codex-top-aboutblank-native-tests-4.txt`, `assemble-debug-top-aboutblank-native-3.txt`, `install-debug-top-aboutblank-native-3.txt`, and `git diff --check` (CRLF warnings only).
