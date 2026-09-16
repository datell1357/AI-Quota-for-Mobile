import AIQuotaCore
import CodexBarCore
import Foundation

public struct GrokWeeklyCollector: UsageCollector {
    private let sessions: any AccountSessionSource
    private let transport: any HTTPTransport
    private let now: @Sendable () -> Date
    public init(sessions: any AccountSessionSource,
                transport: any HTTPTransport = NativeHTTPTransport(allowedHosts: ["grok.com"]),
                now: @escaping @Sendable () -> Date = { .now }) {
        self.sessions = sessions; self.transport = transport; self.now = now
    }
    public func collect(account: Account, lease: CollectionLease) async throws -> CollectionOutput {
        guard account.provider == .grok, lease.provider == .grok, lease.identity.product == "grok-weekly"
        else { throw CoreError.identityMismatch }
        let session = try await sessions.session(for: account, lease: lease)
        try session.validate(lease)
        var request = URLRequest(url: GrokWeeklyDecoder.endpoint, cachePolicy: .reloadIgnoringLocalCacheData, timeoutInterval: 30)
        request.httpMethod = "POST"; request.httpBody = Data(repeating: 0, count: 5)
        request.setValue("application/grpc-web+proto", forHTTPHeaderField: "Content-Type")
        request.setValue("1", forHTTPHeaderField: "x-grpc-web")
        request.setValue("https://grok.com", forHTTPHeaderField: "Origin")
        request.setValue("https://grok.com/", forHTTPHeaderField: "Referer")
        request.setValue(try AuthenticatedSession.headerValue(session.cookieHeader), forHTTPHeaderField: "Cookie")
        let response = try await profileTransport(transport, cookies: session.webCookies).send(request)
        try Task.checkCancellation()
        let fetchedAt = now()
        let data = try HTTPResponsePolicy.body(response, now: fetchedAt)
        let report = try GrokWeeklyDecoder.decode(data, identity: session.identity, fetchedAt: fetchedAt)
        return CollectionOutput(report: report, transferredBytes: data.count)
    }
}

/// Reads the subscription endpoint with the chosen token or isolated web profile. It never refreshes CLI-owned tokens.
public struct CodexSubscriptionCollector: UsageCollector {
    public static let endpoint = URL(string: "https://chatgpt.com/backend-api/wham/usage")!
    private let sessions: any AccountSessionSource
    private let transport: any HTTPTransport
    private let now: @Sendable () -> Date
    public init(sessions: any AccountSessionSource,
                transport: any HTTPTransport = NativeHTTPTransport(allowedHosts: ["chatgpt.com"]),
                now: @escaping @Sendable () -> Date = { .now }) {
        self.sessions = sessions; self.transport = transport; self.now = now
    }
    public func collect(account: Account, lease: CollectionLease) async throws -> CollectionOutput {
        guard account.provider == .codex, lease.provider == .codex, lease.identity.product == "codex-subscription"
        else { throw CoreError.identityMismatch }
        let session = try await sessions.session(for: account, lease: lease)
        try session.validate(lease)
        let transport = profileTransport(self.transport, cookies: session.webCookies)
        if session.accessToken == nil, let cookie = session.cookieHeader {
            return try await CodexWebClient(transport: transport, now: now).collect(cookieHeader: cookie, expected: session.identity)
        }
        var request = URLRequest(url: Self.endpoint, cachePolicy: .reloadIgnoringLocalCacheData, timeoutInterval: 30)
        request.setValue("Bearer \(try AuthenticatedSession.headerValue(session.accessToken))", forHTTPHeaderField: "Authorization")
        request.setValue("application/json", forHTTPHeaderField: "Accept")
        request.setValue("AIQuota-macOS", forHTTPHeaderField: "User-Agent")
        if let workspace = session.identity.workspace {
            request.setValue(try AuthenticatedSession.headerValue(workspace), forHTTPHeaderField: "ChatGPT-Account-Id")
        }
        let response = try await transport.send(request)
        try Task.checkCancellation()
        let fetchedAt = now()
        let data = try HTTPResponsePolicy.body(response, now: fetchedAt)
        let decoded: CodexUsageResponse
        do { decoded = try JSONDecoder().decode(CodexUsageResponse.self, from: data) }
        catch { throw CollectorError.invalidResponse }
        let report = try CodexBarBridge.codex(decoded, identity: session.identity, fetchedAt: fetchedAt)
        return CollectionOutput(report: report, transferredBytes: data.count)
    }
}
