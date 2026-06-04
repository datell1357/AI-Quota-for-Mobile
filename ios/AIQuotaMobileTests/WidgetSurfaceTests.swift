import XCTest
@testable import AIQuotaMobile

final class WidgetSurfaceTests: XCTestCase {
    func testDashboardEntryUsesSanitizedCacheOnly() {
        let snapshot = ProviderUsageSnapshot(
            providerId: .gemini,
            connectionState: .connected,
            planLabel: "Pro",
            account: "user@example.com",
            lines: [ProviderUsageLine(label: "2.5 pro", remainingPercent: 0.98)]
        )
        let envelope = ProviderWidgetCacheEnvelope(providers: [
            SanitizedWidgetProviderSnapshot(snapshot)
        ])

        XCTAssertEqual(envelope.providers.single?.providerId, .gemini)
        XCTAssertEqual(envelope.providers.single?.accountDisplay, "user@example.com")
        XCTAssertEqual(envelope.providers.single?.lines.single?.label, "2.5 pro")
    }

    func testDashboardProviderLimitMatchesSmallMediumLargeFamilies() {
        XCTAssertEqual(AIQuotaWidgetSurfacePolicy.dashboardProviderLimit(for: .small), 1)
        XCTAssertEqual(AIQuotaWidgetSurfacePolicy.dashboardProviderLimit(for: .medium), 3)
        XCTAssertEqual(AIQuotaWidgetSurfacePolicy.dashboardProviderLimit(for: .large), 6)
    }

    func testProviderFocusedSnapshotPrefersMostUrgentProvider() {
        let connected = SanitizedWidgetProviderSnapshot(.connectedFixture(.gemini, remaining: 0.9))
        let stale = SanitizedWidgetProviderSnapshot(.staleFixture(.cursor, remaining: 0.2))
        let error = SanitizedWidgetProviderSnapshot(.errorFixture(.antigravity))

        XCTAssertEqual(
            AIQuotaWidgetSurfacePolicy.providerFocusedSnapshot(from: [connected, stale, error])?.providerId,
            .antigravity
        )
    }

    func testWidgetPreviewFixturesCoverEmptyConnectedStaleAndError() {
        let fixtures = [
            ProviderWidgetCacheEnvelope(providers: []),
            ProviderWidgetCacheEnvelope(providers: [SanitizedWidgetProviderSnapshot(.connectedFixture(.gemini, remaining: 0.9))]),
            ProviderWidgetCacheEnvelope(providers: [SanitizedWidgetProviderSnapshot(.staleFixture(.cursor, remaining: 0.2))]),
            ProviderWidgetCacheEnvelope(providers: [SanitizedWidgetProviderSnapshot(.errorFixture(.antigravity))])
        ]

        XCTAssertEqual(fixtures.count, 4)
        XCTAssertTrue(fixtures[0].providers.isEmpty)
        XCTAssertEqual(fixtures[1].providers.single?.connectionState, .connected)
        XCTAssertEqual(fixtures[2].providers.single?.connectionState, .stale)
        XCTAssertEqual(fixtures[3].providers.single?.connectionState, .error)
    }
}

private extension Array {
    var single: Element? {
        count == 1 ? first : nil
    }
}

private extension ProviderUsageSnapshot {
    static func connectedFixture(_ providerId: ProviderId, remaining: Float) -> ProviderUsageSnapshot {
        ProviderUsageSnapshot(
            providerId: providerId,
            connectionState: .connected,
            planLabel: "Pro",
            lines: [ProviderUsageLine(label: providerId.displayName, remainingPercent: remaining)]
        )
    }

    static func staleFixture(_ providerId: ProviderId, remaining: Float) -> ProviderUsageSnapshot {
        connectedFixture(providerId, remaining: remaining).copy(connectionState: .stale)
    }

    static func errorFixture(_ providerId: ProviderId) -> ProviderUsageSnapshot {
        ProviderUsageSnapshot(
            providerId: providerId,
            connectionState: .error,
            message: "Connection needs attention"
        )
    }
}
