// swift-tools-version: 6.2
import PackageDescription

let package = Package(
    name: "AIQuotaCore",
    platforms: [.macOS(.v14)],
    products: [.library(name: "AIQuotaCore", targets: ["AIQuotaCore"])],
    targets: [
        .systemLibrary(name: "CSQLite"),
        .target(name: "AIQuotaCore", dependencies: ["CSQLite"]),
        .testTarget(name: "AIQuotaCoreTests", dependencies: ["AIQuotaCore"])
    ]
)
