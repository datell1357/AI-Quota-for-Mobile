import Foundation
import SwiftUI

enum AppRoute: Equatable {
    case home
    case settings
    case providerDetail(ProviderId)
}

struct AIQuotaAppShell: View {
    @ObservedObject var snapshotStore: SnapshotStore
    @StateObject private var refreshOrchestrator: ProviderRefreshOrchestrator
    @StateObject private var notificationCoordinator: ProviderNotificationCoordinator
    @Environment(\.scenePhase) private var scenePhase
    @State private var route: AppRoute = .home
    @State private var currentTheme: AppTheme = .macOS
    @State private var notificationPermissionState: ProviderNotificationPermissionState
    @AppStorage("dashboard.providerOrder") private var storedProviderOrder: String = ""
    @AppStorage("settings.hiddenProviders") private var storedHiddenProviders: String = ""

    init(
        snapshotStore: SnapshotStore,
        refreshOrchestrator: ProviderRefreshOrchestrator? = nil,
        notificationCoordinator: ProviderNotificationCoordinator? = nil
    ) {
        self.snapshotStore = snapshotStore
        _refreshOrchestrator = StateObject(
            wrappedValue: refreshOrchestrator ?? ProviderRefreshOrchestrator(snapshotStore: snapshotStore)
        )
        let initialNotificationState = Self.initialNotificationPermissionStateFromLaunchArguments()
        _notificationCoordinator = StateObject(
            wrappedValue: notificationCoordinator ?? ProviderNotificationCoordinator(initialPermissionState: initialNotificationState)
        )
        _notificationPermissionState = State(initialValue: initialNotificationState)
    }

    var body: some View {
        let colors = AIQuotaDesignTokens.colors(for: currentTheme)

        VStack(spacing: 0) {
            AppTopBar(route: route, colors: colors) {
                route = .settings
            }
            AppNavigationBar(
                route: route,
                providerOrder: visibleProviderOrder,
                colors: colors,
                onRouteSelected: { route = $0 }
            )
            Divider()
            Group {
                switch route {
                case .home:
                    ProviderDashboardView(
                        providerOrder: visibleProviderOrder,
                        snapshots: visibleDashboardSnapshots,
                        colors: colors,
                        onProviderSelected: { route = .providerDetail($0) },
                        onConnectProvider: { route = .providerDetail($0) },
                        onReorderProvider: { providerId, targetIndex in
                            reorderProvider(providerId, to: targetIndex)
                        },
                        onAddWidget: { _ in }
                    )
                    .refreshable {
                        await refreshOrchestrator.refreshNow(providerIds: providerOrder, trigger: .manual)
                    }
                case .settings:
                    SettingsView(
                        currentTheme: $currentTheme,
                        providerOrder: providerOrder,
                        hiddenProviders: hiddenProviders,
                        snapshots: dashboardSnapshots,
                        colors: colors,
                        notificationPermissionState: notificationPermissionState,
                        onNotificationEnabledChanged: { enabled in
                            Task {
                                notificationPermissionState = await notificationCoordinator.handleNotificationToggle(
                                    enabled: enabled,
                                    snapshots: dashboardSnapshots
                                )
                            }
                        },
                        onProviderHiddenChanged: { providerId, hidden in
                            setProviderHidden(providerId, hidden: hidden)
                        },
                        onConnectProvider: { route = .providerDetail($0) },
                        onDisconnectProvider: { _ in },
                        onDisconnectAllProviders: { },
                        onSendBugReport: { _ in }
                    )
                case .providerDetail(let providerId):
                    ProviderDetailView(
                        snapshot: providerDetailSnapshot(for: providerId),
                        isBusy: refreshOrchestrator.isRefreshing(providerId),
                        colors: colors,
                        onConnect: { route = .providerDetail(providerId) },
                        onDisconnect: { },
                        onAddWidget: { }
                    )
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
        }
        .background(AIQuotaDesignTokens.color(colors.appBackground))
        .task {
            await refreshOrchestrator.refreshOnAppActive(providerIds: providerOrder)
        }
        .onChange(of: scenePhase) { _ in
            if scenePhase == .active {
                Task {
                    await refreshOrchestrator.refreshOnAppActive(providerIds: providerOrder)
                }
            }
        }
    }

    private var providerOrder: [ProviderId] {
        let storedOrder = storedProviderOrder
            .split(separator: ",")
            .compactMap { ProviderId.fromStorageId(String($0)) }
        return normalizedProviderOrder(storedOrder + ProviderId.defaultOrder)
    }

    private var dashboardSnapshots: [ProviderUsageSnapshot] {
        var mappedSnapshots: [ProviderId: ProviderUsageSnapshot] = [:]
        for provider in snapshotStore.providers {
            guard let providerId = ProviderId.fromStorageId(provider.providerId) else { continue }
            mappedSnapshots[providerId] = provider.dashboardSnapshot(providerId: providerId)
        }
        return providerOrder.map { mappedSnapshots[$0] ?? ProviderUsageSnapshot.disconnected($0) }
    }

    private var hiddenProviders: Set<ProviderId> {
        decodeProviderSet(storedHiddenProviders)
    }

    private var visibleProviderOrder: [ProviderId] {
        providerOrder.filter { !hiddenProviders.contains($0) }
    }

    private var visibleDashboardSnapshots: [ProviderUsageSnapshot] {
        dashboardSnapshots.filter { !hiddenProviders.contains($0.providerId) }
    }

    private func providerDetailSnapshot(for providerId: ProviderId) -> ProviderUsageSnapshot {
        dashboardSnapshots.first { $0.providerId == providerId } ?? ProviderUsageSnapshot.disconnected(providerId)
    }

    private func reorderProvider(_ providerId: ProviderId, to targetIndex: Int) {
        let hidden = hiddenProviders
        var visible = providerOrder.filter { !hidden.contains($0) && $0 != providerId }
        let boundedTargetIndex = min(max(targetIndex, 0), visible.count)
        visible.insert(providerId, at: boundedTargetIndex)

        var visibleIterator = visible.makeIterator()
        let reordered = providerOrder.map { current in
            hidden.contains(current) ? current : (visibleIterator.next() ?? current)
        }
        storedProviderOrder = reordered.map(\.storageId).joined(separator: ",")
    }

    private func setProviderHidden(_ providerId: ProviderId, hidden: Bool) {
        var nextHidden = hiddenProviders
        if hidden {
            nextHidden.insert(providerId)
        } else {
            nextHidden.remove(providerId)
        }
        storedHiddenProviders = encodeProviderSet(nextHidden)
    }

    private static func initialNotificationPermissionStateFromLaunchArguments() -> ProviderNotificationPermissionState {
        let arguments = ProcessInfo.processInfo.arguments
        if arguments.contains("-AIQuotaNotificationPermissionDenied") {
            return .denied
        }
        if arguments.contains("-AIQuotaNotificationPermissionGranted") {
            return .authorized
        }
        return .notDetermined
    }
}

struct AppTopBar: View {
    let route: AppRoute
    let colors: AIQuotaThemeColors
    let onSettingsClick: () -> Void

    var body: some View {
        HStack(spacing: 12) {
            Text(title)
                .font(.headline)
                .foregroundStyle(AIQuotaDesignTokens.color(colors.titleText))
            Spacer()
            Button(action: onSettingsClick) {
                Image(systemName: "gearshape")
            }
            .accessibilityLabel("Settings")
        }
        .padding(.horizontal, 16)
        .padding(.vertical, 12)
        .background(AIQuotaDesignTokens.color(colors.titleBar))
    }

    private var title: String {
        switch route {
        case .home:
            return L10n.text("app_name")
        case .settings:
            return L10n.text("nav_settings")
        case .providerDetail(let providerId):
            return providerId.displayName
        }
    }
}

struct AppNavigationBar: View {
    let route: AppRoute
    let providerOrder: [ProviderId]
    let colors: AIQuotaThemeColors
    let onRouteSelected: (AppRoute) -> Void

    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 8) {
                RouteChip(
                    label: L10n.text("nav_home"),
                    selected: route == .home,
                    colors: colors,
                    onClick: { onRouteSelected(.home) }
                )
                RouteChip(
                    label: L10n.text("nav_settings"),
                    selected: route == .settings,
                    colors: colors,
                    onClick: { onRouteSelected(.settings) }
                )
                ForEach(providerOrder) { providerId in
                    ProviderNavigationChip(
                        providerId: providerId,
                        selected: route == .providerDetail(providerId),
                        colors: colors,
                        onClick: { onRouteSelected(.providerDetail(providerId)) }
                    )
                }
            }
            .padding(.horizontal, 12)
            .padding(.vertical, 10)
        }
        .background(AIQuotaDesignTokens.color(colors.panel))
    }
}

struct RouteChip: View {
    let label: String
    let selected: Bool
    let colors: AIQuotaThemeColors
    let onClick: () -> Void

    var body: some View {
        Button(action: onClick) {
            Text(label)
                .font(.caption.weight(.semibold))
                .padding(.horizontal, 12)
                .padding(.vertical, 8)
                .frame(minHeight: 34)
        }
        .buttonStyle(.plain)
        .foregroundStyle(AIQuotaDesignTokens.color(colors.textPrimary))
        .background(AIQuotaDesignTokens.color(selected ? colors.selectedNav : colors.unselectedNav))
        .clipShape(RoundedRectangle(cornerRadius: 8))
    }
}

struct ProviderNavigationChip: View {
    let providerId: ProviderId
    let selected: Bool
    let colors: AIQuotaThemeColors
    let onClick: () -> Void

    var body: some View {
        RouteChip(
            label: providerId.displayName,
            selected: selected,
            colors: colors,
            onClick: onClick
        )
        .accessibilityLabel(providerId.displayName)
    }
}

private extension ProviderUsage {
    func dashboardSnapshot(providerId: ProviderId) -> ProviderUsageSnapshot {
        ProviderUsageSnapshot(
            providerId: providerId,
            displayName: displayName,
            connectionState: dashboardConnectionState,
            refreshState: .idle,
            planLabel: plan,
            updatedAt: dashboardDateFormatter.string(from: fetchedAt),
            message: errorMessage,
            lines: lines.map { $0.dashboardUsageLine() }
        )
    }

    private var dashboardConnectionState: ProviderConnectionState {
        switch status {
        case .ok:
            return lines.isEmpty ? .unavailable : .connected
        case .error:
            return lines.isEmpty ? .error : .connected
        case .unknown:
            return .unavailable
        }
    }
}

private extension UsageLine {
    func dashboardUsageLine() -> ProviderUsageLine {
        let percent = remainingPercent()
        return ProviderUsageLine(
            label: label,
            remainingPercent: percent,
            remainingText: displayValue,
            resetText: resetsAt.map { dashboardDateFormatter.string(from: $0) },
            severity: severity(for: percent),
            usedAmount: used,
            limitAmount: limit,
            remainingAmount: remaining,
            unit: format.kind,
            category: type,
            resetsAt: resetsAt.map { dashboardDateFormatter.string(from: $0) },
            sourceLabel: "Cached PC"
        )
    }

    private func remainingPercent() -> Float? {
        if format.kind.lowercased() == "percent", let remaining {
            return Float(min(max(remaining / 100, 0), 1))
        }
        guard let used, let limit, limit > 0 else { return nil }
        return Float(min(max((limit - used) / limit, 0), 1))
    }

    private func severity(for percent: Float?) -> UsageSeverity {
        guard let percent else { return .unknown }
        if percent <= 0.10 { return .danger }
        if percent <= 0.25 { return .warning }
        return .normal
    }
}

private let dashboardDateFormatter = ISO8601DateFormatter()
