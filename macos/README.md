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
Authenticated live-provider access, Keychain integration, and the other adapters remain pending.
Dependency pins and preserved license texts are under `Packages/AIQuotaCollectors/Package.resolved`
and `Resources/ThirdPartyLicenses`.
