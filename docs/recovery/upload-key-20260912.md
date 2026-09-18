# Upload key replacement — 2026-09-12

A new RSA-3072 upload key was generated after loss of the original Mac keystore.
This replaces the upload credential; the Google-held app signing key is not being upgraded.

Local files (all ignored by Git):

- `android/keystores/aiquota-upload-20260912.jks`: private upload keystore, alias `upload`.
- `android/keystore.properties`: local Gradle signing settings and generated passwords.
- `android/keystores/upload_certificate_20260912.pem`: public upload certificate for Play Console.
- `artifacts/signing-recovery-20260912/aiquota-upload-key-backup-20260912.zip`: local recovery backup containing the keystore and passwords. Treat the archive as a secret; do not publish or commit it.

The keystore, password properties, and backup have mode 0600. Key and backup directories
have mode 0700. Passwords were generated with the OS-backed Python secrets generator
and passed to keytool via environment-variable references rather than command arguments.

New upload certificate SHA-256:
`13:05:DE:61:22:82:4D:B0:70:8B:4E:36:FA:F2:10:80:25:32:88:9D:FA:0F:A3:DF:FB:3B:37:9E:F4:05:17:0A`

Previous upload certificate SHA-256 observed in Play Console:
`61:0C:F1:8E:46:B9:BE:59:8E:8E:59:4A:54:FA:30:EF:A8:75:0D:08:6E:FF:7F:6B:67:14:7C:60:9C:F6:3F:56`

The app signing certificate remains:
`DF:C9:1C:B6:2A:DE:98:D5:08:16:6E:17:6C:49:C6:94:E6:73:35:09:B4:2B:0D:D3:61:32:C1:41:E5:62:FF:AA`

## Play Console status

The replacement PEM was submitted to Google Play. On 2026-09-14, Aside showed the
replacement SHA-256 fingerprint above. A real version 54 upload confirmed that Play will
accept the new certificate starting at 2026-09-14 15:11:06 UTC, which is
2026-09-15 00:11:06 KST.

Only the public PEM is submitted to Google. The JKS and password properties remain local.
Re-upload the signed bundle after that activation time and verify that the certificate
error is gone before continuing to production review.
No production release or app-signing-key upgrade has been performed.

## Build

The emergency patch bundle uses versionName 1.2.1 and versionCode 54, since 53 is already published.
`./scripts/build-recovered-android.sh` now reads the new local signing configuration.
The signed output is `artifacts/recovered-53/ai-quota-1.2.1-54-release.aab`.

Reference: https://support.google.com/googleplay/android-developer/answer/9842756
