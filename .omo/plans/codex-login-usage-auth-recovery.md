# codex-login-usage-auth-recovery - Work Plan

## TL;DR (For humans)
Codex 濡쒓렇????ChatGPT ?덉뿉 硫덉텛???먮쫫??留됯퀬, ?몄쬆 ?ㅻ뜑媛 ?녿뒗 ?꾩냽 ?붿껌???ъ슜 媛?ν븳 ?몄쬆 ?ㅻ뜑瑜???뼱?곗? 紐삵븯寃??⑸땲?? 援ы쁽? 湲곗〈 WebView/native bridge 寃쎈줈留?理쒖냼 ?섏젙?⑸땲??

**Effort:** Short
**Risk:** Medium - Codex auth/session flow touches login and usage collection.

---

> TL;DR (machine): Fix early Codex about:blank collection and Codex native header retention with tests, runtime QA, review, and cleanup evidence.

## Scope
### Must have
- Codex ChatGPT home `page_finished` must not start about:blank collection before post-login redirect logic can run.
- Authenticated Codex native headers must survive later unauthenticated captures for the same endpoint or fallback slot.
- Codex native payload fetches must receive selected WebView headers when the bridge path is used.
- Verification must include focused unit tests plus one real emulator/manual QA artifact.

### Must NOT have
- Do not fake or hardcode usage.
- Do not classify `codex_usage_unavailable` as auth failure unless runtime evidence shows redirect/auth-required/401.
- Do not revert existing unrelated worktree changes.

## Verification strategy
- Test decision: TDD with focused Android/JVM tests where seams exist.
- Evidence: `.omo/start-work/ledger.jsonl` and `.omo/evidence/codex-login-usage-auth-recovery-*.txt`.

## Execution strategy
### Parallel execution waves
- Wave 1: Implement and test header retention/forwarding and early page-finished gate in one executor because the affected files overlap.
- Wave 2: Independent verifier/reviewer and manual QA.

### Dependency matrix
| Todo | Depends on | Blocks | Can parallelize with |
| --- | --- | --- | --- |
| 1 | none | F1-F4 | none |

## TODOs
- [x] 1. Fix Codex login usage collection ordering and auth header retention
  What to do / Must NOT do: Add failing-first tests for the confirmed root cause, then apply the smallest code change in existing provider/login bridge files. Do not add a new broad abstraction unless already present in the current dirty diff.
  Parallelization: Wave 1 | Blocked by: none | Blocks: F1-F4
  References: `.omo/ulw-loop/evidence/codex-login-root-cause-report.md`; `android/app/src/main/java/com/aiquota/mobile/providers/WebLoginActivity.kt`; `android/app/src/main/java/com/aiquota/mobile/providers/ProviderNativeUsagePayloadFetcher.kt`; `android/app/src/main/java/com/aiquota/mobile/providers/ProviderNativeJsonBridge.kt`.
  Acceptance criteria: Focused tests fail before production edits where practical and pass after; `./gradlew testDebugUnitTest --tests '*Codex*' --tests '*WebLoginActivityNativeBridgeTest*' --tests '*ProviderNativeUsagePayloadFetcherTest*'` passes or any incompatible filter is replaced with the narrowest runnable equivalent and recorded.
  QA scenarios: Use emulator/logcat with installed debug APK. Evidence must show no early `nativeCollectorStart=aboutblank reason=page_finished from=chatgpt.com/` before redirect, selected auth headers for Codex fetches, and no final empty `CONNECTING` snapshot after refresh attempt, or record the exact remaining blocker.
  Commit: N

## Final verification wave
- [x] F1. Plan compliance audit
- [x] F2. Code quality review
- [x] F3. Real manual QA
- [x] F4. Scope fidelity and cleanup

## Commit strategy
No commit unless explicitly requested.

## Success criteria
- Codex login flow is no longer blocked on ChatGPT home by premature about:blank collection.
- Authenticated Codex header context is retained for native usage fetches.
- Tests and real-surface evidence support the fix, with blockers recorded if the external account/session prevents full usage retrieval.

