import Combine
import Foundation
import UserNotifications
import WidgetKit

enum ProviderNotificationPermissionState: String, Equatable {
    case notDetermined = "NOT_DETERMINED"
    case authorized = "AUTHORIZED"
    case denied = "DENIED"

    var canScheduleLocalNotifications: Bool {
        self == .authorized
    }

    static func from(_ status: UNAuthorizationStatus) -> ProviderNotificationPermissionState {
        switch status {
        case .notDetermined:
            return .notDetermined
        case .authorized, .provisional, .ephemeral:
            return .authorized
        case .denied:
            return .denied
        @unknown default:
            return .denied
        }
    }
}

struct ProviderNotificationSettingsLanguage: Equatable {
    let titleKey: String
    let toggleKey: String
    let explanationKey: String
    let passiveSurfaceKey: String
    let permissionStatusKey: String
}

enum ProviderNotificationSettingsCopy {
    static func settingsLanguage(
        for state: ProviderNotificationPermissionState
    ) -> ProviderNotificationSettingsLanguage {
        ProviderNotificationSettingsLanguage(
            titleKey: "settings_ios_notifications_title",
            toggleKey: "settings_local_notification_toggle",
            explanationKey: "settings_ios_notification_explanation",
            passiveSurfaceKey: "settings_live_refresh_passive_surfaces",
            permissionStatusKey: permissionStatusKey(for: state)
        )
    }

    static func permissionStatusKey(
        for state: ProviderNotificationPermissionState
    ) -> String {
        switch state {
        case .authorized:
            return "settings_notification_permission_granted"
        case .denied:
            return "settings_notification_permission_denied"
        case .notDetermined:
            return "settings_notification_permission_not_determined"
        }
    }
}

protocol ProviderNotificationSettingsStoring: AnyObject {
    var localNotificationsEnabled: Bool { get set }
}

final class ProviderNotificationSettingsStore: ProviderNotificationSettingsStoring {
    private enum Keys {
        static let localNotificationsEnabled = "ios.notifications.local.enabled"
    }

    private let defaults: UserDefaults

    init(defaults: UserDefaults = .standard) {
        self.defaults = defaults
    }

    var localNotificationsEnabled: Bool {
        get { defaults.bool(forKey: Keys.localNotificationsEnabled) }
        set { defaults.set(newValue, forKey: Keys.localNotificationsEnabled) }
    }
}

protocol UserNotificationScheduling: AnyObject {
    func requestLocalNotificationAuthorization() async -> ProviderNotificationPermissionState
    func scheduleLocalNotification(_ request: UNNotificationRequest) async throws
    func cancelLocalNotifications(identifiers: [String])
}

extension UNUserNotificationCenter: UserNotificationScheduling {
    func requestLocalNotificationAuthorization() async -> ProviderNotificationPermissionState {
        do {
            let granted = try await requestAuthorization(options: [.alert, .sound, .badge])
            return granted ? .authorized : await currentLocalNotificationPermissionState()
        } catch {
            return .denied
        }
    }

    func scheduleLocalNotification(_ request: UNNotificationRequest) async throws {
        try await withCheckedThrowingContinuation { continuation in
            add(request) { error in
                if let error {
                    continuation.resume(throwing: error)
                } else {
                    continuation.resume()
                }
            }
        }
    }

    func cancelLocalNotifications(identifiers: [String]) {
        removePendingNotificationRequests(withIdentifiers: identifiers)
    }

    private func currentLocalNotificationPermissionState() async -> ProviderNotificationPermissionState {
        await withCheckedContinuation { continuation in
            getNotificationSettings { settings in
                continuation.resume(returning: ProviderNotificationPermissionState.from(settings.authorizationStatus))
            }
        }
    }
}

protocol WidgetTimelineReloading: AnyObject {
    func reloadAllTimelines()
}

final class ProviderWidgetTimelineReloader: WidgetTimelineReloading {
    func reloadAllTimelines() {
        WidgetCenter.shared.reloadAllTimelines()
    }
}

struct ProviderLocalNotificationContent {
    static let requestIdentifier = "aiquota.provider.local-usage"

    static func request(from snapshots: [ProviderUsageSnapshot]) -> UNNotificationRequest {
        UNNotificationRequest(
            identifier: requestIdentifier,
            content: content(from: snapshots),
            trigger: nil
        )
    }

    static func content(from snapshots: [ProviderUsageSnapshot]) -> UNMutableNotificationContent {
        let content = UNMutableNotificationContent()
        let snapshot = mostUrgentSnapshot(from: snapshots)
        content.title = notificationTitle(for: snapshot)
        content.body = notificationBody(for: snapshot)
        content.sound = .default
        content.userInfo = [
            "surface": "local-notification",
            "providerId": snapshot?.providerId.storageId ?? "all"
        ]
        return content
    }

    static func mostUrgentSnapshot(from snapshots: [ProviderUsageSnapshot]) -> ProviderUsageSnapshot? {
        snapshots.sorted { lhs, rhs in
            let lhsRank = urgencyRank(lhs)
            let rhsRank = urgencyRank(rhs)
            if lhsRank != rhsRank {
                return lhsRank < rhsRank
            }
            return lowestRemainingPercent(lhs) < lowestRemainingPercent(rhs)
        }.first
    }

    private static func notificationTitle(for snapshot: ProviderUsageSnapshot?) -> String {
        guard let snapshot else { return "AI Quota" }
        return "AI Quota: \(snapshot.displayName)"
    }

    private static func notificationBody(for snapshot: ProviderUsageSnapshot?) -> String {
        guard let snapshot else {
            return "Usage snapshots will refresh on iOS passive surfaces."
        }
        if let line = snapshot.lines.min(by: { lowestRemainingPercent($0) < lowestRemainingPercent($1) }) {
            return "\(line.label): \(line.remainingText)"
        }
        switch snapshot.connectionState {
        case .error, .unavailable, .interactiveAuthRequired:
            return "\(snapshot.displayName) needs attention."
        case .stale:
            return "\(snapshot.displayName) cached usage may be stale."
        case .disconnected, .notConnected:
            return "\(snapshot.displayName) is not connected."
        case .connecting, .collecting, .connected:
            return "\(snapshot.displayName) usage is available."
        }
    }

    private static func urgencyRank(_ snapshot: ProviderUsageSnapshot) -> Int {
        switch snapshot.connectionState {
        case .error, .unavailable, .interactiveAuthRequired:
            return 0
        case .stale:
            return 1
        case .connected, .collecting, .connecting:
            return 2
        case .disconnected, .notConnected:
            return 3
        }
    }

    private static func lowestRemainingPercent(_ snapshot: ProviderUsageSnapshot) -> Float {
        snapshot.lines.map(lowestRemainingPercent).min() ?? 1
    }

    private static func lowestRemainingPercent(_ line: ProviderUsageLine) -> Float {
        line.remainingPercent ?? 1
    }
}

@MainActor
final class ProviderNotificationCoordinator: ObservableObject {
    @Published private(set) var permissionState: ProviderNotificationPermissionState
    @Published private(set) var localNotificationsEnabled: Bool

    private let notificationScheduler: UserNotificationScheduling
    private let settingsStore: ProviderNotificationSettingsStoring
    private let widgetReloader: WidgetTimelineReloading
    private let backgroundScheduler: ProviderBackgroundRefreshScheduling
    private let now: () -> Date

    init(
        notificationScheduler: UserNotificationScheduling = UNUserNotificationCenter.current(),
        settingsStore: ProviderNotificationSettingsStoring = ProviderNotificationSettingsStore(),
        widgetReloader: WidgetTimelineReloading = ProviderWidgetTimelineReloader(),
        backgroundScheduler: ProviderBackgroundRefreshScheduling = ProviderBackgroundRefreshScheduler(),
        initialPermissionState: ProviderNotificationPermissionState = .notDetermined,
        now: @escaping () -> Date = Date.init
    ) {
        self.notificationScheduler = notificationScheduler
        self.settingsStore = settingsStore
        self.widgetReloader = widgetReloader
        self.backgroundScheduler = backgroundScheduler
        self.permissionState = initialPermissionState
        self.localNotificationsEnabled = settingsStore.localNotificationsEnabled && initialPermissionState.canScheduleLocalNotifications
        self.now = now
    }

    var settingsLanguage: ProviderNotificationSettingsLanguage {
        ProviderNotificationSettingsCopy.settingsLanguage(for: permissionState)
    }

    func handleNotificationToggle(
        enabled: Bool,
        snapshots: [ProviderUsageSnapshot]
    ) async -> ProviderNotificationPermissionState {
        guard enabled else {
            disableLocalNotifications()
            refreshPassiveSurfaces()
            return permissionState
        }

        let nextState = await notificationScheduler.requestLocalNotificationAuthorization()
        permissionState = nextState
        localNotificationsEnabled = nextState.canScheduleLocalNotifications
        settingsStore.localNotificationsEnabled = nextState.canScheduleLocalNotifications

        if nextState.canScheduleLocalNotifications {
            _ = await scheduleLocalUsageNotification(from: snapshots)
        } else {
            notificationScheduler.cancelLocalNotifications(identifiers: [ProviderLocalNotificationContent.requestIdentifier])
        }
        refreshPassiveSurfaces()
        return nextState
    }

    func scheduleLocalUsageNotification(from snapshots: [ProviderUsageSnapshot]) async -> Bool {
        guard permissionState.canScheduleLocalNotifications else { return false }
        do {
            try await notificationScheduler.scheduleLocalNotification(ProviderLocalNotificationContent.request(from: snapshots))
            return true
        } catch {
            return false
        }
    }

    func refreshPassiveSurfaces() {
        widgetReloader.reloadAllTimelines()
        backgroundScheduler.submitBestEffortAppRefresh(
            identifier: ProviderBackgroundRefreshScheduler.providerRefreshTaskIdentifier,
            earliestBeginDate: now().addingTimeInterval(30 * 60)
        )
    }

    private func disableLocalNotifications() {
        localNotificationsEnabled = false
        settingsStore.localNotificationsEnabled = false
        notificationScheduler.cancelLocalNotifications(identifiers: [ProviderLocalNotificationContent.requestIdentifier])
    }
}
