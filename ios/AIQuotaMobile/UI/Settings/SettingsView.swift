import Foundation
import SwiftUI

struct SettingsView: View {
    @Binding var currentTheme: AppTheme
    let providerOrder: [ProviderId]
    let hiddenProviders: Set<ProviderId>
    let snapshots: [ProviderUsageSnapshot]
    let colors: AIQuotaThemeColors
    let notificationPermissionState: ProviderNotificationPermissionState
    let onNotificationEnabledChanged: (Bool) -> Void
    let onProviderHiddenChanged: (ProviderId, Bool) -> Void
    let onConnectProvider: (ProviderId) -> Void
    let onDisconnectProvider: (ProviderId) -> Void
    let onDisconnectAllProviders: () -> Void
    let onSendBugReport: (BugReportDraft) -> Void

    @State private var notificationEnabled = false
    @State private var liveRefreshEnabled = false

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 16) {
                NotificationSettingsSection(
                    notificationEnabled: $notificationEnabled,
                    liveRefreshEnabled: $liveRefreshEnabled,
                    colors: colors,
                    permissionState: notificationPermissionState,
                    onNotificationEnabledChanged: onNotificationEnabledChanged
                )
                ThemeSettingsSection(currentTheme: $currentTheme, colors: colors)
                ConnectionManagementSection(
                    providerOrder: providerOrder,
                    hiddenProviders: hiddenProviders,
                    snapshots: snapshots,
                    colors: colors,
                    onProviderHiddenChanged: onProviderHiddenChanged,
                    onConnectProvider: onConnectProvider,
                    onDisconnectProvider: onDisconnectProvider,
                    onDisconnectAllProviders: onDisconnectAllProviders
                )
                SupportSettingsSection(colors: colors, onSendBugReport: onSendBugReport)
            }
            .padding(16)
        }
        .background(AIQuotaDesignTokens.color(colors.appBackground))
    }
}

struct SettingsSection<Content: View>: View {
    let title: String
    let colors: AIQuotaThemeColors
    private let content: Content

    init(title: String, colors: AIQuotaThemeColors, @ViewBuilder content: () -> Content) {
        self.title = title
        self.colors = colors
        self.content = content()
    }

    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            Text(title)
                .font(.headline.weight(.semibold))
                .foregroundStyle(AIQuotaDesignTokens.color(colors.textPrimary))
            content
        }
        .padding(16)
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(AIQuotaDesignTokens.color(colors.panel))
        .clipShape(RoundedRectangle(cornerRadius: 8))
        .overlay(
            RoundedRectangle(cornerRadius: 8)
                .stroke(AIQuotaDesignTokens.color(colors.borderSoft), lineWidth: 1)
        )
    }
}

struct NotificationSettingsSection: View {
    @Binding var notificationEnabled: Bool
    @Binding var liveRefreshEnabled: Bool
    let colors: AIQuotaThemeColors
    let permissionState: ProviderNotificationPermissionState
    let onNotificationEnabledChanged: (Bool) -> Void
    private let legacyAndroidStatusBarGaugeLocalizationKey = "settings_status_bar_gauges"

    var body: some View {
        SettingsSection(title: L10n.text("settings_ios_notifications_title"), colors: colors) {
            Toggle(L10n.text("settings_local_notification_toggle"), isOn: notificationBinding)
            Text(L10n.text("settings_ios_notification_explanation"))
                .font(.caption)
                .foregroundStyle(AIQuotaDesignTokens.color(colors.textMuted))
            Toggle(L10n.text("settings_live_refresh_title"), isOn: $liveRefreshEnabled)
            Text(L10n.text("settings_live_refresh_passive_surfaces"))
                .font(.caption)
                .foregroundStyle(AIQuotaDesignTokens.color(colors.textMuted))
            Text(notificationPermissionStatusText(permissionState))
                .font(.caption)
                .foregroundStyle(AIQuotaDesignTokens.color(colors.textMuted))
            Text(L10n.format("settings_live_refresh_status", settingsLiveRefreshState(notificationEnabled: notificationEnabled, canPostNotifications: permissionState.canScheduleLocalNotifications, heartbeatStale: !liveRefreshEnabled).label))
                .font(.caption)
                .foregroundStyle(AIQuotaDesignTokens.color(colors.textMuted))
        }
    }

    private var notificationBinding: Binding<Bool> {
        Binding(
            get: { notificationEnabled },
            set: {
                notificationEnabled = $0
                onNotificationEnabledChanged($0)
            }
        )
    }
}

func notificationPermissionStatusText(_ state: ProviderNotificationPermissionState) -> String {
    switch state {
    case .authorized:
        return L10n.text("settings_notification_permission_granted")
    case .denied:
        return L10n.text("settings_notification_permission_denied")
    case .notDetermined:
        return L10n.text("settings_notification_permission_not_determined")
    }
}

func legacySettingsStatusBarGaugeLocalizationText() -> String {
    L10n.text("settings_status_bar_gauges")
}

struct ThemeSettingsSection: View {
    @Binding var currentTheme: AppTheme
    let colors: AIQuotaThemeColors

    var body: some View {
        SettingsSection(title: L10n.text("settings_theme_title"), colors: colors) {
            Picker(L10n.text("settings_theme_title"), selection: $currentTheme) {
                Text(L10n.text("settings_theme_macos")).tag(AppTheme.macOS)
                Text(L10n.text("settings_theme_windows")).tag(AppTheme.windows)
            }
            .pickerStyle(.segmented)
        }
    }
}

struct ConnectionManagementSection: View {
    let providerOrder: [ProviderId]
    let hiddenProviders: Set<ProviderId>
    let snapshots: [ProviderUsageSnapshot]
    let colors: AIQuotaThemeColors
    let onProviderHiddenChanged: (ProviderId, Bool) -> Void
    let onConnectProvider: (ProviderId) -> Void
    let onDisconnectProvider: (ProviderId) -> Void
    let onDisconnectAllProviders: () -> Void

    var body: some View {
            let rows = settingsConnectionRows(
            providerOrder: providerOrder,
            snapshots: snapshots,
            hiddenProviders: hiddenProviders
        )
        SettingsSection(title: L10n.text("settings_connection_management_title"), colors: colors) {
            Button(L10n.text("settings_disconnect_all_providers"), action: onDisconnectAllProviders)
                .buttonStyle(.borderedProminent)
                .disabled(!rows.contains(where: { $0.action == .disconnect }))
            ForEach(rows) { row in
                ProviderConnectionSettingsRow(
                    row: row,
                    colors: colors,
                    onHiddenChanged: { onProviderHiddenChanged(row.providerId, $0) },
                    onConnect: { onConnectProvider(row.providerId) },
                    onDisconnect: { onDisconnectProvider(row.providerId) }
                )
            }
        }
    }
}

struct ProviderConnectionSettingsRow: View {
    let row: SettingsProviderRow
    let colors: AIQuotaThemeColors
    let onHiddenChanged: (Bool) -> Void
    let onConnect: () -> Void
    let onDisconnect: () -> Void

    var body: some View {
        HStack(spacing: 12) {
            VStack(alignment: .leading, spacing: 3) {
                Text(row.displayName)
                    .font(.subheadline.weight(.semibold))
                    .foregroundStyle(AIQuotaDesignTokens.color(colors.textPrimary))
                Text(row.statusText)
                    .font(.caption)
                    .foregroundStyle(AIQuotaDesignTokens.color(colors.textMuted))
            }
            Spacer()
            Toggle(L10n.text("settings_provider_hidden"), isOn: hiddenBinding)
                .labelsHidden()
            Button(row.action == .connect ? L10n.text("provider_connect") : L10n.text("provider_disconnect")) {
                if row.action == .connect {
                    onConnect()
                } else {
                    onDisconnect()
                }
            }
            .buttonStyle(.bordered)
        }
        .accessibilityIdentifier("settings-provider-\(row.providerId.storageId)")
    }

    private var hiddenBinding: Binding<Bool> {
        Binding(get: { row.isHidden }, set: onHiddenChanged)
    }
}

struct SupportSettingsSection: View {
    let colors: AIQuotaThemeColors
    let onSendBugReport: (BugReportDraft) -> Void

    @State private var category: SettingsBugReportCategory = .login
    @State private var providerId: ProviderId?
    @State private var description = ""
    @State private var includeDiagnostics = true

    var body: some View {
        SettingsSection(title: L10n.text("settings_support_title"), colors: colors) {
            Picker(L10n.text("settings_bug_report_category"), selection: $category) {
                ForEach(SettingsBugReportCategory.allCases) { category in
                    Text(category.label).tag(category)
                }
            }
            Picker(L10n.text("settings_bug_report_provider"), selection: $providerId) {
                Text(L10n.text("settings_bug_report_provider_all")).tag(Optional<ProviderId>.none)
                ForEach(ProviderId.defaultOrder) { provider in
                    Text(provider.displayName).tag(Optional(provider))
                }
            }
            TextField(L10n.text("settings_bug_report_description"), text: $description, axis: .vertical)
                .lineLimit(3...6)
            Toggle(L10n.text("settings_bug_report_include_diagnostics"), isOn: $includeDiagnostics)
            Button(L10n.text("settings_bug_report_send")) {
                onSendBugReport(
                    BugReportDraft(
                        category: category,
                        providerId: providerId,
                        description: description,
                        includeDiagnostics: includeDiagnostics
                    )
                )
            }
            .buttonStyle(.borderedProminent)
        }
    }
}

struct SettingsProviderRow: Identifiable, Equatable {
    var id: String { providerId.storageId }
    let providerId: ProviderId
    let displayName: String
    let statusText: String
    let action: SettingsConnectionAction
    let isHidden: Bool
}

enum SettingsLiveRefreshState: Equatable {
    case running
    case stopped

    var label: String {
        switch self {
        case .running: return L10n.text("settings_live_refresh_status_running")
        case .stopped: return L10n.text("settings_live_refresh_status_stopped")
        }
    }
}

enum SettingsConnectionAction: Equatable {
    case connect
    case disconnect
}

enum SettingsBugReportCategory: String, CaseIterable, Identifiable {
    case login
    case usageCollection
    case widget
    case liveRefresh
    case other

    var id: String { rawValue }

    var label: String {
        switch self {
        case .login: return L10n.text("settings_bug_report_category_login")
        case .usageCollection: return L10n.text("settings_bug_report_category_usage")
        case .widget: return L10n.text("settings_bug_report_category_widget")
        case .liveRefresh: return L10n.text("settings_bug_report_category_live_refresh")
        case .other: return L10n.text("settings_bug_report_category_other")
        }
    }
}

struct BugReportDraft: Equatable {
    let category: SettingsBugReportCategory
    let providerId: ProviderId?
    let description: String
    let includeDiagnostics: Bool
}

func settingsLiveRefreshState(
    notificationEnabled: Bool,
    canPostNotifications: Bool,
    heartbeatStale: Bool
) -> SettingsLiveRefreshState {
    notificationEnabled && canPostNotifications && !heartbeatStale ? .running : .stopped
}

func settingsConnectionRows(
    providerOrder: [ProviderId],
    snapshots: [ProviderUsageSnapshot],
    hiddenProviders: Set<ProviderId>
) -> [SettingsProviderRow] {
    let snapshotsByProvider = snapshots.reduce(into: [ProviderId: ProviderUsageSnapshot]()) { result, snapshot in
        result[snapshot.providerId] = snapshot
    }
    return normalizedProviderOrder(providerOrder + ProviderId.defaultOrder).map { providerId in
        let snapshot = snapshotsByProvider[providerId]
        return SettingsProviderRow(
            providerId: providerId,
            displayName: providerId.displayName,
            statusText: settingsConnectionStatus(snapshot),
            action: settingsConnectionAction(snapshot),
            isHidden: hiddenProviders.contains(providerId)
        )
    }
}

func settingsConnectionAction(_ snapshot: ProviderUsageSnapshot?) -> SettingsConnectionAction {
    guard let snapshot else { return .connect }
    switch snapshot.connectionState {
    case .disconnected, .notConnected:
        return .connect
    case .connecting, .connected, .collecting, .stale, .interactiveAuthRequired, .unavailable, .error:
        return .disconnect
    }
}

func settingsConnectionStatus(_ snapshot: ProviderUsageSnapshot?) -> String {
    guard let snapshot else { return "Disconnected" }
    return providerDetailStatus(snapshot, isBusy: false)
}

func encodeProviderSet(_ providers: Set<ProviderId>) -> String {
    ProviderId.defaultOrder
        .filter { providers.contains($0) }
        .map(\.storageId)
        .joined(separator: ",")
}

func decodeProviderSet(_ value: String) -> Set<ProviderId> {
    Set(value.split(separator: ",").compactMap { ProviderId.fromStorageId(String($0)) })
}
