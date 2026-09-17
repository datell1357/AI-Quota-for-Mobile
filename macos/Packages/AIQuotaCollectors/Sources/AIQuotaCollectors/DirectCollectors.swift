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
        return try await GrokWebClient(transport: profileTransport(transport, cookies: session.webCookies), now: now)
            .collect(cookieHeader: AuthenticatedSession.headerValue(session.cookieHeader), expected: session.identity)
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
        let output = try await CodexTokenUsageClient(transport: transport, now: now)
            .collect(accessToken: AuthenticatedSession.headerValue(session.accessToken), expected: session.identity)
        try await session.validateCurrentSource?()
        return output
    }
}
