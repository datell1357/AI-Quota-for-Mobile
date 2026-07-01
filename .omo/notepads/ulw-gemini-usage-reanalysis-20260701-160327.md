# Ultrawork Notepad - Gemini usage reanalysis plan
Started: 2026-07-01T16:03:27.8385486+09:00

## Plan (exhaustively detailed)
- Skills: superpowers:using-superpowers, omo:ulw-plan.
- Intent: clear; user wants renewed root-cause analysis and action plan, not implementation.
- review_required: false.
- Classification: Standard/HEAVY planning because Gemini usage collection crosses Google/Gemini external WebView session, native RPC, local storage, and widget display.
- CodeGraph: skipped because project AGENTS says do not use CodeGraph unless explicitly requested.

## Success criteria + QA scenarios
- SC1: Fresh evidence from visible 2% state, native RPC/logcat, and stored snapshot proves or falsifies previous row[1] fraction hypothesis.
- SC2: Approval brief names a concrete replacement plan with no DOM/fallback and no human QA requirement for execution.

## Now
Capture current screenshots, refresh logcat, and snapshot.

## Todo
- Inspect user screenshots.
- Capture Gemini-only refresh logcat and current stored snapshot.
- Compare current source and previous plan assumptions.
- Write approval brief and wait for approval before updating .omo/plans.

## Findings
- User screenshots establish the target state: Gemini visible usage page shows current usage 2% used and weekly 0% used, while the app/widget still shows 5-hour 100% left and weekly 100% left.
- Fresh Gemini-only refresh evidence: `.omo/evidence/gemini-reanalysis-refresh-20260701-160349.log`.
- Native log evidence from the 2% state: `quotaSummaries=remaining=2357.0/used=0.02/limit=2357.02|remaining=48302.0/used=0./limit=48302.`.
- Stored snapshot after refresh updates `updated_at`, but stores 5-hour `usedAmount=0.02`, `usedPercent=0`, `remainingPercent=1`, `remainingText=100% left`.
- Root cause is not a narrow `0.1 = 100` display bug. The native RPC row[1] value in the 0..1 range is being interpreted as a request amount, so the parser computes `limit = remaining + used` and rounds remaining to 100%.
- Current source path: `android/app/src/main/java/com/aiquota/mobile/providers/GeminiUsagePageNativeFetcher.kt`, around `parseUsageRow`, reads row[1] as `used` amount unconditionally and emits `remaining_percent = remaining / (remaining + used) * 100.0`.
- Existing plan direction remains valid but must be revised from a single 0.01 example to a generalized fraction contract: if row[1] is in 0..1, treat it as used fraction, not amount; emit used percent directly and derive remaining percent as `1 - usedFraction`.

## Learnings
- Approval-gated plan update should modify the existing `.omo/plans/gemini-usage-fraction-row-refresh.md`, add 2% fixture evidence, preserve amount-row compatibility for row[1] > 1, and require device QA against the current 2% visible page without DOM/fallback paths.
