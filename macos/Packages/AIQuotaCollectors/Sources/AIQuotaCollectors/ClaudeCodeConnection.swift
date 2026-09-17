import AIQuotaAuth
import AIQuotaCore
import CryptoKit
import Foundation

public enum ClaudeCodeSource: Equatable, Sendable {
    case file(String)
    case keychain(ExternalKeychainReference)
    public static let defaultKeychainService = "Claude Code-credentials"
    public func validate() throws {
        switch self {
        case .file(let path):
            guard path.hasPrefix("/"), URL(fileURLWithPath: path).lastPathComponent == ".credentials.json" else { throw CollectorError.unsupported }
        case .keychain(let reference):
            try reference.validate()
            guard reference.service.range(of: "^Claude Code-credentials(?:-[0-9a-f]{8})?$", options: .regularExpression) != nil else { throw CollectorError.unsupported }
        }
    }
    init(record: CredentialRecord) throws {
        guard record.provider == .claude, record.kind == .externalApplication, record.owner == .claudeCode else { throw CoreError.identityMismatch }
        if let reference = record.externalKeychain, record.externalLocator == nil { self = .keychain(reference) }
        else if let path = record.externalLocator, record.externalKeychain == nil { self = .file(path) }
        else { throw CollectorError.unsupported }
        try validate()
    }
}

struct ClaudeCodeSnapshot: Sendable, CustomStringConvertible, CustomDebugStringConvertible {
    let accessToken: String
    let fingerprint: Data
    var description: String { "ClaudeCodeSnapshot(redacted)" }
    var debugDescription: String { description }
    static func parse(_ data: Data, now: Date) throws -> Self {
        struct File: Decodable {
            struct OAuth: Decodable { let accessToken: String; let expiresAt: Double; let scopes: [String] }
            let claudeAiOauth: OAuth?
        }
        guard !data.isEmpty, data.count <= 1_048_576, let file = try? JSONDecoder().decode(File.self, from: data) else { throw CollectorError.invalidResponse }
        guard let oauth = file.claudeAiOauth, oauth.scopes.contains("user:profile") else { throw CollectorError.unsupported }
        guard !oauth.accessToken.isEmpty, oauth.accessToken.utf8.count <= 65_536,
              oauth.accessToken.unicodeScalars.allSatisfy({ (33...126).contains($0.value) }),
              oauth.expiresAt.isFinite, oauth.expiresAt > 0, oauth.expiresAt <= 253_402_300_799_000 else { throw CollectorError.invalidResponse }
        guard Date(timeIntervalSince1970: oauth.expiresAt / 1000) > now else { throw CollectorError.authenticationRequired }
        return Self(accessToken: oauth.accessToken, fingerprint: Data(SHA256.hash(data: data)))
    }
}

public struct ClaudeCodeConnection: Sendable {
    private let files: any CredentialFileReading
    private let keychain: any ExternalKeychainReading
    private let client: ClaudeOAuthClient
    private let now: @Sendable () -> Date
    public init(files: any CredentialFileReading = ReadOnlyCredentialFile(), keychain: any ExternalKeychainReading = ReadOnlyKeychainCredential(),
                client: ClaudeOAuthClient = ClaudeOAuthClient(), now: @escaping @Sendable () -> Date = { .now }) {
        self.files = files; self.keychain = keychain; self.client = client; self.now = now
    }
    public func verify(source: ClaudeCodeSource, accountID: UUID, expected: RemoteIdentity?, allowInteraction: Bool = false) async throws -> CredentialRecord {
        let snapshot = try await read(source, allowInteraction: allowInteraction)
        let output = try await client.collect(accessToken: snapshot.accessToken, expected: expected)
        try await validate(source, snapshot: snapshot)
        let path: String?, reference: ExternalKeychainReference?
        switch source { case .file(let selected): path = selected; reference = nil; case .keychain(let selected): path = nil; reference = selected }
        return try CredentialRecord(accountID: accountID, provider: .claude, identity: output.report.identity, kind: .externalApplication,
                                    owner: .claudeCode, externalLocator: path, externalKeychain: reference)
    }
    func read(_ source: ClaudeCodeSource, allowInteraction: Bool = false) async throws -> ClaudeCodeSnapshot {
        try source.validate(); try Task.checkCancellation()
        let data: Data
        do {
            switch source { case .file(let path): data = try await files.read(path: path)
            case .keychain(let reference): data = try await keychain.read(reference, allowInteraction: allowInteraction) }
        } catch AuthenticationError.cancelled { throw CancellationError() }
        catch is AuthenticationError { throw CollectorError.credentialsUnavailable }
        try Task.checkCancellation()
        return try ClaudeCodeSnapshot.parse(data, now: now())
    }
    func validate(_ source: ClaudeCodeSource, snapshot: ClaudeCodeSnapshot) async throws {
        let current = try await read(source)
        guard current.fingerprint == snapshot.fingerprint else { throw CoreError.staleAttempt }
    }
}
