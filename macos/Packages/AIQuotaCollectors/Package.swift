// swift-tools-version: 6.2
import PackageDescription

let package = Package(
    name: "AIQuotaCollectors",
    platforms: [.macOS(.v14)],
    products: [
        .library(name: "AIQuotaCollectors", targets: ["AIQuotaCollectors"]),
        .executable(name: "AIQuotaResourceProbe", targets: ["AIQuotaResourceProbe"]),
    ],
    dependencies: [
        .package(path: "../AIQuotaCore"),
        .package(url: "https://github.com/datell1357/CodexBar", revision: "928166f899471bbdcb72210641cdec91324d0154"),
    ],
    targets: [
        .target(name: "AIQuotaCollectors", dependencies: [
            "AIQuotaCore", .product(name: "CodexBarCore", package: "CodexBar"),
        ]),
        .executableTarget(name: "AIQuotaResourceProbe", dependencies: [.product(name: "CodexBarCore", package: "CodexBar")]),
        .testTarget(name: "AIQuotaCollectorsTests", dependencies: ["AIQuotaCollectors", "AIQuotaResourceProbe"], resources: [.copy("Fixtures")]),
    ]
)
