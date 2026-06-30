# Codex Login Return Gate Re-Review

recommendation: APPROVE

## blockers

None.

## originalIntent

Fix the Codex provider login return flow so that, after an authenticated Codex login reaches `chatgpt.com/codex/cloud/settings/analytics`, the app collects Codex usage through the native/about:blank route and exits the login WebView instead of staying on the ChatGPT page. Preserve the no-nonblank-DOM-collector guardrail and keep sensitive values out of reports.

## desiredOutcome

The checkpoint should have:

- Runtime proof from the latest Android surface artifact, specifically login-10.
- Targeted test, assemble, install, and `git diff --check` evidence.
- A clean current code-review artifact with remove-ai-slops/programming coverage.
- A manual QA/criteria coverage artifact.
- A fresh gate review that does not block only because `goals.json` remains `in_progress` before checkpoint finalization.

## userOutcomeReview

APPROVE. The latest runtime artifact supports the user-visible outcome.

Observed without printing sensitive values:

- `.omo/ulw-loop/codex-login-return-20260630/android-surface-codex-cookie-restore-login-10.txt` line 183 shows collector injection on top-level `about:blank`.
- The same artifact line 189 shows `nativeUsage provider=codex ok=true` with the Wham usage endpoint returning 200.
- Lines 202-203 show `snapshot_connectionState=CONNECTED` and `snapshot_refreshState=IDLE`.
- Lines 240-243 show `has_dom_inject_host_chatgpt=False`, `has_aboutblank_frame_inject=False`, `has_top_aboutblank_inject=True`, and native success.
- Lines 245 and 247 show `WebLoginActivity` and `MainActivity` are not resumed as foreground activities at capture time.

This satisfies the originally blocked happy path: authenticated Codex usage is collected and the login activity is no longer foreground.

## codeReview

Clean enough for checkpoint.

Checked path:

- `.omo/evidence/codex-login-return-20260630-code-review.md`

Result:

- `recommendation: APPROVE`
- `blockers: []`
- The report explicitly includes `omo:remove-ai-slops` and `omo:programming` skill-perspective coverage.
- The report records only WATCH-level residual risks, not CRITICAL or HIGH findings.

Direct re-review:

- Hidden iframe implementation is removed. A search for `__aiquota_codex_native_frame`, `aboutblank-frame`, `injectCodexAboutBlankFrameCollector`, `frame.src`, and iframe creation in provider source/tests returned no matches.
- `WebLoginActivity.kt` now calls `view.stopLoading()` and `view.loadUrl("about:blank")` before Codex collection.
- `WebLoginActivityNativeBridgeTest.kt` no longer reads `WebLoginActivity.kt` source strings for the prior iframe guard. It now tests `CodexNativeCollectionRoutes` route policy and the generated about:blank collector output.
- `CodexNativeCollectionRoutes.kt` is a small production-used policy seam for Wham-resource start and about:blank navigation checks; it is not a speculative abstraction.

Slop/overfit pass:

- No deletion-only or tautological test is the sole proof of the fix.
- The decisive proof is runtime surface evidence, not implementation-string tests.
- Residual generated-script/source-string tests in broader legacy collector coverage are watch-level maintenance risk because the current login path is guarded by runtime evidence and route policy tests.
- Residual legacy Codex DOM/page-state code remains in the default collector branch, but current WebLoginActivity/background paths prevent Codex non-aboutblank injection and login-10 verifies no ChatGPT DOM injection. This is not a blocker for this checkpoint.

## manualQa

Clean enough for checkpoint.

Checked paths:

- `.omo/evidence/codex-login-return-20260630-final-qa/qa-report.md`
- `.omo/evidence/codex-login-return-20260630-final-qa/artifact-verification-summary.txt`
- `.omo/evidence/codex-login-return-20260630-final-qa/artifact-file-audit.txt`
- `.omo/evidence/codex-login-return-20260630-final-qa/git-diff-check.txt`

Result:

- `qa-report.md` says `Verdict: APPROVE`.
- `artifact-verification-summary.txt` says `artifactVerificationVerdict=APPROVE`, `mainChecksPass=True`, `artifactFilesPass=True`, and `gitDiffCheckExit=0`.
- `artifact-file-audit.txt` confirms the login-10, targeted-test, assemble, and install artifacts are non-empty with success evidence.

## iteration

Clean enough for checkpoint.

Checked path:

- `.omo/ulw-loop/codex-login-return-20260630/ledger.jsonl`

Result:

- Earlier ledger entries correctly show C001 blocked before fresh authenticated evidence.
- Latest entries supersede that blocker: C001 is pass with login-10 evidence, and C003 is pass with the targeted test/build/install evidence.
- `.omo/ulw-loop/codex-login-return-20260630/goals.json` still has goal status `in_progress`, but C001, C002, and C003 are all pass. Per user instruction, this sequencing state is not a blocker before gate approval/checkpoint.

## criteriaCoverage

Clean enough for checkpoint.

Checked path:

- `.omo/ulw-loop/codex-login-return-20260630/goals.json`

Coverage:

- C001 PASS: login-10 shows authenticated native Codex usage success, CONNECTED/IDLE snapshot, two usage lines, no ChatGPT DOM injection, no hidden aboutblank-frame injection, top-level about:blank injection, and no resumed WebLoginActivity.
- C002 PASS: prior stale/logged-out session evidence still proves the app did not fabricate usage.
- C003 PASS: targeted regression checks pass after replacing the prior WebLoginActivity source-string checks with route-policy tests; build/install and runtime evidence support the no-nonblank-injection guardrail.

## checkedArtifactPaths

- `.omo/ulw-loop/codex-login-return-20260630/android-surface-codex-cookie-restore-login-10.txt`
- `.omo/ulw-loop/codex-login-return-20260630/targeted-codex-top-aboutblank-native-tests-4.txt`
- `.omo/ulw-loop/codex-login-return-20260630/assemble-debug-top-aboutblank-native-3.txt`
- `.omo/ulw-loop/codex-login-return-20260630/install-debug-top-aboutblank-native-3.txt`
- `.omo/ulw-loop/codex-login-return-20260630/notepad.md`
- `.omo/ulw-loop/codex-login-return-20260630/ledger.jsonl`
- `.omo/ulw-loop/codex-login-return-20260630/goals.json`
- `.omo/evidence/codex-login-return-20260630-code-review.md`
- `.omo/evidence/codex-login-return-20260630-final-qa/qa-report.md`
- `.omo/evidence/codex-login-return-20260630-final-qa/artifact-verification-summary.txt`
- `.omo/evidence/codex-login-return-20260630-final-qa/artifact-file-audit.txt`
- `.omo/evidence/codex-login-return-20260630-final-qa/git-diff-check.txt`
- `android/app/src/main/java/com/aiquota/mobile/providers/WebLoginActivity.kt`
- `android/app/src/main/java/com/aiquota/mobile/providers/CodexNativeCollectionRoutes.kt`
- `android/app/src/main/java/com/aiquota/mobile/providers/ProviderWebCollectorScripts.kt`
- `android/app/src/main/java/com/aiquota/mobile/providers/ProviderNativeUsagePayloadFetcher.kt`
- `android/app/src/test/java/com/aiquota/mobile/providers/WebLoginActivityNativeBridgeTest.kt`
- `android/app/src/test/java/com/aiquota/mobile/providers/ProviderWebCollectorScriptsTest.kt`
- `android/app/src/test/java/com/aiquota/mobile/providers/ProviderNativeUsagePayloadFetcherTest.kt`
- `android/app/src/test/java/com/aiquota/mobile/providers/ProviderBackgroundRefreshServicePolicyTest.kt`
- `git status --short`
- `git diff --check`

## exactEvidenceGaps

No blocking evidence gaps remain.

Nonblocking watch items:

- The broader dirty worktree still contains unrelated provider and IDE changes. This gate approves the Codex login-return checkpoint based on the goal-scoped artifacts, not a repository-wide release.
- Legacy Codex DOM/page-state collector code remains in the default collector branch, but the login-return path is no longer using it and runtime evidence verifies the requested top-level about:blank native route.
- Some broader policy tests still use source-string checks. The prior blocking WebLoginActivity source-string tests were replaced, and the checkpoint does not depend on those broader source-string checks as sole proof.
