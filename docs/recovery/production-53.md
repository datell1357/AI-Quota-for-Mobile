# Production 53 recovery

Recovered on 2026-09-12 from the Google Play production artifacts, using GitHub commit
`1384050310928cdf48b8a757a7e9491909579896` as the editable Kotlin baseline.
Branch: `recovery/production-53`.

## Result

The identified production changes have been restored to Kotlin and the project builds
an unsigned release AAB with versionName `1.2.0` and versionCode `53`.
This is a maintainable reconstruction, not the original source text or a byte-identical build.

Restored behavior:

- Enable multiple accounts in release builds.
- Start Codex login at `https://chatgpt.com/auth/login` while retaining the existing
  callback recovery URL for its separate purpose.
- Compact account-card ranks one at a time in ascending order after deletion,
  preserving the unique-rank constraint.
- Support Claude automatic wake-up per account. Capture the opt-in revision before
  collection, retain the exact named-profile lease, verify the current authenticated
  binding and opt-in revision before each network request, and claim each reset
  boundary once per account/session. Re-enabling uses a new pending-state revision.
- Restore the credentials/transport form of the Claude primer. Creation, completion,
  and temporary-chat cleanup are guarded independently. Unit tests use fake transport.
- Store account identity in widget payloads and preserve multiple cards from the same
  provider. Read the authoritative card catalog with a display-cache fallback.
- Restore per-widget account ordering/hiding, account labels and account-detail click
  destinations in dashboard and circular widgets.
- Restore account-card configuration rows and drag/drop behavior observed in 53.
- Fit provider widget rows to the actual number of usage lines, including the 2x2,
  two-line case that retains its base spacing.
- Restore the account-specific wake-up description and the widget Accounts label.

Some widget preference storage APIs were already present in the baseline source but
were absent from the optimized 52 APK. Their absence in the 52 mapping was not evidence
that all of those source methods were new in 53. Existing implementations were retained.

## Evidence retained locally

`artifacts/production-53/` contains the original signed APK, original AAB, original R8
mapping, JADX output, comparison report, signature verification and SHA-256 hashes.
`artifacts/internal-52/` contains the comparison artifacts and decompilation.
`artifacts/recovered-53/` contains the reconstructed unsigned AAB, new mapping,
validation log, test summary and symbol/manifest audit.
These directories are ignored by Git.

The original 53 APK manifest confirms `com.aiquota.mobile`, versionCode 53,
versionName 1.2.0, minSdk 26 and targetSdk 36. The recovered merged manifest matches
those values, permissions and component inventory. Differences in the comparison
are the decompiler's nested-class separator and metadata added by Google Play when
producing its universal APK.

The production and reconstructed R8 mappings contain the same top-level, non-synthetic
application class names. Some private helper names, visibility-generated suffixes and
lock names differ. The empty `logWebViewDebugState` routine observed in the release
APK was not recreated; its original debug-only source body cannot be inferred from
that empty release body. This has no identified production behavior to restore.
Symbol agreement is not proof that all method bodies are equivalent.

The Antigravity collector asset and Gradle app metadata match the production AAB byte
for byte. The reconstructed AAB itself does not match the original byte for byte.

## Validation

- Release Kotlin compilation: passed.
- Initial full Android unit suite: 1,471 tests, 13 failures and 1 skipped.
  Failures were old assertions for the disabled release gate, provider-row widget
  implementation, previous Codex start URL, cache-only renderer, and removal of every
  account-prefixed preference key. In 53 an invalidation revision intentionally remains
  after card deletion. Expectations were updated against the production evidence;
  three tests specific to removed provider-row animation were retired.
- Final targeted Android run: **124 tests, 0 failures, 0 errors, 0 skipped**.
  This covers the previously failing classes, the changed widget/parser/layout paths,
  and 16 new recovery tests for account/session isolation, opt-out, duplicate claims,
  restart persistence, account deletion ranks and account-specific widget preferences.
- Release AAB build, including R8 and release vital lint: passed.
- Node function tests: 25 passed. Structure, mobile source and release hardening
  checks also passed.
- `git diff --check` and build helper shell syntax validation: passed.

The complete Android suite was not rerun after the final expectation updates; the
124-test targeted rerun is the final result. No real Claude message was sent. Device
login, background execution under Android power restrictions, widget dragging on a
launcher, and upgrading an installed 53 app have not been exercised on a device.

JADX reported 108 conversion errors for the production APK. The reconstruction uses
recovered Java, original R8 symbols and existing Kotlin, but does not claim that every
original source line or debug-only feature was recovered.

## Local build setup

The Firebase client configuration and AdMob IDs were reconstructed from the production
APK into ignored `android/app/google-services.json` and `android/local.properties`.
No OAuth client ID was invented; the production manifest uses the existing fallback
redirect scheme. JDK 17 is retained at `.tmp/toolchains/jdk17/Contents/Home` and the
Gradle cache is retained under `.tmp/gradle-user-home` for local reuse.

From the repository root:

```sh
./scripts/build-recovered-android.sh
./scripts/build-recovered-android.sh :app:testDebugUnitTest
```

`JAVA_HOME` and `GRADLE_USER_HOME` can override those local defaults. On another machine,
install JDK 17 and the Android SDK and supply the ignored configuration files.
The build output is `android/app/build/outputs/bundle/release/app-release.aab`.

## Signing and publication

No signing private key was recovered or generated. The new AAB is explicitly saved as
`artifacts/recovered-53/ai-quota-1.2.0-53-unsigned.aab`. It is a recovery/validation artifact,
not a Play-upload-ready update. The original signed 53 AAB remains separate.

Publishing another update requires a valid/reset upload key, restored signing settings,
and a new unused versionCode greater than 53. No Play Console settings, keys or releases
were changed by this recovery, and nothing was pushed to GitHub.
