import AIQuotaAuth
import AIQuotaCore
import Foundation

public enum CopilotAuthorizationError: Error, Equatable, Sendable {
    case configurationRequired, accessDenied, expiredCode, deviceFlowDisabled, invalidClient, invalidResponse
}

public struct CopilotOAuthConfiguration: Sendable, Equatable {
    public let clientID: String
    public init(clientID: String) throws {
        guard clientID.range(of: #"^[A-Za-z0-9_.-]{8,128}$"#, options: .regularExpression) != nil else {
            throw CopilotAuthorizationError.configurationRequired
        }
        self.clientID = clientID
    }
}

public struct CopilotDeviceGrant: Sendable, CustomStringConvertible, CustomDebugStringConvertible {
    public let userCode: String
    public let expiresAt: Date
    public static let verificationURL = URL(string: "https://github.com/login/device")!
    fileprivate let deviceCode: String, clientID: String
    fileprivate let deadline: TimeInterval, interval: TimeInterval
    public var description: String { "CopilotDeviceGrant(redacted)" }
    public var debugDescription: String { description }
}

/// Public-client device flow. No borrowed client IDs, client secret, shared cookies or browser credentials.
public struct CopilotDeviceAuthorization: Sendable, OwnedOAuthRefresher {
    private let configuration: CopilotOAuthConfiguration
    private let transport: any HTTPTransport
    private let api: CopilotAPIClient
    private let now: @Sendable () -> Date
    private let uptime: @Sendable () -> TimeInterval
    private let sleep: @Sendable (TimeInterval) async throws -> Void
    public init(configuration: CopilotOAuthConfiguration,
                transport: any HTTPTransport = NativeHTTPTransport(allowedHosts: ["github.com"], maximumBytes: 65_536),
                api: CopilotAPIClient = CopilotAPIClient(), now: @escaping @Sendable () -> Date = { .now },
                uptime: @escaping @Sendable () -> TimeInterval = { ProcessInfo.processInfo.systemUptime },
                sleep: @escaping @Sendable (TimeInterval) async throws -> Void = { try await Task.sleep(for: .seconds($0)) }) {
        self.configuration = configuration; self.transport = transport; self.api = api
        self.now = now; self.uptime = uptime; self.sleep = sleep
    }
    public func begin() async throws -> CopilotDeviceGrant {
        let started = uptime(), date = now()
        let data = try await post("/login/device/code", fields: ["client_id": configuration.clientID, "scope": "read:user"])
        struct Grant: Decodable { let device_code: String; let user_code: String; let verification_uri: String; let expires_in: Int; let interval: Int }
        try checkError(data)
        guard let grant = try? JSONDecoder().decode(Grant.self, from: data),
              grant.device_code.range(of: #"^[A-Za-z0-9_-]{20,256}$"#, options: .regularExpression) != nil,
              grant.user_code.range(of: #"^[A-Z0-9]{4}-[A-Z0-9]{4}$"#, options: .regularExpression) != nil,
              grant.verification_uri == CopilotDeviceGrant.verificationURL.absoluteString,
              (1...3_600).contains(grant.expires_in), (1...300).contains(grant.interval), grant.interval < grant.expires_in
        else { throw CopilotAuthorizationError.invalidResponse }
        return CopilotDeviceGrant(userCode: grant.user_code, expiresAt: date.addingTimeInterval(Double(grant.expires_in)),
                                  deviceCode: grant.device_code, clientID: configuration.clientID,
                                  deadline: started + Double(grant.expires_in), interval: Double(grant.interval))
    }
    public func authorize(_ grant: CopilotDeviceGrant, accountID: UUID, expected: RemoteIdentity?) async throws -> CredentialRecord {
        guard grant.clientID == configuration.clientID else { throw CopilotAuthorizationError.invalidClient }
        var interval = grant.interval
        while true {
            try Task.checkCancellation()
            guard uptime() + interval < grant.deadline, now().addingTimeInterval(interval) < grant.expiresAt else { throw CopilotAuthorizationError.expiredCode }
            try await sleep(interval); try Task.checkCancellation()
            guard uptime() < grant.deadline, now() < grant.expiresAt else { throw CopilotAuthorizationError.expiredCode }
            let data = try await post("/login/oauth/access_token", fields: ["client_id": configuration.clientID, "device_code": grant.deviceCode,
                "grant_type": "urn:ietf:params:oauth:grant-type:device_code"])
            guard uptime() < grant.deadline, now() < grant.expiresAt else { throw CopilotAuthorizationError.expiredCode }
            let error = try oauthError(data)
            if error?.error == "authorization_pending" { continue }
            if error?.error == "slow_down" {
                if let value = error?.interval {
                    guard value > 0, value <= 3_600 else { throw CopilotAuthorizationError.invalidResponse }
                    interval = max(interval + 5, Double(value))
                } else { interval += 5 }
                continue
            }
            try checkError(data)
            return try await credential(data, accountID: accountID, expected: expected)
        }
    }
    public func refresh(_ old: CredentialRecord) async throws -> CredentialRecord {
        try old.validate()
        guard old.owner == .aiQuota, old.kind == .oauth, old.provider == .copilot,
              old.oauthClientID == configuration.clientID, old.identity.product == "copilot-subscription", old.identity.workspace == nil,
              let refresh = old.refreshToken, old.refreshExpiresAt.map({ $0 > now() }) != false else { throw CollectorError.authenticationRequired }
        try validateToken(refresh)
        let data = try await post("/login/oauth/access_token", fields: ["client_id": configuration.clientID, "grant_type": "refresh_token", "refresh_token": refresh])
        try checkError(data)
        return try await credential(data, accountID: old.accountID, expected: old.identity, requiresRotation: true)
    }
    private func credential(_ data: Data, accountID: UUID, expected: RemoteIdentity?, requiresRotation: Bool = false) async throws -> CredentialRecord {
        struct Token: Decodable { let access_token: String; let token_type: String; let scope: String; let expires_in: Int?; let refresh_token: String?; let refresh_token_expires_in: Int? }
        guard let value = try? JSONDecoder().decode(Token.self, from: data), value.token_type.lowercased() == "bearer",
              value.scope.utf8.count <= 2_048 else { throw CopilotAuthorizationError.invalidResponse }
        let scopes = Set(value.scope.split(whereSeparator: { $0 == "," || $0 == " " }).map(String.init))
        guard scopes.contains("read:user") || scopes.contains("user") else { throw CopilotAuthorizationError.accessDenied }
        try validateToken(value.access_token)
        let time = now()
        func expiry(_ seconds: Int?) throws -> Date? {
            guard let seconds else { return nil }
            guard (1...31_622_400).contains(seconds) else { throw CopilotAuthorizationError.invalidResponse }
            return time.addingTimeInterval(Double(seconds))
        }
        let expires = try expiry(value.expires_in), refreshExpires = try expiry(value.refresh_token_expires_in)
        if let refresh = value.refresh_token {
            try validateToken(refresh)
            guard expires != nil, refreshExpires != nil else { throw CopilotAuthorizationError.invalidResponse }
        } else if refreshExpires != nil || requiresRotation { throw CopilotAuthorizationError.invalidResponse }
        let found = try await api.discover(accessToken: value.access_token)
        let identity = try RemoteIdentity(subject: found.subject, product: "copilot-subscription")
        guard expected == nil || expected == identity else { throw CoreError.identityMismatch }
        // A GitHub token alone does not establish permission to the Copilot API.
        if !requiresRotation { _ = try await api.collect(accessToken: value.access_token, expected: identity) }
        try Task.checkCancellation()
        guard expires.map({ $0 > now() }) != false else { throw CollectorError.authenticationRequired }
        return try CredentialRecord(accountID: accountID, provider: .copilot, identity: identity, kind: .oauth,
            secret: value.access_token, refreshToken: value.refresh_token, expiresAt: expires,
            oauthClientID: configuration.clientID, refreshExpiresAt: refreshExpires)
    }
    private func validateToken(_ token: String) throws {
        guard !token.isEmpty, token.utf8.count <= 16_384, token.unicodeScalars.allSatisfy({ (33...126).contains($0.value) }) else {
            throw CopilotAuthorizationError.invalidResponse
        }
    }
    private struct Failure: Decodable { let error: String?; let interval: Int? }
    private func oauthError(_ data: Data) throws -> Failure? {
        guard let value = try? JSONDecoder().decode(Failure.self, from: data) else { throw CopilotAuthorizationError.invalidResponse }
        return value
    }
    private func checkError(_ data: Data) throws {
        switch try oauthError(data)?.error {
        case nil: return
        case "access_denied": throw CopilotAuthorizationError.accessDenied
        case "expired_token", "token_expired": throw CopilotAuthorizationError.expiredCode
        case "device_flow_disabled": throw CopilotAuthorizationError.deviceFlowDisabled
        case "incorrect_client_credentials": throw CopilotAuthorizationError.invalidClient
        case "bad_refresh_token": throw CollectorError.authenticationRequired
        default: throw CopilotAuthorizationError.invalidResponse
        }
    }
    private func post(_ path: String, fields: [String:String]) async throws -> Data {
        var request = URLRequest(url: URL(string: "https://github.com" + path)!, cachePolicy: .reloadIgnoringLocalCacheData, timeoutInterval: 30)
        request.httpMethod = "POST"
        let allowed = CharacterSet(charactersIn: "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-._~")
        request.httpBody = Data(fields.keys.sorted().map { $0 + "=" + fields[$0]!.addingPercentEncoding(withAllowedCharacters: allowed)! }.joined(separator: "&").utf8)
        request.setValue("application/x-www-form-urlencoded", forHTTPHeaderField: "Content-Type")
        request.setValue("application/json", forHTTPHeaderField: "Accept"); request.setValue("AIQuota-macOS", forHTTPHeaderField: "User-Agent")
        try Task.checkCancellation()
        let response = try await transport.send(request); try Task.checkCancellation()
        let data = response.status == 400 ? response.body : try HTTPResponsePolicy.body(response, now: now())
        guard [200, 400].contains(response.status), data.count <= 65_536,
              response.headers["content-type"]?.split(separator: ";").first?.lowercased() == "application/json" else {
            throw CopilotAuthorizationError.invalidResponse
        }
        if response.status == 400, try oauthError(data)?.error == nil { throw CopilotAuthorizationError.invalidResponse }
        return data
    }
}

/// Called within the one collection coordinator's reserved account task, before collection.
public struct CopilotSessionPreparation: Sendable {
    private let login: LoginCoordinator
    private let refresh: OAuthRefreshCoordinator
    private let now: @Sendable () -> Date
    public init(login: LoginCoordinator, authorization: CopilotDeviceAuthorization, now: @escaping @Sendable () -> Date = { .now }) {
        self.login = login; self.refresh = OAuthRefreshCoordinator(login: login, refresher: authorization); self.now = now
    }
    public func prepare(_ account: Account, _ lease: CollectionLease) async throws -> Bool {
        guard account.provider == .copilot else { return false }
        try Task.checkCancellation()
        let record: CredentialRecord
        do { record = try await login.activeCredential(account.id, expectedGeneration: lease.generation, expectedSessionRevision: lease.sessionRevision) }
        catch is AuthenticationError { throw CollectorError.credentialsUnavailable }
        guard let expiry = record.expiresAt, expiry <= now().addingTimeInterval(60), record.refreshToken != nil else { return false }
        do { _ = try await refresh.refresh(account.id) }
        catch is AuthenticationError { throw CollectorError.credentialsUnavailable }
        catch is CopilotAuthorizationError { throw CollectorError.invalidResponse }
        try Task.checkCancellation()
        return true
    }
}
