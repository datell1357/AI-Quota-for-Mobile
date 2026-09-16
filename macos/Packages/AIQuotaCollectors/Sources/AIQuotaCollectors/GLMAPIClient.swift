import AIQuotaCore
import Foundation

public struct GLMAPIClient: Sendable {
    private let transport: any HTTPTransport
    private let now: @Sendable () -> Date
    public init(transport: any HTTPTransport = NativeHTTPTransport(allowedHosts: ["api.z.ai", "open.bigmodel.cn"]),
                now: @escaping @Sendable () -> Date = { .now }) {
        self.transport = transport; self.now = now
    }
    public func collect(apiKey: String, configuration: GLMAPIConfiguration, expected: RemoteIdentity? = nil) async throws -> CollectionOutput {
        let key = try GLMAPIConfiguration.normalizedKey(apiKey)
        let binding = try configuration.binding(apiKey: key)
        if let expected, expected != binding { throw CoreError.identityMismatch }
        var transferred = 0
        func request(bearer: Bool) async throws -> HTTPResult {
            try Task.checkCancellation()
            var request = URLRequest(url: configuration.endpoint, cachePolicy: .reloadIgnoringLocalCacheData, timeoutInterval: 30)
            request.setValue(bearer ? "Bearer \(key)" : key, forHTTPHeaderField: "Authorization")
            request.setValue("application/json", forHTTPHeaderField: "Accept")
            request.setValue("AIQuota-macOS", forHTTPHeaderField: "User-Agent")
            if configuration.scope == .team {
                request.setValue(configuration.organization, forHTTPHeaderField: "Bigmodel-Organization")
                request.setValue(configuration.project, forHTTPHeaderField: "Bigmodel-Project")
            }
            let response = try await transport.send(request)
            try Task.checkCancellation()
            return response
        }
        func decode(_ response: HTTPResult) throws -> GLMQuotaDecoder.Quota {
            if response.status == 403 { throw CollectorError.authenticationRequired }
            return try GLMQuotaDecoder.decode(HTTPResponsePolicy.body(response, now: now()), fetchedAt: now())
        }
        let first = try await request(bearer: true); transferred += first.body.count
        do {
            let quota: GLMQuotaDecoder.Quota
            var initial: GLMQuotaDecoder.Quota?
            var retry = [400, 401, 403, 404].contains(first.status)
            if !retry {
                do { initial = try decode(first); retry = initial?.hasPlanQuota == false }
                catch CollectorError.authenticationRequired { retry = true }
            }
            if retry {
                do {
                    let second = try await request(bearer: false); transferred += second.body.count
                    let alternative = try decode(second)
                    quota = alternative.hasPlanQuota ? alternative : initial ?? alternative
                }
                catch CollectorError.rateLimited(let until) { throw CollectorError.rateLimited(until: until) }
                catch is CancellationError { throw CancellationError() }
                catch {
                    guard let initial else { throw error }
                    // A legacy raw-header probe must not discard already verified MCP usage.
                    quota = initial
                }
            } else {
                guard let initial else { throw CollectorError.invalidResponse }
                quota = initial
            }
            try Task.checkCancellation()
            return CollectionOutput(report: UsageReport(identity: binding, fetchedAt: now(), plan: quota.plan, metrics: quota.metrics),
                                    transferredBytes: transferred)
        } catch GLMAPIError.noSubscription {
            try Task.checkCancellation()
            return CollectionOutput(report: UsageReport(identity: binding, fetchedAt: now(), plan: "No subscription", metrics: []),
                                    transferredBytes: transferred)
        }
    }
}

public struct GLMAPICollector: UsageCollector {
    private let sessions: any AccountSessionSource
    private let client: GLMAPIClient
    public init(sessions: any AccountSessionSource,
                transport: any HTTPTransport = NativeHTTPTransport(allowedHosts: ["api.z.ai", "open.bigmodel.cn"]),
                now: @escaping @Sendable () -> Date = { .now }) {
        self.sessions = sessions; self.client = GLMAPIClient(transport: transport, now: now)
    }
    public func collect(account: Account, lease: CollectionLease) async throws -> CollectionOutput {
        guard account.provider == .glm, lease.provider == .glm else { throw CoreError.identityMismatch }
        let session = try await sessions.session(for: account, lease: lease)
        try session.validate(lease)
        let configuration = try GLMAPIConfiguration(binding: session.identity)
        let key = try AuthenticatedSession.headerValue(session.accessToken)
        return try await client.collect(apiKey: key, configuration: configuration, expected: session.identity)
    }
}
