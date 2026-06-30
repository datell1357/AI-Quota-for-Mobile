# Codex Login Root Cause Report - Code Quality Review

## Verdict

- codeQualityStatus: CLEAR
- recommendation: APPROVE
- blockers: none

## Scope Reviewed

- `.omo/ulw-loop/evidence/codex-login-root-cause-runtime.txt`
- `.omo/ulw-loop/evidence/codex-login-root-cause-report.md`
- `.omo/ulw-loop/evidence/codex-login-root-cause-cleanup.txt`
- Source refs named in the report:
  - `android/app/src/main/java/com/aiquota/mobile/providers/WebLoginActivity.kt:324`
  - `android/app/src/main/java/com/aiquota/mobile/providers/WebLoginActivity.kt:645`
  - `android/app/src/main/java/com/aiquota/mobile/providers/WebLoginActivity.kt:700`
  - `android/app/src/main/java/com/aiquota/mobile/providers/WebLoginActivity.kt:878`
  - `android/app/src/main/java/com/aiquota/mobile/providers/ProviderWebCollectorScripts.kt:536`
  - `android/app/src/main/java/com/aiquota/mobile/providers/ProviderWebCollectorScripts.kt:1137`

## Skill-Perspective Check

Ran. Loaded and applied `omo:remove-ai-slops`, `omo:programming`, and `omo:review-work` perspectives.

No code diff was under review, so there were no deletion-only tests, tautological tests, implementation-mirroring tests, untyped escape hatches, needless abstractions, or production parsing changes to reject. The proposed fix plan asks for failing-first behavior tests around callback ordering and header retention; those tests target observable failure axes rather than merely asserting removal or constants.

## Evidence Assessment

The causal chain is supported by the runtime artifact and named source refs:

- Runtime line 24 shows Codex native collection starting from `page_finished` at `chatgpt.com/`.
- `WebLoginActivity.kt:324-337` shows `onPageFinished` can call `maybeStartCodexNativeCollection(..., "page_finished")` for Codex accepted payload pages.
- `WebLoginActivity.kt:645-653` shows native collection sets `codexNativeCollectionStarted=true` and injects the about:blank collector.
- `WebLoginActivity.kt:709-721` shows the post-login analytics redirect is blocked once `codexNativeCollectionStarted` is true and otherwise waits for `/backend-api/me` or `/backend-api/accounts/check`.
- Runtime lines 25-30 show authenticated headers observed after the early collection start; runtime lines 27-32 show later non-auth header captures for the same or related endpoints.
- `WebLoginActivity.kt:878-888` unconditionally writes endpoint and fallback header maps, supporting the report's header overwrite concern.
- Runtime lines 33-35 show `401` for `/backend-api/subscriptions` and `/backend-api/wham/usage`, followed by `codex_usage_unavailable`.
- `ProviderWebCollectorScripts.kt:536-545` routes about:blank fetches through native JSON bridge, and `ProviderWebCollectorScripts.kt:1137-1174` fetches session/account/subscription/usage resources then fails with `codex_usage_unavailable` when parsing does not produce a payload.

The report avoids the major unsupported-claim trap: it does not claim the wrong APK hypothesis is fully refuted, and it explicitly asks to reinstall the intended debug APK and record install output before implementation.

The fix plan is minimal for the supported cause: gate the page-finished about:blank start, preserve authenticated headers against later unauthenticated captures, and verify through logcat plus stored snapshot state. No speculative product rewrite or parser overhaul is proposed.

## Findings By Severity

### CRITICAL

None.

### HIGH

None.

### MEDIUM

None.

### LOW

- Wording nuance: `.omo/ulw-loop/evidence/codex-login-root-cause-report.md:25` says the observed usage-related requests carry no Authorization context. Runtime line 30 shows an earlier `/backend-api/subscriptions` capture with Authorization, before the later unauthenticated subscriptions capture and 401. The report's observations already distinguish this sequence, so this is not blocking; if edited later, narrow the wording to "the failure-causing later usage fetches."

## Final Recommendation

APPROVE. The root-cause report is evidence-backed, scoped honestly, and proposes the smallest credible fix plan with relevant failing-first tests.
