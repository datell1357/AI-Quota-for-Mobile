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
