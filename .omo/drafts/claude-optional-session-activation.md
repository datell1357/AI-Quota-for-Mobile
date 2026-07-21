---
slug: claude-optional-session-activation
status: awaiting-approval
intent: clear
review_required: false
pending-action: await user selection of a compliant scope, then write .omo/plans/claude-optional-session-activation.md
approach: Reuse the existing default-false settings and reset-detection seams for an opt-in, policy-compliant user handoff or separately authorized API workflow. Do not send hidden Claude consumer-session messages.
---

# Draft: claude-optional-session-activation

## Components (topology ledger)
<!-- Lock the SHAPE before depth. One row per top-level component that can succeed or fail independently. -->
<!-- id | outcome (one line) | status: active|deferred | evidence path -->
settings-preference | Dedicated default-false Claude activation preference, independent of global live monitoring | active | android/app/src/main/java/com/aiquota/mobile/sync/ForegroundRefreshController.kt:117-148
reset-observer | Detect expired Claude five-hour reset through existing priority refresh planning | active | android/app/src/main/java/com/aiquota/mobile/providers/ProviderResetRefreshPolicy.kt:17-55; android/app/src/main/java/com/aiquota/mobile/providers/ProviderRefreshPlan.kt:59-122
user-handoff | On reset, show a user-controlled route to the official Claude client instead of submitting a prompt | active | policy boundary below
hidden-subscription-send | Background consumer-session prompt submission | deferred | https://www.anthropic.com/legal/consumer-terms#3

## Open assumptions (announced defaults)
<!-- Record any default you adopt instead of asking, so the user can veto it at the gate. -->
<!-- assumption | adopted default | rationale | reversible? -->
Feature default | disabled | User explicitly requested opt-in behavior; isolated Boolean prevents accidental activation | yes
Activation action | notification/deep-link or share handoff requiring a user submit | Consumer Terms prohibit automated/non-human consumer-service access unless API key or explicit permission | yes
API path | separate, only if the user supplies an authorized Anthropic API credential and accepts API billing | Claude subscription and API are separate products | yes

## Findings (cited - path:lines)

- `ProviderResetRefreshPolicy` turns passed `resetsAt` values into provider reset requests and `ProviderRefreshPlan` promotes them to QoS 1 jobs: `android/app/src/main/java/com/aiquota/mobile/providers/ProviderResetRefreshPolicy.kt:17-55`, `android/app/src/main/java/com/aiquota/mobile/providers/ProviderRefreshPlan.kt:59-122`.
- The existing global live-monitoring preference is default false; it must not double as this feature's setting: `android/app/src/main/java/com/aiquota/mobile/sync/ForegroundRefreshController.kt:117-148`.
- Claude collection uses a JS-enabled hidden WebView and restores an encrypted request context before collection: `android/app/src/main/java/com/aiquota/mobile/providers/ProviderBackgroundRefreshService.kt:640-723`; stored request headers are deliberately restricted: `android/app/src/main/java/com/aiquota/mobile/providers/ClaudeNativeHeaderStore.kt:32-60`.
- Existing Claude collector code is read-oriented for usage collection; no inspected message-send path exists: `android/app/src/main/java/com/aiquota/mobile/providers/ProviderWebCollectorScripts.kt:820-856`, `:974-1037`.
- Anthropic Consumer Terms apply to Claude.ai/Pro and associated apps, prohibit account credential sharing, and prohibit automated or non-human access except with an Anthropic API key or explicit permission: https://www.anthropic.com/legal/consumer-terms (effective 2025-10-08, sections 2-3).
- Anthropic documents that Claude paid subscriptions and Console/API usage are separate: https://support.claude.com/en/articles/9876003-i-have-a-paid-claude-subscription-pro-max-team-or-enterprise-plans-why-do-i-have-to-pay-separately-to-use-the-claude-api-and-console.

## Decisions (with rationale)

- Do not add hidden WebView automation that sends a message through a Claude consumer subscription session. This is disallowed by the cited Consumer Terms unless Anthropic explicitly authorizes it.
- Preserve existing user-owned modified application files; this planning pass creates only `.omo` planning artifacts.
- If implementation proceeds, create a dedicated default-false preference and gate before reset-job execution; never reuse the global live-monitoring switch.

## Scope IN

- Detailed plan for a default-off Claude reset-assistance option using existing reset detection.
- Explicit user-control, status, failure, and disconnect handling.
- Unit and emulator verification for disabled, enabled, reset, stale-session, and no-reset-time states.
- Optional official API-key workflow only as a separately authorized, separately billed product path.

## Scope OUT (Must NOT have)

- No hidden automatic Claude consumer-session message submission.
- No harvesting, expanding, or replaying authentication material beyond the existing read-only usage collector.
- No API-key embedding, logging, or use of a Claude subscription as an API credential.

## Open questions

- Owner decision: select the compliant product behavior to plan: (A) user-initiated handoff to the official Claude client after reset, (B) separate official Anthropic API-key workflow with explicit API billing consent, or (C) obtain Anthropic's explicit written permission and provide it before reconsidering consumer-session automation.

## Approval gate
status: awaiting-approval
Brief: the existing code already has default-false preference patterns, reset detection, and a background Claude usage collector. The requested hidden automatic message-send behavior conflicts with Anthropic Consumer Terms, so the plan must use one compliant scope above. After the user chooses and explicitly approves that scope, create the final plan artifact only; do not implement product code in this planning workflow.
<!-- When exploration is exhausted and unknowns are answered, set status: awaiting-approval. -->
<!-- That durable record is the loop guard: on a later turn read it and resume at the gate instead of re-running exploration. -->
