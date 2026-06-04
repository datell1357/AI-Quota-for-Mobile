# App Store Privacy Checklist - iOS

Last updated: 2026-06-04

## App Store Connect answers

- Tracking: No
- Data Used to Track You: None
- Data Linked to You: None
- Third-party advertising: No
- Developer advertising or marketing: No
- Analytics collection by AI Quota developer: No

## Local-only provider state

- Provider sessions stay on device in Keychain and WKWebsiteDataStore.
- No provider secrets uploaded.
- App Group sanitized widget cache is display-only.
- App Group sanitized widget cache contains provider names, status, usage labels, remaining values, reset text, and update time.

## Review notes

- PrivacyInfo.xcprivacy declares no tracking domains.
- PrivacyInfo.xcprivacy declares no collected data types for the iOS app.
- UserDefaults required-reason API is declared for app preferences and UI state.
- App privacy answers must be rechecked before TestFlight or App Store submission if SDKs, analytics, advertising, or backend collection are added.
