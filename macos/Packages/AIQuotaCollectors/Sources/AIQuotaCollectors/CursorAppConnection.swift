import AIQuotaAuth
import AIQuotaCore
import CryptoKit
import Foundation

/// JWT claims supply only the cookie envelope. The remote profile establishes the account identity.
struct CursorAppSnapshot: Sendable, CustomStringConvertible, CustomDebugStringConvertible {
    let cookieHeader: String
    let fingerprint: Data
    var description: String { "CursorAppSnapshot(redacted)" }
    var debugDescription: String { description }
    static func parse(_ data: Data, now: Date) throws -> Self {
        guard !data.isEmpty, data.count <= 131_072 else { throw CollectorError.invalidResponse }
        let token: String?
        if data.starts(with: [0xff, 0xfe]) {
            token = String(data: data.dropFirst(2), encoding: .utf16LittleEndian)
        } else if data.count.isMultiple(of: 2), stride(from: 0, to: data.count, by: 2).allSatisfy({ (1..<128).contains(data[$0]) && data[$0 + 1] == 0 }) {
            token = String(data: data, encoding: .utf16LittleEndian)
        } else { token = String(data: data, encoding: .utf8) }
        guard let token, token.utf8.count <= 65_536,
              token.unicodeScalars.allSatisfy({ CharacterSet(charactersIn: "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_.").contains($0) }) else { throw CollectorError.invalidResponse }
        let parts = token.split(separator: ".", omittingEmptySubsequences: false)
        guard parts.count == 3, parts.allSatisfy({ !$0.isEmpty }) else { throw CollectorError.invalidResponse }
        func decode<T: Decodable>(_ value: Substring, _ type: T.Type) throws -> T {
            let text = String(value).replacingOccurrences(of: "-", with: "+").replacingOccurrences(of: "_", with: "/")
            guard let raw = Data(base64Encoded: text + String(repeating: "=", count: (4 - text.count % 4) % 4)),
                  let decoded = try? JSONDecoder().decode(T.self, from: raw) else { throw CollectorError.invalidResponse }
            return decoded
        }
        struct Header: Decodable { let alg: String }
        struct Claims: Decodable { let sub: String; let exp: Int64 }
        let header = try decode(parts[0], Header.self)
        guard !header.alg.isEmpty, header.alg.lowercased() != "none" else { throw CollectorError.invalidResponse }
        let claims = try decode(parts[1], Claims.self), subjects = claims.sub.split(separator: "|", omittingEmptySubsequences: false)
        guard (1...2).contains(subjects.count), subjects.allSatisfy({ !$0.isEmpty }), let user = subjects.last,
              (1...512).contains(user.utf8.count), user.unicodeScalars.allSatisfy({ CharacterSet(charactersIn: "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789._-").contains($0) }),
              claims.exp > 0, claims.exp <= 253_402_300_799 else { throw CollectorError.invalidResponse }
        guard Date(timeIntervalSince1970: Double(claims.exp)).timeIntervalSince(now) > 60 else { throw CollectorError.authenticationRequired }
        return Self(cookieHeader: "WorkosCursorSessionToken=\(user)%3A%3A\(token)", fingerprint: Data(SHA256.hash(data: data)))
    }
}

public struct CursorAppConnection: Sendable {
    private let state: any CursorStateReading
    private let client: CursorWebClient
    private let now: @Sendable () -> Date
    public init(state: any CursorStateReading = ReadOnlyCursorState(), client: CursorWebClient = CursorWebClient(),
                now: @escaping @Sendable () -> Date = { .now }) { self.state = state; self.client = client; self.now = now }
    public func verify(path: String, accountID: UUID, expected: RemoteIdentity?) async throws -> CredentialRecord {
        let snapshot = try await read(path: path)
        let profile = try await client.discover(cookieHeader: snapshot.cookieHeader)
        let identity = try RemoteIdentity(subject: profile.subject, product: "cursor-subscription")
        guard expected == nil || expected == identity else { throw CoreError.identityMismatch }
        _ = try await client.collect(cookieHeader: snapshot.cookieHeader, expected: identity)
        try await validate(path: path, snapshot: snapshot)
        return try CredentialRecord(accountID: accountID, provider: .cursor, identity: identity, kind: .externalApplication,
                                    owner: .cursorApplication, externalLocator: path)
    }
    func read(path: String) async throws -> CursorAppSnapshot {
        guard path.hasPrefix("/"), URL(fileURLWithPath: path).lastPathComponent == "state.vscdb" else { throw CollectorError.unsupported }
        try Task.checkCancellation()
        let data: Data
        do { data = try await state.accessToken(path: path) }
        catch is AuthenticationError { throw CollectorError.credentialsUnavailable }
        try Task.checkCancellation()
        return try CursorAppSnapshot.parse(data, now: now())
    }
    func validate(path: String, snapshot: CursorAppSnapshot) async throws {
        let current = try await read(path: path)
        guard current.fingerprint == snapshot.fingerprint else { throw CoreError.staleAttempt }
    }
}
