# Repeated guidance and reset-alert fixes — 2026-09-13

## Confirmed code paths

1. The shell passively stopped refresh when the legacy provider snapshot set became
   temporarily ineligible during login. The same ACTION_STOP also persisted the user's
   Live Refresh preference as false. Passive pauses now use ACTION_PAUSE; only explicit
   opt-out uses ACTION_STOP. Shell and health-worker eligibility use the authenticated
   account catalog in multi-account mode, so a delayed legacy projection does not stop
   a valid account refresh loop.
2. Permission guidance considered battery optimization exemption mandatory even after
   monitoring and notification permission were enabled. Battery guidance remains in
   initial setup and settings, but battery status alone no longer automatically reopens
   setup on each new login.
3. ProviderNotificationAliasUpdater replayed persisted reset/threshold notification
   metadata whenever the snapshot version changed, even after Android had dismissed
   the alert. This code is also present in the original production 53 decompilation.
   Metadata updates now require the matching tag and ID to still be in active Android
   notifications. Visible alerts can still update silently for alias/action changes.
4. Reset notification policy used equality rather than a monotonic notified boundary,
   allowing older or drifting past reset timestamps to generate repeat events. Persisted
   times are normalized to seconds, notified boundaries never move backward, and only
   an observed future timestamp arms the next cycle. A genuinely new watched window
   still notifies after its boundary.

## Verification

- Before fixes: 5 regression failures reproduced across 27 policy/controller tests.
- Final run: 94 targeted tests passed; no failures, errors or skipped tests.
- Includes Android NotificationManager behavior with Robolectric: dismissed reset and
  threshold alerts are not reposted, while an active renamed alert updates once.
- Includes past timestamp drift, backwards timestamps, migrated subsecond state,
  independent account/line tracking, and a genuine next reset window.
- Debug APK build, mobile source checks, release hardening checks and git diff --check passed.
- Emulator-5580 updated via install -r; existing logins/settings were retained. Live Refresh
  and battery exemption were enabled before installation. After installation the
  dashboard rendered without setup guidance and the crash buffer was empty.

Artifact: `artifacts/recovered-53/ai-quota-1.2.0-54-debug-repeat-alert-fix.apk`.
Validation log: `artifacts/recovered-53/repeated-alerts-validated.log`.

The reported production user's exact alert wording/provider/logs were not available.
The resurrection path is confirmed in 53, but it is not yet proven to be the sole cause
of that report. Real OAuth reauthentication for each provider and a live production
reset boundary were not exercised; deterministic regression tests cover those state
transitions. Existing alerts, account data, and user permissions were not cleared to
make the tests pass. The earlier signed 54 AAB predates these changes and must be rebuilt
before any publication. No release was uploaded or published.
