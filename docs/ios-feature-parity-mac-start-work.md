# iOS Feature Parity Mac Start-Work Handoff

Use this file first when continuing on a Mac. It is written so `$start-work` can resume `plans/ios-feature-parity.md` without rediscovering the Windows blocker.

## Branch

```sh
git fetch origin
git switch codex/ios-feature-parity-mac-handoff-20260604
git pull --ff-only
```

Current handoff commit before this file:

```text
6f55e39e Add iOS feature parity handoff
```

## Start Prompt

Paste this into Codex on the Mac from the repository root:

```text
$start-work plans/ios-feature-parity.md

Read docs/ios-feature-parity-mac-start-work.md first. Resume the paused Boulder work for plans/ios-feature-parity.md. Tasks 1-18 are complete. Task 20 Windows-local prep is complete. Start at Task 19 and do not mark Task 19 or Task 20 complete without the Mac evidence listed in this handoff.
```

If the Codex Desktop command palette does not expose `$start-work`, invoke the OMO `start-work` skill or say:

```text
Use omo:start-work on plans/ios-feature-parity.md and resume the paused Boulder work.
```

## Current State

- Plan: `plans/ios-feature-parity.md`
- Boulder state: `.omo/boulder.json`
- Ledger: `.omo/start-work/ledger.jsonl`
- Tasks complete: 1-18
- Tasks remaining: 19 and 20
- Task 19 status: blocked until Mac/Xcode simulator and real iOS device QA evidence exists
- Task 20 status: local prep complete, blocked until macOS/Xcode archive and App Store Connect TestFlight processing starts
- Do not redo Windows-local prep unless a guard fails.

Task 19 and Task 20 are intentionally unchecked in `plans/ios-feature-parity.md`.

## Read Order

1. `docs/ios-feature-parity-mac-start-work.md`
2. `plans/ios-feature-parity.md`
3. `.omo/start-work/ledger.jsonl`
4. `docs/qa/ios-feature-parity-2026-06-04/README.md`
5. `evidence/ios-feature-parity/task-19-20-external-blocker.txt`
6. `store-assets/app-store/testflight-packaging.md`

## Mac Preflight

Run these before starting Task 19:

```sh
xcodebuild -version
xcrun simctl list devices available
xcodebuild -list -project ios/AIQuotaMobile.xcodeproj
node test/ios-testflight-packaging.test.js
npm run lint
git diff --check
```

Expected:

- Xcode tools exist.
- `xcodebuild -list` can read `ios/AIQuotaMobile.xcodeproj`.
- TestFlight packaging guard passes.
- Lint passes.
- `git diff --check` has no whitespace errors.

Known non-blocker from Windows handoff:

- Full `npm test` currently fails two pre-existing Android source assertions in `test/mobile-source.test.js`:
  - `requestNotificationPermissionOnFirstLaunch`
  - `GeminiCliOAuthRepository(appContext).fetchUsagePayloadFromStoredCredential()`
- Do not treat those as iOS Task 19/20 blockers unless the Android source changed.

## Task 19 - Device QA Pass

Plan lines:

```text
- [ ] 19. Device QA pass.
  - Simulator: layout, localization, reorder, widget previews, mocked provider refresh.
  - Real device: Google/GitHub login WebView/OAuth redirect, WKWebView cookie persistence, widget refresh, background refresh best-effort.
  - Evidence: screenshots/videos under docs/qa/ios-feature-parity-YYYY-MM-DD/.
```

Create a dated evidence directory:

```sh
QA_DIR="docs/qa/ios-feature-parity-$(date +%F)"
mkdir -p "$QA_DIR"
```

Simulator command:

```sh
xcodebuild test \
  -project ios/AIQuotaMobile.xcodeproj \
  -scheme AIQuotaMobile \
  -destination 'platform=iOS Simulator,name=iPhone 16'
```

If `iPhone 16` is unavailable, use an available iPhone simulator from:

```sh
xcrun simctl list devices available
```

Required simulator evidence under `$QA_DIR`:

- `01-simulator-dashboard-layout.png`
- `02-simulator-localization-ko.png`
- `03-simulator-localization-en.png`
- `04-simulator-adjacent-provider-reorder.mov`
- `05-simulator-widget-empty.png`
- `06-simulator-widget-connected.png`
- `07-simulator-widget-stale.png`
- `08-simulator-widget-error.png`
- `09-simulator-mocked-provider-refresh.mov`
- `10-simulator-notification-permission-granted.png`
- `11-simulator-notification-permission-denied.png`

Required real-device evidence under `$QA_DIR`:

- `12-device-google-oauth-redirect.mov`
- `13-device-github-or-webview-login.mov`
- `14-device-wkwebview-cookie-persistence.mov`
- `15-device-widget-refresh.mov`
- `16-device-background-refresh.log`

Task 19 acceptance:

- Simulator layout, localization, reorder, widget previews, and mocked refresh evidence exists.
- Real device OAuth/WebView/session/widget/background-refresh evidence exists.
- No provider raw tokens, cookies, auth headers, emails, usernames, OAuth codes, or full provider HTML are captured in evidence.
- Append a `task-19-green` ledger entry.
- Mark Task 19 checkbox complete only after the evidence exists.

## Task 20 - TestFlight Packaging

Plan lines:

```text
- [ ] 20. TestFlight packaging.
  - Build archive from Xcode.
  - Upload to TestFlight after Apple signing/profile configured.
  - Acceptance: xcodebuild archive succeeds on macOS runner/local Mac and App Store Connect processing starts.
```

Before archive:

- Confirm Apple Developer Program access.
- Confirm App Store Connect app record exists.
- Configure signing in Xcode for:
  - App Bundle ID: `com.aiquota.mobile`
  - Widget Bundle ID: `com.aiquota.mobile.widget`
  - App Group: `group.com.aiquota.mobile`
- Do not commit certificates, provisioning profiles, App Store Connect API keys, archives, IPAs, or auth material.

Archive/export:

```sh
chmod +x scripts/ios/archive-testflight.sh
scripts/ios/archive-testflight.sh
```

Upload:

- Use Xcode Organizer or Transporter.
- Upload exported IPA.
- Confirm App Store Connect shows TestFlight processing started.

Required Task 20 evidence under the same `$QA_DIR`:

- `17-xcode-archive-success.png` or `17-xcode-archive-success.log`
- `18-export-success.log`
- `19-testflight-upload-started.png`
- `20-app-store-connect-processing-started.png`

Task 20 acceptance:

- `xcodebuild archive` succeeds.
- Export succeeds with `ios/ExportOptions.plist`.
- Upload starts through Xcode Organizer or Transporter.
- App Store Connect processing starts.
- Append a `task-20-green` ledger entry.
- Mark Task 20 checkbox complete only after processing starts.

## Final Verification After Task 19/20

Run:

```sh
node test/ios-xcode-project.test.js
node test/ios-provider-models.test.js
node test/ios-provider-fixtures.test.js
node test/ios-design-tokens.test.js
node test/ios-app-shell.test.js
node test/ios-dashboard.test.js
node test/ios-provider-detail.test.js
node test/ios-settings.test.js
node test/ios-localization.test.js
node test/ios-provider-definitions.test.js
node test/ios-secure-provider-state.test.js
node test/ios-web-login-collector.test.js
node test/ios-provider-normalizers.test.js
node test/ios-native-collectors.test.js
node test/ios-refresh-orchestration.test.js
node test/ios-widget-surfaces.test.js
node test/ios-notification-live-refresh.test.js
node test/ios-privacy-surface.test.js
node test/ios-testflight-packaging.test.js
npm run lint
git diff --check
```

If Task 19 and Task 20 are both complete:

- Mark both checkboxes in `plans/ios-feature-parity.md`.
- Append `task-19-green`, `task-20-green`, and final completion ledger entries.
- Update `.omo/boulder.json` from `paused` to completed or remove active work per `start-work` completion rules.
- Commit and push the Mac evidence and plan/ledger updates on the same branch.

## Do Not Do

- Do not mark Task 19 complete with only source tests.
- Do not mark Task 20 complete with only `node test/ios-testflight-packaging.test.js`.
- Do not fake simulator screenshots, real-device videos, archive output, upload state, or App Store Connect processing state.
- Do not commit secrets, signing assets, archives, IPAs, raw provider HTML, tokens, cookies, auth headers, emails, usernames, or OAuth codes.
- Do not reset or clean unrelated untracked files without user approval.
