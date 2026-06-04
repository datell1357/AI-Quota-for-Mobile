import Foundation

enum AIQuotaWidgetSurfaceFamily {
    case small
    case medium
    case large
}

enum AIQuotaWidgetSurfacePolicy {
    static func dashboardProviderLimit(for family: AIQuotaWidgetSurfaceFamily) -> Int {
        switch family {
        case .small:
            return 1
        case .medium:
            return 3
        case .large:
            return 6
        }
    }

    static func providerFocusedSnapshot(
        from snapshots: [SanitizedWidgetProviderSnapshot]
    ) -> SanitizedWidgetProviderSnapshot? {
        snapshots.sorted(by: isHigherPriority).first
    }

    private static func isHigherPriority(
        _ lhs: SanitizedWidgetProviderSnapshot,
        _ rhs: SanitizedWidgetProviderSnapshot
    ) -> Bool {
        if priorityRank(lhs) != priorityRank(rhs) {
            return priorityRank(lhs) < priorityRank(rhs)
        }
        return lowestRemaining(lhs) < lowestRemaining(rhs)
    }

    private static func priorityRank(_ snapshot: SanitizedWidgetProviderSnapshot) -> Int {
        switch snapshot.connectionState {
        case .error, .interactiveAuthRequired, .unavailable:
            return 0
        case .stale:
            return 1
        case .connected, .collecting:
            return 2
        case .disconnected, .notConnected, .connecting:
            return 3
        }
    }

    private static func lowestRemaining(_ snapshot: SanitizedWidgetProviderSnapshot) -> Float {
        snapshot.lines.compactMap(\.remainingPercent).min() ?? 1
    }
}
