# Google Play Release Checklist

## Build Artifact
- Release format: Android App Bundle (`.aab`).
- Package name: `com.aiusage.mobile`.
- Version code: `1`.
- Version name: `1.0.0`.
- Target SDK: `35`.
- Minimum SDK: `26`.

## Signing
- Use Google Play App Signing.
- Upload artifact is signed with the local upload key at `android/keystores/ai-usage-upload.jks`.
- Keep `android/keystore.properties` and `android/keystores/` out of Git and backed up securely.
- Register the release/upload key SHA-1 and SHA-256 in Firebase if Google sign-in fails on Play-installed builds.

## Firebase
- Android app package name must remain `com.aiusage.mobile`.
- Confirm the Firebase Android app has the release upload key SHA-1/SHA-256 fingerprints.
- Download a fresh `google-services.json` only if Firebase app settings changed.

## Play Console Setup
- Create app: AI Usage.
- Default language: Korean or English, depending on launch market.
- App or game: App.
- Free or paid: Free.
- Declarations: complete App access, Ads, Content rating, Target audience, Data safety.
- Privacy policy: publish `docs/privacy-policy.html` to a public non-editable URL.

## Recommended First Release Track
- Upload to Internal testing first.
- Add tester Google accounts.
- Verify Google sign-in from Play-installed build.
- Verify Firestore sync, widget, pinned notification, Korean locale, and sign out.

## Current Public-Release Blockers
- Publish privacy policy URL.
- Provide data deletion request path or in-app deletion flow.
- Prepare Play Store screenshots and feature graphic.
- Confirm developer support email.
