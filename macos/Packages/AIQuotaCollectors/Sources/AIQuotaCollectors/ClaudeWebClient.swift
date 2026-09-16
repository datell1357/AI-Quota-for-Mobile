import AIQuotaAuth
import AIQuotaCore
import Foundation

public struct ClaudeOrganization: Identifiable, Equatable, Sendable {
    public let id: String
    public let name: String
    public let plan: String?
}
public struct ClaudeAccountDiscovery: Sendable {
    public let subject: String
    public let email: String?
    public let organizations: [ClaudeOrganization]
}

/// Authentication and usage requests share one account-scoped session snapshot and its server rotations.
/// No browser-global cookie import or "first organization" fallback is performed here.
public struct ClaudeWebClient: Sendable {
    public static let accountURL = URL(string: "https://claude.ai/api/account")!
    public static let organizationsURL = URL(string: "https://claude.ai/api/organizations")!
    private let transport: any HTTPTransport
    private let now: @Sendable () -> Date
    public init(transport: any HTTPTransport = NativeHTTPTransport(allowedHosts: ["claude.ai"]),
                now: @escaping @Sendable () -> Date = { .now }) {
        self.transport = transport; self.now = now
    }
    public func discover(cookieHeader: String) async throws -> ClaudeAccountDiscovery {
        try await discovery(cookieHeader: cookieHeader).0
    }
    func scoped(to cookies: WebCookieSession?) -> ClaudeWebClient {
        ClaudeWebClient(transport: profileTransport(transport, cookies: cookies), now: now)
    }
    public func collect(cookieHeader: String, expected identity: RemoteIdentity) async throws -> CollectionOutput {
        guard identity.product == "claude-subscription", let workspace = identity.workspace else { throw CoreError.identityMismatch }
        let (discovery, metadataBytes) = try await discovery(cookieHeader: cookieHeader)
        guard discovery.subject == identity.subject,
              let organization = discovery.organizations.first(where: { $0.id == workspace }) else { throw CoreError.identityMismatch }
        let usageURL = Self.organizationsURL.appendingPathComponent(workspace).appendingPathComponent("usage")
        let body = try await request(usageURL, cookieHeader: cookieHeader)
        let report = try ClaudeUsageDecoder.decode(body, identity: identity, fetchedAt: now(), plan: organization.plan)
        return CollectionOutput(report: report, transferredBytes: metadataBytes + body.count)
    }
    private func discovery(cookieHeader: String) async throws -> (ClaudeAccountDiscovery, Int) {
        let header = try AuthenticatedSession.headerValue(cookieHeader)
        guard header.split(separator: ";").contains(where: { pair in
            let parts = pair.trimmingCharacters(in: .whitespaces).split(separator: "=", maxSplits: 1, omittingEmptySubsequences: false)
            return parts.count == 2 && parts[0] == "sessionKey" && !parts[1].isEmpty
        }) else { throw CollectorError.authenticationRequired }
        let accountData = try await request(Self.accountURL, cookieHeader: cookieHeader)
        let organizationData = try await request(Self.organizationsURL, cookieHeader: cookieHeader)
        struct Profile: Decodable { let uuid: String; let email_address: String? }
        struct Organization: Decodable {
            let uuid: String
            let name: String?
            let rate_limit_tier: String?
        }
        do {
            let profile = try JSONDecoder().decode(Profile.self, from: accountData)
            guard let subject = UUID(uuidString: profile.uuid) else { throw CollectorError.invalidResponse }
            let raw = try JSONDecoder().decode([Organization].self, from: organizationData)
            let organizations = try raw.map { item in
                guard let id = UUID(uuidString: item.uuid) else { throw CollectorError.invalidResponse }
                return ClaudeOrganization(id: id.uuidString.lowercased(), name: item.name?.isEmpty == false ? item.name! : id.uuidString,
                                          plan: Self.plan(item.rate_limit_tier))
            }
            guard !organizations.isEmpty, Set(organizations.map(\.id)).count == organizations.count else { throw CollectorError.invalidResponse }
            return (ClaudeAccountDiscovery(subject: subject.uuidString.lowercased(), email: profile.email_address,
                                           organizations: organizations), accountData.count + organizationData.count)
        } catch let error as CollectorError { throw error }
        catch { throw CollectorError.invalidResponse }
    }
    private func request(_ url: URL, cookieHeader: String) async throws -> Data {
        var request = URLRequest(url: url, cachePolicy: .reloadIgnoringLocalCacheData, timeoutInterval: 30)
        request.setValue(try AuthenticatedSession.headerValue(cookieHeader), forHTTPHeaderField: "Cookie")
        request.setValue("application/json", forHTTPHeaderField: "Accept")
        request.setValue("https://claude.ai/settings/usage", forHTTPHeaderField: "Referer")
        let result = try await transport.send(request)
        try Task.checkCancellation()
        return try HTTPResponsePolicy.body(result, now: now())
    }
    private static func plan(_ tier: String?) -> String? {
        guard let tier else { return nil }
        switch tier.lowercased() {
        case "default_claude_ai": return "Free"
        case "default_claude_pro": return "Pro"
        case "default_claude_max_5x": return "Max 5×"
        case "default_claude_max_20x": return "Max 20×"
        default: return nil // Unknown tier identifiers are not marketed as a guessed subscription.
        }
    }
}

public struct ClaudeWebCollector: UsageCollector {
    private let sessions: any AccountSessionSource
    private let client: ClaudeWebClient
    public init(sessions: any AccountSessionSource, client: ClaudeWebClient = ClaudeWebClient()) {
        self.sessions = sessions; self.client = client
    }
    public func collect(account: Account, lease: CollectionLease) async throws -> CollectionOutput {
        guard account.provider == .claude, lease.provider == .claude else { throw CoreError.identityMismatch }
        let session = try await sessions.session(for: account, lease: lease)
        try session.validate(lease)
        return try await client.scoped(to: session.webCookies).collect(cookieHeader: AuthenticatedSession.headerValue(session.cookieHeader), expected: session.identity)
    }
}
