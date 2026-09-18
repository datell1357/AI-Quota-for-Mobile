# AI Quota 1.2.1 (54) emergency patch

## User-facing release notes

- Fixed repeated reset and low-usage notifications.
- Improved live refresh guidance and notification permission handling after login.
- Preserved existing provider sessions more safely during app updates.
- Improved multi-account dashboard, provider, and battery widgets.
- Added first-run onboarding and select-all controls for providers.

## Release artifact

- AAB: `artifacts/recovered-53/ai-quota-1.2.1-54-release.aab`
- Package: `com.aiquota.mobile`
- Version: `1.2.1` (`54`)
- SHA-256: `11c96890d838d3c7f2d527059a084d3197b0c322fd1fe1ec7ea30b75064127ab`
- R8 mapping: `artifacts/recovered-53/mapping-1.2.1-54.txt`
- R8 mapping SHA-256: `d96eec5d914a25f93232a1eca25f15fb7e766e9d12894a3809fa65ebddb30de3`
- Upload certificate SHA-256: `13:05:DE:61:22:82:4D:B0:70:8B:4E:36:FA:F2:10:80:25:32:88:9D:FA:0F:A3:DF:FB:3B:37:9E:F4:05:17:0A`

## Validation

- `npm test`: passed, 48 checks.
- Android default unit suite: 1,507 passed, 1 skipped, and one resource-dependent test failed because resources are disabled in the default task.
- The resource-dependent notification test passed separately with Java 21 and Android resources enabled.
- `:app:lintRelease`: passed after annotating the already guarded notification post calls.
- `:app:bundleRelease`: passed, including release Firebase resource verification, R8, lint vital, and bundle signing.
- `jarsigner -verify`: passed. The self-signed upload certificate warning is expected for a Play upload key.

## Play Console status

Production currently serves `AI Quota_v1.2.0(53)`. The new upload certificate fingerprint
matches the signed bundle. Play rejected a real upload only because the reset activation
time has not arrived; it will accept uploads starting at 2026-09-14 15:11:06 UTC
(2026-09-15 00:11:06 KST). Re-upload version 54 after that time before continuing to
production review.
