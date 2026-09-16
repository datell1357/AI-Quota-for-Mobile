import AIQuotaAuth
import AIQuotaCore
import Foundation

/// The caller owns begin/cancel. Failed verification never writes the submitted key.
public struct GLMAPIKeyLogin: Sendable {
    private let login: LoginCoordinator
    private let client: GLMAPIClient
    public init(login: LoginCoordinator, client: GLMAPIClient = GLMAPIClient()) {
        self.login = login; self.client = client
    }
    public func complete(_ attempt: LoginAttempt, apiKey: String, configuration: GLMAPIConfiguration,
                         expected: RemoteIdentity? = nil) async throws -> LoginOutcome {
        guard attempt.provider == .glm else { throw CoreError.identityMismatch }
        try await login.validateLogin(attempt)
        let key = try GLMAPIConfiguration.normalizedKey(apiKey)
        let output = try await client.collect(apiKey: key, configuration: configuration, expected: expected)
        guard !output.report.metrics.isEmpty else { throw GLMAPIError.noSubscription }
        try Task.checkCancellation()
        try await login.validateLogin(attempt)
        let record = try CredentialRecord(accountID: attempt.accountID, provider: .glm, identity: output.report.identity,
                                          kind: .apiKey, secret: key)
        return try await login.complete(attempt, verified: record)
    }
}
