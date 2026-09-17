import AIQuotaCore
import CodexBarCore
import Foundation

/// The unchanged bearer and its account scope go to the subscription service for authentication.
public struct CodexTokenUsageClient: Sendable {
    private let transport: any HTTPTransport
    private let now: @Sendable () -> Date
    public init(transport: any HTTPTransport = NativeHTTPTransport(allowedHosts: ["chatgpt.com"]),
                now: @escaping @Sendable () -> Date = { .now }) { self.transport = transport; self.now = now }
    public func collect(accessToken: String, expected identity: RemoteIdentity) async throws -> CollectionOutput {
        guard identity.product == "codex-subscription" else { throw CoreError.identityMismatch }
        var request = URLRequest(url: CodexSubscriptionCollector.endpoint, cachePolicy: .reloadIgnoringLocalCacheData, timeoutInterval: 30)
        request.setValue("Bearer \(try AuthenticatedSession.headerValue(accessToken))", forHTTPHeaderField: "Authorization")
        request.setValue("application/json", forHTTPHeaderField: "Accept")
        request.setValue("AIQuota-macOS", forHTTPHeaderField: "User-Agent")
        if let workspace = identity.workspace { request.setValue(try AuthenticatedSession.headerValue(workspace), forHTTPHeaderField: "ChatGPT-Account-Id") }
        try Task.checkCancellation()
        let response = try await transport.send(request)
        try Task.checkCancellation()
        let data = try HTTPResponsePolicy.body(response, now: now())
        guard response.status == 200, data.count <= 5 * 1_024 * 1_024 else { throw CollectorError.invalidResponse }
        let decoded: CodexUsageResponse
        do { decoded = try JSONDecoder().decode(CodexUsageResponse.self, from: data) }
        catch { throw CollectorError.invalidResponse }
        return CollectionOutput(report: try CodexBarBridge.codex(decoded, identity: identity, fetchedAt: now()), transferredBytes: data.count)
    }
}
