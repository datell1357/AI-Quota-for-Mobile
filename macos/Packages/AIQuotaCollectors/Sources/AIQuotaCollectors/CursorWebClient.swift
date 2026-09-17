import AIQuotaCore
import Foundation

public struct CursorAccountDiscovery: Sendable {
    public let subject: String
    public let email: String?
}

/// Reads only the explicitly connected cursor.com profile, never local app or global browser state.
public struct CursorWebClient: Sendable {
    public static let origin = URL(string: "https://cursor.com/")!
    public static let accountURL = URL(string: "https://cursor.com/api/auth/me")!
    public static let summaryURL = URL(string: "https://cursor.com/api/usage-summary")!
    private let transport: any HTTPTransport
    private let now: @Sendable () -> Date
    public init(transport: any HTTPTransport = NativeHTTPTransport(allowedHosts: ["cursor.com"]),
                now: @escaping @Sendable () -> Date = { .now }) {
        self.transport = transport; self.now = now
    }
    public func discover(cookieHeader: String) async throws -> CursorAccountDiscovery {
        try await profile(cookieHeader: cookieHeader).0
    }
    public func collect(cookieHeader: String, expected identity: RemoteIdentity) async throws -> CollectionOutput {
        guard identity.product == "cursor-subscription", identity.workspace == nil else { throw CoreError.identityMismatch }
        let (before, firstBytes) = try await profile(cookieHeader: cookieHeader)
        guard before.subject == identity.subject else { throw CoreError.identityMismatch }
        let summaryResult = try await request(Self.summaryURL, cookieHeader: cookieHeader)
        // A missing modern route may still have a legacy request quota; auth/errors never trigger fallback.
        let summary = summaryResult.status == 404 ? Data("{}".utf8) : try HTTPResponsePolicy.body(summaryResult, now: now())
        let legacyURL = URL(string: "https://cursor.com/api/usage")!.appending(queryItems: [URLQueryItem(name: "user", value: before.subject)])
        let legacyResult = try await request(legacyURL, cookieHeader: cookieHeader)
        let legacy = legacyResult.status == 404 ? nil : try HTTPResponsePolicy.body(legacyResult, now: now())
        let fetchedAt = now()
        let report = try CursorUsageDecoder.decode(summary, requestUsage: legacy, identity: identity, fetchedAt: fetchedAt)
        let (after, lastBytes) = try await profile(cookieHeader: cookieHeader)
        guard after.subject == identity.subject else { throw CoreError.identityMismatch }
        return CollectionOutput(report: report, transferredBytes: firstBytes + summaryResult.body.count + legacyResult.body.count + lastBytes)
    }
    private func profile(cookieHeader: String) async throws -> (CursorAccountDiscovery, Int) {
        let result = try await request(Self.accountURL, cookieHeader: cookieHeader)
        // The public no-session route returned 204 during contract verification.
        if result.status == 204 { throw CollectorError.authenticationRequired }
        let body = try HTTPResponsePolicy.body(result, now: now())
        struct Profile: Decodable { let sub: String; let email: String? }
        do {
            let profile = try JSONDecoder().decode(Profile.self, from: body)
            guard !profile.sub.isEmpty, profile.sub == profile.sub.trimmingCharacters(in: .whitespacesAndNewlines),
                  profile.sub.utf8.count <= 512,
                  !profile.sub.unicodeScalars.contains(where: { CharacterSet.controlCharacters.contains($0) }) else {
                throw CollectorError.invalidResponse
            }
            return (CursorAccountDiscovery(subject: profile.sub, email: profile.email), body.count)
        } catch { throw CollectorError.invalidResponse }
    }
    private func request(_ url: URL, cookieHeader: String) async throws -> HTTPResult {
        var request = URLRequest(url: url, cachePolicy: .reloadIgnoringLocalCacheData, timeoutInterval: 30)
        request.setValue(try Self.authenticatedCookie(cookieHeader), forHTTPHeaderField: "Cookie")
        request.setValue("application/json", forHTTPHeaderField: "Accept")
        request.setValue("https://cursor.com/dashboard", forHTTPHeaderField: "Referer")
        let result = try await transport.send(request)
        try Task.checkCancellation()
        return result
    }
    private static func authenticatedCookie(_ value: String) throws -> String {
        let header = try AuthenticatedSession.headerValue(value)
        let names = Set(["WorkosCursorSessionToken", "__Secure-next-auth.session-token", "next-auth.session-token",
                         "wos-session", "__Secure-wos-session", "authjs.session-token", "__Secure-authjs.session-token"])
        guard header.split(separator: ";").contains(where: { pair in
            let parts = pair.trimmingCharacters(in: .whitespaces).split(separator: "=", maxSplits: 1, omittingEmptySubsequences: false)
            return parts.count == 2 && names.contains(String(parts[0])) && !parts[1].isEmpty
        }) else { throw CollectorError.authenticationRequired }
        return header
    }
}

public struct CursorWebCollector: UsageCollector {
    private let sessions: any AccountSessionSource
    private let transport: any HTTPTransport
    private let now: @Sendable () -> Date
    public init(sessions: any AccountSessionSource,
                transport: any HTTPTransport = NativeHTTPTransport(allowedHosts: ["cursor.com"]),
                now: @escaping @Sendable () -> Date = { .now }) {
        self.sessions = sessions; self.transport = transport; self.now = now
    }
    public func collect(account: Account, lease: CollectionLease) async throws -> CollectionOutput {
        guard account.provider == .cursor, lease.provider == .cursor else { throw CoreError.identityMismatch }
        let session = try await sessions.session(for: account, lease: lease)
        try session.validate(lease)
        let output = try await CursorWebClient(transport: profileTransport(transport, cookies: session.webCookies), now: now)
            .collect(cookieHeader: AuthenticatedSession.headerValue(session.cookieHeader), expected: session.identity)
        try await session.validateCurrentSource?()
        return output
    }
}
