import Foundation

/// The extension receives no remote subject, session details or credential references.
public struct DisplayAccount: Codable, Equatable, Identifiable, Sendable {
    public let id: UUID
    public let provider: ProviderID
    public let alias: String
    public let isHidden: Bool
    public let state: ConnectionState
    public let plan: String?
    public let fetchedAt: Date?
    public let metrics: [UsageMetric]

    public init(id: UUID, provider: ProviderID, alias: String, isHidden: Bool, state: ConnectionState,
                plan: String?, fetchedAt: Date?, metrics: [UsageMetric]) {
        self.id = id; self.provider = provider; self.alias = alias; self.isHidden = isHidden
        self.state = state; self.plan = plan; self.fetchedAt = fetchedAt; self.metrics = metrics
    }
}

public struct WidgetSnapshot: Codable, Equatable, Sendable {
    public static let currentSchema = 1
    public let schemaVersion: Int
    public let revision: Int64
    public let writtenAt: Date
    public let accounts: [DisplayAccount]

    public init(revision: Int64, writtenAt: Date, accounts: [DisplayAccount]) {
        self.schemaVersion = Self.currentSchema; self.revision = revision
        self.writtenAt = writtenAt; self.accounts = accounts
    }

    public func validate() throws {
        guard schemaVersion == Self.currentSchema else { throw CoreError.unsupportedSnapshot(schemaVersion) }
        guard revision >= 0, Set(accounts.map(\.id)).count == accounts.count,
              writtenAt.timeIntervalSince1970.isFinite else { throw CoreError.invalidSnapshot }
    }
}

public enum WidgetKind: String, Codable, CaseIterable, Sendable {
    case provider, dashboardFour, dashboardSix, batteryTwo, batteryFour, batterySix
    public var capacity: Int {
        switch self {
        case .provider: 1
        case .batteryTwo: 2
        case .dashboardFour, .batteryFour: 4
        case .dashboardSix, .batterySix: 6
        }
    }
}

public struct WidgetSelection: Codable, Equatable, Sendable {
    public let instanceID: UUID
    public let kind: WidgetKind
    public let accountIDs: [UUID]

    public init(instanceID: UUID = UUID(), kind: WidgetKind, accountIDs: [UUID]) throws {
        guard accountIDs.count <= kind.capacity else { throw CoreError.widgetCapacity(kind.capacity) }
        guard Set(accountIDs).count == accountIDs.count else { throw CoreError.duplicateSelection }
        self.instanceID = instanceID; self.kind = kind; self.accountIDs = accountIDs
    }

    /// Keep every selected position, including missing/disconnected accounts. Never substitute another account.
    public func resolve(in snapshot: WidgetSnapshot) throws -> [DisplayAccount?] {
        try snapshot.validate()
        let indexed = Dictionary(uniqueKeysWithValues: snapshot.accounts.map { ($0.id, $0) })
        return accountIDs.map { indexed[$0] }
    }

    enum CodingKeys: CodingKey { case instanceID, kind, accountIDs }
    public init(from decoder: any Decoder) throws {
        let c = try decoder.container(keyedBy: CodingKeys.self)
        try self.init(instanceID: c.decode(UUID.self, forKey: .instanceID), kind: c.decode(WidgetKind.self, forKey: .kind),
                      accountIDs: c.decode([UUID].self, forKey: .accountIDs))
    }
}

/// Single host writer. Widget extensions only use read(from:).
public actor SnapshotFileStore {
    private let url: URL
    public init(url: URL) { self.url = url }

    @discardableResult
    public func write(_ snapshot: WidgetSnapshot) throws -> Bool {
        try snapshot.validate()
        if FileManager.default.fileExists(atPath: url.path) {
            let previous = try Self.read(from: url)
            guard snapshot.revision >= previous.revision else { throw CoreError.staleAttempt }
            if snapshot.revision == previous.revision {
                guard snapshot.accounts == previous.accounts else { throw CoreError.invalidSnapshot }
                return false
            }
        }
        try FileManager.default.createDirectory(at: url.deletingLastPathComponent(), withIntermediateDirectories: true)
        let encoder = JSONEncoder(); encoder.outputFormatting = [.sortedKeys]
        try encoder.encode(snapshot).write(to: url, options: .atomic)
        return true
    }

    public nonisolated static func read(from url: URL) throws -> WidgetSnapshot {
        let snapshot = try JSONDecoder().decode(WidgetSnapshot.self, from: Data(contentsOf: url))
        try snapshot.validate()
        return snapshot
    }
}
