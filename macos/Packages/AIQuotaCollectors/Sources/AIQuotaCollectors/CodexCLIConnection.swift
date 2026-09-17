import AIQuotaAuth
import AIQuotaCore
import CryptoKit
import Foundation

/// Claims are only a candidate identity until the service accepts this exact, unchanged access JWT.
/// id_token, refresh_token, email and local account labels never establish the collected identity.
struct CodexCLISnapshot: Sendable, CustomStringConvertible, CustomDebugStringConvertible {
    let accessToken: String
    let identity: RemoteIdentity
    let fingerprint: Data
    var description: String { "CodexCLISnapshot(redacted)" }
    var debugDescription: String { description }
    static func parse(_ data: Data, now: Date) throws -> Self {
        struct AuthFile: Decodable {
            struct Tokens: Decodable { let access_token: String; let account_id: String? }
            let auth_mode: String?; let OPENAI_API_KEY: String?; let tokens: Tokens?
            let personal_access_token: String?
        }
        guard !data.isEmpty, data.count <= 1_048_576,
              let file = try? JSONDecoder().decode(AuthFile.self, from: data) else { throw CollectorError.invalidResponse }
        guard file.auth_mode == nil || file.auth_mode == "chatgpt", file.OPENAI_API_KEY == nil,
              file.personal_access_token == nil, let tokens = file.tokens else { throw CollectorError.unsupported }
        let token = tokens.access_token, parts = token.split(separator: ".", omittingEmptySubsequences: false)
        guard token.utf8.count <= 65_536, parts.count == 3, parts.allSatisfy({ !$0.isEmpty }),
              token.unicodeScalars.allSatisfy({ CharacterSet(charactersIn: "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_.").contains($0) }) else { throw CollectorError.invalidResponse }
        func decode<T: Decodable>(_ segment: Substring, as type: T.Type) throws -> T {
            let text = String(segment).replacingOccurrences(of: "-", with: "+").replacingOccurrences(of: "_", with: "/")
            guard let bytes = Data(base64Encoded: text + String(repeating: "=", count: (4 - text.count % 4) % 4)),
                  let value = try? JSONDecoder().decode(T.self, from: bytes) else { throw CollectorError.invalidResponse }
            return value
        }
        struct Header: Decodable { let alg: String }
        struct Claims: Decodable {
            struct Scope: Decodable {
                let chatgpt_user_id: String?; let user_id: String?; let chatgpt_account_id: String
                let chatgpt_account_is_fedramp: Bool?
            }
            let exp: Int64; let iss: String; let auth: Scope
            enum CodingKeys: String, CodingKey { case exp, iss; case auth = "https://api.openai.com/auth" }
        }
        guard try decode(parts[0], as: Header.self).alg == "RS256" else { throw CollectorError.unsupported }
        let claims = try decode(parts[1], as: Claims.self)
        guard ["https://auth.openai.com", "https://auth.openai.com/"].contains(claims.iss),
              claims.auth.chatgpt_account_is_fedramp != true else { throw CollectorError.unsupported }
        guard claims.exp > 0, claims.exp <= 253_402_300_799 else { throw CollectorError.invalidResponse }
        guard Date(timeIntervalSince1970: Double(claims.exp)) > now else { throw CollectorError.authenticationRequired }
        let scope = claims.auth
        guard let subject = scope.chatgpt_user_id ?? scope.user_id,
              scope.chatgpt_user_id == nil || scope.user_id == nil || scope.chatgpt_user_id == scope.user_id,
              tokens.account_id == nil || tokens.account_id == scope.chatgpt_account_id else { throw CoreError.identityMismatch }
        for value in [subject, scope.chatgpt_account_id] {
            guard (1...256).contains(value.utf8.count), value.unicodeScalars.allSatisfy({ (33...126).contains($0.value) }) else { throw CollectorError.invalidResponse }
        }
        return Self(accessToken: token, identity: try RemoteIdentity(subject: subject, workspace: scope.chatgpt_account_id, product: "codex-subscription"),
                    fingerprint: Data(SHA256.hash(data: data)))
    }
}

public struct CodexCLIConnection: Sendable {
    private let files: any CredentialFileReading
    private let usage: CodexTokenUsageClient
    private let now: @Sendable () -> Date
    public init(files: any CredentialFileReading = ReadOnlyCredentialFile(), usage: CodexTokenUsageClient = CodexTokenUsageClient(),
                now: @escaping @Sendable () -> Date = { .now }) { self.files = files; self.usage = usage; self.now = now }
    public func verify(path: String, accountID: UUID, expected: RemoteIdentity?) async throws -> CredentialRecord {
        let snapshot = try await read(path: path)
        guard expected == nil || expected == snapshot.identity else { throw CoreError.identityMismatch }
        _ = try await usage.collect(accessToken: snapshot.accessToken, expected: snapshot.identity)
        try await validate(path: path, snapshot: snapshot)
        return try CredentialRecord(accountID: accountID, provider: .codex, identity: snapshot.identity,
            kind: .externalApplication, owner: .codexCLI, externalLocator: path)
    }
    func read(path: String) async throws -> CodexCLISnapshot {
        guard URL(fileURLWithPath: path).lastPathComponent == "auth.json" else { throw CollectorError.unsupported }
        try Task.checkCancellation()
        let data: Data
        do { data = try await files.read(path: path) }
        catch is AuthenticationError { throw CollectorError.credentialsUnavailable }
        try Task.checkCancellation()
        return try CodexCLISnapshot.parse(data, now: now())
    }
    func validate(path: String, snapshot: CodexCLISnapshot) async throws {
        let current = try await read(path: path)
        guard current.identity == snapshot.identity else { throw CoreError.identityMismatch }
        guard current.fingerprint == snapshot.fingerprint else { throw CoreError.staleAttempt }
    }
}
