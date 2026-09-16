import AIQuotaAuth
import AIQuotaCore
import Foundation
import Testing
@testable import AIQuotaCollectors

private let grokTime = Date(timeIntervalSince1970: 1_800_000_100)
private let grokUser = "synthetic-grok-user-a"
private func identity(_ subject: String = grokUser) throws -> RemoteIdentity {
    try RemoteIdentity(subject: subject, product: "grok-weekly")
}
private actor GrokHTTP: HTTPTransport {
    private(set) var requests: [URLRequest] = []
    private var subject = grokUser
    private var afterSubject: String?
    private var profileReads = 0
    private var billing = HTTPResult(status: 200, body: grokPeriodFixture(used: 32))
    func changeSubject(_ value: String, afterUsage: Bool = false) {
        if afterUsage { afterSubject = value } else { subject = value }
    }
    func setBilling(_ value: HTTPResult) { billing = value }
    func send(_ request: URLRequest) throws -> HTTPResult {
        requests.append(request)
        #expect(request.value(forHTTPHeaderField: "Cookie") == "sso=synthetic-session")
        #expect(request.value(forHTTPHeaderField: "Authorization") == nil)
        #expect(request.value(forHTTPHeaderField: "x-team-id") == nil)
        if request.url == GrokWebClient.accountURL {
            profileReads += 1
            #expect(request.httpMethod == "GET" && request.httpBody == nil)
            let user = profileReads > 1 ? afterSubject ?? subject : subject
            return HTTPResult(status: 200, body: try JSONSerialization.data(withJSONObject: ["userId":user,"email":"synthetic@example.invalid"]))
        }
        #expect(request.url == GrokWeeklyDecoder.endpoint && request.httpMethod == "POST")
        #expect(request.httpBody == Data(repeating: 0, count: 5))
        return billing
    }
}
private actor GrokFixedHTTP: HTTPTransport {
    let result: HTTPResult
    private(set) var calls = 0
    init(_ result: HTTPResult) { self.result = result }
    func send(_ request: URLRequest) -> HTTPResult { calls += 1; return result }
}

@Test func grokDiscoveryUsesRemoteUserIDAndNoChatOrWorkspaceRequest() async throws {
    let http = GrokHTTP()
    let client = GrokWebClient(transport: http, now: { grokTime })
    let found = try await client.discover(cookieHeader: "sso=synthetic-session")
    #expect(found.subject == grokUser && found.email == "synthetic@example.invalid")
    #expect(await http.requests.count == 1)
    let output = try await client.collect(cookieHeader: "sso=synthetic-session", expected: identity())
    #expect(abs((output.report.metrics.first?.remainingFraction ?? -1) - 0.68) < 0.0001)
    #expect(output.report.identity.workspace == nil && output.report.fetchedAt == grokTime)
    #expect(output.report.metrics.first?.source == .webAPI)
    #expect(await http.requests.count == 4)
}

@Test func grokRejectsVisitorCookiesAndMalformedRemoteIdentity() async throws {
    let valid = GrokFixedHTTP(HTTPResult(status: 200, body: Data(#"{"userId":"synthetic-user"}"#.utf8)))
    for cookie in ["grok_device_id=visitor", "anonUserId=guest", "sso=", "sso-rw="] {
        await #expect(throws: CollectorError.authenticationRequired) {
            try await GrokWebClient(transport: valid).discover(cookieHeader: cookie)
        }
    }
    #expect(await valid.calls == 0)
    #expect(try await GrokWebClient(transport: valid).discover(cookieHeader: "sso-rw=synthetic-session").subject == "synthetic-user")
    for body in [#"{}"#, #"{"email":"synthetic@example.invalid"}"#, #"{"userId":""}"#,
                 #"{"userId":" bad-id"}"#, #"{"userId":"bad\nid"}"#, #"{"userId":42}"#, "<html>Sign in</html>"] {
        let http = GrokFixedHTTP(HTTPResult(status: 200, body: Data(body.utf8)))
        await #expect(throws: CollectorError.invalidResponse) { try await GrokWebClient(transport: http).discover(cookieHeader: "sso=synthetic-session") }
    }
}

@Test(arguments: [false, true])
func grokIdentityMismatchBeforeOrAfterUsageCannotBeAdopted(afterUsage: Bool) async throws {
    let http = GrokHTTP(); await http.changeSubject("synthetic-grok-user-b", afterUsage: afterUsage)
    let client = GrokWebClient(transport: http, now: { grokTime })
    await #expect(throws: CoreError.identityMismatch) { try await client.collect(cookieHeader: "sso=synthetic-session", expected: identity()) }
    #expect(await http.requests.count == (afterUsage ? 3 : 1))
}

@Test func grokRejectsOtherProductsAndWorkspaceScopesBeforeNetwork() async throws {
    let http = GrokHTTP(); let client = GrokWebClient(transport: http)
    for identity in [try RemoteIdentity(subject: grokUser, workspace: "team", product: "grok-weekly"),
                     try RemoteIdentity(subject: grokUser, product: "grok-two-hour")] {
        await #expect(throws: CoreError.identityMismatch) { try await client.collect(cookieHeader: "sso=synthetic-session", expected: identity) }
    }
    #expect(await http.requests.isEmpty)
}

@Test func grokHTTPAuthenticationChallengesAndRateLimitsRemainDistinct() async throws {
    for status in [401,403,429,503] {
        let http = GrokFixedHTTP(HTTPResult(status: status, headers: ["Retry-After":"120"], body: Data()))
        do {
            _ = try await GrokWebClient(transport: http, now: { grokTime }).discover(cookieHeader: "sso=synthetic-session")
            Issue.record("HTTP failure accepted")
        } catch CollectorError.authenticationRequired { #expect(status == 401) }
        catch CollectorError.invalidResponse { #expect(status == 403) }
        catch CollectorError.rateLimited(let until) { #expect(status == 429 && until == grokTime.addingTimeInterval(120)) }
        catch CollectorError.network { #expect(status == 503) }
    }
}

private actor GrokVault: CredentialVault {
    var values: [UUID: CredentialRecord] = [:]
    func create(_ record: CredentialRecord, reference: UUID) { values[reference] = record }
    func read(_ reference: UUID) throws -> CredentialRecord {
        guard let record = values[reference] else { throw AuthenticationError.missingCredential }
        return record
    }
    func remove(_ reference: UUID) { values[reference] = nil }
}
private actor GrokCookies: WebCookieStore {
    let profile: UUID
    init(profile: UUID) { self.profile = profile }
    func cookies(profileID: UUID) throws -> [HTTPCookie] {
        #expect(profileID == profile)
        return [try #require(HTTPCookie(properties: [.domain:"grok.com",.path:"/",.name:"sso",.value:"synthetic-session",.secure:"TRUE"]))]
    }
    func write(_ cookie: HTTPCookie, profileID: UUID, now: Date) { #expect(profileID == profile) }
}

@Test(arguments: ["identity", "rpc-authentication"])
func verifiedGrokSessionFeedsCoordinatorAndPreservesLastUsageOnAuthenticationFailure(_ failure: String) async throws {
    let repository = try AccountRepository(url: FileManager.default.temporaryDirectory.appendingPathComponent("AIQuotaGrok-\(UUID())/accounts.sqlite"))
    let login = LoginCoordinator(repository: repository, vault: GrokVault())
    let account = try await repository.add(provider: .grok, alias: "Grok fixture")
    let attempt = try await login.begin(account.id)
    let http = GrokHTTP(); let client = GrokWebClient(transport: http, now: { grokTime })
    let found = try await client.discover(cookieHeader: "sso=synthetic-session")
    let verifiedIdentity = try identity(found.subject)
    _ = try await client.collect(cookieHeader: "sso=synthetic-session", expected: verifiedIdentity)
    _ = try await login.complete(attempt, verified: CredentialRecord(accountID: account.id, provider: .grok, identity: verifiedIdentity,
                                                                    kind: .webSession, webProfileID: attempt.webProfileID))
    let source = StoredAccountSessionSource(login: login, webProfiles: GrokCookies(profile: attempt.webProfileID))
    let collector = GrokWeeklyCollector(sessions: source, transport: http, now: { grokTime })
    let coordinator = RefreshCoordinator(repository: repository, collector: collector, now: { grokTime })
    try await coordinator.request(); await coordinator.waitUntilIdle()
    let original = try #require(await repository.usage(account.id))
    #expect(abs((original.metrics.first?.remainingFraction ?? -1) - 0.68) < 0.0001)
    if failure == "identity" { await http.changeSubject("synthetic-other-user") }
    else { await http.setBilling(HTTPResult(status: 200, body: grokFrame(Array("grpc-status:16\r\n".utf8), flag: 128))) }
    try await coordinator.request(); await coordinator.waitUntilIdle()
    let current = try await repository.account(account.id)
    #expect(current.state == .authenticationRequired)
    #expect(current.credentialReference == attempt.credentialReference && current.identity == verifiedIdentity)
    #expect(try await repository.usage(account.id) == original)
    let requests = await http.requests.count
    try await coordinator.request(reason: .automatic); await coordinator.waitUntilIdle()
    #expect(await http.requests.count == requests)
    let snapshot = String(decoding: try JSONEncoder().encode(await repository.displaySnapshot()), as: UTF8.self)
    #expect(!snapshot.contains("synthetic-session") && !snapshot.contains(attempt.webProfileID.uuidString))
}
