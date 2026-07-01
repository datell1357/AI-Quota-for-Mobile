---
slug: gemini-native-usage-page-rpc-realignment
status: plan-written
intent: clear
review_required: false
pending-action: await user decision to start implementation or request high-accuracy review
approach: Keep Gemini web login and about:blank native JS bridge; replace stale/generic usage-page RPC parsing with the actual native usage-page RPC payload that matches visible Gemini usage values.
---

# Draft: gemini-native-usage-page-rpc-realignment

## Components (topology ledger)
| id | outcome | status | evidence path |
| --- | --- | --- | --- |
| C1 | Gemini login remains WebView/Google AccountChooser and reaches `/usage` or `/u/{n}/usage`. | active | `android/app/src/main/java/com/aiquota/mobile/providers/ProviderDefinitions.kt:119`; `android/app/src/main/java/com/aiquota/mobile/providers/WebLoginActivity.kt:677` |
| C2 | Gemini collection remains about:blank native JS, not DOM/fallback. | active | `android/app/src/main/java/com/aiquota/mobile/providers/ProviderAboutBlankCollectorPolicy.kt:5`; `android/app/src/main/java/com/aiquota/mobile/providers/ProviderNativeUsagePayloadFetcher.kt:44` |
| C3 | Gemini native usage fetcher discovers and replays the actual usage-page RPC producing visible page values. | active | `android/app/src/main/java/com/aiquota/mobile/providers/GeminiUsagePageNativeFetcher.kt:22`; `.omo/evidence/gemini-refresh-diagnosis-20260701-093947.log:410` |
| C4 | Gemini parser/normalizer rejects stale/generic 100% values and outputs remaining percentages matching real page values. | active | `android/app/src/main/java/com/aiquota/mobile/providers/GeminiUsagePageNativeFetcher.kt:181`; `android/app/src/main/java/com/aiquota/mobile/providers/ProviderUsageNormalizer.kt:630` |
| C5 | Device QA proves first collection and 3-minute refresh without app data clearing or saved-cookie reinjection. | active | `.omo/evidence/gemini-refresh-diagnosis-20260701-093947.log:414`; `.omo/evidence/gemini-refresh-diagnosis-20260701-093947.log:417` |

## Open assumptions (announced defaults)
| assumption | adopted default | rationale | reversible? |
| --- | --- | --- | --- |
| Actual page value reference | Use screenshot/manual visible value only as QA evidence; product code never reads DOM/screenshot/OCR. | The user needs parity with the real page, but product collection must remain native-only. | yes |
| Session handling during QA | Preserve app data with `adb install -r`; if WebView session expires, stop and ask for login instead of injecting saved cookies. | User rejected saved cookie reinjection for Gemini and asked not to clear app data. | yes |
| Old Code Assist plan | Treat `.omo/plans/gemini-native-usage-codeassist.md` as superseded and do not execute it. | Live WebView-cookie Code Assist failed earlier and user clarified Gemini is web login. | yes |
| Failure behavior | Return explicit unavailable diagnostics when native RPC data is missing or ambiguous. | Project guardrail forbids fake/stale usage as trusted current usage. | yes |

## Findings (cited - path:lines)
- `android/app/src/main/java/com/aiquota/mobile/providers/ProviderAboutBlankCollectorPolicy.kt:5` keeps Gemini in the about:blank native collector allowlist.
- `android/app/src/main/java/com/aiquota/mobile/providers/ProviderNativeUsagePayloadFetcher.kt:47` sends Gemini to `fetchGeminiPayload`, which calls `GeminiUsagePageNativeFetcher.fetchUsagePayload(...)`.
- `android/app/src/main/java/com/aiquota/mobile/providers/ProviderNativeUsagePayloadFetcher.kt:175` is the Gemini fetch call to preserve; it currently passes user-agent, cookie header, and usage page URL.
- `android/app/src/main/java/com/aiquota/mobile/providers/GeminiUsagePageNativeFetcher.kt:38` builds one batchExecute endpoint.
- `android/app/src/main/java/com/aiquota/mobile/providers/GeminiUsagePageNativeFetcher.kt:41` always posts the `jSf9Qc` request body.
- `android/app/src/main/java/com/aiquota/mobile/providers/GeminiUsagePageNativeFetcher.kt:181` only extracts `jSf9Qc` from the response.
- `android/app/src/main/java/com/aiquota/mobile/providers/GeminiUsagePageNativeFetcher.kt:219` parses rows as fixed type `1` = 5-hour and `2` = Weekly.
- `android/app/src/main/java/com/aiquota/mobile/providers/ProviderUsageNormalizer.kt:630` normalizes Gemini usage.
- `android/app/src/main/java/com/aiquota/mobile/providers/ProviderUsageNormalizer.kt:659` computes usage-page lines from compact payload rows.
- `android/app/src/main/java/com/aiquota/mobile/providers/WebLoginActivity.kt:677` switches Gemini usage page to about:blank native collection.
- `android/app/src/main/java/com/aiquota/mobile/providers/WebLoginActivity.kt:691` saves canonical Gemini usage URL before about:blank.
- `android/app/src/main/java/com/aiquota/mobile/providers/ProviderScopedStateRepository.kt:73` persists canonical Gemini usage URL.
- `.omo/evidence/gemini-refresh-diagnosis-20260701-093947.log:410` shows the current native usage page HTML fetch succeeds with a large HTML payload.
- `.omo/evidence/gemini-refresh-diagnosis-20260701-093947.log:413` shows the current RPC response is tiny, about 225 bytes.
- `.omo/evidence/gemini-refresh-diagnosis-20260701-093947.log:414` shows current `nativeUsage provider=gemini ok=true`, which is insufficient because the user reports page mismatch.
- `.omo/evidence/gemini-refresh-diagnosis-20260701-093947.log:417` shows the app saves two lines even when values may not match the page.

## Decisions (with rationale)
- Keep Gemini web login. Rationale: user explicitly rejected CLI OAuth for Gemini, and current login now works.
- Keep about:blank native JS collection. Rationale: user explicitly forbids DOM and fallback collection.
- Do not switch Gemini to Code Assist. Rationale: previous WebView-cookie Code Assist path failed live and conflicts with the user's web-login requirement.
- Treat `jSf9Qc`-only parsing as suspect until proven to match visible page values. Rationale: current ok=true/native lineCount=2 did not match user-observed usage.
- Add sanitized discovery before implementing final parser. Rationale: Gemini's live usage page RPC contract must be identified from runtime evidence without exposing secrets.
- Reject ambiguous native payloads instead of manufacturing 100%. Rationale: repo memory and user preference forbid stale or fake trusted usage.

## Scope IN
- `GeminiUsagePageNativeFetcher`
- `ProviderNativeUsagePayloadFetcher`
- `ProviderUsageNormalizer`
- Gemini login/background bridge guardrails in `WebLoginActivity`, `ProviderBackgroundRefreshService`, `ProviderScopedStateRepository`, and related tests if needed.
- Gemini native-only source/fixture tests.
- Real-device/emulator QA evidence under `.omo/evidence`.
- Commit and push after implementation tasks.

## Scope OUT (Must NOT have)
- Gemini DOM collection, visible text scan, WebView page-state parser, or network-row fallback.
- Gemini saved-cookie reinjection for QA or product behavior.
- Gemini CLI OAuth restoration.
- Gemini Code Assist replacement.
- App data clearing during QA.
- Unrelated provider refactors.
- Raw cookie/header/token/account/HTML/RPC payload logging or commits.

## Open questions
- None blocking. The plan adopts the default that visible page values are QA reference only and product collection remains native RPC.

## Approval gate
status: plan-written
pending action: implementation may start only after explicit user approval, for example `$omo:start-work` or "진행해".
plan: `.omo/plans/gemini-native-usage-page-rpc-realignment.md`
