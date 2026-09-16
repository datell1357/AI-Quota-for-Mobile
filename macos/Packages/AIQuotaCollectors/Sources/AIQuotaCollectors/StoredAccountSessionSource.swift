import AIQuotaAuth
import AIQuotaCore
import Foundation

public struct StoredAccountSessionSource: AccountSessionSource {
    private let login: LoginCoordinator
    private let webProfiles: any WebCookieStore
    public init(login: LoginCoordinator, webProfiles: any WebCookieStore) {
        self.login = login; self.webProfiles = webProfiles
    }
    public func session(for account: Account, lease: CollectionLease) async throws -> AuthenticatedSession {
        guard account.id == lease.accountID, account.provider == lease.provider else { throw CoreError.identityMismatch }
        let record: CredentialRecord
        do {
            record = try await login.activeCredential(account.id, expectedGeneration: lease.generation,
                                                     expectedSessionRevision: lease.sessionRevision)
        } catch is AuthenticationError { throw CollectorError.credentialsUnavailable }
        guard record.identity == lease.identity else { throw CoreError.identityMismatch }
        if let expiry = record.expiresAt, expiry <= .now { throw CollectorError.authenticationRequired }
        var cookies: String?
        var token: String?
        var webCookies: WebCookieSession?
        switch record.kind {
        case .oauth, .apiKey: token = record.secret
        case .webSession:
            if let profile = record.webProfileID {
                let url: URL
                switch account.provider {
                case .grok: url = URL(string: "https://grok.com/")!
                case .claude: url = URL(string: "https://claude.ai/")!
                case .codex: url = URL(string: "https://chatgpt.com/")!
                default: throw CollectorError.unsupported
                }
                let scoped = WebCookieSession(profileID: profile, origin: url, store: webProfiles,
                                              validate: { try await login.validateCollection(lease) })
                do { cookies = try await scoped.header(for: url); webCookies = scoped }
                catch AuthenticationError.missingCredential { throw CollectorError.authenticationRequired }
                catch let error as CoreError { throw error }
                catch is CancellationError { throw CancellationError() }
                catch { throw CollectorError.credentialsUnavailable }
            } else { cookies = record.secret }
        case .externalApplication:
            // Local CLI/app adapters must verify the selected external source on every read.
            // Do not silently substitute an active global CLI account.
            throw CollectorError.unsupported
        }
        return AuthenticatedSession(accountID: account.id, provider: account.provider, generation: lease.generation,
                                    sessionRevision: lease.sessionRevision, identity: record.identity,
                                    cookieHeader: cookies, accessToken: token, webCookies: webCookies)
    }
}
