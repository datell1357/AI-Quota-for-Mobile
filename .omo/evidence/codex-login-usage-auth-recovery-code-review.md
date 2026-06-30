# Codex Login Usage Auth Recovery - Code Review

codeQualityStatus: BLOCK
recommendation: REQUEST_CHANGES
verdict: NEEDS_FIX
reportPath: .omo/evidence/codex-login-usage-auth-recovery-code-review.md

## Skill Perspective Check

- remove-ai-slops: ran by reading `C:/Users/datell1357/.codex/plugins/cache/sisyphuslabs/omo/4.13.0/skills/remove-ai-slops/SKILL.md` completely. The diff violates this perspective in tests that mirror implementation strings and provide false confidence for core behavior.
- programming: ran by reading `C:/Users/datell1357/.codex/plugins/cache/sisyphuslabs/omo/4.13.0/skills/programming/SKILL.md` completely. No Kotlin-specific reference exists in that skill; applied shared criteria for behavior-shaped tests, boundary contracts, scope control, and avoiding needless complexity. The production change is mostly small, but core tests are brittle and implementation-mirroring.

## Findings

### CRITICAL

None.

### HIGH

1. Plan item 1 is not fully satisfied because real login/recovery QA is missing.
   - Evidence: `.omo/plans/codex-login-usage-auth-recovery.md:43` requires emulator/logcat evidence for no early `nativeCollectorStart=aboutblank reason=page_finished from=chatgpt.com/`, selected auth headers, and no final empty `CONNECTING` snapshot. `.omo/ulw-loop/evidence/codex-login-root-cause-report.md:40-42` requires an actual login-surface QA pass with no `401` for usage, raw payload present, and connected non-empty stored usage.
   - The implementation evidence explicitly says manual emulator login QA was not performed: `.omo/evidence/codex-login-usage-auth-recovery-implementation.txt:79-93`.
   - The continuation direct launch failed before opening `WebLoginActivity`: `.omo/evidence/codex-login-usage-auth-recovery-emulator-logcat.txt:1-10` shows `SecurityException` because the activity is not exported.
   - The alternate MainActivity route only landed on the Codex provider card in disconnected state with no usage items: `.omo/evidence/codex-login-usage-auth-recovery-emulator-main-route.txt:1-8` and the UI dump shows `status: disconnected` / `no usage items`.
   - Blocker: capture a real login/recovery flow through the exported app surface, or record a precise external account/session blocker after actually reaching the login WebView and attempting collection.

2. Core tests for page-finished ordering and header forwarding are brittle source-string tests, not behavior tests.
   - `android/app/src/test/java/com/aiquota/mobile/providers/WebLoginActivityNativeBridgeTest.kt:60-66` asserts substrings such as `shouldStartCodexNativeCollectionFromPageFinished(effectiveUrl)` and the exact path expression instead of executing the decision.
   - `android/app/src/test/java/com/aiquota/mobile/providers/ProviderNativeUsagePayloadFetcherTest.kt:90-100` reads the production source file and asserts exact code strings for header forwarding.
   - This violates both loaded perspectives: remove-ai-slops rejects tests that mirror implementation constants/strings, and programming rejects brittle implementation-coupled tests. It blocks approval because these tests are the main proof for two plan item 1 acceptance points.
   - Blocker: add or replace with behavior tests that exercise the decision/result. The existing `CodexNativeHeaderSelectorTest` is meaningful; the page-finished gate and `ProviderNativeUsagePayloadFetcher -> ProviderNativeJsonBridge.fetchJson` forwarding still need non-string behavioral proof, or real-surface QA strong enough to cover them.

3. A semantically related dirty file is outside the claimed implementation evidence and still overwrites Codex auth headers if it ships.
   - `.omo/evidence/codex-login-usage-auth-recovery-implementation.txt:15-18` labels `ProviderBackgroundRefreshService.kt` as preserved unrelated dirty state, but the actual worktree diff modifies it to pass selected Codex headers into `ProviderNativeUsagePayloadFetcher.bridgeUsagePayload`.
   - In the same file, capture still unconditionally overwrites endpoint and fallback headers at `android/app/src/main/java/com/aiquota/mobile/providers/ProviderBackgroundRefreshService.kt:1136-1146`, unlike the retained-header path in `WebLoginActivity.kt:891-907`.
   - This matters because the review check says authenticated headers should not be overwritten by later unauthenticated captures. The login activity satisfies that locally, but the dirty tree contains another Codex native bridge path with the old overwrite behavior.
   - Blocker before shipping the dirty tree: either explicitly exclude/revert that unrelated file from the task diff, or apply/test the same retention rule there.

### MEDIUM

1. The requested broad test filter is not green, and the narrowed substitute is acceptable only as scoped evidence.
   - Inspected artifact: `.omo/evidence/codex-login-usage-auth-recovery-requested-filter.txt:31-36` shows the requested `*Codex*` filter fails in `ProviderWebCollectorScriptsTest`.
   - The narrower focused suite passed in saved evidence and in my forced rerun, so this is not by itself a product-code blocker. It must not be summarized as "the requested test command passed."

### LOW

1. Forced focused test rerun emitted existing Kotlin deprecation/type warnings outside this change. No new failure observed, but they remain background noise for future cleanup.

## Required Checks

- No fake/hardcoded usage: PASS for inspected production diff. I found no production fake or hardcoded usage values in the reviewed files.
- ChatGPT home `page_finished` should not prematurely start Codex about:blank collection: CODE LOOKS CORRECT in `WebLoginActivity.kt:324-343` and `WebLoginActivity.kt:737-744`; missing real-surface proof keeps plan item 1 partial.
- Authenticated headers should not be overwritten by later unauthenticated captures: PASS in `WebLoginActivity.kt:891-907` via `CodexNativeHeaderSelector.selectStoredHeaders`; FAIL/RISK in dirty `ProviderBackgroundRefreshService.kt:1136-1146` if that file is included.
- Header forwarding reaches `ProviderNativeJsonBridge.fetchJson` for Codex native fetches: PASS in code path `WebLoginActivity.kt:523-525` -> `ProviderNativeUsagePayloadFetcher.kt:98-118` -> `ProviderNativeUsagePayloadFetcher.kt:146-154` -> `ProviderNativeJsonBridge.kt:20-25` and `ProviderNativeJsonBridge.kt:42-45`.
- Tests meaningful enough: PARTIAL. `CodexNativeHeaderSelectorTest.kt:7-57` is meaningful behavior coverage; `WebLoginActivityNativeBridgeTest.kt:60-66` and `ProviderNativeUsagePayloadFetcherTest.kt:90-100` are brittle string-only checks and block approval without real QA.
- Existing unrelated dirty files: NOT counted as completion evidence. They must be excluded from the final task diff or reviewed/fixed explicitly.

## Plan Item 1

Status: PARTIAL, not satisfied for approval.

The production changes in the requested login-path files are small and plausibly address the root cause mechanics. However, plan item 1 also requires failing-first relevant tests and emulator/manual QA evidence. The available tests are partly brittle string checks, and the real login-surface QA did not complete. Therefore the implementation should not be approved yet.

## Commands And Files Inspected

Commands run or inspected:

```text
& 'C:\Program Files\Git\bin\bash.exe' -lc "git status --short --branch"
& 'C:\Program Files\Git\bin\bash.exe' -lc "git diff --name-status"
& 'C:\Program Files\Git\bin\bash.exe' -lc "find .omo/evidence .omo/ulw-loop/evidence -maxdepth 1 -type f \( -name 'codex-login-usage-auth-recovery*' -o -name 'codex-login-root-cause-report.md' \) -print | sort"
& 'C:\Program Files\Git\bin\bash.exe' -lc "sed -n '1,240p' .omo/plans/codex-login-usage-auth-recovery.md"
& 'C:\Program Files\Git\bin\bash.exe' -lc "nl -ba .omo/ulw-loop/evidence/codex-login-root-cause-report.md | sed -n '1,260p'"
& 'C:\Program Files\Git\bin\bash.exe' -lc "nl -ba .omo/evidence/codex-login-usage-auth-recovery-implementation.txt | sed -n '1,260p'"
& 'C:\Program Files\Git\bin\bash.exe' -lc "nl -ba .omo/evidence/codex-login-usage-auth-recovery-diff.txt | sed -n '1,320p'"
& 'C:\Program Files\Git\bin\bash.exe' -lc "nl -ba .omo/evidence/codex-login-usage-auth-recovery-green.txt | sed -n '1,220p'"
& 'C:\Program Files\Git\bin\bash.exe' -lc "nl -ba .omo/evidence/codex-login-usage-auth-recovery-red.txt | sed -n '1,240p'"
& 'C:\Program Files\Git\bin\bash.exe' -lc "nl -ba .omo/evidence/codex-login-usage-auth-recovery-requested-filter.txt | sed -n '1,260p'"
& 'C:\Program Files\Git\bin\bash.exe' -lc "nl -ba .omo/evidence/codex-login-usage-auth-recovery-qa.txt | sed -n '1,260p'"
& 'C:\Program Files\Git\bin\bash.exe' -lc "nl -ba .omo/evidence/codex-login-usage-auth-recovery-continuation-status.txt | sed -n '1,220p'"
& 'C:\Program Files\Git\bin\bash.exe' -lc "nl -ba .omo/evidence/codex-login-usage-auth-recovery-continuation-tests.txt | sed -n '1,220p'"
& 'C:\Program Files\Git\bin\bash.exe' -lc "nl -ba .omo/evidence/codex-login-usage-auth-recovery-emulator-logcat.txt | sed -n '1,260p'"
& 'C:\Program Files\Git\bin\bash.exe' -lc "nl -ba .omo/evidence/codex-login-usage-auth-recovery-emulator-main-route.txt | sed -n '1,220p'"
& 'C:\Program Files\Git\bin\bash.exe' -lc "nl -ba android/app/src/main/java/com/aiquota/mobile/providers/WebLoginActivity.kt | sed -n '300,380p'; nl -ba android/app/src/main/java/com/aiquota/mobile/providers/WebLoginActivity.kt | sed -n '500,540p'; nl -ba android/app/src/main/java/com/aiquota/mobile/providers/WebLoginActivity.kt | sed -n '720,755p'; nl -ba android/app/src/main/java/com/aiquota/mobile/providers/WebLoginActivity.kt | sed -n '875,925p'"
& 'C:\Program Files\Git\bin\bash.exe' -lc "nl -ba android/app/src/main/java/com/aiquota/mobile/providers/ProviderNativeUsagePayloadFetcher.kt | sed -n '1,190p'"
& 'C:\Program Files\Git\bin\bash.exe' -lc "nl -ba android/app/src/main/java/com/aiquota/mobile/providers/ProviderNativeJsonBridge.kt | sed -n '1,220p'"
& 'C:\Program Files\Git\bin\bash.exe' -lc "nl -ba android/app/src/main/java/com/aiquota/mobile/providers/CodexNativeHeaderSelector.kt | sed -n '1,160p'"
& 'C:\Program Files\Git\bin\bash.exe' -lc "nl -ba android/app/src/test/java/com/aiquota/mobile/providers/CodexNativeHeaderSelectorTest.kt | sed -n '1,180p'"
& 'C:\Program Files\Git\bin\bash.exe' -lc "nl -ba android/app/src/test/java/com/aiquota/mobile/providers/WebLoginActivityNativeBridgeTest.kt | sed -n '1,130p'"
& 'C:\Program Files\Git\bin\bash.exe' -lc "nl -ba android/app/src/test/java/com/aiquota/mobile/providers/ProviderNativeUsagePayloadFetcherTest.kt | sed -n '84,104p'"
& 'C:\Program Files\Git\bin\bash.exe' -lc "nl -ba android/app/src/main/java/com/aiquota/mobile/providers/ProviderWebCollectorScripts.kt | sed -n '286,318p'"
& 'C:\Program Files\Git\bin\bash.exe' -lc "nl -ba android/app/src/main/java/com/aiquota/mobile/providers/ProviderBackgroundRefreshService.kt | sed -n '1070,1160p'"
& 'C:\Program Files\Git\bin\bash.exe' -lc "git diff --check"
& 'C:\Program Files\Git\bin\bash.exe' -lc "cd android && JAVA_HOME='/c/Program Files/Android/Android Studio/jbr' gradle testDebugUnitTest --tests 'com.aiquota.mobile.providers.CodexNativeHeaderSelectorTest' --tests 'com.aiquota.mobile.providers.WebLoginActivityNativeBridgeTest' --tests 'com.aiquota.mobile.providers.ProviderNativeUsagePayloadFetcherTest'"
& 'C:\Program Files\Git\bin\bash.exe' -lc "cd android && JAVA_HOME='/c/Program Files/Android/Android Studio/jbr' gradle testDebugUnitTest --rerun-tasks --tests 'com.aiquota.mobile.providers.CodexNativeHeaderSelectorTest' --tests 'com.aiquota.mobile.providers.WebLoginActivityNativeBridgeTest' --tests 'com.aiquota.mobile.providers.ProviderNativeUsagePayloadFetcherTest'"
```

Files inspected:

- `.omo/plans/codex-login-usage-auth-recovery.md`
- `.omo/ulw-loop/evidence/codex-login-root-cause-report.md`
- `.omo/evidence/codex-login-usage-auth-recovery-implementation.txt`
- `.omo/evidence/codex-login-usage-auth-recovery-diff.txt`
- `.omo/evidence/codex-login-usage-auth-recovery-red.txt`
- `.omo/evidence/codex-login-usage-auth-recovery-green.txt`
- `.omo/evidence/codex-login-usage-auth-recovery-requested-filter.txt`
- `.omo/evidence/codex-login-usage-auth-recovery-qa.txt`
- `.omo/evidence/codex-login-usage-auth-recovery-continuation-status.txt`
- `.omo/evidence/codex-login-usage-auth-recovery-continuation-tests.txt`
- `.omo/evidence/codex-login-usage-auth-recovery-emulator-logcat.txt`
- `.omo/evidence/codex-login-usage-auth-recovery-emulator-main-route.txt`
- `android/app/src/main/java/com/aiquota/mobile/providers/WebLoginActivity.kt`
- `android/app/src/main/java/com/aiquota/mobile/providers/ProviderNativeUsagePayloadFetcher.kt`
- `android/app/src/main/java/com/aiquota/mobile/providers/ProviderNativeJsonBridge.kt`
- `android/app/src/main/java/com/aiquota/mobile/providers/CodexNativeHeaderSelector.kt`
- `android/app/src/main/java/com/aiquota/mobile/providers/ProviderBackgroundRefreshService.kt`
- `android/app/src/main/java/com/aiquota/mobile/providers/ProviderWebCollectorScripts.kt`
- `android/app/src/test/java/com/aiquota/mobile/providers/CodexNativeHeaderSelectorTest.kt`
- `android/app/src/test/java/com/aiquota/mobile/providers/WebLoginActivityNativeBridgeTest.kt`
- `android/app/src/test/java/com/aiquota/mobile/providers/ProviderNativeUsagePayloadFetcherTest.kt`

## Verification Results

- `git diff --check`: PASS, exit 0, with line-ending warnings only.
- Focused tests with `--rerun-tasks`: PASS, `BUILD SUCCESSFUL in 1m 22s`.
- Broad requested filter: inspected saved artifact shows FAIL in unrelated `ProviderWebCollectorScriptsTest`; not accepted as green evidence.

## Blockers

1. Complete real login/recovery QA through an exported app route and capture logcat/storage evidence for the plan predicates, or record the exact external blocker after the login WebView flow is reached.
2. Replace or supplement brittle source-string tests for page-finished gating and Codex native header forwarding with behavior tests or sufficient real-surface proof.
3. Resolve `ProviderBackgroundRefreshService.kt` scope: exclude it from this task diff, or apply/test the same authenticated-header retention rule there before shipping the dirty tree.
