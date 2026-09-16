// swift-tools-version: 6.2
import PackageDescription

let package = Package(
    name: "AIQuotaAuth",
    platforms: [.macOS(.v14)],
    products: [
        .library(name: "AIQuotaAuth", targets: ["AIQuotaAuth"]),
        .executable(name: "AIQuotaCredentialProbe", targets: ["AIQuotaCredentialProbe"]),
        .executable(name: "AIQuotaWebSessionProbe", targets: ["AIQuotaWebSessionProbe"]),
    ],
    dependencies: [.package(path: "../AIQuotaCore")],
    targets: [
        .target(name: "AIQuotaAuth", dependencies: ["AIQuotaCore"]),
        .executableTarget(name: "AIQuotaCredentialProbe", dependencies: ["AIQuotaAuth"]),
        .executableTarget(name: "AIQuotaWebSessionProbe", dependencies: ["AIQuotaAuth"]),
        .testTarget(name: "AIQuotaAuthTests", dependencies: ["AIQuotaAuth"]),
    ]
)
