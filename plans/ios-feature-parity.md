# AI Quota iOS Feature Parity Plan

## TL;DR
> **Summary**: Build iOS as a native SwiftUI app that mirrors the current Android app's feature set and visual language, while preserving the local-first provider collection model. Existing `ios/` code is treated as a prototype shell and replaced/evolved into a real App + WidgetKit target.
> **Deliverables**: iOS app target, WidgetKit target, provider model parity, local provider collectors, dashboard/detail/settings UI parity, Korean/English localization, tests, simulator/device QA evidence.
> **Effort**: Large.
> **Parallel**: YES - 4 waves.
> **Critical Path**: Contract parity -> app shell/UI parity -> provider auth/collectors -> widgets/background refresh -> QA/TestFlight.

## Context

### Original Request
현재 Android만 개발된 AI Quota 모바일 앱을, 현재 기능과 UI/UX를 유지한 iOS 앱으로 만들 계획.

### Repository Findings
- Current Android app status and features are documented in `README.md`: local-first provider dashboard, widgets, optional pinned foreground refresh notification, manual/foreground refresh, provider hide/reorder, Korean/English strings, six supported providers.
- Android architecture entry points:
  - `android/app/src/main/java/com/aiquota/mobile/ui/AIQuotaAppShell.kt`
  - `android/app/src/main/java/com/aiquota/mobile/ui/dashboard/UnifiedDashboardScreen.kt`
  - `android/app/src/main/java/com/aiquota/mobile/ui/provider/ProviderDetailScreen.kt`
  - `android/app/src/main/java/com/aiquota/mobile/ui/settings/SettingsPanel.kt`
  - `android/app/src/main/java/com/aiquota/mobile/local/ProviderModels.kt`
  - `android/app/src/main/java/com/aiquota/mobile/providers/ProviderDefinitions.kt`
  - `android/app/src/main/java/com/aiquota/mobile/providers/ProviderUsageNormalizer.kt`
  - `android/app/src/main/java/com/aiquota/mobile/widget/AIQuotaGlanceWidget.kt`
  - `android/app/src/main/java/com/aiquota/mobile/notification/UsageLimitNotificationController.kt`
  - `android/app/src/main/java/com/aiquota/mobile/sync/ForegroundRefreshController.kt`
- Existing iOS code:
  - `ios/AIQuotaMobile/ContentView.swift`: sample sign-in/pairing/list shell.
  - `ios/AIQuotaMobile/Models.swift`: simplified snapshot model.
  - `ios/AIQuotaMobile/SnapshotStore.swift`: sample snapshot/cache load only.
  - `ios/AIQuotaWidget/AIQuotaWidget.swift`: simple cached provider list widget.
- Provider collection rule from `APK_PROVIDER_COLLECTION_ANALYSIS.md`: provider login/session -> provider-specific collector -> raw payload -> normalizer -> `ProviderUsageSnapshot` -> app UI/widget/notification. Provider sessions, cookies, OAuth credentials, and usage snapshots stay on device.

## Work Objectives

### Core Objective
Ship native iOS feature parity for AI Quota without weakening privacy/security or changing the Android UX contract.

### Must Have
- SwiftUI app mirrors Android dashboard, provider detail, settings, provider hide/reorder, theme, and language behavior.
- Six provider identities and ordering match Android: Claude, Codex, Gemini, Copilot, Antigravity, Cursor.
- Provider connection states, refresh states, usage lines, freshness, stale/error behavior, and trusted payload semantics match Android.
- iOS WidgetKit surfaces show sanitized cached snapshots only.
- Provider secrets remain local: Keychain/WKWebsiteDataStore/App Group rules, no Firestore/server upload of provider tokens/cookies.

### Must NOT Have
- No Flutter/React Native/KMM rewrite as first move.
- No server-side token relay.
- No provider cookies/tokens in App Group widget cache.
- No "connected" state from login success alone; require trusted usage payload success.
- No background behavior that violates iOS policy. Android foreground service maps to iOS equivalents, not a literal clone.

## Key Decisions

1. **Native SwiftUI, not cross-platform rewrite**
   - Android code is already deep Compose + Android WebView + Glance + foreground service.
   - Cross-platform rewrite would risk Android regression before iOS ships.
   - SwiftUI can match the current Mac-like/Windows-like design tokens directly.

2. **Contract-first port**
   - First port `ProviderId`, `ProviderUsageLine`, `ProviderUsageSnapshot`, connection states, refresh states, provider definitions, snapshot codec, and normalizer fixtures.
   - UI and collectors depend on these contracts.

3. **iOS provider collection uses platform-native equivalents**
   - Web-session providers use `WKWebView`, isolated `WKWebsiteDataStore`, JavaScript `fetch`/XHR hooks, and `WKScriptMessageHandler`.
   - Native OAuth/API providers use iOS OAuth redirect/client IDs and Keychain storage.
   - Widget reads only sanitized App Group cache.

4. **Foreground refresh becomes iOS best-effort**
   - Android pinned foreground notification has no direct iOS equivalent.
   - iOS plan: manual refresh in app, WidgetKit timeline reloads, `BGAppRefreshTask` best effort, local notification for completed/error state where useful, and clear settings copy.

## Execution Strategy

### Wave 1: Contract + Project Foundation

- [x] 1. Create real iOS project structure.
  - Add `ios/AIQuotaMobile.xcodeproj` with App target, Widget extension target, unit-test target, UI-test target.
  - Bundle IDs: `com.aiquota.mobile` and `com.aiquota.mobile.widget`, unless Apple Developer portal rejects them.
  - Keep Apple Team ID in local signing config, not committed secrets.
  - Acceptance: `xcodebuild -list -project ios/AIQuotaMobile.xcodeproj` lists app/widget/test targets.
  - Windows-local acceptance: `node test/ios-xcode-project.test.js` verifies the target/bundle/source declarations until a macOS/Xcode host is available.

- [x] 2. Port provider/domain contracts.
  - Files: `ios/AIQuotaMobile/Models.swift`, new domain files under `ios/AIQuotaMobile/Domain/`.
  - Mirror Android `ProviderModels.kt`.
  - Include all provider IDs, states, action policy, freshness fields, usage line metadata, and stale trusted-state rules.
  - Tests: Swift XCTest decodes shared JSON fixtures and asserts parity with Android expected values.
  - Windows-local acceptance: `node test/ios-provider-models.test.js` verifies the Swift domain source, policy methods, previous-usage rules, and Xcode membership.

- [x] 3. Establish shared fixture suite.
  - Create JSON fixtures under `test/fixtures/provider-snapshots/` or `ios/Tests/Fixtures/`.
  - Cover connected, disconnected, stale with previous usage, auth-required with previous usage, collector error, empty lines, malformed provider payload.
  - Acceptance: Android unit tests and Swift unit tests consume the same fixture names.
  - Windows-local acceptance: `node test/ios-provider-fixtures.test.js` verifies fixture coverage, shared keys, and Swift test fixture references.

- [x] 4. Port design tokens.
  - Mirror `AIQuotaDesignTokens.kt` into Swift types.
  - Preserve MacOS theme default, Windows theme option, traffic-light chrome, colors, spacing, typography scale.
  - Acceptance: SwiftUI preview and XCUITest screenshots show same first-screen structure as Android baseline.
  - Windows-local acceptance: `node test/ios-design-tokens.test.js` verifies Swift theme tokens, Android palette values, and Xcode membership.

### Wave 2: App UI Parity

- [x] 5. Rebuild app shell navigation.
  - Mirror `AIQuotaAppShell.kt`: top bar, route chips, provider chips, settings route, provider detail route.
  - Preserve compact layout behavior from `AppLayoutMetrics.kt`.
  - Acceptance: XCUITest can navigate Home -> Provider detail -> Settings -> Home.
  - Windows-local acceptance: `node test/ios-app-shell.test.js` verifies route declarations, chips, signed-in shell entry, and Xcode membership.

- [x] 6. Rebuild dashboard.
  - Mirror `UnifiedDashboardScreen.kt`: provider cards, card chrome, preview usage lines, empty state, connect action, add-widget action.
  - Implement long-press drag reorder with deterministic insertion-slot logic equivalent to Android `dragInsertionSlotFromCenter`.
  - Tests: pure Swift unit tests for insertion slot and target index, including adjacent-card reorder.
  - Acceptance: XCUITest drags middle provider before/after adjacent provider and order persists.
  - Windows-local acceptance: `node test/ios-dashboard.test.js` verifies dashboard source, drag helper coverage, app-shell wiring, persistent order storage, Xcode membership, and XCUITest acceptance source until macOS/Xcode is available.

- [x] 7. Rebuild provider detail.
  - Mirror `ProviderDetailScreen.kt`: summary block, connection action, usage rows, analysis/metadata, add-widget action.
  - Acceptance: fixture-backed screenshots for connected, stale, error, and auth-required states.
  - Windows-local acceptance: `node test/ios-provider-detail.test.js` verifies provider-detail source, status/action/analysis/metadata helper coverage, app-shell wiring, and Xcode membership until macOS/Xcode screenshots are available.

- [x] 8. Rebuild settings.
  - Mirror `SettingsPanel.kt`: notification/live refresh settings, connection management, disconnect all, theme picker, support/bug report.
  - Hide/reorder settings must persist in user defaults or app storage.
  - Acceptance: XCUITest toggles theme, hides provider, disconnects provider, submits bug report email composer path or fallback.
  - Windows-local acceptance: `node test/ios-settings.test.js` verifies settings sections, helper coverage, hidden-provider AppStorage persistence, app-shell wiring, and Xcode membership until macOS/Xcode UI tests are available.

- [x] 9. Rebuild localization.
  - Mirror Android Korean/English behavior: Korean device language -> Korean, otherwise English.
  - Use `Localizable.strings` for app and widget.
  - Acceptance: UI tests launch with `-AppleLanguages (ko)` and `(en)` and assert key labels.
  - Windows-local acceptance: `node test/ios-localization.test.js` verifies app/widget English and Korean strings, localized Swift view usage, language-launch UI test source, and Xcode membership until macOS/Xcode UI tests are available.

### Wave 3: Provider Auth + Collection

- [x] 10. Port provider definitions and allowlists.
  - Mirror `ProviderDefinitions.kt`.
  - Keep login allowed hosts and collector allowed hosts separate.
  - Tests: allowlist accepts expected login/session hosts and rejects unrelated hosts.
  - Windows-local acceptance: `node test/ios-provider-definitions.test.js` verifies Android provider definition parity, login/collector allowlist separation, regional Google account host behavior, malformed URL rejection, Swift unit-test coverage, and Xcode membership until macOS/Xcode tests are available.

- [x] 11. Build secure provider state.
  - Use Keychain for OAuth tokens and sensitive provider state.
  - Use isolated `WKWebsiteDataStore` per provider or documented provider-profile partition.
  - Use App Group only for sanitized widget snapshots.
  - Acceptance: tests verify widget cache schema has no token/cookie/session fields.
  - Windows-local acceptance: `node test/ios-secure-provider-state.test.js` verifies Keychain-backed provider secret APIs, provider-partitioned `WKWebsiteDataStore` profiles, sanitized App Group widget cache schema, secret-field denylist coverage, Swift unit-test coverage, and Xcode membership until macOS/Xcode tests are available.

- [x] 12. Build WebView login/collector shell.
  - Mirror `WebLoginActivity.kt` behavior with `WKWebView`.
  - Inject collector scripts after allowed host/page readiness.
  - Use `WKScriptMessageHandler` for usage payload/error events.
  - Use JS fetch/XHR hook because iOS cannot rely on Android-style response-body interception.
  - Acceptance: local HTML fixture posts a trusted usage payload and updates provider snapshot.
  - Windows-local acceptance: `node test/ios-web-login-collector.test.js` verifies the WKWebView shell, provider-profile data store wiring, allowed page/resource collector readiness, fetch/XHR hook script, `WKScriptMessageHandler` usage/error bridge processing, local HTML trusted payload fixture, connected snapshot update path, Swift unit-test coverage, and Xcode membership until macOS/Xcode WebKit tests are available.

- [x] 13. Port normalizers provider by provider.
  - Mirror `ProviderUsageNormalizer.kt`.
  - Providers: Claude, Codex, Gemini, Copilot, Antigravity, Cursor.
  - Use shared raw payload fixtures from Android tests where available.
  - Acceptance: Swift normalizer output equals Android fixture output for every provider.
  - Windows-local acceptance: `node test/ios-provider-normalizers.test.js` verifies shared Android raw payload fixtures and expected normalized output for Claude, Codex, Gemini, Copilot, Cursor, and Antigravity; the Swift XCTest loads every fixture and compares labels, plan/account fields, source metadata, reset fields, amounts, units, and remaining percentages until macOS/Xcode execution is available.

- [x] 14. Port native OAuth/API collectors.
  - Gemini and Antigravity need iOS OAuth client IDs, redirect scheme, Keychain token storage, and native API fetch paths.
  - Cursor keeps native API with WebView fallback.
  - Acceptance: mocked HTTP/OAuth tests cover token refresh, 403/private API forbidden, trusted payload success, and fallback.
  - Windows-local acceptance: `node test/ios-native-collectors.test.js` verifies Gemini/Antigravity OAuth client-id Info.plist slots, redirect schemes, Keychain-backed token/PKCE storage, mockable native HTTP client paths, Gemini trusted payload normalization, Antigravity `BACKEND_API_FORBIDDEN` mapping without WebView re-login, Cursor native API fallback, Swift mocked unit-test coverage, and Xcode membership until macOS/Xcode execution is available.

- [x] 15. Port refresh orchestration.
  - Mirror foreground/background refresh policy where iOS allows.
  - Implement manual refresh and app-active refresh first.
  - Implement `BGAppRefreshTask` as best-effort only; never promise precise polling.
  - Acceptance: simulator test triggers manual refresh and test double BG refresh path.
  - Windows-local acceptance: `node test/ios-refresh-orchestration.test.js` verifies manual refresh, app-active throttled refresh, best-effort `BGAppRefreshTask` scheduling/completion via test doubles, SnapshotStore result application, AIQuotaAppShell `.refreshable` and `scenePhase == .active` wiring, Info.plist BG declarations, Swift mocked unit-test coverage, and Xcode membership until macOS/Xcode execution is available.

### Wave 4: Widget, Notifications, QA, Release

- [x] 16. Rebuild WidgetKit surfaces.
  - Expand existing `AIQuotaWidget.swift` to support dashboard and provider-focused families matching Android small/medium/large intent.
  - Read sanitized App Group cache only.
  - Acceptance: widget previews and simulator screenshots for empty, connected, stale, and error states.
  - Windows-local acceptance: `node test/ios-widget-surfaces.test.js` verifies dashboard and provider-focused WidgetKit configurations, small/medium/large family support, sanitized App Group cache-only reads, no SnapshotCache/raw provider data path, empty/connected/stale/error preview fixtures, Swift policy tests, and Xcode membership until macOS/Xcode preview screenshots are available.

- [x] 17. Port notification/live-refresh UX.
  - Replace Android pinned foreground notification with iOS local notification + settings language explaining platform behavior.
  - Use WidgetKit reload and BG refresh as passive surfaces.
  - Acceptance: notification permission path and disabled-permission path covered by UI tests or simulator QA.
  - Windows-local acceptance: `node test/ios-notification-live-refresh.test.js` verifies UserNotifications local notification coordinator, WidgetKit timeline reload, BG refresh scheduling, Settings permission copy, granted/denied/disabled Swift unit-test coverage, UI-test source for granted and denied paths, and Xcode membership until macOS/Xcode simulator permission QA is available.

- [x] 18. Build app-store-safe privacy surface.
  - Update privacy docs/store metadata for iOS.
  - State local storage of provider sessions, no provider secrets uploaded, App Group sanitized widget cache.
  - Acceptance: privacy checklist has no token/cookie/server-relay claims.
  - Windows-local acceptance: `node test/ios-privacy-surface.test.js` verifies bundled `PrivacyInfo.xcprivacy`, no tracking/collection manifest values, UserDefaults required-reason API entry, iOS local-session/privacy docs, App Store privacy checklist/metadata, sanitized App Group widget cache wording, no provider-secret upload wording, and checklist text without token/cookie/server-relay claims until App Store Connect entry validation is available.

- [ ] 19. Device QA pass.
  - Simulator: layout, localization, reorder, widget previews, mocked provider refresh.
  - Real device: Google/GitHub login WebView/OAuth redirect, WKWebView cookie persistence, widget refresh, background refresh best-effort.
  - Evidence: screenshots/videos under `docs/qa/ios-feature-parity-YYYY-MM-DD/`.

- [ ] 20. TestFlight packaging.
  - Build archive from Xcode.
  - Upload to TestFlight after Apple signing/profile configured.
  - Acceptance: `xcodebuild archive` succeeds on macOS runner/local Mac and App Store Connect processing starts.
  - Windows-local prep: `node test/ios-testflight-packaging.test.js` verifies `scripts/ios/archive-testflight.sh`, `ios/ExportOptions.plist`, and `store-assets/app-store/testflight-packaging.md` capture the archive/export/upload gates without embedded credentials. Task remains incomplete until a Mac archive succeeds and App Store Connect processing starts.

## Verification Strategy

### Automated
- Swift unit tests for:
  - provider model decoding/encoding
  - connection/action policy
  - freshness/stale behavior
  - provider allowlists
  - normalizers
  - widget cache sanitizer
  - drag insertion slot/target index
- XCUITest for:
  - dashboard navigation
  - provider detail states
  - settings theme/provider connection flows
  - Korean/English launch
  - drag reorder persistence
- Android parity guard:
  - Existing Gradle tests remain green.
  - Shared fixtures keep Android and iOS output aligned.

### Manual QA
- `xcodebuild test -project ios/AIQuotaMobile.xcodeproj -scheme AIQuotaMobile -destination 'platform=iOS Simulator,name=iPhone 15'`
- Simulator recording:
  - launch -> dashboard -> drag reorder -> provider detail -> settings -> theme toggle -> widget preview.
- Real-device QA:
  - one WebView provider login
  - one native OAuth provider login
  - widget reload after refresh
  - local notification permission denied/allowed paths.

## Risk Register

- **iOS background limits**: Android foreground service cannot be cloned. Mitigation: explicit iOS equivalent behavior and copy.
- **WKWebView response capture limits**: Android network interception does not map 1:1. Mitigation: injected fetch/XHR hooks plus provider-specific page-state collectors.
- **OAuth client IDs**: iOS client IDs/redirects are not in repo. Mitigation: implementation task blocks on Apple/Firebase/Google config.
- **Widget secrets leak risk**: App Group can accidentally expose data to extension. Mitigation: sanitizer tests and schema denylist.
- **UI drift**: Compose and SwiftUI layout engines differ. Mitigation: design-token port plus screenshot evidence.

## Defaults Applied

- Native SwiftUI is default implementation path.
- Existing iOS skeleton is refactored/replaced rather than preserved as architecture.
- iOS bundle id default: `com.aiquota.mobile`.
- First release target: TestFlight/internal testing, not immediate App Store public release.

## Decisions Needed Before Execution

1. Apple Developer Team ID and confirmed bundle ID.
2. Whether iOS App Store public release is in first milestone or TestFlight only.
3. Whether exact Android foreground notification wording should become iOS notification/settings wording, or platform-specific copy is acceptable.

## Success Criteria

- iOS app shows same six-provider dashboard behavior as Android.
- iOS provider detail/settings/widget surfaces match Android feature intent.
- Provider usage collection is local-first and trusted-payload-gated.
- No provider secrets leave device.
- Swift tests, XCUITests, existing Android tests, and simulator/device QA evidence pass.
