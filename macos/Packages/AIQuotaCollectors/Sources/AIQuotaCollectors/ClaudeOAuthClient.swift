import AIQuotaCore
import Foundation

/// Subscription usage only. Identity comes from the server, never from local CLI account hints.
public struct ClaudeOAuthClient: Sendable {
    public static let profileURL = URL(string: "https://api.anthropic.com/api/oauth/profile")!
    public static let usageURL = URL(string: "https://api.anthropic.com/api/oauth/usage")!
    private let transport: any HTTPTransport
    private let now: @Sendable () -> Date
    public init(transport: any HTTPTransport = NativeHTTPTransport(allowedHosts: ["api.anthropic.com"]),
                now: @escaping @Sendable () -> Date = { .now }) { self.transport = transport; self.now = now }
    public func collect(accessToken: String, expected: RemoteIdentity?) async throws -> CollectionOutput {
        if let expected, expected.product != "claude-subscription" || expected.workspace == nil { throw CoreError.identityMismatch }
        let beforeData = try await request(Self.profileURL, token: accessToken)
        let before = try profile(beforeData)
        guard expected == nil || expected == before.identity else { throw CoreError.identityMismatch }
        let usage = try await request(Self.usageURL, token: accessToken)
        let afterData = try await request(Self.profileURL, token: accessToken)
        guard try profile(afterData).identity == before.identity else { throw CoreError.identityMismatch }
        let report = try ClaudeUsageDecoder.decode(usage, identity: before.identity, fetchedAt: now(), plan: before.plan, source: .oauthAPI)
        return CollectionOutput(report: report, transferredBytes: beforeData.count + usage.count + afterData.count)
    }
    private func profile(_ data: Data) throws -> (identity: RemoteIdentity, plan: String?) {
        struct Profile: Decodable {
            struct Account: Decodable { let uuid: String }
            struct Organization: Decodable { let uuid: String; let rate_limit_tier: String? }
            let account: Account; let organization: Organization
        }
        guard let value = try? JSONDecoder().decode(Profile.self, from: data),
              let subject = UUID(uuidString: value.account.uuid), let workspace = UUID(uuidString: value.organization.uuid) else { throw CollectorError.invalidResponse }
        let plan: String? = switch value.organization.rate_limit_tier {
        case "default_claude_ai": "Free"
        case "default_claude_pro": "Pro"
        case "default_claude_max_5x": "Max 5×"
        case "default_claude_max_20x": "Max 20×"
        default: nil
        }
        return (try RemoteIdentity(subject: subject.uuidString.lowercased(), workspace: workspace.uuidString.lowercased(), product: "claude-subscription"), plan)
    }
    private func request(_ url: URL, token: String) async throws -> Data {
        var request = URLRequest(url: url, cachePolicy: .reloadIgnoringLocalCacheData, timeoutInterval: 30)
        request.setValue("Bearer \(try AuthenticatedSession.headerValue(token))", forHTTPHeaderField: "Authorization")
        request.setValue("application/json", forHTTPHeaderField: "Accept")
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        request.setValue("oauth-2025-04-20", forHTTPHeaderField: "anthropic-beta")
        request.setValue("AIQuota-macOS", forHTTPHeaderField: "User-Agent")
        try Task.checkCancellation()
        let response = try await transport.send(request)
        try Task.checkCancellation()
        let data = try HTTPResponsePolicy.body(response, now: now())
        guard response.status == 200, data.count <= 5 * 1_024 * 1_024 else { throw CollectorError.invalidResponse }
        return data
    }
}
