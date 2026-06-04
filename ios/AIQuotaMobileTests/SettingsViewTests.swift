import XCTest
@testable import AIQuotaMobile

final class SettingsViewTests: XCTestCase {
    func testSettingsLiveRefreshStateRequiresNotificationPermissionAndFreshHeartbeat() {
        XCTAssertEqual(
            settingsLiveRefreshState(notificationEnabled: true, canPostNotifications: true, heartbeatStale: false),
            .running
        )
        XCTAssertEqual(
            settingsLiveRefreshState(notificationEnabled: true, canPostNotifications: false, heartbeatStale: false),
            .stopped
        )
        XCTAssertEqual(
            settingsLiveRefreshState(notificationEnabled: true, canPostNotifications: true, heartbeatStale: true),
            .stopped
        )
    }

    func testSettingsConnectionRowsFollowProviderOrderAndHiddenSet() {
        let rows = settingsConnectionRows(
            providerOrder: [.codex, .claude],
            snapshots: [],
            hiddenProviders: [.claude]
        )

        XCTAssertEqual(rows.prefix(2).map(\.providerId), [.codex, .claude])
        XCTAssertEqual(rows.first { $0.providerId == .claude }?.isHidden, true)
    }

    func testSettingsConnectionActionDisconnectsNonDisconnectedSnapshots() {
        let connected = ProviderUsageSnapshot(
            providerId: .codex,
            connectionState: .connected,
            lines: [ProviderUsageLine(label: "Session", remainingPercent: 0.5)]
        )
        let disconnected = ProviderUsageSnapshot.disconnected(.claude)

        XCTAssertEqual(settingsConnectionAction(connected), .disconnect)
        XCTAssertEqual(settingsConnectionAction(disconnected), .connect)
        XCTAssertEqual(settingsConnectionAction(nil), .connect)
    }

    func testSettingsProviderSetCodecDropsUnknownAndDuplicateValues() {
        let decoded = decodeProviderSet("claude,codex,claude,unknown")

        XCTAssertEqual(decoded, [.claude, .codex])
        XCTAssertEqual(encodeProviderSet(decoded), "claude,codex")
    }

    func testBugReportDraftKeepsCategoryProviderDescriptionAndDiagnosticsFlag() {
        let draft = BugReportDraft(
            category: .usageCollection,
            providerId: .gemini,
            description: "Quota did not refresh.",
            includeDiagnostics: false
        )

        XCTAssertEqual(draft.category, .usageCollection)
        XCTAssertEqual(draft.providerId, .gemini)
        XCTAssertEqual(draft.description, "Quota did not refresh.")
        XCTAssertEqual(draft.includeDiagnostics, false)
    }
}
