import UserNotifications
import XCTest
@testable import AIQuotaMobile

@MainActor
final class ProviderNotificationCoordinatorTests: XCTestCase {
    func testPermissionGrantedSchedulesLocalNotificationAndPassiveSurfaces() async {
        let scheduler = MockUserNotificationScheduler(permissionState: .authorized)
        let settingsStore = MockNotificationSettingsStore()
        let widgetReloader = MockWidgetTimelineReloader()
        let backgroundScheduler = MockNotificationBackgroundScheduler()
        let coordinator = ProviderNotificationCoordinator(
            notificationScheduler: scheduler,
            settingsStore: settingsStore,
            widgetReloader: widgetReloader,
            backgroundScheduler: backgroundScheduler,
            now: { Date(timeIntervalSince1970: 100) }
        )

        let state = await coordinator.handleNotificationToggle(
            enabled: true,
            snapshots: [.connectedFixture(.codex, remainingPercent: 0.42)]
        )

        XCTAssertEqual(state, .authorized)
        XCTAssertEqual(coordinator.permissionState, .authorized)
        XCTAssertEqual(settingsStore.localNotificationsEnabled, true)
        XCTAssertEqual(scheduler.scheduledRequests.count, 1)
        XCTAssertEqual(scheduler.scheduledRequests.first?.identifier, ProviderLocalNotificationContent.requestIdentifier)
        XCTAssertEqual(widgetReloader.reloadCount, 1)
        XCTAssertEqual(backgroundScheduler.submittedIdentifiers, [ProviderBackgroundRefreshScheduler.providerRefreshTaskIdentifier])
    }

    func testPermissionDeniedDisablesNotificationsAndCancelsPendingRequests() async {
        let scheduler = MockUserNotificationScheduler(permissionState: .denied)
        let settingsStore = MockNotificationSettingsStore()
        let widgetReloader = MockWidgetTimelineReloader()
        let backgroundScheduler = MockNotificationBackgroundScheduler()
        let coordinator = ProviderNotificationCoordinator(
            notificationScheduler: scheduler,
            settingsStore: settingsStore,
            widgetReloader: widgetReloader,
            backgroundScheduler: backgroundScheduler
        )

        let state = await coordinator.handleNotificationToggle(
            enabled: true,
            snapshots: [.connectedFixture(.gemini, remainingPercent: 0.9)]
        )

        XCTAssertEqual(state, .denied)
        XCTAssertEqual(settingsStore.localNotificationsEnabled, false)
        XCTAssertEqual(scheduler.scheduledRequests.count, 0)
        XCTAssertEqual(scheduler.cancelledIdentifiers, [ProviderLocalNotificationContent.requestIdentifier])
        XCTAssertEqual(coordinator.settingsLanguage.permissionStatusKey, "settings_notification_permission_denied")
        XCTAssertEqual(widgetReloader.reloadCount, 1)
        XCTAssertEqual(backgroundScheduler.submittedIdentifiers, [ProviderBackgroundRefreshScheduler.providerRefreshTaskIdentifier])
    }

    func testDisablingNotificationsCancelsPendingRequestAndReloadsPassiveSurfaces() async {
        let scheduler = MockUserNotificationScheduler(permissionState: .authorized)
        let settingsStore = MockNotificationSettingsStore(localNotificationsEnabled: true)
        let widgetReloader = MockWidgetTimelineReloader()
        let backgroundScheduler = MockNotificationBackgroundScheduler()
        let coordinator = ProviderNotificationCoordinator(
            notificationScheduler: scheduler,
            settingsStore: settingsStore,
            widgetReloader: widgetReloader,
            backgroundScheduler: backgroundScheduler,
            initialPermissionState: .authorized
        )

        let state = await coordinator.handleNotificationToggle(
            enabled: false,
            snapshots: [.connectedFixture(.claude, remainingPercent: 0.2)]
        )

        XCTAssertEqual(state, .authorized)
        XCTAssertEqual(settingsStore.localNotificationsEnabled, false)
        XCTAssertEqual(scheduler.scheduledRequests.count, 0)
        XCTAssertEqual(scheduler.cancelledIdentifiers, [ProviderLocalNotificationContent.requestIdentifier])
        XCTAssertEqual(widgetReloader.reloadCount, 1)
        XCTAssertEqual(backgroundScheduler.submittedIdentifiers, [ProviderBackgroundRefreshScheduler.providerRefreshTaskIdentifier])
    }

    func testNotificationContentUsesMostUrgentProviderWithoutSecrets() {
        let content = ProviderLocalNotificationContent.content(from: [
            ProviderUsageSnapshot(
                providerId: .codex,
                connectionState: .connected,
                account: "person@example.com",
                lines: [ProviderUsageLine(label: "Session", remainingPercent: 0.01, remainingText: "1% left")]
            ),
            ProviderUsageSnapshot(
                providerId: .gemini,
                connectionState: .error,
                account: "token-secret@example.com",
                message: "raw token secret",
                lines: []
            )
        ])

        XCTAssertTrue(content.title.contains("Gemini"))
        XCTAssertTrue(content.body.contains("needs attention"))
        XCTAssertFalse(content.title.contains("token-secret"))
        XCTAssertFalse(content.body.contains("token-secret"))
        XCTAssertFalse(content.body.contains("person@example.com"))
        XCTAssertFalse(content.body.contains("raw token secret"))
    }
}

private final class MockUserNotificationScheduler: UserNotificationScheduling {
    private let permissionState: ProviderNotificationPermissionState
    private(set) var scheduledRequests: [UNNotificationRequest] = []
    private(set) var cancelledIdentifiers: [String] = []

    init(permissionState: ProviderNotificationPermissionState) {
        self.permissionState = permissionState
    }

    func requestLocalNotificationAuthorization() async -> ProviderNotificationPermissionState {
        permissionState
    }

    func scheduleLocalNotification(_ request: UNNotificationRequest) async throws {
        scheduledRequests.append(request)
    }

    func cancelLocalNotifications(identifiers: [String]) {
        cancelledIdentifiers.append(contentsOf: identifiers)
    }
}

private final class MockWidgetTimelineReloader: WidgetTimelineReloading {
    private(set) var reloadCount = 0

    func reloadAllTimelines() {
        reloadCount += 1
    }
}

private final class MockNotificationSettingsStore: ProviderNotificationSettingsStoring {
    var localNotificationsEnabled: Bool

    init(localNotificationsEnabled: Bool = false) {
        self.localNotificationsEnabled = localNotificationsEnabled
    }
}

private final class MockNotificationBackgroundScheduler: ProviderBackgroundRefreshScheduling {
    private(set) var submittedIdentifiers: [String] = []

    func submitBestEffortAppRefresh(identifier: String, earliestBeginDate: Date?) {
        submittedIdentifiers.append(identifier)
    }
}

private extension ProviderUsageSnapshot {
    static func connectedFixture(_ providerId: ProviderId, remainingPercent: Float) -> ProviderUsageSnapshot {
        ProviderUsageSnapshot(
            providerId: providerId,
            connectionState: .connected,
            planLabel: "Pro",
            updatedAt: "2026-06-04T00:00:00Z",
            lines: [
                ProviderUsageLine(label: "Messages", remainingPercent: remainingPercent)
            ]
        )
    }
}
