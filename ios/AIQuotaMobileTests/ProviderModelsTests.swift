import XCTest
@testable import AIQuotaMobile

final class ProviderModelsTests: XCTestCase {
    private let fixtureNames = [
        "connected-codex.json",
        "disconnected-claude.json",
        "stale-gemini-with-previous-usage.json",
        "interactive-auth-copilot-with-previous-usage.json",
        "collector-error-cursor.json",
        "empty-antigravity.json"
    ]

    func testDefaultProviderOrderMatchesAndroidContract() {
        XCTAssertEqual(
            ProviderId.defaultOrder.map(\.storageId),
            ["claude", "codex", "gemini", "copilot", "antigravity", "cursor"]
        )
    }

    func testPreviousUsageFailureStaysConnectedForTrustedCachedLines() {
        let previous = ProviderUsageSnapshot(
            providerId: .gemini,
            connectionState: .connected,
            lines: [ProviderUsageLine(label: "Gemini Pro", remainingPercent: 0.72)]
        )

        let failed = ProviderUsageSnapshot.failedKeepingPrevious(
            .gemini,
            previous: previous,
            message: "No trusted provider usage payload was collected."
        )

        XCTAssertEqual(failed.connectionState, .connected)
        XCTAssertEqual(failed.lines.count, 1)
    }

    func testLoginSuccessWithoutTrustedUsageDoesNotBecomeConnected() {
        let failed = ProviderUsageSnapshot.connectedWithoutUsage(
            .claude,
            previous: nil,
            message: "No trusted provider usage payload was collected."
        )

        XCTAssertEqual(failed.connectionState, .unavailable)
    }

    func testLegacyInteractiveAuthWithUsageRecoversConnectedState() {
        let legacy = ProviderUsageSnapshot(
            providerId: .codex,
            connectionState: .interactiveAuthRequired,
            message: "Connection needs attention",
            lines: [ProviderUsageLine(label: "Session", remainingPercent: 0.4)]
        )

        XCTAssertEqual(recoverLegacyInteractiveAuthRequired(legacy).connectionState, .connected)
    }

    func testDecodesSharedProviderSnapshotFixtures() throws {
        let decoder = JSONDecoder()

        for fixtureName in fixtureNames {
            let snapshot = try decoder.decode(ProviderUsageSnapshot.self, from: fixtureData(named: fixtureName))

            XCTAssertFalse(snapshot.providerId.storageId.isEmpty)
            XCTAssertFalse(snapshot.displayName.isEmpty)
            XCTAssertFalse(snapshot.updatedAt.isEmpty)
        }
    }

    private func fixtureData(named fixtureName: String) throws -> Data {
        let bundle = Bundle(for: ProviderModelsTests.self)
        let url = try XCTUnwrap(bundle.url(forResource: fixtureName, withExtension: nil))
        return try Data(contentsOf: url)
    }
}
