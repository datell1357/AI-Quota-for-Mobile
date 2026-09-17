import AIQuotaAuth
import AIQuotaCore
import Foundation
import Testing
@testable import AIQuotaCollectors

private let aaConfiguration = try! AntigravityOAuthConfiguration(clientID: "12345-aiquotafixture.apps.googleusercontent.com")
private let aaToken = #"{"access_token":"synthetic-new-access","token_type":"Bearer","expires_in":3600,"refresh_token":"synthetic-new-refresh","scope":"https://www.googleapis.com/auth/cloud-platform email profile","refresh_token_expires_in":86400}"#
private func aaJSON(_ text: String, status: Int = 200) -> HTTPResult { HTTPResult(status: status, headers: ["Content-Type":"application/json"], body: Data(text.utf8)) }
private func aaIdentity(_ subject: String = "12345", project: String = "fixture-project") throws -> RemoteIdentity {
    try RemoteIdentity(subject: subject, workspace: project, product: "antigravity-subscription")
}
private actor AAHTTP: HTTPTransport {
    var response = aaJSON(aaToken)
    private(set) var requests: [URLRequest] = []
    func set(_ value: HTTPResult) { response = value }
    func send(_ request: URLRequest) -> HTTPResult {
        requests.append(request)
        #expect(request.url?.absoluteString == "https://oauth2.googleapis.com/token" && request.httpMethod == "POST")
        #expect(request.value(forHTTPHeaderField: "Cookie") == nil && request.value(forHTTPHeaderField: "Authorization") == nil)
        #expect(request.value(forHTTPHeaderField: "Content-Type") == "application/x-www-form-urlencoded")
        return response
    }
}
private actor AAAPI: HTTPTransport {
    var subject = "12345", project = "fixture-project", denyQuota = false
    private(set) var requests: [URLRequest] = []
    func change(subject: String? = nil, project: String? = nil, denyQuota: Bool = false) {
        if let subject { self.subject = subject }; if let project { self.project = project }; self.denyQuota = denyQuota
    }
    func send(_ request: URLRequest) -> HTTPResult {
        requests.append(request)
        #expect(request.value(forHTTPHeaderField: "Cookie") == nil)
        switch request.url?.path {
        case "/oauth2/v2/userinfo": return aaJSON("{\"id\":\"\(subject)\",\"email\":\"fixture@example.invalid\",\"verified_email\":true}")
        case "/v1internal:loadCodeAssist": return aaJSON("{\"cloudaicompanionProject\":\"\(project)\",\"paidTier\":{\"name\":\"Google AI Pro\"}}")
        case "/v1internal:fetchAvailableModels": return aaJSON(#"{"models":{"gemini-test":{"displayName":"Gemini test","quotaInfo":{"remainingFraction":1}}}}"#)
        case "/v1internal:retrieveUserQuota": return denyQuota ? aaJSON("{}", status: 403) : aaJSON(#"{"buckets":[{"modelId":"gemini-test","remainingFraction":0.8}]}"#)
        default: Issue.record("Unexpected or state-changing Antigravity endpoint"); return aaJSON("{}", status: 400)
        }
    }
}
private func aaClient(_ http: AAHTTP, _ api: AAAPI, time: Date = .now, configuration: AntigravityOAuthConfiguration = aaConfiguration) -> AntigravityOAuthClient {
    AntigravityOAuthClient(configuration: configuration, transport: http, api: AntigravityAPIClient(transport: api, now: { time }), now: { time })
}
private func aaRequest(_ client: AntigravityOAuthClient) throws -> AntigravityAuthorizationRequest {
    try client.authorization(redirectURL: URL(string: "http://127.0.0.1:54321/")!, proof: OAuthProofKey())
}
private func aaForm(_ request: URLRequest) throws -> [String:String] {
    let body = try #require(request.httpBody)
    let components = try #require(URLComponents(string: "https://fixture.invalid/?" + String(decoding: body, as: UTF8.self)))
    return Dictionary(uniqueKeysWithValues: (components.queryItems ?? []).map { ($0.name, $0.value ?? "") })
}

@Test func antigravityAuthorizationBindsPKCEStateAndLoopbackWithoutLeakingVerifierOrSecret() async throws {
    let http = AAHTTP(), api = AAAPI(), configuration = try AntigravityOAuthConfiguration(clientID: aaConfiguration.clientID, clientSecret: "synthetic-native-secret")
    let client = aaClient(http, api, configuration: configuration), proof = try OAuthProofKey(), redirect = URL(string: "http://127.0.0.1:54321/")!
    let request = try client.authorization(redirectURL: redirect, proof: proof)
    let url = try #require(URLComponents(url: request.authorizationURL, resolvingAgainstBaseURL: false))
    let query = Dictionary(uniqueKeysWithValues: url.queryItems!.map { ($0.name, $0.value!) })
    #expect(url.scheme == "https" && url.host == "accounts.google.com" && url.path == "/o/oauth2/v2/auth")
    #expect(query["state"] == proof.state && query["code_challenge"] == proof.challenge && query["code_challenge_method"] == "S256")
    #expect(query["redirect_uri"] == redirect.absoluteString && query["access_type"] == "offline" && query["prompt"] == "consent select_account")
    #expect(query["scope"] == AntigravityOAuthClient.scopes.joined(separator: " "))
    #expect(!request.authorizationURL.absoluteString.contains(proof.verifier) && query["client_secret"] == nil)
    let record = try await client.exchange(request, code: "synthetic/code+value", accountID: UUID(), expected: nil)
    let form = try aaForm(await http.requests[0])
    #expect(form["code_verifier"] == proof.verifier && form["code"] == "synthetic/code+value" && form["redirect_uri"] == redirect.absoluteString)
    #expect(form["client_secret"] == "synthetic-native-secret" && form["client_id"] == configuration.clientID && form["grant_type"] == "authorization_code")
    #expect(record.identity == (try aaIdentity()) && record.oauthClientID == configuration.clientID && record.refreshToken == "synthetic-new-refresh")
    #expect(!String(reflecting: request).contains(proof.state) && !String(reflecting: configuration).contains("synthetic"))
}

@Test func antigravityAuthorizationRejectsWrongRedirectClientAndCodeBeforeSending() async throws {
    let http = AAHTTP(), api = AAAPI(), client = aaClient(http, api)
    for raw in ["https://127.0.0.1:54321/", "http://localhost:54321/", "http://0.0.0.0:54321/", "http://127.0.0.1/", "http://127.0.0.1:54321/callback", "http://user@127.0.0.1:54321/", "http://127.0.0.1:54321/?x=y"] {
        #expect(throws: AntigravityAuthorizationError.invalidResponse) { try client.authorization(redirectURL: URL(string: raw)!, proof: OAuthProofKey()) }
    }
    for value in ["", "$(AIQUOTA_GOOGLE_OAUTH_CLIENT_ID)", "123-test.apps.googleusercontent.com\n", "other.invalid"] {
        #expect(throws: AntigravityAuthorizationError.configurationRequired) { try AntigravityOAuthConfiguration(clientID: value) }
    }
    let other = aaClient(http, api, configuration: try AntigravityOAuthConfiguration(clientID: "67890-otherfixture.apps.googleusercontent.com"))
    await #expect(throws: AntigravityAuthorizationError.invalidResponse) { try await client.exchange(aaRequest(other), code: "x", accountID: UUID(), expected: nil) }
    for code in ["", "bad\ncode", String(repeating: "x", count: 4097)] {
        await #expect(throws: AntigravityAuthorizationError.invalidResponse) { try await client.exchange(aaRequest(client), code: code, accountID: UUID(), expected: nil) }
    }
    #expect(await http.requests.isEmpty)
}

@Test func antigravityAuthorizationRequiresBearerExpiryOfflineAccessAndGrantedScopes() async throws {
    let bodies = [aaToken.replacingOccurrences(of: "Bearer", with: "DPoP"), aaToken.replacingOccurrences(of: "3600", with: "0"),
        aaToken.replacingOccurrences(of: "synthetic-new-access", with: "bad\\nvalue"), aaToken.replacingOccurrences(of: "86400", with: "-1"),
        aaToken.replacingOccurrences(of: "https://www.googleapis.com/auth/cloud-platform email profile", with: "email profile"),
        #"{"access_token":"synthetic-access","token_type":"Bearer","expires_in":3600}"#,
        #"{"access_token":"synthetic-access","token_type":"Bearer","expires_in":3600,"scope":"https://www.googleapis.com/auth/cloud-platform email profile"}"#]
    for body in bodies {
        let http = AAHTTP(), api = AAAPI(), client = aaClient(http, api); await http.set(aaJSON(body))
        await #expect(throws: AntigravityAuthorizationError.self) { try await client.exchange(aaRequest(client), code: "synthetic", accountID: UUID(), expected: nil) }
        #expect(await api.requests.isEmpty)
    }
}

@Test(arguments: ["subject", "project", "quota"])
func antigravityAuthorizationVerifiesExistingIdentityAndUsableQuotaBeforeReturningCredential(_ failure: String) async throws {
    let http = AAHTTP(), api = AAAPI(), client = aaClient(http, api)
    await api.change(subject: failure == "subject" ? "67890" : nil, project: failure == "project" ? "other-project" : nil, denyQuota: failure == "quota")
    await #expect(throws: (any Error).self) { try await client.exchange(aaRequest(client), code: "synthetic", accountID: UUID(), expected: aaIdentity()) }
}

@Test func antigravityAuthorizationMapsTokenErrorsAndRejectsHTMLOrOversizedResponses() async throws {
    let http = AAHTTP(), api = AAAPI(), time = Date.now, client = aaClient(http, api, time: time), request = try aaRequest(client)
    await http.set(aaJSON(#"{"error":"invalid_grant"}"#, status: 400))
    await #expect(throws: CollectorError.authenticationRequired) { try await client.exchange(request, code: "x", accountID: UUID(), expected: nil) }
    await http.set(aaJSON(#"{"error":"invalid_client"}"#, status: 401))
    await #expect(throws: AntigravityAuthorizationError.configurationRequired) { try await client.exchange(request, code: "x", accountID: UUID(), expected: nil) }
    await http.set(HTTPResult(status: 429, headers: ["Retry-After":"70"], body: Data()))
    await #expect(throws: CollectorError.rateLimited(until: time.addingTimeInterval(70))) { try await client.exchange(request, code: "x", accountID: UUID(), expected: nil) }
    for response in [HTTPResult(status: 200, headers: ["Content-Type":"text/html"], body: Data("<html>login</html>".utf8)), aaJSON(String(repeating: " ", count: 65537)), aaJSON("{}", status: 302)] {
        await http.set(response)
        await #expect(throws: (any Error).self) { try await client.exchange(request, code: "x", accountID: UUID(), expected: nil) }
    }
    #expect(await api.requests.isEmpty)
}

private func aaOld(_ id: UUID, time: Date, clientID: String = aaConfiguration.clientID, refreshExpiry: Double = 7200) throws -> CredentialRecord {
    try CredentialRecord(accountID: id, provider: .antigravity, identity: aaIdentity(), kind: .oauth, secret: "synthetic-old-access",
        refreshToken: "synthetic-old-refresh", expiresAt: time.addingTimeInterval(30), oauthClientID: clientID, refreshExpiresAt: time.addingTimeInterval(refreshExpiry))
}
@Test func antigravityRefreshRetainsOmittedRefreshTokenAndExpiryAndVerifiesIdentityWithoutQuota() async throws {
    let http = AAHTTP(), api = AAAPI(), time = Date.now, client = aaClient(http, api, time: time), old = try aaOld(UUID(), time: time)
    await http.set(aaJSON(#"{"access_token":"synthetic-new-access","token_type":"Bearer","expires_in":3600}"#))
    await api.change(denyQuota: true)
    let renewed = try await client.refresh(old)
    #expect(renewed.refreshToken == old.refreshToken && renewed.refreshExpiresAt == old.refreshExpiresAt && renewed.expiresAt == time.addingTimeInterval(3600))
    #expect(await api.requests.count == 3)
    let form = try aaForm(await http.requests[0])
    #expect(form["refresh_token"] == old.refreshToken && form["grant_type"] == "refresh_token" && form["scope"] == nil && form["client_secret"] == nil)
    await http.set(aaJSON(aaToken))
    let rotated = try await client.refresh(old)
    #expect(rotated.refreshToken == "synthetic-new-refresh" && rotated.refreshExpiresAt == time.addingTimeInterval(86400))
    await api.change(subject: "67890")
    await #expect(throws: CoreError.identityMismatch) { try await client.refresh(old) }
}

@Test func antigravityRefreshRejectsWrongClientOrExpiredRefreshBeforeNetwork() async throws {
    let http = AAHTTP(), api = AAAPI(), time = Date.now, client = aaClient(http, api, time: time)
    for old in [try aaOld(UUID(), time: time, clientID: "other-client"), try aaOld(UUID(), time: time, refreshExpiry: -1)] {
        await #expect(throws: CollectorError.authenticationRequired) { try await client.refresh(old) }
    }
    #expect(await http.requests.isEmpty)
}

private actor AAVault: CredentialVault {
    var values: [UUID:CredentialRecord] = [:]
    func create(_ record: CredentialRecord, reference: UUID) { values[reference] = record }
    func read(_ reference: UUID) throws -> CredentialRecord { guard let value = values[reference] else { throw AuthenticationError.missingCredential }; return value }
    func remove(_ reference: UUID) { values[reference] = nil }
}
private struct AANoCookies: WebCookieStore {
    func cookies(profileID: UUID) -> [HTTPCookie] { Issue.record("OAuth accessed a web profile"); return [] }
    func write(_ cookie: HTTPCookie, profileID: UUID, now: Date) { Issue.record("OAuth mutated a web profile") }
}

@Test(arguments: [false, true])
func antigravityOwnedRefreshUsesNewLeaseAndPreservesStoredUsageAndOtherAccountsOnRejection(_ rejected: Bool) async throws {
    let path = FileManager.default.temporaryDirectory.appendingPathComponent("AIQuotaAntigravityOAuth-\(UUID())/accounts.sqlite")
    let repository = try AccountRepository(url: path), vault = AAVault(), login = LoginCoordinator(repository: repository, vault: vault)
    let account = try await repository.add(provider: .antigravity, alias: "Antigravity"), other = try await repository.add(provider: .claude, alias: "Keep")
    let http = AAHTTP(), api = AAAPI(), time = Date.now, client = aaClient(http, api, time: time)
    let attempt = try await login.begin(account.id)
    _ = try await login.complete(attempt, verified: aaOld(account.id, time: time), now: time)
    let before = try await repository.account(account.id)
    let collector = AntigravitySubscriptionCollector(sessions: StoredAccountSessionSource(login: login, webProfiles: AANoCookies()), transport: api, now: { time })
    let initial = RefreshCoordinator(repository: repository, collector: collector, now: { time })
    try await initial.request(accountIDs: [account.id]); await initial.waitUntilIdle()
    let usage = try #require(await repository.usage(account.id))
    if rejected { await http.set(aaJSON(#"{"error":"invalid_grant"}"#, status: 400)) }
    let preparation = AntigravitySessionPreparation(login: login, authorization: client, now: { time })
    let coordinator = RefreshCoordinator(repository: repository, collector: collector, now: { time }, prepare: { a, l in try await preparation.prepare(a, l) })
    try await coordinator.request(accountIDs: [account.id]); await coordinator.waitUntilIdle()
    let current = try await repository.account(account.id)
    if rejected {
        #expect(current.state == .authenticationRequired && current.credentialReference == before.credentialReference)
        #expect(try await repository.usage(account.id) == usage)
    } else {
        #expect(current.sessionRevision == before.sessionRevision + 1 && current.identity == before.identity)
        #expect(try await login.activeCredential(account.id).secret == "synthetic-new-access")
        #expect(await api.requests.last?.value(forHTTPHeaderField: "Authorization") == "Bearer synthetic-new-access")
        #expect(await vault.values.count == 1)
        #expect(await coordinator.state().measurements[account.id]?.successfulAttempts == 1)
    }
    #expect(try await repository.account(other.id) == other)
    let reopened = try AccountRepository(url: path)
    #expect(try await reopened.account(account.id).credentialReference == current.credentialReference)
    let snapshot = path.deletingLastPathComponent().appendingPathComponent("snapshot.json")
    _ = try await SnapshotFileStore(url: snapshot, repository: repository).publish(now: time)
    #expect(try SnapshotFileStore.read(from: snapshot).accounts.first { $0.id == account.id }?.metrics == usage.metrics)
    let text = String(decoding: try Data(contentsOf: snapshot), as: UTF8.self)
    #expect(!text.contains("synthetic-new") && !text.contains("12345") && !text.contains("fixture-project"))
}

@Test func antigravityRealLoopbackProducerFeedsAuthorizationStorageCollectionAndDisplay() async throws {
    let path = FileManager.default.temporaryDirectory.appendingPathComponent("AIQuotaAntigravityCallback-\(UUID())/accounts.sqlite")
    let repository = try AccountRepository(url: path), login = LoginCoordinator(repository: repository, vault: AAVault())
    let account = try await repository.add(provider: .antigravity, alias: "Callback account"), attempt = try await login.begin(account.id)
    let http = AAHTTP(), api = AAAPI(), client = aaClient(http, api), proof = try OAuthProofKey(), receiver = try LoopbackOAuthReceiver(state: proof.state)
    let redirect = try await receiver.start(), request = try client.authorization(redirectURL: redirect, proof: proof)
    let configuration = URLSessionConfiguration.ephemeral; configuration.connectionProxyDictionary = [:]; configuration.timeoutIntervalForRequest = 2
    let browser = URLSession(configuration: configuration); defer { browser.invalidateAndCancel() }
    let (_, response) = try await browser.data(from: redirect.appending(queryItems: [.init(name: "state", value: proof.state), .init(name: "code", value: "synthetic-callback")]))
    #expect((response as? HTTPURLResponse)?.statusCode == 200)
    let record = try await client.exchange(request, code: receiver.waitForCode(), accountID: account.id, expected: nil)
    _ = try await login.complete(attempt, verified: record)
    let collector = AntigravitySubscriptionCollector(sessions: StoredAccountSessionSource(login: login, webProfiles: AANoCookies()), transport: api)
    let coordinator = RefreshCoordinator(repository: repository, collector: collector)
    try await coordinator.request(accountIDs: [account.id]); await coordinator.waitUntilIdle()
    #expect(try await repository.usage(account.id)?.metrics.first?.remainingFraction == 0.8)
    #expect(try await login.activeCredential(account.id).oauthClientID == aaConfiguration.clientID)
    let snapshot = path.deletingLastPathComponent().appendingPathComponent("snapshot.json")
    _ = try await SnapshotFileStore(url: snapshot, repository: repository).publish()
    #expect(try SnapshotFileStore.read(from: snapshot).accounts.first?.metrics.first?.remainingFraction == 0.8)
}
