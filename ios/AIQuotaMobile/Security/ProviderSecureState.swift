import Foundation
import Security
import WebKit

enum ProviderSecretKind: String, CaseIterable {
    case accessToken = "access_token"
    case refreshToken = "refresh_token"
    case oauthState = "oauth_state"
    case pkceVerifier = "pkce_verifier"
    case nativeAPICredential = "native_api_credential"
    case webProfileMetadata = "web_profile_metadata"
}

struct ProviderSecretDescriptor: Equatable {
    let providerId: ProviderId
    let kind: ProviderSecretKind

    var keychainAccount: String {
        "provider.\(providerId.storageId).\(kind.rawValue)"
    }
}

enum ProviderSecretStoreError: Error, Equatable {
    case unexpectedItemType
    case unhandledStatus(OSStatus)
}

protocol ProviderSecretStore {
    func save(_ data: Data, providerId: ProviderId, kind: ProviderSecretKind) throws
    func load(providerId: ProviderId, kind: ProviderSecretKind) throws -> Data?
    func delete(providerId: ProviderId, kind: ProviderSecretKind) throws
}

final class KeychainProviderSecretStore: ProviderSecretStore {
    private let service: String

    init(service: String = Bundle.main.bundleIdentifier ?? "com.aiquota.mobile.provider-secrets") {
        self.service = service
    }

    func save(_ data: Data, providerId: ProviderId, kind: ProviderSecretKind) throws {
        let descriptor = ProviderSecretDescriptor(providerId: providerId, kind: kind)
        let base = baseQuery(for: descriptor)
        SecItemDelete(base as CFDictionary)

        var query = base
        query[kSecValueData as String] = data
        query[kSecAttrAccessible as String] = kSecAttrAccessibleAfterFirstUnlockThisDeviceOnly

        let status = SecItemAdd(query as CFDictionary, nil)
        guard status == errSecSuccess else {
            throw ProviderSecretStoreError.unhandledStatus(status)
        }
    }

    func load(providerId: ProviderId, kind: ProviderSecretKind) throws -> Data? {
        let descriptor = ProviderSecretDescriptor(providerId: providerId, kind: kind)
        var query = baseQuery(for: descriptor)
        query[kSecReturnData as String] = true
        query[kSecMatchLimit as String] = kSecMatchLimitOne

        var result: CFTypeRef?
        let status = SecItemCopyMatching(query as CFDictionary, &result)
        if status == errSecItemNotFound {
            return nil
        }
        guard status == errSecSuccess else {
            throw ProviderSecretStoreError.unhandledStatus(status)
        }
        guard let data = result as? Data else {
            throw ProviderSecretStoreError.unexpectedItemType
        }
        return data
    }

    func delete(providerId: ProviderId, kind: ProviderSecretKind) throws {
        let descriptor = ProviderSecretDescriptor(providerId: providerId, kind: kind)
        let status = SecItemDelete(baseQuery(for: descriptor) as CFDictionary)
        guard status == errSecSuccess || status == errSecItemNotFound else {
            throw ProviderSecretStoreError.unhandledStatus(status)
        }
    }

    private func baseQuery(for descriptor: ProviderSecretDescriptor) -> [String: Any] {
        [
            kSecClass as String: kSecClassGenericPassword,
            kSecAttrService as String: service,
            kSecAttrAccount as String: descriptor.keychainAccount
        ]
    }
}

struct ProviderWebSessionProfile: Equatable {
    let providerId: ProviderId
    let identifier: UUID

    var storageName: String {
        "aiquota.web.\(providerId.storageId).\(identifier.uuidString.lowercased())"
    }

    static func profile(for providerId: ProviderId) -> ProviderWebSessionProfile {
        ProviderWebSessionProfile(
            providerId: providerId,
            identifier: stableIdentifiers[providerId]!
        )
    }

    @available(iOS 17.0, *)
    func makeWebsiteDataStore() -> WKWebsiteDataStore {
        WKWebsiteDataStore(forIdentifier: identifier)
    }

    @available(iOS 17.0, *)
    func removeWebsiteDataStore(completionHandler: @escaping () -> Void) {
        WKWebsiteDataStore.remove(forIdentifier: identifier, completionHandler: completionHandler)
    }

    private static let stableIdentifiers: [ProviderId: UUID] = [
        .claude: UUID(uuidString: "4E7E4A4A-450B-4B42-97D5-85F77D0D4E11")!,
        .codex: UUID(uuidString: "A6E1D2EE-BA30-4B5A-8CE8-C4B18CDB30AA")!,
        .gemini: UUID(uuidString: "D42D4F51-AE0C-47D0-8E8B-7178B6BC6E12")!,
        .copilot: UUID(uuidString: "5ED55F25-7BB8-4EDB-9407-F0AA6A2F6501")!,
        .antigravity: UUID(uuidString: "208D4D7E-42D1-4ED8-BB73-C0B22D28C2C5")!,
        .cursor: UUID(uuidString: "B5E36D6C-2963-4E49-B824-09F8583EBD67")!
    ]
}

struct SanitizedWidgetUsageLine: Codable, Equatable {
    let label: String
    let remainingPercent: Float?
    let remainingText: String
    let resetText: String?
    let severity: UsageSeverity
    let key: String

    init(_ line: ProviderUsageLine) {
        self.label = line.label
        self.remainingPercent = line.remainingPercent
        self.remainingText = line.remainingText
        self.resetText = line.resetText
        self.severity = line.severity
        self.key = line.key
    }
}

struct SanitizedWidgetProviderSnapshot: Codable, Equatable {
    let providerId: ProviderId
    let displayName: String
    let connectionState: ProviderConnectionState
    let refreshState: ProviderRefreshState
    let planLabel: String?
    let accountDisplay: String?
    let updatedAt: String
    let message: String?
    let lines: [SanitizedWidgetUsageLine]

    init(_ snapshot: ProviderUsageSnapshot) {
        self.providerId = snapshot.providerId
        self.displayName = snapshot.displayName
        self.connectionState = snapshot.connectionState
        self.refreshState = snapshot.refreshState
        self.planLabel = snapshot.planLabel
        self.accountDisplay = snapshot.account
        self.updatedAt = snapshot.updatedAt
        self.message = snapshot.message
        self.lines = snapshot.lines.map(SanitizedWidgetUsageLine.init)
    }
}

struct ProviderWidgetCacheEnvelope: Codable, Equatable {
    static let currentSchemaVersion = 1

    let schemaVersion: Int
    let generatedAt: String
    let providers: [SanitizedWidgetProviderSnapshot]

    init(
        generatedAt: String = ISO8601DateFormatter().string(from: Date()),
        providers: [SanitizedWidgetProviderSnapshot]
    ) {
        self.schemaVersion = Self.currentSchemaVersion
        self.generatedAt = generatedAt
        self.providers = providers
    }
}

enum ProviderWidgetSnapshotSanitizer {
    static func sanitize(_ snapshots: [ProviderUsageSnapshot]) -> [SanitizedWidgetProviderSnapshot] {
        snapshots.map(SanitizedWidgetProviderSnapshot.init)
    }

    static func envelope(for snapshots: [ProviderUsageSnapshot]) -> ProviderWidgetCacheEnvelope {
        ProviderWidgetCacheEnvelope(providers: sanitize(snapshots))
    }
}

final class AppGroupWidgetSnapshotStore {
    static let appGroupIdentifier = "group.com.aiquota.mobile"
    static let fileName = "provider-widget-cache.json"

    private let fileManager: FileManager
    private let encoder: JSONEncoder
    private let decoder: JSONDecoder

    init(
        fileManager: FileManager = .default,
        encoder: JSONEncoder = JSONEncoder(),
        decoder: JSONDecoder = JSONDecoder()
    ) {
        self.fileManager = fileManager
        self.encoder = encoder
        self.decoder = decoder
    }

    func write(_ snapshots: [ProviderUsageSnapshot]) throws {
        let envelope = ProviderWidgetCacheEnvelope(
            providers: ProviderWidgetSnapshotSanitizer.sanitize(snapshots)
        )
        let data = try encoder.encode(envelope)
        try data.write(to: cacheURL(), options: [.atomic])
    }

    func read() throws -> ProviderWidgetCacheEnvelope? {
        let url = try cacheURL()
        guard fileManager.fileExists(atPath: url.path) else { return nil }
        let data = try Data(contentsOf: url)
        return try decoder.decode(ProviderWidgetCacheEnvelope.self, from: data)
    }

    private func cacheURL() throws -> URL {
        guard let container = fileManager.containerURL(
            forSecurityApplicationGroupIdentifier: Self.appGroupIdentifier
        ) else {
            throw CocoaError(.fileNoSuchFile)
        }
        return container.appendingPathComponent(Self.fileName, isDirectory: false)
    }
}
