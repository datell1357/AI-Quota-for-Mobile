# Debug login and permission guidance — 2026-09-13

## Firebase

Registered `AI Quota Recovery emulator-5580 2026-09-13` under
Firebase project `com-aiquota-mobile`, Android app `com.aiquota.mobile`, using the
existing emulator's App Check debug token. Existing tokens and enforcement settings
were preserved. The token value is only in an ignored, mode-0600 local file.

Before registration, exchangeDebugToken returned HTTP 403 / App attestation failed.
After registration, it returned an App Check token with TTL 3600 seconds. Token values
were not printed. Google account consent/login completion has not been automated.

## UI fixes

- Format the default Antigravity navigation alias as `Anti\ngravity`, including the
  account-card navigation path that previously bypassed the provider label formatter.
  Custom account aliases are preserved.
- In multi-account mode, permission guidance observes the authoritative account
  catalog and AUTHENTICATED status, rather than only the legacy provider snapshots.
  Login success can therefore trigger guidance before usage collection finishes.
- Track account ID, generation and session revision. A newly completed provider login,
  second account or reauthentication rearms dismissed guidance; quota refreshes and
  renames do not. Authenticating, canceled and signed-out accounts do not qualify.
- No redundant guidance is shown when monitoring, notification permission and battery
  optimization exemption are already configured. The legacy-mode entry policy remains.

## Validation

- 18 targeted unit tests passed, no failures or skips: account-login guidance, legacy
  guidance policy, navigation layout and notification-permission launch safeguards.
- All ProviderId enum values are covered for authenticated/non-authenticated states.
- assembleDebug passed.
- Updated emulator-5580 via adb install -r, preserving existing account data.
- MainActivity launch passed; post-update crash buffer was empty.
- Existing connected dashboard cards remained visible after the update.

APK: `artifacts/recovered-53/ai-quota-1.2.0-54-debug-login-fixes.apk`.
These changes are in the debug APK. The earlier signed 54 AAB predates these UI fixes;
rebuild the release bundle before any later publication.
Real OAuth login/consent for every provider and the new Antigravity label on the
scrolled emulator navigation bar have not been individually exercised. No permissions
were revoked or existing accounts removed solely to test the prompt.
