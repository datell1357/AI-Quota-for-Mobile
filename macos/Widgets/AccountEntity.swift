import AIQuotaCore
import AppIntents
import Foundation

struct WidgetAccountEntity: AppEntity {
    static let typeDisplayRepresentation: TypeDisplayRepresentation = "Account"
    static let defaultQuery = WidgetAccountQuery()
    let id: String
    let alias: String
    let providerName: String
    var displayRepresentation: DisplayRepresentation {
        DisplayRepresentation(title: "\(alias)", subtitle: "\(providerName)")
    }
    init(account: DisplayAccount) {
        id = account.id.uuidString; alias = account.alias; providerName = account.provider.displayName
    }
    init(missingID: String) {
        id = missingID; alias = String(localized: "Unavailable account"); providerName = ""
    }
}

struct WidgetAccountQuery: EntityStringQuery {
    // Injected only by local verification. System queries use the signed shared snapshot path.
    var snapshot: WidgetSnapshot?
    func entities(for identifiers: [String]) async throws -> [WidgetAccountEntity] {
        // A damaged/unavailable shared file must not make the system discard saved identifiers.
        // The timeline reports the read error; entity resolution retains placeholder IDs.
        let accounts = (try? currentSnapshot())?.accounts ?? []
        let byID = Dictionary(uniqueKeysWithValues: accounts.map { ($0.id.uuidString, $0) })
        // Returning a placeholder preserves the configuration instead of silently dropping an ID.
        return identifiers.map { raw in
            let canonical = UUID(uuidString: raw)?.uuidString ?? raw
            return byID[canonical].map(WidgetAccountEntity.init) ?? WidgetAccountEntity(missingID: raw)
        }
    }
    func suggestedEntities() async throws -> [WidgetAccountEntity] {
        try currentSnapshot()?.accounts.map(WidgetAccountEntity.init) ?? []
    }
    func entities(matching string: String) async throws -> [WidgetAccountEntity] {
        try await suggestedEntities().filter {
            $0.alias.localizedStandardContains(string) || $0.providerName.localizedStandardContains(string)
        }
    }
    private func currentSnapshot() throws -> WidgetSnapshot? {
        if let snapshot { try snapshot.validate(); return snapshot }
        return try WidgetSnapshotReader.read()
    }
}

enum WidgetSnapshotReader {
    static func read() throws -> WidgetSnapshot? {
        guard let url = SharedPaths.snapshotURL, FileManager.default.fileExists(atPath: url.path) else { return nil }
        return try SnapshotFileStore.read(from: url)
    }
}
