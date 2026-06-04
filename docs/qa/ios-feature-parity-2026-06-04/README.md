# iOS Feature Parity Device QA

Status: blocked on Windows host

This folder is reserved for Task 19 simulator and real-device evidence. Do not mark Task 19 complete until screenshots or videos from macOS/Xcode are added here.

## Required simulator pass

Run on a Mac with Xcode installed:

```sh
cd "/path/to/AI Usage for Mobile"
xcodebuild -list -project ios/AIQuotaMobile.xcodeproj
xcodebuild test -project ios/AIQuotaMobile.xcodeproj -scheme AIQuotaMobile -destination 'platform=iOS Simulator,name=iPhone 16'
```

Capture screenshots or videos for:

- Dashboard layout on phone.
- Korean and English localization.
- Adjacent provider-card reorder.
- WidgetKit preview or simulator widget render for empty, connected, stale, and error states.
- Mocked provider refresh from manual pull-to-refresh and app-active refresh.
- Notification permission denied and granted Settings paths.

## Required real-device pass

Run on a physical iPhone with signing configured:

```sh
cd "/path/to/AI Usage for Mobile"
xcodebuild test -project ios/AIQuotaMobile.xcodeproj -scheme AIQuotaMobile -destination 'platform=iOS,name=<device name>'
```

Capture screenshots or videos for:

- Google OAuth redirect for Gemini or Antigravity.
- GitHub or provider WebView login path when available.
- WKWebView provider session persistence across app restart.
- Widget refresh after app writes the App Group sanitized widget cache.
- Background refresh best-effort scheduling evidence from Xcode logs.
- Local notification permission prompt and posted local quota notification.

## Evidence naming

Use this folder and name artifacts with the scenario and device:

- simulator-dashboard-layout-iphone16.png
- simulator-localization-ko-iphone16.png
- simulator-provider-reorder-iphone16.mov
- simulator-widget-states-iphone16.png
- real-device-google-oauth-iphone.mov
- real-device-wkwebview-session-persistence.mov
- real-device-widget-refresh.mov
- real-device-background-refresh-log.txt
- real-device-local-notification.mov
