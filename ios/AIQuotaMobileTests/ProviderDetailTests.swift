import XCTest
@testable import AIQuotaMobile

final class ProviderDetailTests: XCTestCase {
    func testProviderStatusShowsBusyBeforeConnectionState() {
        let snapshot = ProviderUsageSnapshot.disconnected(.claude)

        XCTAssertEqual(providerDetailStatus(snapshot, isBusy: true), "Working")
    }

    func testProviderStatusKeepsStaleWithLinesConnected() {
        let snapshot = ProviderUsageSnapshot(
            providerId: .gemini,
            connectionState: .stale,
            lines: [ProviderUsageLine(label: "Gemini Pro", remainingPercent: 0.32)]
        )

        XCTAssertEqual(providerDetailStatus(snapshot, isBusy: false), "Connected")
    }

    func testAnalysisFindsLowestRemainingLine() {
        let snapshot = ProviderUsageSnapshot(
            providerId: .codex,
            connectionState: .connected,
            lines: [
                ProviderUsageLine(label: "Daily", remainingPercent: 0.72),
                ProviderUsageLine(label: "Session", remainingPercent: 0.14, resetText: "resets soon")
            ]
        )
        let analysis = providerDetailAnalysis(snapshot)

        XCTAssertEqual(analysis.count, 2)
        XCTAssertEqual(analysis.lowestLabel, "Session")
        XCTAssertEqual(analysis.lowestPercentText, "14%")
        XCTAssertEqual(analysis.lowestResetText, "resets soon")
    }

    func testMetadataTextIncludesCategoryUnitWindowSourceConfidence() {
        let line = ProviderUsageLine(
            label: "Chat",
            remainingPercent: 0.9,
            category: "chat",
            windowText: "daily",
            sourceLabel: "trusted fixture",
            confidence: 0.64
        )
        let metadata = metadataText(for: line)

        XCTAssertTrue(metadata?.contains("category: chat") == true)
        XCTAssertTrue(metadata?.contains("unit: percent") == true)
        XCTAssertTrue(metadata?.contains("window: daily") == true)
        XCTAssertTrue(metadata?.contains("source: trusted fixture") == true)
        XCTAssertTrue(metadata?.contains("confidence: 64%") == true)
    }

    func testConnectAndDisconnectActionsFollowSnapshotPolicy() {
        let disconnected = ProviderUsageSnapshot.disconnected(.claude)
        let connected = ProviderUsageSnapshot(
            providerId: .codex,
            connectionState: .connected,
            lines: [ProviderUsageLine(label: "Session", remainingPercent: 0.5)]
        )

        XCTAssertEqual(disconnected.primaryConnectionAction(), .connect)
        XCTAssertEqual(connected.primaryConnectionAction(), .disconnect)
    }
}
