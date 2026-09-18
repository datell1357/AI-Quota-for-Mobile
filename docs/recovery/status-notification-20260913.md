# Status-bar usage notification — 2026-09-13

## Reproduced issue

The emulator's Live Refresh preference was true, notifications were enabled, and
ProviderBackgroundRefreshService was running in the foreground with notification ID
1001. The expanded notification nevertheless showed only Antigravity.

The pinned notification consumed legacy WidgetSnapshotCache data rather than the exact
account catalog. The raw legacy latest_snapshot contained only Antigravity; the separate
local display cache contained provider-keyed entries rather than every account.
Foreground-service creation and debounced updates therefore did not reliably match the
dashboard. Four new regression tests failed before the fix.

## Changes

- Both foreground creation and pinned notification updates use authoritative account
  snapshots in multi-account mode, preserving per-account gauge colors.
- Connection filtering is applied per JSON entry, not by provider ID. A disconnected
  Claude account cannot inherit its sibling's connection state. If all accounts are
  disconnected, no stale gauges are rendered.
- Account labels travel with their gauges, avoiding label/value mismatches when an
  earlier account has no quota lines. Multiple accounts of the same provider are named
  in expanded and compact gauge text.
- Each accepted background account refresh schedules a debounced notification update;
  foreground catalog changes also trigger surface updates.
- Notification posting failures are logged rather than discarded silently.

## Verification

- New regression suite: 4 failures before changes, passed after changes.
- Final selected Android suite: 63 tests passed, no failures/errors/skips.
- Debug APK build, mobile source checks, release hardening checks, git diff --check passed.
- Installed via adb install -r, preserving accounts/settings. Post-update crash buffer was empty.
- With MainActivity in the background, service heartbeat advanced by 60,002 ms and
  running remained true, confirming that another scheduled cycle started. This does not
  certify successful collection from every provider.
- Expanded notification now visibly contains Claude, Claude 2, Codex, Codex 2, Cursor,
  Grok and Antigravity with distinct values. Before/after screenshots are in
  artifacts/recovered-53/status-notification-before.png and status-notification-after.png.

Artifact: artifacts/recovered-53/ai-quota-1.2.0-54-debug-status-notification-fix.apk.

The existing display capacity is unchanged: four collapsed gauges, eight expanded
gauges. End-to-end login and quota collection for every provider, device-vendor power
management and long-duration screen-off recovery are not certified by this test. The
previously signed 54 AAB predates this fix and must be rebuilt for publication.
