import AIQuotaAuth
import AIQuotaCore
import Foundation
import Testing
@testable import AIQuotaCollectors

private let claudeSubjectA = "11111111-1111-4111-8111-111111111111"
private let claudeSubjectB = "22222222-2222-4222-8222-222222222222"
private let claudeOrgA = "aaaaaaaa-aaaa-4aaa-8aaa-aaaaaaaaaaaa"
private let claudeOrgB = "bbbbbbbb-bbbb-4bbb-8bbb-bbbbbbbbbbbb"
private let claudeFixtureNow = Date(timeIntervalSince1970: 1_800_000_000)
private func claudeIdentity(subject: String = claudeSubjectA, org: String = claudeOrgA) throws -> RemoteIdentity {
    try RemoteIdentity(subject: subject, workspace: org, product: "claude-subscription")
}
private func claudeReport(_ json: String) throws -> UsageReport {
    try ClaudeUsageDecoder.decode(Data(json.utf8), identity: claudeIdentity(), fetchedAt: claudeFixtureNow)
}

@Test func claudeNativePercentagesDoNotTreatOneOrFractionsAsAFullQuota() throws {
    let report = try claudeReport(#"{"five_hour":{"utilization":0.25},"seven_day":{"utilization":1},"seven_day_opus":{"utilization":0}}"#)
    #expect(report.metrics.map(\.remainingFraction) == [0.9975, 0.99, 1])
    #expect(report.metrics.map(\.id) == ["claude:session", "claude:weekly", "claude:opus"])
    #expect(report.metrics.map(\.period) == ["5h", "7d", "7d"])
}

@Test func claudePreservesSeparateModelWindowsResetsAndExtraCreditUnits() throws {
    let report = try claudeReport(#"{"five_hour":{"utilization":100,"resets_at":"2027-01-15T10:00:00.123Z"},"seven_day_opus":{"utilization":12},"seven_day_sonnet":{"utilization":24},"seven_day_cowork":{"utilization":36},"seven_day_omelette":{"utilization":48},"seven_day_new_model":{"utilization":60},"extra_usage":{"is_enabled":true,"used_credits":250,"monthly_limit":1000}}"#)
    #expect(report.metrics.count == 7)
    #expect(report.metrics.first?.remainingFraction == 0)
    #expect(report.metrics.first?.resetsAt != nil)
    #expect(Set(report.metrics.map(\.id)).isSuperset(of: ["claude:opus", "claude:sonnet", "claude:cowork", "claude:design", "claude:window:seven_day_new_model"]))
    let extra = try #require(report.metrics.first { $0.id == "claude:extra_usage" })
    #expect(extra.remainingFraction == 0.75 && extra.used == 250 && extra.limit == 1000 && extra.unit == "credits")
}

@Test func claudeMissingNullAndInvalidWindowsNeverBecomeUnusedQuota() throws {
    let report = try claudeReport(#"{"five_hour":null,"seven_day":{},"extra_usage":{"is_enabled":false,"used_credits":0,"monthly_limit":100}}"#)
    #expect(report.metrics.count == 1)
    #expect(report.metrics[0].status == .unknown && report.metrics[0].remainingFraction == nil)
    for body in ["{}", "[]", "<html>login</html>", #"{"five_hour":{"utilization":true}}"#,
                 #"{"five_hour":{"utilization":-1}}"#, #"{"five_hour":{"utilization":1,"resets_at":"invalid"}}"#] {
        #expect(throws: (any Error).self) { try claudeReport(body) }
    }
}

private actor ClaudeFixtureTransport: HTTPTransport {
    private(set) var requests: [URLRequest] = []
    var subjectOverride: String?
    var status = 200
    func changeSubject(_ subject: String) { subjectOverride = subject }
    func fail(_ code: Int) { status = code }
    func send(_ request: URLRequest) throws -> HTTPResult {
        requests.append(request)
        if status != 200 { return HTTPResult(status: status, headers: ["Retry-After":"120"], body: Data()) }
        let second = request.value(forHTTPHeaderField: "Cookie") == "sessionKey=fixture-b"
        let subject = subjectOverride ?? (second ? claudeSubjectB : claudeSubjectA)
        let org = second ? claudeOrgB : claudeOrgA
        let body: String
        switch request.url?.path {
        case "/api/account": body = "{\"uuid\":\"\(subject)\",\"email_address\":\"fixture@example.invalid\"}"
        case "/api/organizations": body = "[{\"uuid\":\"\(org)\",\"name\":\"Fixture organization\",\"rate_limit_tier\":\"default_claude_pro\"}]"
        case "/api/organizations/\(org)/usage": body = "{\"five_hour\":{\"utilization\":\(second ? 75 : 25)}}"
        default: throw CollectorError.invalidResponse
        }
        return HTTPResult(status: 200, body: Data(body.utf8))
    }
}

@Test func claudeDiscoveryUsesRemoteUUIDAndAnExplicitOrganization() async throws {
    let transport = ClaudeFixtureTransport()
    let client = ClaudeWebClient(transport: transport, now: { claudeFixtureNow })
    let discovery = try await client.discover(cookieHeader: "sessionKey=fixture-a")
    #expect(discovery.subject == claudeSubjectA)
    #expect(discovery.organizations.map(\.id) == [claudeOrgA])
    #expect(discovery.organizations.first?.plan == "Pro")
    let result = try await client.collect(cookieHeader: "sessionKey=fixture-a", expected: claudeIdentity())
    #expect(result.report.metrics.first?.remainingFraction == 0.75)
    #expect(result.report.identity.subject != discovery.email)
    #expect(result.transferredBytes > 0)
    await #expect(throws: CoreError.identityMismatch) {
        try await client.collect(cookieHeader: "sessionKey=fixture-a", expected: claudeIdentity(org: claudeOrgB))
    }
    #expect(await transport.requests.filter { $0.url?.path.hasSuffix("/usage") == true }.count == 1)
}

@Test func twoClaudeSessionsRemainDistinctAndChangedIdentityIsRejectedBeforeUsage() async throws {
    let transport = ClaudeFixtureTransport()
    let client = ClaudeWebClient(transport: transport, now: { claudeFixtureNow })
    async let first = client.collect(cookieHeader: "sessionKey=fixture-a", expected: claudeIdentity())
    async let second = client.collect(cookieHeader: "sessionKey=fixture-b", expected: claudeIdentity(subject: claudeSubjectB, org: claudeOrgB))
    let (a,b) = try await (first, second)
    #expect(a.report.identity != b.report.identity)
    #expect(a.report.metrics.first?.remainingFraction == 0.75)
    #expect(b.report.metrics.first?.remainingFraction == 0.25)
    await transport.changeSubject(claudeSubjectB)
    await #expect(throws: CoreError.identityMismatch) {
        try await client.collect(cookieHeader: "sessionKey=fixture-a", expected: claudeIdentity())
    }
    #expect(await transport.requests.filter { $0.url?.path.hasSuffix("/usage") == true }.count == 2)
}

@Test func claudeAuthenticationFailureAndRetryAfterStopBeforeCollection() async throws {
    let transport = ClaudeFixtureTransport()
    let client = ClaudeWebClient(transport: transport, now: { claudeFixtureNow })
    await transport.fail(401)
    do {
        _ = try await client.discover(cookieHeader: "sessionKey=fixture-a")
        Issue.record("401 did not stop discovery")
    } catch CollectorError.authenticationRequired { }
    await transport.fail(429)
    do {
        _ = try await client.collect(cookieHeader: "sessionKey=fixture-a", expected: claudeIdentity())
        Issue.record("429 did not stop collection")
    } catch CollectorError.rateLimited(let until) { #expect(until == claudeFixtureNow.addingTimeInterval(120)) }
    #expect(await transport.requests.count == 2)
}

private actor ClaudeFixtureVault: CredentialVault {
    var records: [UUID: CredentialRecord] = [:]
    func create(_ record: CredentialRecord, reference: UUID) { records[reference] = record }
    func read(_ reference: UUID) throws -> CredentialRecord {
        guard let record = records[reference] else { throw AuthenticationError.missingCredential }
        return record
    }
    func remove(_ reference: UUID) { records[reference] = nil }
}

@MainActor @Test func verifiedClaudeLoginFeedsTheRealCoordinatorAndPreservesUsageOnIdentityMismatch() async throws {
    let repository = try AccountRepository(url: FileManager.default.temporaryDirectory.appendingPathComponent("AIQuotaClaude-\(UUID())/accounts.sqlite"))
    let vault = ClaudeFixtureVault()
    let login = LoginCoordinator(repository: repository, vault: vault)
    let transport = ClaudeFixtureTransport()
    let client = ClaudeWebClient(transport: transport, now: { claudeFixtureNow })
    var ids: [UUID] = []
    for (alias, cookie, identity) in [("Claude A", "sessionKey=fixture-a", try claudeIdentity()),
                                      ("Claude B", "sessionKey=fixture-b", try claudeIdentity(subject: claudeSubjectB, org: claudeOrgB))] {
        let account = try await repository.add(provider: .claude, alias: alias)
        ids.append(account.id)
        let attempt = try await login.begin(account.id)
        _ = try await client.collect(cookieHeader: cookie, expected: identity)
        let record = try CredentialRecord(accountID: account.id, provider: .claude, identity: identity, kind: .webSession, secret: cookie)
        _ = try await login.complete(attempt, verified: record)
    }
    let source = StoredAccountSessionSource(login: login, webProfiles: IsolatedWebProfiles())
    let collector = ClaudeWebCollector(sessions: source, client: client)
    let coordinator = RefreshCoordinator(repository: repository, collector: collector, now: { claudeFixtureNow })
    try await coordinator.request(); await coordinator.waitUntilIdle()
    let original = try #require(await repository.usage(ids[0]))
    #expect(original.metrics.first?.remainingFraction == 0.75)
    #expect(try await repository.usage(ids[1])?.metrics.first?.remainingFraction == 0.25)
    let credential = try await repository.account(ids[0]).credentialReference
    await transport.changeSubject(claudeSubjectB)
    try await coordinator.request(accountIDs: [ids[0]]); await coordinator.waitUntilIdle()
    #expect(try await repository.usage(ids[0]) == original)
    #expect(try await repository.account(ids[0]).state == .authenticationRequired)
    #expect(try await repository.account(ids[0]).credentialReference == credential)
    #expect(try await repository.displaySnapshot().accounts.map(\.id) == ids)
    #expect(await coordinator.state().measurements[ids[0]]?.lastProblem == .authentication)
    let requests = await transport.requests.count
    try await coordinator.request(accountIDs: [ids[0]], reason: .recovery); await coordinator.waitUntilIdle()
    #expect(await transport.requests.count == requests)
}

@Test func claudeScopedModelLimitsKeepExactSourceIDsAndUnknownReadings() throws {
    let report = try claudeReport(#"{"limits":[{"kind":"weekly_scoped","group":"weekly","percent":1,"scope":{"model":{"id":"model/a","display_name":"Model A"}}},{"kind":"weekly_scoped","group":"weekly","percent":25,"scope":{"model":{"id":"model-a","display_name":"Model A"}}},{"kind":"weekly_scoped","group":"weekly","scope":{"model":{"id":"model-b","display_name":"Model B"}}}]}"#)
    #expect(report.metrics.count == 3)
    #expect(Set(report.metrics.map(\.id)).count == 3)
    #expect(report.metrics.map(\.remainingFraction) == [0.99, 0.75, nil])
    #expect(report.metrics[2].status == .unknown)
}

@Test func anonymousClaudeCookiesCannotTriggerAnAuthenticatedAPIProbe() async throws {
    let transport = ClaudeFixtureTransport()
    let client = ClaudeWebClient(transport: transport)
    for cookies in ["visitor=fixture", "sessionKey=", "not_sessionKey=fixture"] {
        do { _ = try await client.discover(cookieHeader: cookies); Issue.record("Anonymous cookies accepted") }
        catch CollectorError.authenticationRequired { }
    }
    #expect(await transport.requests.isEmpty)
}
