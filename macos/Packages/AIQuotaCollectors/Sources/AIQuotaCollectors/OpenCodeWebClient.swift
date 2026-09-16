import AIQuotaCore
import Foundation

public enum OpenCodeSessionError: Error, Sendable { case multipleAccounts }
public struct OpenCodeWorkspace: Sendable, Equatable {
    public let id: String
    public let name: String
}
public struct OpenCodeAccountDiscovery: Sendable {
    public let subject: String
    public let email: String?
    public let workspaces: [OpenCodeWorkspace]
}

public struct OpenCodeWebClient: Sendable {
    public static let origin = URL(string: "https://opencode.ai/")!
    public static let accountURL = URL(string: "https://opencode.ai/auth/status")!
    // Confirmed against deployed public query bundles on 2026-09-17; only read queries are called.
    static let workspacesID = "def39973159c7f0483d8793a822b8dbb10d067e12c65455fcb4608459ba0234f"
    static let goID = "c7389bd0e731f80f49593e5ee53835475f4e28594dd6bd83eb229bab753498cd"
    static let billingID = "c83b78a614689c38ebee981f9b39a8b377716db85c1fd7dbab604adc02d3313d"
    private let transport: any HTTPTransport
    private let now: @Sendable () -> Date
    public init(transport: any HTTPTransport = NativeHTTPTransport(allowedHosts: ["opencode.ai"]),
                now: @escaping @Sendable () -> Date = { .now }) { self.transport = transport; self.now = now }
    public func discover(cookieHeader: String) async throws -> OpenCodeAccountDiscovery {
        let before = try await profile(cookieHeader)
        let workspaces = try await workspaces(cookieHeader)
        let after = try await profile(cookieHeader)
        guard before.subject == after.subject else { throw CoreError.identityMismatch }
        return OpenCodeAccountDiscovery(subject: after.subject, email: after.email, workspaces: workspaces.0)
    }
    public func collect(cookieHeader: String, expected identity: RemoteIdentity) async throws -> CollectionOutput {
        guard identity.product == "opencode-workspace", let workspace = identity.workspace, Self.validWorkspace(workspace) else {
            throw CoreError.identityMismatch
        }
        let before = try await profile(cookieHeader)
        guard before.subject == identity.subject else { throw CoreError.identityMismatch }
        let memberships = try await workspaces(cookieHeader)
        guard memberships.0.contains(where: { $0.id == workspace }) else { throw CoreError.identityMismatch }
        let go = try await query(Self.goID, workspace: workspace, cookie: cookieHeader)
        let goReceivedAt = now()
        let billing = try await query(Self.billingID, workspace: workspace, cookie: cookieHeader)
        let report = try OpenCodeUsageDecoder.decode(go: go.body, billing: billing.body, identity: identity, fetchedAt: now(),
                                                    goInstance: go.instance, billingInstance: billing.instance, goReceivedAt: goReceivedAt)
        let after = try await profile(cookieHeader)
        guard after.subject == identity.subject else { throw CoreError.identityMismatch }
        let currentMemberships = try await workspaces(cookieHeader)
        guard currentMemberships.0.contains(where: { $0.id == workspace }) else { throw CoreError.identityMismatch }
        return CollectionOutput(report: report, transferredBytes: before.bytes + memberships.1 + go.body.count + billing.body.count + after.bytes + currentMemberships.1)
    }
    static func validWorkspace(_ id: String) -> Bool {
        id.utf8.count <= 128 && id.range(of: #"^wrk_[A-Za-z0-9]+$"#, options: .regularExpression) != nil
    }
    private func profile(_ cookie: String) async throws -> (subject: String, email: String?, bytes: Int) {
        let body = try await request(Self.accountURL, cookie: cookie)
        struct Session: Decodable {
            struct Account: Decodable { let id: String; let email: String? }
            let account: [String: Account]?
            let current: String?
        }
        let session: Session
        do { session = try JSONDecoder().decode(Session.self, from: body) } catch { throw CollectorError.invalidResponse }
        guard let accounts = session.account, !accounts.isEmpty else { throw CollectorError.authenticationRequired }
        // getActor(workspace) may choose ANY session account that belongs to a workspace. A single
        // account in this isolated jar is required to bind both queries to the same remote subject.
        guard accounts.count == 1 else { throw OpenCodeSessionError.multipleAccounts }
        guard let entry = accounts.first, entry.key == entry.value.id,
              session.current == nil || session.current == entry.key,
              !entry.key.isEmpty, entry.key.utf8.count <= 512,
              entry.key == entry.key.trimmingCharacters(in: .whitespacesAndNewlines),
              !entry.key.unicodeScalars.contains(where: { CharacterSet.controlCharacters.contains($0) }) else { throw CollectorError.invalidResponse }
        return (entry.key, entry.value.email, body.count)
    }
    private func workspaces(_ cookie: String) async throws -> ([OpenCodeWorkspace], Int) {
        let result = try await query(Self.workspacesID, workspace: nil, cookie: cookie)
        guard let entries = try OpenCodeServerPayload.decode(result.body, instance: result.instance) as? [[String: Any]], entries.count <= 500 else {
            throw CollectorError.invalidResponse
        }
        var output: [OpenCodeWorkspace] = []
        for entry in entries {
            guard let id = entry["id"] as? String, Self.validWorkspace(id), !output.contains(where: { $0.id == id }) else {
                throw CollectorError.invalidResponse
            }
            let name = ((entry["name"] as? String) ?? (entry["slug"] as? String) ?? id).trimmingCharacters(in: .whitespacesAndNewlines)
            guard name.utf8.count <= 1024 else { throw CollectorError.invalidResponse }
            output.append(OpenCodeWorkspace(id: id, name: name.isEmpty ? id : name))
        }
        return (output, result.body.count)
    }
    private func query(_ id: String, workspace: String?, cookie: String) async throws -> (body: Data, instance: String) {
        var components = URLComponents(string: "https://opencode.ai/_server")!
        components.queryItems = [URLQueryItem(name: "id", value: id)]
        if let workspace {
            let args = try JSONEncoder().encode([workspace])
            components.queryItems?.append(URLQueryItem(name: "args", value: String(decoding: args, as: UTF8.self)))
        }
        let instance = "server-fn:" + UUID().uuidString
        let body = try await request(components.url!, cookie: cookie, headers: ["X-Server-Id": id, "X-Server-Instance": instance,
                                                                              "Origin": "https://opencode.ai", "Referer": "https://opencode.ai/"])
        return (body, instance)
    }
    private func request(_ url: URL, cookie: String, headers: [String: String] = [:]) async throws -> Data {
        let cookie = try AuthenticatedSession.headerValue(cookie)
        guard cookie.split(separator: ";").contains(where: { pair in
            let parts = pair.trimmingCharacters(in: .whitespaces).split(separator: "=", maxSplits: 1, omittingEmptySubsequences: false)
            return parts.count == 2 && ["auth", "__Host-auth"].contains(String(parts[0])) && !parts[1].isEmpty
        }) else { throw CollectorError.authenticationRequired }
        var request = URLRequest(url: url, cachePolicy: .reloadIgnoringLocalCacheData, timeoutInterval: 30)
        request.setValue(cookie, forHTTPHeaderField: "Cookie")
        request.setValue("text/javascript, application/json", forHTTPHeaderField: "Accept")
        for (key, value) in headers { request.setValue(value, forHTTPHeaderField: key) }
        let result = try await transport.send(request)
        try Task.checkCancellation()
        if [302,303,307,308].contains(result.status), result.headers["location"]?.hasPrefix("/auth") == true {
            throw CollectorError.authenticationRequired
        }
        let body = try HTTPResponsePolicy.body(result, now: now())
        if let error = result.headers["x-error"] {
            let text = String(decoding: body, as: UTF8.self)
            if error == "actor of type \"public\" is not associated with an account" ||
                text.contains(#"["location","/auth/authorize"]"#) { throw CollectorError.authenticationRequired }
            throw CollectorError.invalidResponse
        }
        return body
    }
}

public struct OpenCodeWebCollector: UsageCollector {
    private let sessions: any AccountSessionSource
    private let transport: any HTTPTransport
    private let now: @Sendable () -> Date
    public init(sessions: any AccountSessionSource,
                transport: any HTTPTransport = NativeHTTPTransport(allowedHosts: ["opencode.ai"]),
                now: @escaping @Sendable () -> Date = { .now }) { self.sessions = sessions; self.transport = transport; self.now = now }
    public func collect(account: Account, lease: CollectionLease) async throws -> CollectionOutput {
        guard account.provider == .opencode, lease.provider == .opencode else { throw CoreError.identityMismatch }
        let session = try await sessions.session(for: account, lease: lease)
        try session.validate(lease)
        do {
            return try await OpenCodeWebClient(transport: profileTransport(transport, cookies: session.webCookies), now: now)
                .collect(cookieHeader: AuthenticatedSession.headerValue(session.cookieHeader), expected: session.identity)
        } catch OpenCodeSessionError.multipleAccounts { throw CollectorError.authenticationRequired }
    }
}
