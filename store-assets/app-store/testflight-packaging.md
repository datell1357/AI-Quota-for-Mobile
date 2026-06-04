# TestFlight Packaging Checklist

Last updated: 2026-06-04

This checklist prepares AI Quota iOS for TestFlight. It does not replace the required Mac/Xcode archive and App Store Connect processing evidence.

## Required account and signing state

- Apple Developer Program membership active.
- App Store Connect app record created.
- Bundle ID: com.aiquota.mobile
- Widget Bundle ID: com.aiquota.mobile.widget
- App group configured for group.com.aiquota.mobile.
- DEVELOPMENT_TEAM must be configured on Mac for app, widget, unit-test, and UI-test targets.
- Automatic signing must resolve app and widget provisioning on the signing Mac.

## Required pre-upload gate

- Task 19 device QA evidence must exist before upload.
- PrivacyInfo.xcprivacy bundled in the app target.
- App Store privacy details reviewed against store-assets/app-store/privacy-checklist.md.
- Screenshots and metadata prepared for App Store Connect.

## Archive commands

From the repo root on a Mac with Xcode:

```sh
xcodebuild -list -project ios/AIQuotaMobile.xcodeproj
./scripts/ios/archive-testflight.sh
```

The script runs:

- xcodebuild archive
- xcodebuild -exportArchive

Expected output:

- build/ios/archive/AIQuotaMobile.xcarchive
- build/ios/export/*.ipa

## Upload gate

Use Transporter or Xcode Organizer to upload the exported build.

After upload, confirm App Store Connect processing starts under the TestFlight tab. Do not mark Task 20 complete until App Store Connect shows the uploaded build processing or processed.

## Secrets and local files

- Do not commit signing certificates.
- Do not commit provisioning profiles.
- Do not commit App Store Connect auth material.
- Do not commit exported archives or IPA files.
