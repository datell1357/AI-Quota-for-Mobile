import AIQuotaAuth
import AIQuotaCore
import Foundation
import Testing
@testable import AIQuotaCollectors

private func caJSON(_ text: String, status: Int = 200) -> HTTPResult { HTTPResult(status: status, headers: ["Content-Type":"application/json"], body: Data(text.utf8)) }
private let caGrant = #"{"device_code":"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa","user_code":"ABCD-1234","verification_uri":"https://github.com/login/device","expires_in":900,"interval":5}"#
private let caToken = #"{"access_token":"synthetic-new-access","token_type":"bearer","scope":"read:user","expires_in":28800,"refresh_token":"synthetic-new-refresh","refresh_token_expires_in":15897600}"#
private let caQuota = #"{"copilot_plan":"individual","quota_snapshots":{"premium_interactions":{"entitlement":300,"remaining":240,"percent_remaining":80,"unlimited":false}}}"#
private let caConfiguration = try! CopilotOAuthConfiguration(clientID: "AIQuotaFixtureClient")
private final class CAClock: @unchecked Sendable {
    let lock = NSLock()
    let base = Date.now
    var time = 0.0, wallOffset = 0.0, waits: [Double] = []
    func uptime() -> Double { lock.withLock { time } }
    func now() -> Date { lock.withLock { base.addingTimeInterval(time + wallOffset) } }
    func advanceWall(_ seconds: Double) { lock.withLock { wallOffset += seconds } }
    func advance(_ seconds: Double) { lock.withLock { time += seconds; waits.append(seconds) } }
    func sleeps() -> [Double] { lock.withLock { waits } }
}
private actor CAHTTP: HTTPTransport {
    var grant = caJSON(caGrant), responses = [caJSON(caToken)]
    private(set) var requests: [URLRequest] = []
    func setGrant(_ value: HTTPResult) { grant = value }
    func setResponses(_ values: [HTTPResult]) { responses = values }
    func send(_ request: URLRequest) throws -> HTTPResult {
        requests.append(request)
        #expect(request.httpMethod == "POST" && request.url?.host == "github.com" && request.url?.scheme == "https")
        #expect(request.url?.query == nil && request.value(forHTTPHeaderField: "Authorization") == nil && request.value(forHTTPHeaderField: "Cookie") == nil)
        #expect(request.value(forHTTPHeaderField: "Content-Type") == "application/x-www-form-urlencoded")
        let body = String(decoding: request.httpBody ?? Data(), as: UTF8.self)
        #expect(body.contains("client_id=AIQuotaFixtureClient") && !body.contains("client_secret"))
        if request.url?.path == "/login/device/code" { #expect(body.contains("scope=read%3Auser")); return grant }
        #expect(request.url?.path == "/login/oauth/access_token")
        return responses.count > 1 ? responses.removeFirst() : responses[0]
    }
}
private actor CAAPI: HTTPTransport {
    var subject = "12345", failQuota = false
    private(set) var requests: [URLRequest] = []
    func changeSubject() { subject = "67890" }
    func denyQuota() { failQuota = true }
    func send(_ request: URLRequest) -> HTTPResult {
        requests.append(request)
        if request.url?.path == "/user" { return caJSON("{\"id\":\(subject),\"login\":\"fixture-user\",\"type\":\"User\"}") }
        #expect(request.url?.path == "/copilot_internal/user")
        return failQuota ? caJSON("{}", status: 403) : caJSON(caQuota)
    }
}
private func caClient(_ http: CAHTTP, _ api: CAAPI, _ clock: CAClock) -> CopilotDeviceAuthorization {
    CopilotDeviceAuthorization(configuration: caConfiguration, transport: http, api: CopilotAPIClient(transport: api, now: { clock.now() }),
                              now: { clock.now() }, uptime: { clock.uptime() }, sleep: { clock.advance($0) })
}

@Test func copilotDevicePendingAndSlowDownRespectServerIntervalsBeforeVerifiedTokenSave() async throws {
    let http = CAHTTP(), api = CAAPI(), clock = CAClock(), id = UUID()
    await http.setResponses([caJSON(#"{"error":"authorization_pending"}"#), caJSON(#"{"error":"slow_down","interval":12}"#), caJSON(caToken)])
    let client = caClient(http, api, clock), grant = try await client.begin()
    let record = try await client.authorize(grant, accountID: id, expected: nil)
    #expect(clock.sleeps() == [5,5,12])
    #expect(record.accountID == id && record.identity.subject == "12345" && record.oauthClientID == caConfiguration.clientID)
    #expect(record.secret == "synthetic-new-access" && record.refreshToken == "synthetic-new-refresh")
    #expect(record.expiresAt == clock.now().addingTimeInterval(28800) && record.refreshExpiresAt == clock.now().addingTimeInterval(15897600))
    #expect(await api.requests.count == 4)
    #expect(!String(reflecting: grant).contains("aaaa") && !String(reflecting: record).contains("synthetic"))
    let body = await http.requests.last?.httpBody
    #expect(String(decoding: body ?? Data(), as: UTF8.self).contains("grant_type=urn%3Aietf%3Aparams%3Aoauth%3Agrant-type%3Adevice_code"))
}

@Test(arguments: ["access_denied", "expired_token", "device_flow_disabled", "incorrect_client_credentials", "incorrect_device_code"])
func copilotDeviceTerminalErrorsDoNotPollAgainOrVerifyAnyAPI(_ code: String) async throws {
    let http = CAHTTP(), api = CAAPI(), clock = CAClock(), client = caClient(http, api, clock)
    await http.setResponses([caJSON("{\"error\":\"\(code)\"}")])
    let grant = try await client.begin()
    await #expect(throws: CopilotAuthorizationError.self) { try await client.authorize(grant, accountID: UUID(), expected: nil) }
    #expect(await http.requests.count == 2)
    #expect(await api.requests.isEmpty)
}

@Test func copilotDeviceCodeExpiryStopsBeforeAnotherPollAndSlowDownCannotShortenWait() async throws {
    let http = CAHTTP(), api = CAAPI(), clock = CAClock(), client = caClient(http, api, clock)
    await http.setGrant(caJSON(caGrant.replacingOccurrences(of: "900", with: "20")))
    await http.setResponses([caJSON(#"{"error":"slow_down","interval":1}"#), caJSON(#"{"error":"authorization_pending"}"#)])
    let grant = try await client.begin()
    await #expect(throws: CopilotAuthorizationError.expiredCode) { try await client.authorize(grant, accountID: UUID(), expected: nil) }
    #expect(clock.sleeps() == [5,10])
    #expect(await http.requests.count == 3)
}

@Test func copilotDeviceRejectsRedirectsInvalidCodeAndLimitsWithoutOpeningServerURLs() async throws {
    for body in [caGrant.replacingOccurrences(of: "https://github.com/login/device", with: "https://evil.invalid/device"),
                 caGrant.replacingOccurrences(of: "ABCD-1234", with: "<script>"), caGrant.replacingOccurrences(of: "\"interval\":5", with: "\"interval\":0"),
                 caGrant.replacingOccurrences(of: "\"expires_in\":900", with: "\"expires_in\":0"), "{}"] {
        let http = CAHTTP(), api = CAAPI(), clock = CAClock(); await http.setGrant(caJSON(body))
        await #expect(throws: CopilotAuthorizationError.invalidResponse) { try await caClient(http, api, clock).begin() }
        #expect(await api.requests.isEmpty)
    }
    for value in ["", "$(AIQUOTA_GITHUB_OAUTH_CLIENT_ID)", "test\nclient", "AIQuotaFixtureClient\n", String(repeating:"x",count:129)] {
        #expect(throws: CopilotAuthorizationError.configurationRequired) { try CopilotOAuthConfiguration(clientID: value) }
    }
}

@Test(arguments: ["identity", "quota"])
func copilotDeviceTokenMustVerifyTheExistingGitHubAccountAndCopilotAccess(_ failure: String) async throws {
    let http = CAHTTP(), api = CAAPI(), clock = CAClock(), client = caClient(http, api, clock)
    if failure == "identity" { await api.changeSubject() } else { await api.denyQuota() }
    let expected = try RemoteIdentity(subject:"12345",product:"copilot-subscription"), grant = try await client.begin()
    await #expect(throws: (any Error).self) { try await client.authorize(grant, accountID: UUID(), expected: expected) }
    if failure == "identity" { #expect(await api.requests.count == 1) }
}

@Test func copilotDeviceValidatesTokenTypeScopeAndRotationPairBeforeAPIRequests() async throws {
    for body in [caToken.replacingOccurrences(of:"bearer",with:"basic"),caToken.replacingOccurrences(of:"read:user",with:"repo"),
                 caToken.replacingOccurrences(of:"28800",with:"0"),caToken.replacingOccurrences(of:",\"refresh_token_expires_in\":15897600",with:""),
                 caToken.replacingOccurrences(of:"synthetic-new-access",with:"token\\nvalue")] {
        let http=CAHTTP(),api=CAAPI(),clock=CAClock();await http.setResponses([caJSON(body)])
        let client=caClient(http,api,clock), grant=try await client.begin()
        await #expect(throws: (any Error).self) { try await client.authorize(grant,accountID:UUID(),expected:nil) }
        #expect(await api.requests.isEmpty)
    }
    let http=CAHTTP(),api=CAAPI(),clock=CAClock();await http.setResponses([caJSON(#"{"access_token":"synthetic-permanent","token_type":"bearer","scope":"read:user"}"#)])
    let client=caClient(http,api,clock), grant=try await client.begin()
    let record=try await client.authorize(grant,accountID:UUID(),expected:nil)
    #expect(record.expiresAt == nil && record.refreshToken == nil)
}

@Test func copilotDeviceHTTPPolicyIncludesBadRefreshOn400AndRateLimit() async throws {
    let http=CAHTTP(),api=CAAPI(),clock=CAClock(),client=caClient(http,api,clock)
    await http.setGrant(HTTPResult(status:429,headers:["Retry-After":"80"],body:Data()))
    await #expect(throws: CollectorError.rateLimited(until:clock.now().addingTimeInterval(80))) { try await client.begin() }
    for response in [HTTPResult(status:200,headers:["Content-Type":"text/html"],body:Data("<html>login</html>".utf8)),
                     HTTPResult(status:302,headers:["Location":"https://evil.invalid"],body:Data()),
                     HTTPResult(status:200,headers:["Content-Type":"application/json"],body:Data(repeating:32,count:65537))] {
        await http.setGrant(response)
        await #expect(throws:(any Error).self) { try await client.begin() }
    }
    await http.setResponses([caJSON(#"{"error":"bad_refresh_token"}"#,status:400)])
    let old=try caOld(UUID(),clock)
    await #expect(throws:CollectorError.authenticationRequired) { try await client.refresh(old) }
}

private func caOld(_ id: UUID, _ clock: CAClock, clientID: String = caConfiguration.clientID, refreshExpiry: Double = 1000) throws -> CredentialRecord {
    try CredentialRecord(accountID:id,provider:.copilot,identity:RemoteIdentity(subject:"12345",product:"copilot-subscription"),kind:.oauth,
                         secret:"synthetic-old-access",refreshToken:"synthetic-old-refresh",expiresAt:clock.now().addingTimeInterval(30),
                         oauthClientID:clientID,refreshExpiresAt:clock.now().addingTimeInterval(refreshExpiry))
}
@Test func copilotRefreshIsBoundToRegisteredClientExpiryAndStableIdentity() async throws {
    let http=CAHTTP(),api=CAAPI(),clock=CAClock(),client=caClient(http,api,clock)
    for old in [try caOld(UUID(),clock,clientID:"DifferentFixtureClient"),try caOld(UUID(),clock,refreshExpiry:-1)] {
        await #expect(throws:CollectorError.authenticationRequired) { try await client.refresh(old) }
    }
    #expect(await http.requests.isEmpty)
    await api.denyQuota() // Token rotation verifies identity, not optional usage availability.
    let renewed=try await client.refresh(caOld(UUID(),clock))
    #expect(renewed.secret == "synthetic-new-access")
    #expect(await api.requests.count == 1)
    let body=String(decoding:await http.requests[0].httpBody!,as:UTF8.self)
    #expect(body.contains("grant_type=refresh_token") && body.contains("refresh_token=synthetic-old-refresh") && !body.contains("scope="))
    await api.changeSubject()
    await #expect(throws:CoreError.identityMismatch) { try await client.refresh(caOld(UUID(),clock)) }
}

private actor CAVault: CredentialVault {
    var values:[UUID:CredentialRecord]=[:]
    func create(_ record:CredentialRecord,reference:UUID) { values[reference]=record }
    func read(_ reference:UUID) throws -> CredentialRecord { guard let value=values[reference] else { throw AuthenticationError.missingCredential }; return value }
    func remove(_ reference:UUID) { values[reference]=nil }
}
private actor CAEmptyCookies: WebCookieStore {
    func cookies(profileID:UUID) -> [HTTPCookie] { [] }
    func write(_ cookie:HTTPCookie,profileID:UUID,now:Date) {}
}

@Test(arguments:[false,true])
func copilotOwnedRefreshFeedsNewLeaseSQLiteAndDisplayWithoutChangingOtherAccounts(_ rejected:Bool) async throws {
    let path=FileManager.default.temporaryDirectory.appendingPathComponent("AIQuotaCopilotOAuth-\(UUID())/accounts.sqlite")
    let repository=try AccountRepository(url:path),vault=CAVault(),login=LoginCoordinator(repository:repository,vault:vault)
    let account=try await repository.add(provider:.copilot,alias:"Copilot"),other=try await repository.add(provider:.claude,alias:"Keep")
    let http=CAHTTP(),api=CAAPI(),clock=CAClock(),client=caClient(http,api,clock)
    let old=try caOld(account.id,clock),attempt=try await login.begin(account.id)
    _=try await login.complete(attempt,verified:old,now:clock.now())
    let before=try await repository.account(account.id)
    let preparation=CopilotSessionPreparation(login:login,authorization:client,now:{clock.now()})
    let source=StoredAccountSessionSource(login:login,webProfiles:CAEmptyCookies())
    if rejected { await http.setResponses([caJSON(#"{"error":"bad_refresh_token"}"#,status:400)]) }
    let coordinator=RefreshCoordinator(repository:repository,collector:CopilotSubscriptionCollector(sessions:source,transport:api,now:{clock.now()}),
        now:{clock.now()},prepare:{a,l in try await preparation.prepare(a,l)})
    try await coordinator.request(accountIDs:[account.id]);await coordinator.waitUntilIdle()
    let current=try await repository.account(account.id)
    if rejected {
        #expect(current.state == .authenticationRequired && current.credentialReference == before.credentialReference)
        #expect(await api.requests.isEmpty)
    } else {
        #expect(current.sessionRevision == before.sessionRevision+1 && current.identity == before.identity)
        #expect(try await repository.usage(account.id)?.metrics.first?.remainingFraction == 0.8)
        #expect(try await login.activeCredential(account.id).secret == "synthetic-new-access")
        #expect(await vault.values.count == 1)
        #expect(await http.requests.count == 1)
        #expect(await coordinator.state().measurements[account.id]?.successfulAttempts == 1)
        let snapshot=path.deletingLastPathComponent().appendingPathComponent("snapshot.json")
        _=try await SnapshotFileStore(url:snapshot,repository:repository).publish(now:clock.now())
        let text=String(decoding:try Data(contentsOf:snapshot),as:UTF8.self)
        #expect(!text.contains("synthetic-new") && !text.contains("AIQuotaFixtureClient") && !text.contains("12345"))
    }
    #expect(try await repository.account(other.id) == other)
    let reopened=try AccountRepository(url:path)
    #expect(try await reopened.account(account.id).credentialReference == current.credentialReference)
}

@Test func copilotDeviceCancellationStopsBeforePollingOrIdentityRequests() async throws {
    let http=CAHTTP(),api=CAAPI(),clock=CAClock()
    let client=CopilotDeviceAuthorization(configuration:caConfiguration,transport:http,api:CopilotAPIClient(transport:api),
        now:{clock.now()},uptime:{clock.uptime()},sleep:{_ in throw CancellationError()})
    let grant=try await client.begin()
    await #expect(throws:CancellationError.self) { try await client.authorize(grant,accountID:UUID(),expected:nil) }
    #expect(await http.requests.count == 1)
    #expect(await api.requests.isEmpty)
}

@Test func copilotDeviceWallExpiryAfterSleepDoesNotDependOnUptimeAdvancing() async throws {
    let http = CAHTTP(), api = CAAPI(), clock = CAClock(), client = caClient(http, api, clock)
    let grant = try await client.begin()
    clock.advanceWall(1_800)
    await #expect(throws: CopilotAuthorizationError.expiredCode) { try await client.authorize(grant, accountID: UUID(), expected: nil) }
    #expect(await http.requests.count == 1)
    #expect(clock.sleeps().isEmpty)
}

@Test func copilotDeviceCredentialPassesRealLoginStorageCollectorAndSnapshot() async throws {
    let path = FileManager.default.temporaryDirectory.appendingPathComponent("AIQuotaCopilotDevice-\(UUID())/accounts.sqlite")
    let repository = try AccountRepository(url: path), vault = CAVault(), login = LoginCoordinator(repository: repository, vault: vault)
    let account = try await repository.add(provider: .copilot, alias: "Device account")
    let http = CAHTTP(), api = CAAPI(), clock = CAClock(), client = caClient(http, api, clock)
    let attempt = try await login.begin(account.id), grant = try await client.begin()
    let record = try await client.authorize(grant, accountID: account.id, expected: nil)
    _ = try await login.complete(attempt, verified: record, now: clock.now())
    let source = StoredAccountSessionSource(login: login, webProfiles: CAEmptyCookies())
    let coordinator = RefreshCoordinator(repository: repository, collector: CopilotSubscriptionCollector(sessions: source, transport: api, now: { clock.now() }), now: { clock.now() })
    try await coordinator.request(accountIDs: [account.id]); await coordinator.waitUntilIdle()
    let usage = try #require(await repository.usage(account.id))
    #expect(usage.metrics.first?.remainingFraction == 0.8)
    let stored = try await login.activeCredential(account.id)
    #expect(stored.oauthClientID == record.oauthClientID && stored.refreshExpiresAt == record.refreshExpiresAt)
    let snapshot = path.deletingLastPathComponent().appendingPathComponent("snapshot.json")
    _ = try await SnapshotFileStore(url: snapshot, repository: repository).publish(now: clock.now())
    let data = try Data(contentsOf: snapshot), text = String(decoding: data, as: UTF8.self)
    let display = try JSONDecoder().decode(WidgetSnapshot.self, from: data)
    #expect(display.accounts.first?.metrics.first?.remainingFraction == 0.8)
    #expect(!text.contains("synthetic-new") && !text.contains("oauthClientID") && !text.contains("12345"))
}
