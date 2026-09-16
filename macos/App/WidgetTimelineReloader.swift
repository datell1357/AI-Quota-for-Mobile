import AIQuotaCore
import WidgetKit

@MainActor final class WidgetTimelineReloader {
    private var previous: WidgetSnapshot?
    func reloadAffectedWidgets(snapshot: WidgetSnapshot) async throws {
        if let previous, previous.accounts == snapshot.accounts { return }
        let installed: [WidgetInfo] = try await withCheckedThrowingContinuation { continuation in
            WidgetCenter.shared.getCurrentConfigurations { continuation.resume(with: $0) }
        }
        let configurations = installed.compactMap { info -> WidgetReloadConfiguration? in
            guard let kind = WidgetKind(rawValue: info.kind) else { return nil }
            let ids: [String]?
            switch kind {
            case .provider: ids = info.widgetConfigurationIntent(of: ProviderWidgetIntent.self)?.selectedIDs
            case .dashboardFour: ids = info.widgetConfigurationIntent(of: DashboardFourIntent.self)?.selectedIDs
            case .dashboardSix: ids = info.widgetConfigurationIntent(of: DashboardSixIntent.self)?.selectedIDs
            case .batteryTwo: ids = info.widgetConfigurationIntent(of: BatteryTwoIntent.self)?.selectedIDs
            case .batteryFour: ids = info.widgetConfigurationIntent(of: BatteryFourIntent.self)?.selectedIDs
            case .batterySix: ids = info.widgetConfigurationIntent(of: BatterySixIntent.self)?.selectedIDs
            }
            return WidgetReloadConfiguration(kind: kind, selectedIDs: ids)
        }
        let kinds = try WidgetReloadPlanner.kinds(previous: previous, current: snapshot, configurations: configurations)
        for kind in kinds { WidgetCenter.shared.reloadTimelines(ofKind: kind.rawValue) }
        previous = snapshot
    }
}
