import AIQuotaCore
import CodexBarCore
import Foundation

public struct CodexWorkspace: Identifiable, Equatable, Sendable {
    public let id: String
    public let name: String
}
public struct CodexWebDiscovery: Sendable {
    public let subject: String
    public let email: String?
    public let workspaces: [CodexWorkspace]
}

/// The session endpoint supplies a short-lived bearer for this profile only. It is never persisted,
/// logged, or replaced by the active CLI account. Workspace selection is explicit before collection.
public struct CodexWebClient: Sendable {
    public static let sessionURL = URL(string: "https://chatgpt.com/api/auth/session")!
    public static let workspacesURL = URL(string: "https://chatgpt.com/backend-api/accounts")!
    private let transport: any HTTPTransport
    private let now: @Sendable () -> Date
    public init(transport: any HTTPTransport = NativeHTTPTransport(allowedHosts: ["chatgpt.com"]),
                now: @escaping @Sendable () -> Date = { .now }) {
        self.transport = transport; self.now = now
    }
    public func discover(cookieHeader: String) async throws -> CodexWebDiscovery {
        try await resolve(cookieHeader: cookieHeader).discovery
    }
    public func collect(cookieHeader: String, expected identity: RemoteIdentity) async throws -> CollectionOutput {
        guard identity.product == "codex-subscription", let workspace = identity.workspace else { throw CoreError.identityMismatch }
        let resolved = try await resolve(cookieHeader: cookieHeader)
        guard resolved.discovery.subject == identity.subject,
              resolved.discovery.workspaces.contains(where: { $0.id == workspace }) else { throw CoreError.identityMismatch }
        let body = try await request(CodexSubscriptionCollector.endpoint, cookieHeader: cookieHeader,
                                     token: resolved.token, workspace: workspace)
        let decoded: CodexUsageResponse
        do { decoded = try JSONDecoder().decode(CodexUsageResponse.self, from: body) }
        catch { throw CollectorError.invalidResponse }
        let report = try CodexBarBridge.codex(decoded, identity: identity, fetchedAt: now(), source: .webAPI)
        return CollectionOutput(report: report, transferredBytes: resolved.bytes + body.count)
    }

    private struct Resolved: CustomStringConvertible, CustomDebugStringConvertible {
        let discovery: CodexWebDiscovery
        let token: String
        let bytes: Int
        var description: String { "CodexWebSession(redacted)" }
        var debugDescription: String { description }
    }
    private func resolve(cookieHeader: String) async throws -> Resolved {
        let cookie = try AuthenticatedSession.headerValue(cookieHeader)
        guard cookie.split(separator: ";").contains(where: { pair in
            let parts = pair.trimmingCharacters(in: .whitespaces).split(separator: "=", maxSplits: 1, omittingEmptySubsequences: false)
            return parts.count == 2 && !parts[1].isEmpty &&
                (parts[0] == "__Secure-next-auth.session-token" || parts[0] == "__Secure-next-auth.session-token.0")
        }) else { throw CollectorError.authenticationRequired }
        let sessionData = try await request(Self.sessionURL, cookieHeader: cookie)
        struct Session: Decodable {
            struct User: Decodable { let id: String?; let email: String? }
            let user: User?
            let accessToken: String?
            let expires: String?
        }
        let session: Session
        do { session = try JSONDecoder().decode(Session.self, from: sessionData) }
        catch { throw CollectorError.invalidResponse }
        guard let rawSubject = session.user?.id, let rawToken = session.accessToken else { throw CollectorError.authenticationRequired }
        let subject = try Self.identifier(rawSubject)
        let token = try AuthenticatedSession.headerValue(rawToken)
        if let expires = session.expires {
            guard try Self.expiration(expires) > now() else { throw CollectorError.authenticationRequired }
        }
        let accountsData = try await request(Self.workspacesURL, cookieHeader: cookie, token: token)
        struct Accounts: Decodable {
            struct Item: Decodable { let id: String; let name: String? }
            let items: [Item]
        }
        let accounts: Accounts
        do { accounts = try JSONDecoder().decode(Accounts.self, from: accountsData) }
        catch { throw CollectorError.invalidResponse }
        let workspaces = try accounts.items.map { item in
            let id = try Self.identifier(item.id)
            let name = item.name?.trimmingCharacters(in: .whitespacesAndNewlines)
            // An absent label is not evidence that this is a personal workspace.
            return CodexWorkspace(id: id, name: name?.isEmpty == false ? name! : id)
        }
        guard !workspaces.isEmpty, Set(workspaces.map(\.id)).count == workspaces.count else { throw CollectorError.invalidResponse }
        return Resolved(discovery: CodexWebDiscovery(subject: subject, email: session.user?.email, workspaces: workspaces),
                        token: token, bytes: sessionData.count + accountsData.count)
    }
    private func request(_ url: URL, cookieHeader: String, token: String? = nil, workspace: String? = nil) async throws -> Data {
        var request = URLRequest(url: url, cachePolicy: .reloadIgnoringLocalCacheData, timeoutInterval: 30)
        request.setValue(try AuthenticatedSession.headerValue(cookieHeader), forHTTPHeaderField: "Cookie")
        request.setValue("application/json", forHTTPHeaderField: "Accept")
        request.setValue("AIQuota-macOS", forHTTPHeaderField: "User-Agent")
        if let token { request.setValue("Bearer \(try AuthenticatedSession.headerValue(token))", forHTTPHeaderField: "Authorization") }
        if let workspace { request.setValue(try AuthenticatedSession.headerValue(workspace), forHTTPHeaderField: "ChatGPT-Account-Id") }
        let response = try await transport.send(request)
        try Task.checkCancellation()
        return try HTTPResponsePolicy.body(response, now: now())
    }
    private static func identifier(_ value: String) throws -> String {
        guard !value.isEmpty, value == value.trimmingCharacters(in: .whitespacesAndNewlines),
              !value.unicodeScalars.contains(where: { CharacterSet.controlCharacters.contains($0) }) else { throw CollectorError.invalidResponse }
        return value
    }
    private static func expiration(_ value: String) throws -> Date {
        let formatter = ISO8601DateFormatter()
        formatter.formatOptions = [.withInternetDateTime, .withFractionalSeconds]
        if let date = formatter.date(from: value) { return date }
        formatter.formatOptions = [.withInternetDateTime]
        guard let date = formatter.date(from: value) else { throw CollectorError.invalidResponse }
        return date
    }
}
