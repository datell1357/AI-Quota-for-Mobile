import Foundation

public enum WidgetSize: String, CaseIterable, Sendable { case small, medium, large }
public enum WidgetPresentationError: Error, Equatable, Sendable { case unsupportedSize, invalidAccountID }

extension WidgetKind {
    public var sizes: [WidgetSize] {
        switch self {
        case .provider: [.small, .medium, .large]
        case .batteryTwo: [.small]
        case .dashboardFour, .batteryFour: [.medium]
        case .dashboardSix, .batterySix: [.large]
        }
    }
    public var isBattery: Bool { self == .batteryTwo || self == .batteryFour || self == .batterySix }
}

/// A slot keeps its selected ID even when the account is deleted or a snapshot is unavailable.
public struct WidgetAccountSlot: Identifiable, Equatable, Sendable {
    public let id: UUID
    public let account: DisplayAccount?
    public var metrics: [UsageMetric] {
        guard let account, account.state != .disconnected, account.state != .connecting else { return [] }
        return account.metrics
    }
    public var representative: UsageMetric? { metrics.first }
    public func isStale(at date: Date) -> Bool {
        guard let account, let fetched = account.fetchedAt else { return true }
        return account.state != .connected || date.timeIntervalSince(fetched) >= 300 || fetched > date.addingTimeInterval(30)
    }
}

/// Pure display projection shared by the actual extension and its tests; it performs no collection.
public struct WidgetPresentation: Equatable, Sendable {
    public let kind: WidgetKind
    public let size: WidgetSize
    public let revision: Int64?
    public let slots: [WidgetAccountSlot]
    public let snapshotAvailable: Bool

    public init(kind: WidgetKind, size: WidgetSize, selectedIDs: [String], snapshot: WidgetSnapshot?) throws {
        guard kind.sizes.contains(size) else { throw WidgetPresentationError.unsupportedSize }
        let ids = try selectedIDs.map { raw in
            guard let id = UUID(uuidString: raw) else { throw WidgetPresentationError.invalidAccountID }
            return id
        }
        let selection = try WidgetSelection(kind: kind, accountIDs: ids)
        let resolved = try snapshot.map { try selection.resolve(in: $0) } ?? ids.map { _ in nil }
        self.kind = kind; self.size = size; self.revision = snapshot?.revision
        self.slots = zip(ids, resolved).map { WidgetAccountSlot(id: $0, account: $1) }
        self.snapshotAvailable = snapshot != nil
    }
}
