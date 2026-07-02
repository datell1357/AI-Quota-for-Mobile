# Provider Native Bridge Optimization Draft

## Metadata
- status: approved-for-plan
- created: 2026-07-02
- branch: 26version-code
- source_thread: 019f132b-48a7-7812-8c79-74541e487332
- scope: plan-only artifact; no production code edits in this step

## User Constraints
- Use branch `26version-code`.
- Do not touch behavior code for providers outside the affected set unless a regression test proves a shared boundary must be changed.
- Do not add DOM scan, visible-page scraping, `localStorage`/`sessionStorage`/`document.scripts` extraction, retained network-row fallback, or WebView fallback for normal Claude, GLM, or Codex usage collection.
- Claude, GLM, and Codex must collect through an `about:blank` native JavaScript bridge path.
- The update objective is battery and data-use reduction first, while preserving correctness and fresh usage evidence.
- Do not fake usage, show stale usage as normal, or force past provider auth screens with one-off UI bypasses.

## Target Problems
1. Claude login can stop on a white screen after authentication.
2. GLM web OAuth login can complete without usable usage collection.
3. GLM disconnect can leave enough session state behind that a fresh login is blocked.
4. Disconnect can remain busy too long and interfere with other provider refreshes.
5. Codex can collect once and then fail to continue collecting from a trusted session.

## Current Findings
- `WebLoginActivity.kt` already has target-provider native collection entry points: `maybeStartClaudeNativeCollection`, `maybeStartGlmNativeCollection`, and `maybeStartCodexNativeCollection`.
- `ProviderNativeUsagePayloadFetcher.kt` is the right endpoint-only boundary for Claude, GLM, and Codex payload fetching.
- `ProviderWebCollectorScripts.kt` still contains DOM, storage, script, and retained network-row collector logic used by legacy target-provider paths; those must not be used for the new target flows.
- GLM has two modes: API key mode and web OAuth mode. This work concerns web OAuth native bridge collection and must preserve API key behavior.
- Disconnect currently waits on destructive session cleanup before the UI can settle. That protects relogin but makes the whole app feel busy and can delay other provider refresh work.
- Codex must not treat generic `codex_usage_unavailable` or no-payload results as auth failure unless there is explicit auth-required evidence such as login redirect, main-frame `401/403`, or an auth-required bridge result.

## Proposed Direction
- Make target-provider usage collection converge on `about:blank` plus native bridge endpoint fetches.
- Remove or quarantine target-provider legacy DOM/retained-network fallback paths from normal Claude, GLM, and Codex login/background collection.
- Split disconnect into fast local state/UI completion plus bounded provider-specific cleanup that does not block unrelated provider refresh.
- Add red/green tests proving forbidden target-provider collection patterns are absent.
- Add lightweight diagnostics that prove fewer page navigations, bounded endpoint calls, bounded retries, and fresh payload outcomes.

## Planning Notes
- This draft intentionally plans implementation but does not edit production source.
- High-accuracy review is represented as planned verification because subagent spawning was not explicitly requested in this thread.
