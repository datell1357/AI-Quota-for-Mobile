# Provider Native Bridge Optimization Code Review

Status: source-code review passed; release completion still requires real provider login QA.

## Scope

Reviewed current branch diff for:

- `android/app/src/main/java/com/aiquota/mobile/providers/ProviderBackgroundRefreshService.kt`
- `android/app/src/main/java/com/aiquota/mobile/providers/ProviderNativeUsagePayloadFetcher.kt`
- `android/app/src/main/java/com/aiquota/mobile/providers/ProviderSessionResetter.kt`
- `android/app/src/main/java/com/aiquota/mobile/providers/ProviderWebSessionCleaner.kt`
- `android/app/src/main/java/com/aiquota/mobile/ui/AIQuotaAppShell.kt`
- `android/app/src/test/java/com/aiquota/mobile/providers/GoogleProviderLoginRoutingTest.kt`
- `android/app/src/test/java/com/aiquota/mobile/providers/ProviderNativeJsonBridgeTest.kt`
- `android/app/src/test/java/com/aiquota/mobile/providers/ProviderNativeUsagePayloadFetcherTest.kt`
- `android/app/src/test/java/com/aiquota/mobile/providers/ProviderSessionResetterTest.kt`
- `android/app/src/test/java/com/aiquota/mobile/providers/ProviderWebSessionClearPolicyTest.kt`

## Programming Review

- Single responsibility: PASS for new code units. `ProviderWebSessionCleanupJobs` owns only shared provider cleanup jobs. Provider-scoped lock changes stay inside the existing session maintenance boundary.
- Boundary purity: PASS. No new untyped external input boundary was added. Native usage diagnostics only summarize existing typed collection results.
- Variant discrimination: PASS. No new enum/tagged variant chain was introduced.
- Escape hatches: PASS. No new unchecked casts, broad catches, or dependency escape hatches were added.
- Defensive layer: PASS. Same-provider cleanup wait swallows cleanup failure deliberately so reconnect is not blocked by best-effort session destruction.
- Helpers for one-off: PASS with note. `ProviderWebSessionCleanupJobs` has two independent call sites: visible disconnect scheduling and reconnect await.
- Tests: PASS. Reverting the shared cleanup jobs, provider-scoped lock, visible-first disconnect, or redacted diagnostics fails the added/updated tests.
- Parameter bloat: PASS. No new long parameter list was introduced.
- Redundant verification: PASS. Visible disconnect no longer waits on destructive cleanup before removing snapshot; no post-clear re-query was added.
- Negative naming: PASS. No new negative-form public names were added.

## Remove-AI-Slops Review

- Obvious comments: PASS. No obvious narration comments were added.
- Over-defensive code: PASS. Cleanup failure is intentionally non-blocking for reconnect and is covered by `pendingCleanupFailureDoesNotBlockReconnectWaiter`.
- Excessive complexity: PASS. The largest production edit moves existing launch branches under a coroutine so same-provider cleanup can be awaited before login; no nested variant machinery or speculative options object was added.
- Needless abstraction: PASS. Shared cleanup jobs fix the instance-local race found by review and are used from disconnect and connect flows.
- Boundary violations: PASS. UI starts login after same-provider cleanup, while WebView/session cleanup remains provider-layer code.
- Dead code: PASS. No new unused production import or unreachable branch was observed; Gradle test/build evidence is green.
- Duplication: PASS. Existing GLM/Antigravity/WebLogin launch branch shape remains explicit to avoid broad provider behavior refactoring.
- Performance equivalence: PASS. Provider-scoped locks reduce unrelated-provider waiting without changing same-provider serialization.
- Missing tests: PASS for automated coverage. Manual provider login QA remains pending and is listed separately below.
- Oversized modules: REQUIRES ATTENTION as pre-existing debt. Some touched files are already above the 250 pure-LOC guideline:
  - `ProviderBackgroundRefreshService.kt`: 1304
  - `ProviderNativeUsagePayloadFetcher.kt`: 1116
  - `AIQuotaAppShell.kt`: 1159
  - `GoogleProviderLoginRoutingTest.kt`: 287
  - `ProviderNativeUsagePayloadFetcherTest.kt`: 641
  This change did not create those large modules. Splitting them during this fix would expand the blast radius across provider behavior, conflicting with the user's constraint to avoid unrelated provider changes.

## Overfit And Test-Slop Review

- Implementation-mirroring tests: ACCEPTED WITH COVERAGE. Source-policy tests remain present because this repo already uses them for collector routing invariants, but the risky session cleanup changes are backed by coroutine behavior tests:
  - `pendingCleanupWaitIsSharedAcrossResetterInstances`
  - `pendingCleanupFailureDoesNotBlockReconnectWaiter`
  - `providerScopedMaintenanceGateSerializesOnlySameProvider`
- Tautologies: PASS. The behavior tests fail if cleanup jobs are instance-local, if cleanup failure propagates, or if maintenance locking remains global.
- Unnecessary extraction: PASS. No extraction was done solely to satisfy a test.
- Maintenance burden: PASS with debt note. Large existing files remain a maintenance risk, but refactoring them now would be outside the targeted provider/session fix.

## Forbidden Collection Pattern Review

Command:

```bash
git diff -- android/app/src/main/java android/app/src/test/java | rg -n "document\.body|querySelector|localStorage|sessionStorage|retained|fallback|__AIQuotaCodexNetworkRows|evaluateJavascript\(" || true
```

Result: no matches in the current source/test diff.

## Quality Gates

- `git diff --check`: PASS
- Targeted T05/T09 session cleanup tests: PASS, evidence `t05-t09-green-provider-session-resetter.txt`
- Collection/diagnostics targeted tests: PASS, evidence `t02-t10-targeted-green.txt`
- Provider package tests: PASS, evidence `t11-provider-package-green.txt`
- Full debug unit tests: PASS, evidence `full-debug-unit-tests.txt`
- Debug APK build: PASS, evidence `t12-assemble-debug.txt`
- Emulator install and launch smoke: PASS, evidence `t12-adb-install.txt`, `t12-app-focus.txt`, `t12-app-launch.png`
- LSP diagnostics: N/A. `kotlin-ls` is not installed and the user did not request LSP installation.
- Static/security scan: N/A. No project security scanner was identified for this Android provider diff.

## Manual QA Still Required

- Claude login and usage collection without white-screen stall.
- GLM web OAuth login and usage collection.
- GLM disconnect then fresh login.
- Codex repeated collection from an existing session.
- Disconnect responsiveness while unrelated provider refresh remains available.

Final Status: SOURCE REVIEW CLEAN; RELEASE REQUIRES ATTENTION UNTIL MANUAL QA IS COMPLETE.
