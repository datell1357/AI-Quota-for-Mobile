# Draft: iOS Feature Parity

## Requirements (confirmed)
- Build an iOS app for AI Quota while keeping current Android features and UI/UX.
- Use agentmemory and CodeGraph for project context.
- Use caveman full mode in Korean.
- Use OMO ulw-plan planning style.

## Research Findings
- Android is the production app surface: local-first provider dashboard, home screen widgets, optional foreground refresh notification, manual refresh, provider hide/reorder, Korean/English strings.
- Supported providers: Claude, Codex, Gemini, GitHub Copilot, Antigravity, Cursor.
- Existing iOS files under `ios/` are a skeleton/sample app only, not feature parity.
- Provider sessions, cookies, OAuth credentials, and snapshots must stay on device; no server token relay.
- CodeGraph was initialized and reports 200 files, 3822 nodes, 9209 edges.

## Technical Decisions
- Use native SwiftUI + WidgetKit, not a cross-platform rewrite.
- Port provider/data contracts first, UI second, provider collectors third.
- Treat Android foreground service as iOS platform-specific equivalent: manual refresh, WidgetKit timelines, BGAppRefresh best effort, and local notifications where policy allows.

## Open Questions
- Apple Developer Team ID and final iOS bundle id are not discoverable from repo.
- Whether App Store release is in scope now or only internal/TestFlight build.

## Scope Boundaries
- INCLUDE: iOS app, widget, local provider session/collector parity, settings, localization, tests, simulator/device QA plan.
- EXCLUDE: changing Android UI, uploading provider secrets, server token relay, Flutter/React Native/KMM rewrite.
