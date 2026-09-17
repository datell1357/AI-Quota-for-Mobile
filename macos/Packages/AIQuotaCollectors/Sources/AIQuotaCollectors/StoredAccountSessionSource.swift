import AIQuotaAuth
import AIQuotaCore
import Foundation

public struct StoredAccountSessionSource: AccountSessionSource {
    private let login: LoginCoordinator
    private let webProfiles: any WebCookieStore
    private let externalFiles: any CredentialFileReading
    private let externalKeychain: any ExternalKeychainReading
    private let cursorState: any CursorStateReading
    public init(login: LoginCoordinator, webProfiles: any WebCookieStore, externalFiles: any CredentialFileReading = ReadOnlyCredentialFile(),
                externalKeychain: any ExternalKeychainReading = ReadOnlyKeychainCredential(),
                cursorState: any CursorStateReading = ReadOnlyCursorState()) {
        self.login = login; self.webProfiles = webProfiles; self.externalFiles = externalFiles; self.externalKeychain = externalKeychain; self.cursorState = cursorState
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
        var validateSource: (@Sendable () async throws -> Void)?
        switch record.kind {
        case .oauth, .apiKey: token = record.secret
        case .webSession:
            if let profile = record.webProfileID {
                let url: URL
                switch account.provider {
                case .grok: url = URL(string: "https://grok.com/")!
                case .claude: url = URL(string: "https://claude.ai/")!
                case .codex: url = URL(string: "https://chatgpt.com/")!
                case .cursor: url = CursorWebClient.origin
                case .opencode: url = OpenCodeWebClient.origin
                case .kiro: url = KiroWebClient.origin
                case .gemini: url = GeminiWebClient.origin
                case .glm:
                    guard record.identity.product == GLMWebClient.product else { throw CoreError.identityMismatch }
                    token = try GLMWebClient.token(record.secret)
                    url = GLMWebClient.origin
                default: throw CollectorError.unsupported
                }
                let scoped = WebCookieSession(profileID: profile, origin: url, store: webProfiles,
                                              validate: { try await login.validateCollection(lease) })
                do { cookies = try await scoped.header(for: url, allowingEmpty: account.provider == .glm); webCookies = scoped }
                catch AuthenticationError.missingCredential { throw CollectorError.authenticationRequired }
                catch let error as CoreError { throw error }
                catch is CancellationError { throw CancellationError() }
                catch { throw CollectorError.credentialsUnavailable }
            } else { cookies = record.secret }
        case .externalApplication:
            if account.provider == .cursor, record.owner == .cursorApplication, let path = record.externalLocator {
                let connection = CursorAppConnection(state: cursorState)
                let selected = try await connection.read(path: path)
                cookies = selected.cookieHeader
                validateSource = {
                    try await connection.validate(path: path, snapshot: selected)
                    try await login.validateCollection(lease)
                }
                break
            }
            if account.provider == .claude, record.owner == .claudeCode {
                let source = try ClaudeCodeSource(record: record)
                let connection = ClaudeCodeConnection(files: externalFiles, keychain: externalKeychain)
                let selected = try await connection.read(source)
                token = selected.accessToken
                validateSource = {
                    try await connection.validate(source, snapshot: selected)
                    try await login.validateCollection(lease)
                }
                break
            }
            guard account.provider == .codex, record.owner == .codexCLI, let path = record.externalLocator else { throw CollectorError.unsupported }
            let connection = CodexCLIConnection(files: externalFiles)
            let selected = try await connection.read(path: path)
            guard selected.identity == record.identity else { throw CoreError.identityMismatch }
            token = selected.accessToken
            validateSource = {
                try await connection.validate(path: path, snapshot: selected)
                try await login.validateCollection(lease)
            }
        }
        return AuthenticatedSession(accountID: account.id, provider: account.provider, generation: lease.generation,
                                    sessionRevision: lease.sessionRevision, identity: record.identity,
                                    cookieHeader: cookies, accessToken: token, webCookies: webCookies, validateCurrentSource: validateSource)
    }
}
