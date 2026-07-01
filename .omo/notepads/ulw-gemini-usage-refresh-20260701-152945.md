# Ultrawork Notepad - Gemini usage refresh plan
Started: 2026-07-01T15:29:45.0738029+09:00

## Plan (exhaustively detailed)
- Skills: omo:ulw-plan because user explicitly requested plan-only workflow.
- Skipped CodeGraph because project AGENTS explicitly says do not use CodeGraph unless requested.
- Tier: HEAVY because Gemini usage collection crosses external Google/Gemini session, WebView auth, native RPC, storage, and widget display.
- Intent: clear; user wants a decision-complete plan to fix Gemini usage values staying stale while timestamp updates.
- review_required: false.

## Success criteria + QA scenarios
- SC1: Plan identifies the current stale-value mechanism using repository and device evidence. Scenario: read current source/log/snapshot; PASS when mismatch source is named with evidence paths.
- SC2: Plan prescribes DOM/fallback-free about:blank native collection QA. Scenario: plan includes exact adb/logcat/snapshot checks; PASS when executor can run without user decisions.

## Now
Investigate current Gemini native collector, snapshots, and recent evidence.

## Todo
- Inspect current repo state and Gemini collector paths.
- Inspect current device snapshot/raw evidence for static quota values vs visible page.
- Synthesize owner decisions and approval brief.
- After approval, scaffold .omo plan with todo waves.

## Findings

## Learnings
- Current device snapshot: usage_data_gemini.xml updated_at=2026-07-01T06:29:33.620535Z while 5-hour line remains remainingPercent=1/usedPercent=0. It stores remainingAmount=2374, usedAmount=0.01, limitAmount=2374.01, so the parser treats the second row value as tiny used amount instead of deriving used from the visible page's 1% used state.
- Current collector source: GeminiUsagePageNativeFetcher.quotaLine(row) interprets row[0]=remaining, row[1]=used, row[2]=type, then limit=remaining+used and remaining_percent=remaining/limit*100.
- User screenshot: actual Gemini usage page now shows current usage 1% used and weekly 0% used, so app percent is stale/wrong even though refresh timestamp changes.
- Live refresh evidence `.omo/evidence/gemini-plan-refresh-20260701-153036.log`: `jSf9Qc` direct native RPC succeeded with row summaries `remaining=2374.0/used=0.01/limit=2374.01` and `remaining=48318.0/used=0./limit=48318.`; native usage ok=true and snapshot saved.
- Same-time snapshot `usage_data_gemini.xml`: updated_at=2026-07-01T06:30:16.733647Z, Gemini CONNECTED, 5-hour usedPercent=0, remainingText="100% left", usedAmount=0.01, limitAmount=2374.01.
- Code cause: `GeminiUsagePageNativeFetcher.kt:627-646` treats row[1] as used amount unconditionally and computes `limit = remaining + used`; current evidence suggests row[1]=0.01 represents 1% used fraction for Gemini current usage.
- Normalizer cause is secondary: `ProviderUsageNormalizer.kt:1589-1595` derives usedPercent from remaining_percent; because collector emits remaining_percent nearly 100, UI stays unchanged.
- Plan default: fix at collector boundary, not normalizer/display, so Gemini native raw shape is normalized before shared provider logic. Keep DOM/fallback prohibited.
## Approval brief
Findings:
- Current refresh is not failing; it succeeds and updates timestamps. The wrong value is produced because the collector misinterprets the `jSf9Qc` row shape.
- Evidence: `.omo/evidence/gemini-plan-refresh-20260701-153036.log` shows `nativeUsage provider=gemini ok=true` and `remaining=2374.0/used=0.01/limit=2374.01`; device snapshot shows `updated_at=2026-07-01T06:30:16.733647Z`, `usedPercent=0`, `remainingText=100% left`.
- User screenshot shows current usage `1% 사용됨`, so `0.01` must be handled as a used fraction/percent signal, not a used request amount.
Approach to plan:
- Root fix in `GeminiUsagePageNativeFetcher.quotaLine`: for Gemini direct RPC rows, treat row[1] in `(0, 1)` as a used fraction, emit explicit `used_percent` and `remaining_percent`, and keep amount-based parsing for older/fixture rows where row[1] is > 1.
- Keep `otAQ7b` deep rows metadata-only; no DOM scan, no fallback, no visible-DOM parser.
- TDD: add failing fixture for `[2374.0,0.01,1,...]` proving current code stores 100% left; green proves 99% remaining/1% used. Keep existing direct amount fixture coverage.
- Device QA: preserve-data `adb install -r`, Gemini-only refresh broadcast, logcat assertions for `jSf9Qc`, `nativeUsage ok=true`, absence of DOM/fallback/deep collector mode, and snapshot readback with `usedPercent=1` for current usage and `0` for weekly.
Status: awaiting approval to scaffold and write `.omo/plans/gemini-usage-fraction-row-refresh.md`.
## Approval received
User approved plan generation with: 승인
Next: scaffold `.omo/drafts/gemini-usage-fraction-row-refresh.md` and `.omo/plans/gemini-usage-fraction-row-refresh.md`, then append decision-complete todos.
## Metis review receipt
Agent: 019f1c68-0bc3-7180-858c-76ec435861a6
Verdict: ITERATE
Integrated changes:
- Filled final plan placeholders.
- Added explicit field contract for fraction rows, zero rows, amount rows, and otAQ7b metadata-only rows.
- Added exact Gradle, adb install -r, refresh broadcast, logcat, and run-as snapshot QA commands.
- Added no pm clear/uninstall/RESET_PROVIDER/cookie injection guardrails.
- Added normalized snapshot assertion so unit tests cannot pass while UI storage remains wrong.
