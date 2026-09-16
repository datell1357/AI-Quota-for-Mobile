import AIQuotaCore
import Foundation

public struct CopilotAccount: Sendable {
    public let subject: String
    public let login: String
}

/// Receives an explicitly selected credential; never reads VS Code, gh or browser stores.
/// Device authorization must use a registered/authorized AI Quota client separately.
public struct CopilotAPIClient: Sendable {
    private let transport: any HTTPTransport
    private let now: @Sendable () -> Date
    public init(transport: any HTTPTransport = NativeHTTPTransport(allowedHosts: ["api.github.com"], maximumBytes: 1_048_576),
                now: @escaping @Sendable () -> Date = { .now }) { self.transport = transport; self.now = now }
    public func discover(accessToken: String) async throws -> CopilotAccount {
        try await user(token(accessToken)).account
    }
    public func collect(accessToken: String, expected identity: RemoteIdentity) async throws -> CollectionOutput {
        guard identity.product == "copilot-subscription", identity.workspace == nil else { throw CoreError.identityMismatch }
        let token = try token(accessToken)
        let before = try await user(token)
        guard before.account.subject == identity.subject else { throw CoreError.identityMismatch }
        let data = try await get("/copilot_internal/user", token: token)
        let report = try CopilotUsageDecoder.decode(data, identity: identity, fetchedAt: now())
        let after = try await user(token)
        guard after.account.subject == identity.subject else { throw CoreError.identityMismatch }
        try Task.checkCancellation()
        return CollectionOutput(report: report, transferredBytes: before.bytes + data.count + after.bytes)
    }
    private func user(_ token: String) async throws -> (account: CopilotAccount, bytes: Int) {
        let data = try await get("/user", token: token)
        struct User: Decodable { let id: Int64; let login: String; let type: String }
        guard let user = try? JSONDecoder().decode(User.self, from: data), user.id > 0, user.type == "User",
              user.login.range(of: #"^[A-Za-z0-9_-]{1,128}$"#, options: .regularExpression) != nil else { throw CollectorError.invalidResponse }
        return (CopilotAccount(subject: String(user.id), login: user.login), data.count)
    }
    private func token(_ raw: String) throws -> String {
        guard !raw.isEmpty, raw.utf8.count <= 16_384, raw.unicodeScalars.allSatisfy({ (33...126).contains($0.value) }) else { throw CollectorError.authenticationRequired }
        return raw
    }
    private func get(_ path: String, token: String) async throws -> Data {
        var request = URLRequest(url: URL(string: "https://api.github.com" + path)!, cachePolicy: .reloadIgnoringLocalCacheData, timeoutInterval: 30)
        request.setValue("token " + token, forHTTPHeaderField: "Authorization")
        request.setValue("application/json", forHTTPHeaderField: "Accept")
        request.setValue("AIQuota-macOS", forHTTPHeaderField: "User-Agent")
        request.setValue(path == "/user" ? "2022-11-28" : "2025-04-01", forHTTPHeaderField: "X-GitHub-Api-Version")
        let response = try await transport.send(request); try Task.checkCancellation()
        if response.status == 403 {
            if let retry = HTTPResponsePolicy.retryDate(response.headers["retry-after"], now: now()) { throw CollectorError.rateLimited(until: retry) }
            if response.headers["x-ratelimit-remaining"] == "0", let raw = response.headers["x-ratelimit-reset"],
               let seconds = Double(raw), seconds.isFinite, seconds > now().timeIntervalSince1970, seconds <= 4_102_444_800 {
                throw CollectorError.rateLimited(until: Date(timeIntervalSince1970: seconds))
            }
        }
        let data = try HTTPResponsePolicy.body(response, now: now())
        let contentType = response.headers["content-type"]?.split(separator: ";").first?.trimmingCharacters(in: .whitespaces).lowercased()
        guard response.status == 200, data.count <= 1_048_576,
              contentType == "application/json" || contentType == "application/vnd.github+json" else { throw CollectorError.invalidResponse }
        return data
    }
}

public struct CopilotSubscriptionCollector: UsageCollector {
    private let sessions: any AccountSessionSource
    private let client: CopilotAPIClient
    public init(sessions: any AccountSessionSource, transport: any HTTPTransport = NativeHTTPTransport(allowedHosts: ["api.github.com"], maximumBytes: 1_048_576),
                now: @escaping @Sendable () -> Date = { .now }) { self.sessions = sessions; client = CopilotAPIClient(transport: transport, now: now) }
    public func collect(account: Account, lease: CollectionLease) async throws -> CollectionOutput {
        guard account.provider == .copilot, lease.provider == .copilot else { throw CoreError.identityMismatch }
        let session = try await sessions.session(for: account, lease: lease); try session.validate(lease)
        guard session.cookieHeader == nil, session.webCookies == nil else { throw CollectorError.unsupported }
        return try await client.collect(accessToken: AuthenticatedSession.headerValue(session.accessToken), expected: session.identity)
    }
}
