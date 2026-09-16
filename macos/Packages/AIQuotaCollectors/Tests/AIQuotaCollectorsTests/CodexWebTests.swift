import AIQuotaAuth
import AIQuotaCore
import Foundation
import Testing
@testable import AIQuotaCollectors

private let codexWebNow = Date(timeIntervalSince1970: 1_800_000_000)
private let codexCookieA = "__Secure-next-auth.session-token=fixture-a"
private let codexCookieB = "__Secure-next-auth.session-token.0=fixture-b; __Secure-next-auth.session-token.1=fixture-tail"
private func codexWebIdentity(_ subject: String = "user-fixture-a", _ workspace: String = "workspace-personal-a") throws -> RemoteIdentity {
    try RemoteIdentity(subject: subject, workspace: workspace, product: "codex-subscription")
}

private actor CodexWebTransport: HTTPTransport {
    private(set) var requests: [URLRequest] = []
    var sessionBody: String?
    var accountsBody: String?
    var usageAccount: String?
    var status = 200
    func setSession(_ body: String) { sessionBody = body }
    func setAccounts(_ body: String) { accountsBody = body }
    func setUsageAccount(_ id: String) { usageAccount = id }
    func fail(_ code: Int) { status = code }
    func send(_ request: URLRequest) throws -> HTTPResult {
        requests.append(request)
        if status != 200 { return HTTPResult(status: status, headers: ["Retry-After": "90"], body: Data()) }
        let second = request.value(forHTTPHeaderField: "Cookie") == codexCookieB
        let suffix = second ? "b" : "a"
        let token = "fixture-token-\(suffix)"
        let body: String
        switch request.url?.path {
        case "/api/auth/session":
            #expect(request.value(forHTTPHeaderField: "Authorization") == nil)
            body = sessionBody ?? "{\"user\":{\"id\":\"user-fixture-\(suffix)\",\"email\":\"same-display@example.invalid\"},\"accessToken\":\"\(token)\",\"expires\":\"2030-01-01T00:00:00.000Z\"}"
        case "/backend-api/accounts":
            #expect(request.value(forHTTPHeaderField: "Authorization") == "Bearer \(token)")
            #expect(request.value(forHTTPHeaderField: "ChatGPT-Account-Id") == nil)
            body = accountsBody ?? "{\"items\":[{\"id\":\"workspace-personal-\(suffix)\",\"name\":\"Personal fixture\"},{\"id\":\"workspace-team-\(suffix)\",\"name\":\"Team fixture\"}]}"
        case "/backend-api/wham/usage":
            #expect(request.value(forHTTPHeaderField: "Authorization") == "Bearer \(token)")
            let selected = try #require(request.value(forHTTPHeaderField: "ChatGPT-Account-Id"))
            #expect(selected.hasSuffix(suffix))
            body = "{\"account_id\":\"\(usageAccount ?? selected)\",\"plan_type\":\"pro\",\"rate_limit\":{\"primary_window\":{\"used_percent\":\(second ? 75 : 25),\"limit_window_seconds\":18000,\"reset_at\":1800010000}}}"
        default: throw CollectorError.invalidResponse
        }
        return HTTPResult(status: 200, body: Data(body.utf8))
    }
}

@Test func codexWebDiscoveryKeepsServerUserIDAndAllExplicitWorkspaces() async throws {
    let transport = CodexWebTransport()
    let client = CodexWebClient(transport: transport, now: { codexWebNow })
    let discovery = try await client.discover(cookieHeader: codexCookieA)
    #expect(discovery.subject == "user-fixture-a")
    #expect(discovery.subject != discovery.email)
    #expect(discovery.workspaces.map(\.id) == ["workspace-personal-a", "workspace-team-a"])
    #expect(!String(reflecting: discovery).contains("fixture-token"))
    let team = try await client.collect(cookieHeader: codexCookieA, expected: codexWebIdentity("user-fixture-a", "workspace-team-a"))
    #expect(team.report.identity.workspace == "workspace-team-a")
    #expect(team.report.metrics.first?.remainingFraction == 0.75)
    #expect(team.report.metrics.first?.source == .webAPI)
    #expect(team.transferredBytes > 0)
    #expect(await transport.requests.filter { $0.url?.path == "/backend-api/wham/usage" }.count == 1)
}

@Test func codexTwoWebAccountsNeverShareReturnedBearerOrWorkspace() async throws {
    let transport = CodexWebTransport()
    let client = CodexWebClient(transport: transport, now: { codexWebNow })
    async let first = client.collect(cookieHeader: codexCookieA, expected: codexWebIdentity())
    async let second = client.collect(cookieHeader: codexCookieB, expected: codexWebIdentity("user-fixture-b", "workspace-team-b"))
    let (a, b) = try await (first, second)
    #expect(a.report.identity.subject != b.report.identity.subject)
    #expect(a.report.metrics.first?.remainingFraction == 0.75)
    #expect(b.report.metrics.first?.remainingFraction == 0.25)
    #expect(await transport.requests.count == 6)
}

@Test func codexWebRejectsChangedUserMissingMembershipAndWrongUsageWorkspace() async throws {
    let transport = CodexWebTransport()
    let client = CodexWebClient(transport: transport, now: { codexWebNow })
    for expected in [try codexWebIdentity("user-other"), try codexWebIdentity("user-fixture-a", "workspace-other")] {
        await #expect(throws: CoreError.identityMismatch) { try await client.collect(cookieHeader: codexCookieA, expected: expected) }
    }
    #expect(await transport.requests.allSatisfy { $0.url?.path != "/backend-api/wham/usage" })
    await transport.setUsageAccount("workspace-other")
    await #expect(throws: CoreError.identityMismatch) { try await client.collect(cookieHeader: codexCookieA, expected: codexWebIdentity()) }
}

@Test func codexAnonymousAndExpiredWebSessionsCannotReachUsage() async throws {
    let transport = CodexWebTransport()
    let client = CodexWebClient(transport: transport, now: { codexWebNow })
    for cookie in ["visitor=fixture", "__Secure-next-auth.session-token=", "not__Secure-next-auth.session-token=fixture"] {
        do { _ = try await client.discover(cookieHeader: cookie); Issue.record("Anonymous session accepted") }
        catch CollectorError.authenticationRequired { }
    }
    #expect(await transport.requests.isEmpty)
    for body in ["{}", #"{"user":{"email":"fixture@example.invalid"},"accessToken":"fixture-token-a"}"#,
                 #"{"user":{"id":"user-fixture-a"},"accessToken":"fixture-token-a","expires":"2000-01-01T00:00:00Z"}"#] {
        await transport.setSession(body)
        do { _ = try await client.discover(cookieHeader: codexCookieA); Issue.record("Missing or expired session accepted") }
        catch CollectorError.authenticationRequired { }
    }
    #expect(await transport.requests.count == 3)
    #expect(await transport.requests.allSatisfy { $0.url == CodexWebClient.sessionURL })
}

@Test func codexMalformedWebIdentityAndWorkspaceListsFailClosed() async throws {
    let transport = CodexWebTransport()
    let client = CodexWebClient(transport: transport, now: { codexWebNow })
    for body in ["<html>challenge</html>", #"{"user":{"id":" "},"accessToken":"fixture-token-a"}"#,
                 #"{"user":{"id":"user-fixture-a"},"accessToken":"fixture-token-a","expires":"not-a-date"}"#] {
        await transport.setSession(body)
        do { _ = try await client.discover(cookieHeader: codexCookieA); Issue.record("Malformed session accepted") }
        catch CollectorError.invalidResponse { }
    }
    let valid = #"{"user":{"id":"user-fixture-a"},"accessToken":"fixture-token-a"}"#
    await transport.setSession(valid)
    for body in ["{}", #"{"items":[]}"#, #"{"items":[{"id":"same"},{"id":"same"}]}"#, #"{"items":[{"id":" "}]}"#] {
        await transport.setAccounts(body)
        do { _ = try await client.discover(cookieHeader: codexCookieA); Issue.record("Invalid workspaces accepted") }
        catch CollectorError.invalidResponse { }
    }
}

@Test func codexWebHTTPFailuresRetainAuthenticationRateLimitAndChallengeDistinctions() async throws {
    let transport = CodexWebTransport()
    let client = CodexWebClient(transport: transport, now: { codexWebNow })
    await transport.fail(401)
    do { _ = try await client.discover(cookieHeader: codexCookieA); Issue.record("401 ignored") }
    catch CollectorError.authenticationRequired { }
    await transport.fail(429)
    do { _ = try await client.discover(cookieHeader: codexCookieA); Issue.record("429 ignored") }
    catch CollectorError.rateLimited(let until) { #expect(until == codexWebNow.addingTimeInterval(90)) }
    await transport.fail(403)
    do { _ = try await client.discover(cookieHeader: codexCookieA); Issue.record("403 ignored") }
    catch CollectorError.invalidResponse { }
    #expect(await transport.requests.count == 3)
}

private actor CodexWebVault: CredentialVault {
    var values: [UUID: CredentialRecord] = [:]
    func create(_ record: CredentialRecord, reference: UUID) { values[reference] = record }
    func read(_ reference: UUID) throws -> CredentialRecord {
        guard let record = values[reference] else { throw AuthenticationError.missingCredential }
        return record
    }
    func remove(_ reference: UUID) { values[reference] = nil }
}

@MainActor @Test func codexWebProfileSourceFeedsSubscriptionCollectorWithoutAnOAuthSecret() async throws {
    let repository = try AccountRepository(url: FileManager.default.temporaryDirectory.appendingPathComponent("AIQuotaCodexWeb-\(UUID())/accounts.sqlite"))
    let login = LoginCoordinator(repository: repository, vault: CodexWebVault())
    let transport = CodexWebTransport()
    var ids: [UUID] = []
    for (cookie, identity) in [(codexCookieA, try codexWebIdentity()),
                              (codexCookieB, try codexWebIdentity("user-fixture-b", "workspace-team-b"))] {
        let account = try await repository.add(provider: .codex, alias: "Codex fixture")
        ids.append(account.id)
        let attempt = try await login.begin(account.id)
        _ = try await login.complete(attempt, verified: CredentialRecord(accountID: account.id, provider: .codex,
                                                                         identity: identity, kind: .webSession, secret: cookie))
    }
    let source = StoredAccountSessionSource(login: login, webProfiles: IsolatedWebProfiles())
    let collector = CodexSubscriptionCollector(sessions: source, transport: transport, now: { codexWebNow })
    let coordinator = RefreshCoordinator(repository: repository, collector: collector, now: { codexWebNow })
    try await coordinator.request(); await coordinator.waitUntilIdle()
    #expect(try await repository.usage(ids[0])?.metrics.first?.remainingFraction == 0.75)
    #expect(try await repository.usage(ids[1])?.metrics.first?.remainingFraction == 0.25)
    let original = try #require(await repository.usage(ids[0]))
    await transport.setAccounts(#"{"items":[{"id":"workspace-unrelated"}]}"#)
    try await coordinator.request(accountIDs: [ids[0]]); await coordinator.waitUntilIdle()
    #expect(try await repository.usage(ids[0]) == original)
    #expect(try await repository.account(ids[0]).state == .authenticationRequired)
    #expect(try await repository.account(ids[1]).state == .connected)
    #expect(try await repository.displaySnapshot().accounts.map(\.id) == ids)
}
