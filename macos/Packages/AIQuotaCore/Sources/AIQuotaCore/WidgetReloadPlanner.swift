import Foundation

public struct WidgetReloadConfiguration: Sendable {
    public let kind: WidgetKind
    public let selectedIDs: [String]?
    public init(kind: WidgetKind, selectedIDs: [String]?) { self.kind = kind; self.selectedIDs = selectedIDs }
}

public enum WidgetReloadPlanner {
    public static func kinds(previous: WidgetSnapshot?, current: WidgetSnapshot,
                             configurations: [WidgetReloadConfiguration]) throws -> Set<WidgetKind> {
        try current.validate()
        guard let previous else { return Set(configurations.map(\.kind)) }
        try previous.validate()
        let old = Dictionary(uniqueKeysWithValues: previous.accounts.map { ($0.id, $0) })
        let new = Dictionary(uniqueKeysWithValues: current.accounts.map { ($0.id, $0) })
        let changed = Set(old.keys).union(new.keys).filter { old[$0] != new[$0] }
        guard !changed.isEmpty else { return [] }
        return Set(configurations.compactMap { configuration in
            // Some OS versions may fail to deserialize an intent. Reload only that installed kind.
            guard let rawIDs = configuration.selectedIDs else { return configuration.kind }
            let ids = rawIDs.compactMap(UUID.init(uuidString:))
            guard ids.count == rawIDs.count else { return configuration.kind }
            return changed.isDisjoint(with: ids) ? nil : configuration.kind
        })
    }
}
