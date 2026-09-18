# AI Quota 1.2.2 (55) production release

## Status

The signed AAB was accepted by Play Console. The production release was configured for 100% of users in all existing target countries, saved, and explicitly submitted for Google review through Aside. The publishing overview shows AI Quota_v1.2.2(55) under 검토 중인 변경사항 / 전체 출시 시작.

At the final observation, Google's automatic pre-review checks were still running (23%). The page says the changes will be sent to review automatically after these checks pass. Managed publishing is disabled; the UI explicitly says updates are automatically published as soon as approved. Public availability has not been confirmed. No recurring monitoring automation was created.

Console: https://play.google.com/console/u/2/developers/5800185380399951699/app/4974470196806801740/publishing

## Korean release notes

- grok 로그인 후 사용량이 수집되지 않던 문제 해결
- 상단 알림창 사용량 표시 순서 변경
- 일부 사용량 수집 후에도 과거 사용량 표시하는 문제 해결
- 그 외 알려진 문제 해결

## English release notes

- Fixed an issue where usage was not collected after signing in to Grok.
- Updated the usage display order in the notification panel.
- Fixed cases where old usage was displayed after collecting new usage.
- Fixed other known issues.

## Artifact

- AAB: artifacts/release-1.2.2-55/ai-quota-1.2.2-55-release.aab
- Package: com.aiquota.mobile
- Version name/code verified from the AAB's protobuf manifest: 1.2.2 / 55
- Size: 10,826,891 bytes
- SHA-256: 1604fe095bea7b6c276df37efe8c5c4ac97152f0593e814daf63d2e208772bf7
- Upload certificate SHA-256: 13:05:DE:61:22:82:4D:B0:70:8B:4E:36:FA:F2:10:80:25:32:88:9D:FA:0F:A3:DF:FB:3B:37:9E:F4:05:17:0A
- R8 mapping: mapping-1.2.2-55.txt; verified equal to the mapping embedded in the AAB.
- Product source snapshot: ai-quota-1.2.2-55-source.tar.gz and source-manifest.json (718 files). Signing keys, local configuration, .omo history and IDE state are excluded. This is a local working-tree snapshot, not a pushed release commit or an off-device backup.

## Validation

- JDK 21.0.12.1+1 and the recovered project Gradle wrapper.
- :app:bundleRelease and :app:lintRelease: passed, build completed in 2m 20s.
- Release lint: 0 errors, 414 warnings, 8 information items.
- npm test: 48 passed; npm run lint: passed; git diff --check: passed.
- jarsigner: jar verified. It also reports the self-signed upload certificate, missing timestamp and JarInputStream ordering warnings. An additional JarFile verification read every payload entry and verified all 1,322 payload entries against the expected upload certificate. Play accepted this exact bundle.
- Current source hashes matched the archived source after the build.
- Play: version 55 (1.2.2), SDK minimum 26, target 36, embedded ReTrace mapping; no reduction in supported devices.
- Play warning: native debug symbols missing. This is non-blocking; no claim that native symbols were uploaded.
- Android unit suites were not re-run in this version-metadata-only turn. Existing functional regression evidence remains in v43-regression-fixes-20260915, notification-row-order-20260915, notification-ux-60s-20260915, and grok-login-return-20260915.
- The immediately preceding actual UI test disconnected Grok, selected Login with X, approved xAI, and verified automatic app return plus new weekly usage. X itself already had a session; password/MFA entry was not exercised. Evidence: artifacts/grok-x-login-20260915/verification.md.

No additional provider code, refresh interval, server deployment, or account credentials were changed in this release turn.
