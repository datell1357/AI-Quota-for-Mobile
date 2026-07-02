# Provider Native Bridge Optimization Gate Review

## recommendation

REJECT

## originalIntent

The user wanted the Claude, GLM web OAuth, and Codex normal usage paths to converge on about:blank native bridge collection, reduce WebView/page-scrape battery and data cost, preserve non-target provider behavior, and fix disconnect/reconnect cleanup responsiveness without stale or fake usage.

## desiredOutcome

- Claude, GLM web OAuth, and Codex normal collection use about:blank native JavaScript bridge only.
- No target normal path uses DOM scan, storage/script scraping, retained network rows, or page-based fallback.
- Non-target providers remain preserved except explicitly tested shared boundaries.
- Disconnect cleanup is provider-scoped; visible disconnect state settles before long cleanup; same-provider reconnect waits for shared cleanup; cleanup failure does not block reconnect.
- Optimization diagnostics are redacted.
- Automated tests, build, install smoke, and required user-surface/manual QA evidence support completion.
- Current code review report covers programming and remove-ai-slops/overfit criteria.

## userOutcomeReview

Code inspection supports the main implementation shape: scoped providers are accepted only on `about:blank`, `ProviderWebCollectorScripts.build()` emits native bridge scripts for scoped providers, WebLoginActivity routes Claude/GLM/Codex to about:blank before injection, ProviderSessionResetter now shares pending cleanup jobs, and cleanup waits swallow failure.

The shipped evidence does not yet support the full user-visible outcome. The verification summary explicitly says real Claude/GLM/Codex provider login QA is pending user account interaction, while the original plan lists that manual QA as required. The current evidence set proves automated tests, debug build, install, and launch smoke, but not the actual provider login/usage/disconnect/reconnect outcomes.

## blockers

1. Missing required manual/provider QA evidence.
   - `.omo/evidence/provider-native-bridge-optimization-20260702/verification-summary.md` states: "real provider login QA pending user account interaction."
   - `.omo/plans/provider-native-bridge-optimization-20260702.md` requires fresh-login QA for Claude, GLM web OAuth, and Codex; GLM disconnect/reconnect QA; and unrelated-provider refresh during cleanup.
   - Existing `t12-*` evidence covers build, install, app focus, and screenshot smoke only, not those provider outcomes.

2. Missing current code-review report with explicit programming and remove-ai-slops coverage.
   - The checked goal evidence folder contains test/build/smoke artifacts and `member-a-no-change-finding.md`, but no code-review report.
   - Repository-wide review artifacts found under `.omo/evidence/*code-review.md` are older/general or different-goal artifacts, not this provider-native-bridge gate report.
   - No inspected report explicitly covers overfit/slop criteria: implementation-mirroring tests, deletion-only tests, tautologies, unnecessary extraction, and maintenance burden for this diff.

## directSlopAndProgrammingPass

- Production diff: no unresolved slop blocker found in the remaining fix. `ProviderWebSessionCleanupJobs` is a minimal shared job map; provider-scoped locks use existing coroutines; no new broad abstraction or dependency was added.
- Tests: source-string policy tests remain common in this repo and are now backed by coroutine behavior tests for shared cleanup/failure/provider-scoped locking. I did not reject the diff on test slop alone.
- Evidence coverage remains the blocker because the required review report is absent.

## checkedArtifactPaths

- `.omo/plans/provider-native-bridge-optimization-20260702.md`
- `.omo/drafts/provider-native-bridge-optimization-20260702.md`
- `.omo/evidence/provider-native-bridge-optimization-20260702/verification-summary.md`
- `.omo/evidence/provider-native-bridge-optimization-20260702/full-debug-unit-tests.txt`
- `.omo/evidence/provider-native-bridge-optimization-20260702/t02-t10-targeted-green.txt`
- `.omo/evidence/provider-native-bridge-optimization-20260702/t05-t09-red-provider-session-resetter.txt`
- `.omo/evidence/provider-native-bridge-optimization-20260702/t05-t09-green-provider-session-resetter.txt`
- `.omo/evidence/provider-native-bridge-optimization-20260702/t11-provider-package-green.txt`
- `.omo/evidence/provider-native-bridge-optimization-20260702/t12-assemble-debug.txt`
- `.omo/evidence/provider-native-bridge-optimization-20260702/t12-adb-install.txt`
- `.omo/evidence/provider-native-bridge-optimization-20260702/t12-app-focus.txt`
- `.omo/evidence/provider-native-bridge-optimization-20260702/t12-app-launch.png`
- `.omo/evidence/provider-native-bridge-optimization-20260702/member-a-no-change-finding.md`
- `.omo/ulw-loop/provider-native-bridge-optimization-20260702/notepad.md`
- `android/app/src/main/java/com/aiquota/mobile/providers/ProviderWebCollectorScripts.kt`
- `android/app/src/main/java/com/aiquota/mobile/providers/WebLoginActivity.kt`
- `android/app/src/main/java/com/aiquota/mobile/providers/ProviderNativeUsagePayloadFetcher.kt`
- `android/app/src/main/java/com/aiquota/mobile/providers/ProviderSessionResetter.kt`
- `android/app/src/main/java/com/aiquota/mobile/providers/ProviderWebSessionCleaner.kt`
- `android/app/src/main/java/com/aiquota/mobile/providers/ProviderBackgroundRefreshService.kt`
- `android/app/src/main/java/com/aiquota/mobile/ui/AIQuotaAppShell.kt`
- `android/app/src/test/java/com/aiquota/mobile/providers/ProviderSessionResetterTest.kt`
- `android/app/src/test/java/com/aiquota/mobile/providers/ProviderNativeUsagePayloadFetcherTest.kt`

## exactEvidenceGaps

- Missing manual QA artifact proving Claude login reaches trusted usage via about:blank native bridge without the white-screen stall.
- Missing manual QA artifact proving GLM web OAuth login reaches trusted usage via about:blank native bridge.
- Missing manual QA artifact proving GLM disconnect then fresh login on the installed app.
- Missing manual QA artifact proving Codex repeated collection from an existing session.
- Missing manual QA artifact proving unrelated provider refresh remains available during another provider cleanup.
- Missing current code-review artifact for this goal with explicit programming criteria and remove-ai-slops overfit/slop coverage.
