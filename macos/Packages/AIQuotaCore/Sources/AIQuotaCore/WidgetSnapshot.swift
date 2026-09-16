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

/// Single host writer, bound to the current account authority. Revisions are local to that
/// database; a previous installation's file is a rebuildable projection, not an authority.
/// Widget extensions only use read(from:), without opening the account database.
public actor SnapshotFileStore {
    private let url: URL
    private let repository: AccountRepository
    private var lastPublished: WidgetSnapshot?
    public init(url: URL, repository: AccountRepository) { self.url = url; self.repository = repository }

    /// The exact projection most recently published, without another shared-container file read.
    public func publishedSnapshot() -> WidgetSnapshot? { lastPublished }

    /// Read inside the publisher rather than accepting a potentially queued, obsolete projection.
    /// On startup the current database can replace a cache left by a restored/recreated database.
    @discardableResult
    public func publish(now: Date = .now) async throws -> Bool {
        try Task.checkCancellation()
        let snapshot = try await repository.displaySnapshot(now: now)
        try Task.checkCancellation()
        try snapshot.validate()
        if let lastPublished {
            // Actor reentrancy may resume an earlier repository read after a later publication.
            guard snapshot.revision >= lastPublished.revision else { throw CoreError.staleAttempt }
            if snapshot.revision == lastPublished.revision, snapshot.accounts != lastPublished.accounts {
                throw CoreError.invalidSnapshot
            }
        }
        var needsBackup = false
        if FileManager.default.fileExists(atPath: url.path) {
            do {
                let previous = try Self.read(from: url)
                if snapshot.revision == previous.revision, snapshot.accounts == previous.accounts {
                    lastPublished = snapshot
                    return false
                }
                needsBackup = previous.revision >= snapshot.revision
            } catch let error as CoreError {
                if case .unsupportedSnapshot = error { throw error }
                needsBackup = true
            } catch is DecodingError {
                needsBackup = true
            }
        }
        try FileManager.default.createDirectory(at: url.deletingLastPathComponent(), withIntermediateDirectories: true)
        if needsBackup {
            let backup = url.appendingPathExtension("before-rebuild-\(UUID().uuidString).json")
            try FileManager.default.copyItem(at: url, to: backup)
        }
        let encoder = JSONEncoder(); encoder.outputFormatting = [.sortedKeys]
        try encoder.encode(snapshot).write(to: url, options: .atomic)
        lastPublished = snapshot
        return true
    }

    public nonisolated static func read(from url: URL) throws -> WidgetSnapshot {
        let data = try Data(contentsOf: url)
        let decoder = JSONDecoder()
        // Recognize a newer schema before decoding fields that a later version may have changed.
        let header = try decoder.decode(SchemaHeader.self, from: data)
        guard header.schemaVersion == WidgetSnapshot.currentSchema else {
            throw CoreError.unsupportedSnapshot(header.schemaVersion)
        }
        let snapshot = try decoder.decode(WidgetSnapshot.self, from: data)
        try snapshot.validate()
        return snapshot
    }

    private struct SchemaHeader: Decodable { let schemaVersion: Int }
}
