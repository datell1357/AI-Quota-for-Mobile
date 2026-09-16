import AIQuotaCore
import Foundation

public struct AntigravityAccount: Sendable {
    public let identity: RemoteIdentity
    public let email: String
    public let plan: String?
}

/// Reads only the selected app-owned OAuth token. No app credential discovery,
/// onboarding, global active-account fallback or external refresh-token rotation.
public struct AntigravityAPIClient: Sendable {
    private let transport: any HTTPTransport
    private let now: @Sendable () -> Date
    public init(transport: any HTTPTransport = NativeHTTPTransport(allowedHosts: ["www.googleapis.com", "daily-cloudcode-pa.googleapis.com"], maximumBytes: 1_048_576),
                now: @escaping @Sendable () -> Date = { .now }) { self.transport = transport; self.now = now }

    public func discover(accessToken: String) async throws -> AntigravityAccount {
        let token = try token(accessToken), before = try await user(token)
        let context = try await context(token)
        let after = try await user(token)
        guard before.user.id == after.user.id else { throw CoreError.identityMismatch }
        return AntigravityAccount(identity: try RemoteIdentity(subject: before.user.id, workspace: context.project,
                                                               product: "antigravity-subscription"), email: after.user.email, plan: context.plan)
    }
    public func collect(accessToken: String, expected identity: RemoteIdentity) async throws -> CollectionOutput {
        guard identity.product == "antigravity-subscription", identity.workspace != nil else { throw CoreError.identityMismatch }
        let token = try token(accessToken), before = try await user(token)
        guard before.user.id == identity.subject else { throw CoreError.identityMismatch }
        let start = try await context(token)
        guard start.project == identity.workspace else { throw CoreError.identityMismatch }
        let body = ["project": start.project]
        let models = try await request("fetchAvailableModels", token: token, body: body, optionalPermission: true)
        let quota = try await request("retrieveUserQuota", token: token, body: body, optionalPermission: true)
        let report = try AntigravityUsageDecoder.decode(models: models.data, verifiedQuota: quota.data,
                                                        identity: identity, plan: start.plan, fetchedAt: now())
        let end = try await context(token), after = try await user(token)
        guard after.user.id == identity.subject, end.project == identity.workspace else { throw CoreError.identityMismatch }
        try Task.checkCancellation()
        return CollectionOutput(report: report, transferredBytes: before.bytes + start.bytes + models.bytes + quota.bytes + end.bytes + after.bytes)
    }
    private func token(_ raw: String) throws -> String {
        guard !raw.isEmpty, raw.utf8.count <= 16_384, raw.unicodeScalars.allSatisfy({ (33...126).contains($0.value) }) else { throw CollectorError.authenticationRequired }
        return raw
    }
    private struct User: Decodable { let id: String, email: String, verified_email: Bool }
    private func user(_ token: String) async throws -> (user: User, bytes: Int) {
        let response = try await request(nil, token: token)
        guard let data = response.data else { throw CollectorError.invalidResponse }
        let user = try AntigravityUsageDecoder.parse(User.self, data)
        guard (1...64).contains(user.id.utf8.count), user.id.unicodeScalars.allSatisfy({ (48...57).contains($0.value) }), user.verified_email,
              user.email.contains("@") else { throw CollectorError.invalidResponse }
        _ = try AntigravityUsageDecoder.text(user.email)
        return (user, response.bytes)
    }
    private func context(_ token: String) async throws -> (project: String, plan: String?, bytes: Int) {
        let response = try await request("loadCodeAssist", token: token, body: [
            "metadata": ["ideName": "antigravity", "ideType": "ANTIGRAVITY", "ideVersion": "2.0.0", "pluginVersion": "2.0.0",
                         "platform": "PLATFORM_UNSPECIFIED", "updateChannel": "stable", "pluginType": "GEMINI"],
            "mode": "FULL_ELIGIBILITY_CHECK"])
        guard let data = response.data else { throw CollectorError.invalidResponse }
        let value = try AntigravityUsageDecoder.parse(Context.self, data)
        guard let project = value.cloudaicompanionProject?.id ?? value.project?.id else { throw CollectorError.unsupported }
        try AntigravityUsageDecoder.identifier(project)
        let plan = value.paidTier?.title ?? value.currentTier?.title ?? value.planInfo?.planType
        return (project, try plan.map(AntigravityUsageDecoder.text), response.bytes)
    }
    private func request(_ method: String?, token: String, body: [String: Any]? = nil,
                         optionalPermission: Bool = false) async throws -> (data: Data?, bytes: Int) {
        let url = method.map { "https://daily-cloudcode-pa.googleapis.com/v1internal:" + $0 }
            ?? "https://www.googleapis.com/oauth2/v2/userinfo"
        var request = URLRequest(url: URL(string: url)!, cachePolicy: .reloadIgnoringLocalCacheData, timeoutInterval: 30)
        request.httpMethod = method == nil ? "GET" : "POST"
        request.setValue("Bearer " + token, forHTTPHeaderField: "Authorization")
        request.setValue("application/json", forHTTPHeaderField: "Accept")
        request.setValue("AIQuota-macOS", forHTTPHeaderField: "User-Agent")
        if let body {
            request.setValue("application/json", forHTTPHeaderField: "Content-Type")
            request.httpBody = try JSONSerialization.data(withJSONObject: body, options: .sortedKeys)
        }
        try Task.checkCancellation()
        let response = try await transport.send(request); try Task.checkCancellation()
        guard response.body.count <= 1_048_576 else { throw CollectorError.invalidResponse }
        if response.status == 403 {
            if let retry = HTTPResponsePolicy.retryDate(response.headers["retry-after"], now: now()) { throw CollectorError.rateLimited(until: retry) }
            if optionalPermission { return (nil, response.body.count) }
        }
        let data = try HTTPResponsePolicy.body(response, now: now())
        let contentType = response.headers["content-type"]?.split(separator: ";").first?.trimmingCharacters(in: .whitespaces).lowercased()
        guard response.status == 200, contentType == "application/json" else { throw CollectorError.invalidResponse }
        return (data, data.count)
    }
    private struct Context: Decodable {
        let cloudaicompanionProject: Project?, project: Project?, paidTier: Tier?, currentTier: Tier?, planInfo: Plan?
    }
    private struct Tier: Decodable {
        let displayName: String?, name: String?, id: String?
        var title: String? { displayName ?? name ?? id }
    }
    private struct Plan: Decodable { let planType: String? }
    private struct Project: Decodable {
        let id: String?
        private enum CodingKeys: CodingKey { case id, projectId }
        init(from decoder: any Decoder) throws {
            if let value = try? decoder.singleValueContainer().decode(String.self) { id = value; return }
            let values = try decoder.container(keyedBy: CodingKeys.self)
            id = try values.decodeIfPresent(String.self, forKey: .id) ?? values.decodeIfPresent(String.self, forKey: .projectId)
        }
    }
}

public struct AntigravitySubscriptionCollector: UsageCollector {
    private let sessions: any AccountSessionSource
    private let client: AntigravityAPIClient
    public init(sessions: any AccountSessionSource,
                transport: any HTTPTransport = NativeHTTPTransport(allowedHosts: ["www.googleapis.com", "daily-cloudcode-pa.googleapis.com"], maximumBytes: 1_048_576),
                now: @escaping @Sendable () -> Date = { .now }) { self.sessions = sessions; client = AntigravityAPIClient(transport: transport, now: now) }
    public func collect(account: Account, lease: CollectionLease) async throws -> CollectionOutput {
        guard account.provider == .antigravity, lease.provider == .antigravity else { throw CoreError.identityMismatch }
        let session = try await sessions.session(for: account, lease: lease); try session.validate(lease)
        guard session.cookieHeader == nil, session.webCookies == nil else { throw CollectorError.unsupported }
        return try await client.collect(accessToken: AuthenticatedSession.headerValue(session.accessToken), expected: session.identity)
    }
}
