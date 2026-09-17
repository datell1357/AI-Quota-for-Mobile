import AIQuotaAuth
import AIQuotaCore
import Foundation

public enum AntigravityAuthorizationError: Error, Equatable, Sendable {
    case configurationRequired, invalidResponse, missingScopes, offlineAccessRequired
}
public struct AntigravityOAuthConfiguration: Sendable, CustomStringConvertible, CustomDebugStringConvertible {
    public let clientID: String
    let clientSecret: String?
    public var description: String { "AntigravityOAuthConfiguration(redacted)" }
    public var debugDescription: String { description }
    public init(clientID: String, clientSecret: String? = nil) throws {
        guard clientID.utf8.count <= 256,
              clientID.range(of: #"^[0-9]+-[A-Za-z0-9_-]+\.apps\.googleusercontent\.com$"#, options: .regularExpression) == clientID.startIndex..<clientID.endIndex
        else { throw AntigravityAuthorizationError.configurationRequired }
        if let clientSecret {
            guard !clientSecret.isEmpty, clientSecret.utf8.count <= 512, clientSecret.unicodeScalars.allSatisfy({ (33...126).contains($0.value) }) else {
                throw AntigravityAuthorizationError.configurationRequired
            }
        }
        self.clientID = clientID; self.clientSecret = clientSecret
    }
}
public struct AntigravityAuthorizationRequest: Sendable, CustomStringConvertible, CustomDebugStringConvertible {
    public let authorizationURL: URL
    fileprivate let clientID: String, redirectURL: URL, proof: OAuthProofKey
    public var description: String { "AntigravityAuthorizationRequest(redacted)" }
    public var debugDescription: String { description }
}

/// Uses only this app's registered Desktop client and state-verified loopback callback.
public struct AntigravityOAuthClient: Sendable, OwnedOAuthRefresher {
    public static let scopes = ["https://www.googleapis.com/auth/cloud-platform", "https://www.googleapis.com/auth/userinfo.email", "https://www.googleapis.com/auth/userinfo.profile"]
    private let configuration: AntigravityOAuthConfiguration
    private let transport: any HTTPTransport
    private let api: AntigravityAPIClient
    private let now: @Sendable () -> Date
    public init(configuration: AntigravityOAuthConfiguration,
                transport: any HTTPTransport = NativeHTTPTransport(allowedHosts: ["oauth2.googleapis.com"], maximumBytes: 65_536),
                api: AntigravityAPIClient = AntigravityAPIClient(), now: @escaping @Sendable () -> Date = { .now }) {
        self.configuration = configuration; self.transport = transport; self.api = api; self.now = now
    }
    public func authorization(redirectURL: URL, proof: OAuthProofKey) throws -> AntigravityAuthorizationRequest {
        guard redirectURL.scheme == "http", redirectURL.host == "127.0.0.1", redirectURL.port.map({ (1...65535).contains($0) }) == true,
              redirectURL.path == "/", redirectURL.query == nil, redirectURL.fragment == nil, redirectURL.user == nil, redirectURL.password == nil else {
            throw AntigravityAuthorizationError.invalidResponse
        }
        var url = URLComponents(string: "https://accounts.google.com/o/oauth2/v2/auth")!
        url.queryItems = ["client_id":configuration.clientID, "redirect_uri":redirectURL.absoluteString, "response_type":"code",
            "scope":Self.scopes.joined(separator:" "), "code_challenge":proof.challenge, "code_challenge_method":"S256", "state":proof.state,
            "access_type":"offline", "prompt":"consent select_account"].sorted(by: { $0.key < $1.key }).map { URLQueryItem(name:$0.key,value:$0.value) }
        return AntigravityAuthorizationRequest(authorizationURL: url.url!, clientID: configuration.clientID, redirectURL: redirectURL, proof: proof)
    }
    public func exchange(_ request: AntigravityAuthorizationRequest, code: String, accountID: UUID, expected: RemoteIdentity?) async throws -> CredentialRecord {
        guard request.clientID == configuration.clientID, (1...4096).contains(code.utf8.count), code.unicodeScalars.allSatisfy({ (33...126).contains($0.value) }) else {
            throw AntigravityAuthorizationError.invalidResponse
        }
        let data = try await token(fields: ["code":code, "code_verifier":request.proof.verifier, "redirect_uri":request.redirectURL.absoluteString, "grant_type":"authorization_code"])
        return try await credential(data, accountID: accountID, expected: expected, old: nil)
    }
    public func refresh(_ old: CredentialRecord) async throws -> CredentialRecord {
        try old.validate()
        guard old.owner == .aiQuota, old.kind == .oauth, old.provider == .antigravity, old.identity.product == "antigravity-subscription",
              old.identity.workspace != nil, old.oauthClientID == configuration.clientID, let refresh = old.refreshToken,
              old.refreshExpiresAt.map({ $0 > now() }) != false else { throw CollectorError.authenticationRequired }
        try validateToken(refresh)
        let data = try await token(fields: ["grant_type":"refresh_token", "refresh_token":refresh])
        return try await credential(data, accountID: old.accountID, expected: old.identity, old: old)
    }
    private func credential(_ data: Data, accountID: UUID, expected: RemoteIdentity?, old: CredentialRecord?) async throws -> CredentialRecord {
        struct Token: Decodable { let access_token: String; let token_type: String; let expires_in: Int; let refresh_token: String?; let refresh_token_expires_in: Int?; let scope: String? }
        guard let value = try? JSONDecoder().decode(Token.self, from: data), value.token_type.lowercased() == "bearer",
              (1...31_622_400).contains(value.expires_in) else { throw AntigravityAuthorizationError.invalidResponse }
        try validateToken(value.access_token)
        if let scope = value.scope {
            guard scope.utf8.count <= 4096 else { throw AntigravityAuthorizationError.invalidResponse }
            let granted = Set(scope.split(separator:" ").map { item -> String in
                switch item { case "email": Self.scopes[1]; case "profile": Self.scopes[2]; default: String(item) }
            })
            guard Set(Self.scopes).isSubset(of: granted) else { throw AntigravityAuthorizationError.missingScopes }
        } else if old == nil { throw AntigravityAuthorizationError.missingScopes }
        guard let refresh = value.refresh_token ?? old?.refreshToken else { throw AntigravityAuthorizationError.offlineAccessRequired }
        try validateToken(refresh)
        let time = now(), expires = time.addingTimeInterval(Double(value.expires_in))
        let refreshExpires: Date?
        if let seconds = value.refresh_token_expires_in {
            guard (1...31_622_400).contains(seconds) else { throw AntigravityAuthorizationError.invalidResponse }
            refreshExpires = time.addingTimeInterval(Double(seconds))
        } else { refreshExpires = value.refresh_token == nil ? old?.refreshExpiresAt : nil }
        let found = try await api.discover(accessToken: value.access_token)
        guard expected == nil || found.identity == expected else { throw CoreError.identityMismatch }
        if old == nil { _ = try await api.collect(accessToken: value.access_token, expected: found.identity) }
        try Task.checkCancellation()
        guard expires > now() else { throw CollectorError.authenticationRequired }
        return try CredentialRecord(accountID: accountID, provider: .antigravity, identity: found.identity, kind: .oauth,
            secret: value.access_token, refreshToken: refresh, expiresAt: expires, oauthClientID: configuration.clientID, refreshExpiresAt: refreshExpires)
    }
    private func validateToken(_ value: String) throws {
        guard !value.isEmpty, value.utf8.count <= 16_384, value.unicodeScalars.allSatisfy({ (33...126).contains($0.value) }) else {
            throw AntigravityAuthorizationError.invalidResponse
        }
    }
    private func token(fields: [String: String]) async throws -> Data {
        var fields = fields; fields["client_id"] = configuration.clientID; fields["client_secret"] = configuration.clientSecret
        var request = URLRequest(url: URL(string:"https://oauth2.googleapis.com/token")!, cachePolicy:.reloadIgnoringLocalCacheData, timeoutInterval:30)
        request.httpMethod = "POST"
        let allowed = CharacterSet(charactersIn:"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-._~")
        request.httpBody = Data(fields.keys.sorted().map { $0 + "=" + fields[$0]!.addingPercentEncoding(withAllowedCharacters:allowed)! }.joined(separator:"&").utf8)
        request.setValue("application/x-www-form-urlencoded",forHTTPHeaderField:"Content-Type")
        request.setValue("application/json",forHTTPHeaderField:"Accept"); request.setValue("AIQuota-macOS",forHTTPHeaderField:"User-Agent")
        try Task.checkCancellation()
        let response = try await transport.send(request); try Task.checkCancellation()
        let data = [400,401].contains(response.status) ? response.body : try HTTPResponsePolicy.body(response,now:now())
        guard [200,400,401].contains(response.status), data.count <= 65536,
              response.headers["content-type"]?.split(separator:";").first?.trimmingCharacters(in:.whitespaces).lowercased() == "application/json" else { throw AntigravityAuthorizationError.invalidResponse }
        struct Failure: Decodable { let error: String? }
        guard let failure = try? JSONDecoder().decode(Failure.self,from:data) else { throw AntigravityAuthorizationError.invalidResponse }
        switch failure.error {
        case "invalid_grant", "access_denied": throw CollectorError.authenticationRequired
        case "invalid_client", "unauthorized_client": throw AntigravityAuthorizationError.configurationRequired
        case "invalid_scope": throw AntigravityAuthorizationError.missingScopes
        case nil: guard response.status == 200 else { throw AntigravityAuthorizationError.invalidResponse }
        default: throw AntigravityAuthorizationError.invalidResponse
        }
        return data
    }
}

public struct AntigravitySessionPreparation: Sendable {
    private let login: LoginCoordinator
    private let refresh: OAuthRefreshCoordinator
    private let now: @Sendable () -> Date
    public init(login: LoginCoordinator, authorization: AntigravityOAuthClient, now: @escaping @Sendable () -> Date = { .now }) {
        self.login = login; self.refresh = OAuthRefreshCoordinator(login:login,refresher:authorization); self.now = now
    }
    public func prepare(_ account: Account, _ lease: CollectionLease) async throws -> Bool {
        guard account.provider == .antigravity else { return false }
        try Task.checkCancellation()
        let record: CredentialRecord
        do { record = try await login.activeCredential(account.id,expectedGeneration:lease.generation,expectedSessionRevision:lease.sessionRevision) }
        catch is AuthenticationError { throw CollectorError.credentialsUnavailable }
        guard let expiry = record.expiresAt, expiry <= now().addingTimeInterval(60), record.refreshToken != nil else { return false }
        do { _ = try await refresh.refresh(account.id) }
        catch is AuthenticationError { throw CollectorError.credentialsUnavailable }
        catch AntigravityAuthorizationError.configurationRequired { throw CollectorError.authenticationRequired }
        catch is AntigravityAuthorizationError { throw CollectorError.invalidResponse }
        try Task.checkCancellation()
        return true
    }
}
