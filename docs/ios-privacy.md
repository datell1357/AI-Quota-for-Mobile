# AI Quota iOS Privacy Notes

Last updated: 2026-06-04

This note is the iOS-specific privacy surface for App Store review and internal QA. It complements the public privacy policy.

## Local storage boundary

- Provider sessions stay on device.
- Web provider state is stored in provider-partitioned `WKWebsiteDataStore` profiles.
- Native provider credentials are stored in the iOS Keychain.
- Provider secrets are not uploaded by the iOS app.
- iOS does not use developer-hosted provider secret storage for feature parity.

## Display data

The app stores normalized quota snapshots for display in the app, local notifications, and widgets. These snapshots contain provider names, status, plan labels, usage line labels, remaining quota values, reset text, and update time.

## Widget cache

The WidgetKit extension reads only the App Group sanitized widget cache. The App Group sanitized widget cache excludes provider secrets and raw provider payloads. It exists only so WidgetKit can render cached quota status when the app is not active.

## App Store Connect summary

- Tracking: No.
- Data Used to Track You: None.
- Data Linked to You: None collected by the AI Quota developer from the iOS app.
- Provider sessions stay on device in Keychain and `WKWebsiteDataStore`.
- No provider secrets uploaded.
- App Group sanitized widget cache is display-only.
