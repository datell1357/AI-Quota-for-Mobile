# AI Quota for macOS

Swift 6.2+, macOS 14+. This directory is independent of Gradle and Android resources.

The complete product scope is defined by [the implementation plan](../docs/macos-implementation-plan.ko.md).
Use the recovered Android 1.2.2(55) baseline in [Docs/android-baseline.json](Docs/android-baseline.json),
not the older Android files checked out on this branch, when comparing behavior.

## Development status

See [Docs/implementation-status.ko.md](Docs/implementation-status.ko.md) for actual implementation,
test evidence and outstanding release gates. Fixture tests do not prove live provider access.

## Regression data

`Tests/Fixtures` contains synthetic Android regression payloads with expected remaining fractions
and source provenance. Keep source-specific units and product identity when porting parsers.
The legacy Grok rate-limit fixture is supplemental: the production route must use the weekly
credits collector and its protobuf fixtures. Copilot's fixture preserves Android rounding;
review precision against the live source before changing that presentation contract.

## Core package

```sh
swift test --package-path macos/Packages/AIQuotaCore --scratch-path macos/.build/core
```

The core uses system SQLite and CryptoKit. It has no third-party Swift package dependencies.
`AccountRepository` is the single account authority. Collectors must obtain a lease and return a
verified `RemoteIdentity`; presentation changes never mutate identity. `SnapshotFileStore` writes
only the display projection, and WidgetKit must not read the account database or credentials.
The host binds the publisher to its current repository and calls `publish()`; queued UI snapshots
cannot be submitted as authoritative data. On startup, a restored or recreated database can rebuild
an older installation's cache even when that file has a higher revision. Conflicting or damaged
files are preserved beside the snapshot as `*.before-rebuild-<UUID>.json` before atomic replacement.
Unknown snapshot schema versions and filesystem access errors stop publication without overwriting
the existing file. This assumes one running host writer; restore the account database with the app
closed. The JSON schema and SQLite schema remain unchanged.

## Collectors and dependency resources

```sh
bash macos/Scripts/test-collectors.sh
```

This resolves the pinned CodexBarCore dependency, builds the collectors, stages a separate resource
smoke host, runs the bundled GLM JavaScript plugin against synthetic HTTP responses, and runs the
Swift tests. Temporary smoke hosts are retained under `.build/collectors`. XCTest's executable is
outside the product directory; the resource test therefore launches our actual executable host.

`CodexSubscriptionCollector` and `GrokWeeklyCollector` require an account-scoped
`AccountSessionSource`. They do not read global browser cookies or rotate CLI refresh tokens.
The stored-session source connects these collectors to the authentication package. Live-provider
login/identity verification and the other adapters remain pending.
Dependency pins and preserved license texts are under `Packages/AIQuotaCollectors/Package.resolved`
and `Resources/ThirdPartyLicenses`.

## Authentication package

```sh
swift test --package-path macos/Packages/AIQuotaAuth --scratch-path macos/.build/auth
swift run --package-path macos/Packages/AIQuotaAuth --scratch-path macos/.build/auth AIQuotaCredentialProbe
bash macos/Scripts/test-web-sessions.sh
```

The second command creates, reads and removes one synthetic item under a unique Keychain service.
It never inspects existing credentials. Login replacement keeps the previous session until new
credentials are saved and the SQLite account revision commits. Persistent WebKit stores are keyed
by profile UUID. OAuth refresh coordination only accepts credentials owned by AI Quota.
Claude, Codex and Grok web verification are connected; successful live-account authentication and the
remaining providers/registered OAuth clients are still pending.

The third command runs a native AppKit probe in six separate processes. It verifies two synthetic
WebKit profiles, response-cookie rotation, background renewal without a web view, expiration and
restoration after normal application termination. It creates fresh profile UUIDs and retains its
QA artifacts under `artifacts/macos-web-session-probes`; it never enumerates existing profiles.
`IsolatedWebProfiles` opens cookie data records before the first background cookie access so a
new process does not mistake an uninitialized persistent store for an empty session. This probe
does not establish live-login persistence, crash recovery or application-update behavior.

## Native host application

```sh
python3 macos/Scripts/generate-xcode-project.py
xcodebuild -project macos/AIQuota.xcodeproj -scheme AIQuota -configuration Debug \
  -destination 'platform=macOS,arch=arm64' -derivedDataPath macos/.build/xcode \
  -clonedSourcePackagesDirPath macos/.build/xcode-packages CODE_SIGNING_ALLOWED=NO build
bash macos/Scripts/test-host-state.sh
```

Use an absolute `--data-directory` argument for a separate QA store. That override also isolates the
display snapshot and never publishes synthetic accounts to the real App Group or reloads widgets.
Without the override, an unsigned/ad-hoc build can use the dashboard but cannot access an App Group.
The host checks the running code's signing team and group entitlement before resolving that path.
Shared-file writes are coalesced separately from displaying accounts and collecting usage.

The dashboard, account editing, provider selection, onboarding, Korean/English, themes and collection
preferences and Claude/Codex/Grok login screens are wired to the local authority. The other provider
login screens and WidgetKit extension are still pending; adding an account card does not authenticate it. See the status document for
actual native UI verification and remaining notification, menu-bar and signing checks.
