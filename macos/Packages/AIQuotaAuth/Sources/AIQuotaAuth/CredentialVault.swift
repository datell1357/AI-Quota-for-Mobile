import AIQuotaCore
import Foundation
import LocalAuthentication
import Security

public enum AuthenticationError: Error, Equatable, Sendable {
    case invalidCredential, unsupportedSchema, missingCredential, duplicateCredential
    case interactionRequired, storage(Int32), cancelled, loginInProgress, externalOwner
}
public enum CredentialKind: String, Codable, Sendable { case oauth, webSession, apiKey, externalApplication }

/// Secret-bearing records belong only in the host Keychain. Do not place them in SQLite/UserDefaults/App Groups.
public struct CredentialRecord: Codable, Sendable, CustomStringConvertible, CustomDebugStringConvertible {
    public let schemaVersion: Int
    public let accountID: UUID
    public let provider: ProviderID
    public let identity: RemoteIdentity
    public let kind: CredentialKind
    public let owner: CredentialOwner
    public let secret: String?
    public let refreshToken: String?
    public let expiresAt: Date?
    public let webProfileID: UUID?
    public let externalLocator: String?
    public var description: String { "CredentialRecord(redacted)" }
    public var debugDescription: String { description }

    public init(accountID: UUID, provider: ProviderID, identity: RemoteIdentity, kind: CredentialKind,
                owner: CredentialOwner = .aiQuota, secret: String? = nil, refreshToken: String? = nil,
                expiresAt: Date? = nil, webProfileID: UUID? = nil, externalLocator: String? = nil) throws {
        schemaVersion = 1; self.accountID = accountID; self.provider = provider; self.identity = identity
        self.kind = kind; self.owner = owner; self.secret = secret; self.refreshToken = refreshToken
        self.expiresAt = expiresAt; self.webProfileID = webProfileID; self.externalLocator = externalLocator
        try validate()
    }
    public func validate() throws {
        guard schemaVersion == 1 else { throw AuthenticationError.unsupportedSchema }
        for value in [secret, refreshToken].compactMap({ $0 }) {
            guard !value.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty, value.utf8.count <= 512 * 1_024 else {
                throw AuthenticationError.invalidCredential
            }
        }
        if let expiresAt, !(-62_135_596_800...253_402_300_799).contains(expiresAt.timeIntervalSince1970) {
            throw AuthenticationError.invalidCredential
        }
        switch kind {
        case .oauth:
            guard owner == .aiQuota, secret != nil, webProfileID == nil, externalLocator == nil else { throw AuthenticationError.invalidCredential }
        case .apiKey:
            guard owner == .aiQuota, secret != nil, refreshToken == nil, webProfileID == nil, externalLocator == nil else { throw AuthenticationError.invalidCredential }
        case .webSession:
            guard owner == .aiQuota, secret != nil || webProfileID != nil, refreshToken == nil, externalLocator == nil else { throw AuthenticationError.invalidCredential }
        case .externalApplication:
            guard owner != .aiQuota, secret == nil, refreshToken == nil, webProfileID == nil,
                  externalLocator?.hasPrefix("/") == true else { throw AuthenticationError.invalidCredential }
        }
    }
    public var authenticationMethod: AuthenticationMethod {
        switch kind { case .oauth: .oauth; case .webSession: .webSession; case .apiKey: .apiKey; case .externalApplication: .localApplication }
    }
}

public protocol CredentialVault: Sendable {
    func create(_ record: CredentialRecord, reference: UUID) async throws
    func read(_ reference: UUID) async throws -> CredentialRecord
    func remove(_ reference: UUID) async throws
}

/// Stable service name across releases. The widget has no shared Keychain access group.
/// Authentication UI is forbidden here; a locked/denied Keychain becomes an explicit host state.
public actor KeychainCredentialVault: CredentialVault {
    public static let service = "com.aiquota.macos.credentials.v1"
    private let service: String
    public init(service: String = KeychainCredentialVault.service) { self.service = service }

    public func create(_ record: CredentialRecord, reference: UUID) throws {
        try record.validate()
        let data = try JSONEncoder().encode(record)
        guard data.count <= 1_048_576 else { throw AuthenticationError.invalidCredential }
        var query = base(reference)
        query[kSecValueData as String] = data
        query[kSecAttrAccessible as String] = kSecAttrAccessibleAfterFirstUnlockThisDeviceOnly
        query[kSecAttrSynchronizable as String] = false
        query[kSecAttrLabel as String] = "AI Quota account credential"
        try check(SecItemAdd(query as CFDictionary, nil))
    }
    public func read(_ reference: UUID) throws -> CredentialRecord {
        var query = base(reference)
        query[kSecReturnData as String] = true; query[kSecMatchLimit as String] = kSecMatchLimitOne
        var result: CFTypeRef?
        try check(SecItemCopyMatching(query as CFDictionary, &result))
        guard let data = result as? Data, data.count <= 1_048_576 else { throw AuthenticationError.invalidCredential }
        let record: CredentialRecord
        do { record = try JSONDecoder().decode(CredentialRecord.self, from: data) }
        catch { throw AuthenticationError.invalidCredential }
        try record.validate()
        return record
    }
    public func remove(_ reference: UUID) throws {
        let status = SecItemDelete(base(reference) as CFDictionary)
        if status != errSecItemNotFound { try check(status) }
    }
    private func base(_ reference: UUID) -> [String: Any] {
        let context = LAContext()
        context.interactionNotAllowed = true
        return [kSecClass as String: kSecClassGenericPassword, kSecAttrService as String: service,
                kSecAttrAccount as String: reference.uuidString, kSecUseAuthenticationContext as String: context]
    }
    private func check(_ status: OSStatus) throws {
        switch status {
        case errSecSuccess: return
        case errSecItemNotFound: throw AuthenticationError.missingCredential
        case errSecDuplicateItem: throw AuthenticationError.duplicateCredential
        case errSecInteractionNotAllowed, errSecAuthFailed: throw AuthenticationError.interactionRequired
        default: throw AuthenticationError.storage(status)
        }
    }
}
