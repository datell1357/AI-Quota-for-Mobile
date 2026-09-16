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
closed. The display JSON schema remains at version 1. SQLite schema 2 adds the host-only credential
lifecycle journal, with a SQLite backup before migrating existing version 1 data.

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

GLM now has a native API-key connection sheet and an account-scoped collector for Global/CN,
personal/team quotas. Verified keys are stored in Keychain. The quota API exposes no user ID:
the connection is explicitly bound to a credential fingerprint and the selected scope, which are
excluded from display snapshots. Empty/invalid responses preserve the last reading; an explicit
no-subscription response clears usage without inventing a full quota. See
[Docs/glm-api-key.ko.md](Docs/glm-api-key.ko.md) for the contract, regression evidence and remaining
live-account and web-login work. To use a different key or scope, explicitly remove the old local
account and add a new connection; existing widget selections keep the old, now-missing account ID.

## Authentication package

```sh
swift test --package-path macos/Packages/AIQuotaAuth --scratch-path macos/.build/auth
swift run --package-path macos/Packages/AIQuotaAuth --scratch-path macos/.build/auth AIQuotaCredentialProbe
bash macos/Scripts/test-web-sessions.sh
```

The second command creates, reads and removes synthetic items under a unique Keychain service.
It also runs account removal and abandoned-login recovery through the real repository and login
coordinator while preserving another account. It never inspects existing credentials.
Login replacement keeps the previous session until new
credentials are saved and the SQLite account revision commits. Persistent WebKit stores are keyed
by profile UUID. OAuth refresh coordination only accepts credentials owned by AI Quota.
Claude, Codex and Grok web verification are connected; successful live-account authentication and the
remaining providers/registered OAuth clients are still pending.

The third command runs a native AppKit probe in eight separate processes. It verifies two synthetic
WebKit profiles, response-cookie rotation, background renewal without a web view, expiration and
restoration after normal application termination, then removes only the first profile and checks
its absence in a new process while preserving the second profile's cookie. It creates fresh profile
UUIDs and retains its QA artifacts under `artifacts/macos-web-session-probes`. The WebKit identifier
query checks those known UUIDs; it does not read any other profile's cookies or website data.
`IsolatedWebProfiles` opens cookie data records before the first background cookie access so a
new process does not mistake an uninitialized persistent store for an empty session. This probe
does not establish live-login persistence, crash recovery or application-update behavior.

Account removal, disconnect and login replacement record retired resources before cleanup. Failed
Keychain/WebKit cleanup remains in SQLite for startup, app-activation or explicit Settings retry.
External CLI credential files are never removed. See [Docs/account-lifecycle.ko.md](Docs/account-lifecycle.ko.md)
for the state transitions, migration, race tests and verification limits.

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
login screens and signed WidgetKit runtime verification are still pending; adding an account card does not authenticate it. See the status document for
actual native UI verification and remaining notification, menu-bar and signing checks.

Notifications are claimed from the current account database immediately before submission. Account
removal/disconnect pauses that account's submissions and retracts an overlapping request before
changing the account. The existing at-most-once policy can still lose a notification if the process
exits or the OS rejects it after consumption. See [Docs/notification-delivery.ko.md](Docs/notification-delivery.ko.md)
for race tests and the outstanding real OS delivery/retraction checks.

## System widgets

The generated project embeds `AIQuotaWidgets.appex`. It contains six configurable kinds: account,
four/six-account dashboard and two/four/six-account battery. Configuration is per WidgetKit instance
and stores account UUIDs in order. The extension reads only the display snapshot; it does not collect
usage or access authentication. Missing IDs retain their positions, and invalid capacity/size
combinations request editing without discarding selections.

```sh
bash macos/Scripts/test-widgets.sh
python3 macos/Scripts/verify-widget-bundle.py 'macos/.build/xcode/Build/Products/Debug/AI Quota.app'
```

The first command runs the real intent/query/timeline and view code against a synthetic SQLite
producer, then renders 25 PNGs in a separate native host. The second validates the actual embedded
extension and selection limits extracted by Xcode. These checks do not establish signed App Group
access, WidgetKit gallery registration or OS-persisted independent configurations. See
[Docs/widget-contract.ko.md](Docs/widget-contract.ko.md) for the full contract and outstanding gates.

## Desktop panel

Open **Desktop panel** from the dashboard or menu bar, or enable it in Settings. The optional native
panel shares the existing model and collector, supports list/battery layouts and up to six ordered
accounts, and remembers its frame and visibility. It uses a normal window level unless **Always on
top** is selected. Closing the panel disables it; quitting the app keeps it enabled for the next run.
An explicitly empty selection remains empty. Language, appearance and card style follow the app.

Run `bash macos/Scripts/test-host-state.sh` and `bash macos/Scripts/test-panel.sh` for compatibility,
selection, native window lifecycle and frame checks. See [Docs/desktop-panel.ko.md](Docs/desktop-panel.ko.md)
for actual app UI verification and the remaining live collection, display and accessibility checks.
