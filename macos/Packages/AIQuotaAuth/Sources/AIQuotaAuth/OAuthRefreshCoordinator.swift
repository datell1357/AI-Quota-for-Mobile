import AIQuotaCore
import Foundation

public protocol OwnedOAuthRefresher: Sendable {
    /// Uses only AI Quota's registered OAuth client; returns the server-verified identity and rotated tokens.
    func refresh(_ credential: CredentialRecord) async throws -> CredentialRecord
}
public actor OAuthRefreshCoordinator {
    private let login: LoginCoordinator
    private let refresher: any OwnedOAuthRefresher
    private let didCoalesce: @Sendable (UUID) async -> Void
    private var inFlight: [UUID: Task<LoginOutcome, any Error>] = [:]
    public init(login: LoginCoordinator, refresher: any OwnedOAuthRefresher,
                didCoalesce: @escaping @Sendable (UUID) async -> Void = { _ in }) {
        self.login = login; self.refresher = refresher; self.didCoalesce = didCoalesce
    }
    public func refresh(_ accountID: UUID) async throws -> LoginOutcome {
        if let task = inFlight[accountID] {
            await didCoalesce(accountID)
            return try await task.value
        }
        let task = Task { [login, refresher] in
            let attempt = try await login.begin(accountID)
            do {
                let old = try await login.activeCredential(accountID)
                guard old.owner.mayRefreshInAIQuota, old.kind == .oauth else { throw AuthenticationError.externalOwner }
                guard old.refreshToken != nil else { throw AuthenticationError.invalidCredential }
                let updated = try await refresher.refresh(old)
                guard updated.kind == .oauth, updated.owner == .aiQuota else { throw AuthenticationError.invalidCredential }
                return try await login.complete(attempt, verified: updated)
            } catch {
                _ = await login.cancel(attempt)
                throw error
            }
        }
        inFlight[accountID] = task
        defer { inFlight[accountID] = nil }
        return try await task.value
    }
}
