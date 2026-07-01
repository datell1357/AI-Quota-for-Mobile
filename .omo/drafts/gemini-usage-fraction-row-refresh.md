---
slug: gemini-usage-fraction-row-refresh
status: plan-written
intent: clear
pending-action: write .omo/plans/gemini-usage-fraction-row-refresh.md
approach: Fix Gemini native usage-page direct RPC row semantics at the collector boundary; keep DOM/fallback prohibited; verify with TDD and preserve-data device QA.
---

# Draft: gemini-usage-fraction-row-refresh

## Components (topology ledger)
<!-- Lock the SHAPE before depth. One row per top-level component that can succeed or fail independently. -->
<!-- id | outcome (one line) | status: active|deferred | evidence path -->
G1 | Gemini native RPC row semantics produce usage percentages matching the visible `/usage` card | active | `.omo/evidence/gemini-plan-refresh-20260701-153036.log`
G2 | Stored local snapshot and widget-facing values update from native data without DOM/fallback | active | `adb shell run-as com.aiquota.mobile cat shared_prefs/usage_data_gemini.xml`
G3 | Regression guard keeps `otAQ7b` deep rows metadata-only and preserves existing amount-row fixtures | active | `android/app/src/test/java/com/aiquota/mobile/providers/GeminiUsagePageNativeFetcherTest.kt:93`

## Open assumptions (announced defaults)
<!-- Record any default you adopt instead of asking, so the user can veto it at the gate. -->
<!-- assumption | adopted default | rationale | reversible? -->
row[1] range `(0, 1)` in Gemini `jSf9Qc` quota rows | interpret as used fraction, not used request amount | live row `0.01` corresponds to screenshot `1% 사용됨`; current amount interpretation creates impossible `limit=2374.01` | yes, isolated to Gemini collector tests
row[1] value `0.0` | interpret as 0% used | preserves current 0% weekly row and previous 0% current rows | yes
row[1] values greater than `1.0` | keep existing amount-based interpretation | existing tests use rows like `[450,150,1]` and must continue to normalize 75% remaining | yes
QA install strategy | preserve-data `adb install -r` only | user repeatedly said not to wipe app data because foreground/battery settings are costly | yes
session/cookie strategy | do not use saved-cookie injection for Gemini | user asked to discard saved-cookie restore approach for Gemini and avoid CLI/OAuth path | yes

## Findings (cited - path:lines)
- `android/app/src/main/java/com/aiquota/mobile/providers/GeminiUsagePageNativeFetcher.kt:22`: Gemini usage collection gets WebView cookies and calls native usage page fetch, not DOM.
- `android/app/src/main/java/com/aiquota/mobile/providers/GeminiUsagePageNativeFetcher.kt:42`: observed/candidate RPCs are tried before legacy `jSf9Qc`.
- `android/app/src/main/java/com/aiquota/mobile/providers/GeminiUsagePageNativeFetcher.kt:58`: legacy `jSf9Qc` direct RPC is accepted as payload source.
- `android/app/src/main/java/com/aiquota/mobile/providers/GeminiUsagePageNativeFetcher.kt:297`: only direct `quotaPayload[1]` rows become payload; nested/deep candidate rows return null.
- `android/app/src/main/java/com/aiquota/mobile/providers/GeminiUsagePageNativeFetcher.kt:627`: `quotaLine` currently reads row[0] as remaining and row[1] as used amount unconditionally.
- `android/app/src/main/java/com/aiquota/mobile/providers/GeminiUsagePageNativeFetcher.kt:636`: limit is computed as `remaining + used`; with live `[2374,0.01]`, this yields `2374.01`.
- `android/app/src/main/java/com/aiquota/mobile/providers/GeminiUsagePageNativeFetcher.kt:646`: `remaining_percent` is derived from that computed limit, so the app emits almost exactly 100% remaining.
- `.omo/evidence/gemini-plan-refresh-20260701-153036.log`: live Gemini-only refresh succeeded via `jSf9Qc`; row summary was `remaining=2374.0/used=0.01/limit=2374.01`.
- Device `usage_data_gemini.xml` readback after that refresh: `updated_at=2026-07-01T06:30:16.733647Z`, `usedPercent=0`, `remainingText=100% left`.
- User screenshot for the same surface: visible Gemini usage page shows current usage `1% 사용됨` and weekly `0% 사용됨`.

## Decisions (with rationale)
- Fix the collector boundary in `GeminiUsagePageNativeFetcher.quotaLine`, not the shared `ProviderUsageNormalizer`, because the raw Gemini row shape is provider-specific and should be normalized before shared display code.
- Emit explicit `used_percent` when row[1] is interpreted as fraction so `ProviderUsageNormalizer` no longer has to infer used percent from an almost-100 remaining percent.
- Keep direct `jSf9Qc` rows accepted; the issue is semantic interpretation, not the native about:blank transport.
- Keep `otAQ7b` nested/deep rows metadata-only; previous evidence and user screenshots showed those values can represent the wrong quota.
- Keep all QA provider-scoped to Gemini and preserve app data.

## Scope IN
- Gemini usage page native RPC direct row parsing.
- Gemini native fetcher unit tests and provider native source guard tests if they need updates.
- Device QA runbook and evidence for Gemini-only preserve-data refresh.
- Log/snapshot assertions proving no DOM scan, no visible DOM fallback, no webview-js fallback, no deep-row payload.

## Scope OUT (Must NOT have)
- No DOM scan or visible page parser.
- No fallback collector for Gemini.
- No Gemini CLI OAuth, Google Code Assist, or saved-cookie restore path reintroduction.
- No app data wipe, `pm clear`, uninstall, or reset of foreground/battery settings.
- No change to Claude/Codex/Copilot provider behavior except running final regression checks if needed.

## Open questions
None. User approved the brief; all remaining choices are reversible implementation details with evidence-backed defaults.

## Approval gate
status: approved
approved-by: user
approved-message: "승인"
