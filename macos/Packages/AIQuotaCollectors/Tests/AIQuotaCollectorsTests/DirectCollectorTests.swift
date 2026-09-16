import AIQuotaCore
import AIQuotaAuth
import Foundation
import Testing
@testable import AIQuotaCollectors

private actor RecordingTransport: HTTPTransport {
    private(set) var requests: [URLRequest] = []
    let result: HTTPResult
    init(_ result: HTTPResult) { self.result = result }
    func send(_ request: URLRequest) async throws -> HTTPResult { requests.append(request); return result }
}
private struct SyntheticSessions: AccountSessionSource {
    var stale = false
    func session(for account: Account, lease: CollectionLease) async throws -> AuthenticatedSession {
        AuthenticatedSession(accountID: account.id, provider: account.provider, generation: account.generation,
                             sessionRevision: stale ? 0 : account.sessionRevision, identity: lease.identity,
                             cookieHeader: "test_session=fixture-\(account.id)", accessToken: "fixture-\(account.id)")
    }
}
private func collectionAccount(provider: ProviderID, workspace: String? = nil) async throws -> (Account, CollectionLease) {
    let repository = try AccountRepository(url: FileManager.default.temporaryDirectory.appendingPathComponent("AIQuotaTransport-\(UUID())/accounts.sqlite"))
    let account = try await repository.add(provider: provider, alias: "Fixture")
    let product = provider == .codex ? "codex-subscription" : "grok-weekly"
    let identity = try RemoteIdentity(subject: "subject-\(account.id)", workspace: workspace, product: product)
    try await repository.connect(account.id, expectedGeneration: account.generation, expectedSessionRevision: 0,
                                 identity: identity, method: .webSession, owner: .aiQuota, credentialReference: UUID())
    return try await repository.collectionContext(account.id)
}

@Test func twoCodexAccountsUseDistinctCredentialsAndWorkspaceHeaders() async throws {
    let body = Data(#"{"plan_type":"plus","rate_limit":{"primary_window":{"used_percent":20,"reset_at":1900000000,"limit_window_seconds":604800}}}"#.utf8)
    let transport = RecordingTransport(HTTPResult(status: 200, body: body))
    let collector = CodexSubscriptionCollector(sessions: SyntheticSessions(), transport: transport)
    let a = try await collectionAccount(provider: .codex, workspace: "workspace-a")
    let b = try await collectionAccount(provider: .codex, workspace: "workspace-b")
    async let first = collector.collect(account: a.0, lease: a.1)
    async let second = collector.collect(account: b.0, lease: b.1)
    let (left, right) = try await (first, second)
    #expect(left.report.identity == a.1.identity)
    #expect(right.report.identity == b.1.identity)
    #expect(left.transferredBytes == body.count)
    let requests = await transport.requests
    #expect(requests.count == 2)
    #expect(Set(requests.compactMap { $0.value(forHTTPHeaderField: "ChatGPT-Account-Id") }) == ["workspace-a", "workspace-b"])
    #expect(Set(requests.compactMap { $0.value(forHTTPHeaderField: "Authorization") }).count == 2)
    #expect(requests.allSatisfy { $0.url == CodexSubscriptionCollector.endpoint && $0.value(forHTTPHeaderField: "Cookie") == nil })
}

@Test func staleCredentialRevisionIsRejectedBeforeAnyRequest() async throws {
    let transport = RecordingTransport(HTTPResult(status: 200, body: Data()))
    let collector = CodexSubscriptionCollector(sessions: SyntheticSessions(stale: true), transport: transport)
    let (account, lease) = try await collectionAccount(provider: .codex)
    await #expect(throws: CoreError.staleAttempt) { try await collector.collect(account: account, lease: lease) }
    #expect(await transport.requests.isEmpty)
}

@Test func grokCollectorSendsTheAuthenticatedEmptyGrpcFrame() async throws {
    let fixtureURL = try #require(Bundle.module.url(forResource: "grok-realResponse", withExtension: "json", subdirectory: "Fixtures"))
    let fixture = try #require(JSONSerialization.jsonObject(with: Data(contentsOf: fixtureURL)) as? [String: Any])
    let hex = Array(try #require(fixture["hex"] as? String))
    let bytes = Data(stride(from: 0, to: hex.count, by: 2).map { UInt8(String(hex[$0...($0 + 1)]), radix: 16)! })
    let transport = RecordingTransport(HTTPResult(status: 200, body: bytes))
    let collector = GrokWeeklyCollector(sessions: SyntheticSessions(), transport: transport)
    let (account, lease) = try await collectionAccount(provider: .grok)
    let output = try await collector.collect(account: account, lease: lease)
    #expect(abs((output.report.metrics.first?.remainingFraction ?? 0) - 0.68) < 0.001)
    let request = try #require(await transport.requests.first)
    #expect(request.url == GrokWeeklyDecoder.endpoint)
    #expect(request.httpMethod == "POST")
    #expect(request.httpBody == Data(repeating: 0, count: 5))
    #expect(request.value(forHTTPHeaderField: "Content-Type") == "application/grpc-web+proto")
    #expect(request.value(forHTTPHeaderField: "Cookie") == "test_session=fixture-\(account.id)")
}

@Test func httpStatusPolicyPreservesRetryAfterAndSeparatesAuthenticationFromOtherFailures() throws {
    let now = Date(timeIntervalSince1970: 1_800_000_000)
    for (value, expected) in [("120", now.addingTimeInterval(120)), ("Fri, 15 Jan 2027 08:02:00 GMT", now.addingTimeInterval(120))] {
        do {
            _ = try HTTPResponsePolicy.body(HTTPResult(status: 429, headers: ["Retry-After": value], body: Data()), now: now)
            Issue.record("429 did not stop collection")
        } catch CollectorError.rateLimited(let date) { #expect(date == expected) }
    }
    for invalid in ["nan", "inf", "-5", "1e100", "not-a-date"] {
        #expect(HTTPResponsePolicy.retryDate(invalid, now: now) == nil)
    }
    do {
        _ = try HTTPResponsePolicy.body(HTTPResult(status: 401, body: Data()), now: now)
        Issue.record("401 accepted")
    } catch CollectorError.authenticationRequired { }
    do {
        _ = try HTTPResponsePolicy.body(HTTPResult(status: 403, body: Data()), now: now)
        Issue.record("403 accepted")
    } catch CollectorError.invalidResponse { }
    do {
        _ = try HTTPResponsePolicy.body(HTTPResult(status: 503, body: Data()), now: now)
        Issue.record("503 accepted")
    } catch CollectorError.network { }
}

@Test func nativeTransportRejectsUntrustedDestinationsWithoutNetworkAccess() async throws {
    let transport = NativeHTTPTransport(allowedHosts: ["chatgpt.com"])
    for destination in ["http://chatgpt.com", "https://example.com", "https://chatgpt.com:8443", "https://user:password@chatgpt.com"] {
        let request = URLRequest(url: try #require(URL(string: destination)))
        await #expect(throws: (any Error).self) { try await transport.send(request) }
    }
    #expect(throws: (any Error).self) { try AuthenticatedSession.headerValue("test\r\nInjected: secret") }
}

private actor SessionVault: CredentialVault {
    var values: [UUID: CredentialRecord] = [:]
    var locked = false
    func lock() { locked = true }
    func create(_ record: CredentialRecord, reference: UUID) { values[reference] = record }
    func read(_ reference: UUID) throws -> CredentialRecord {
        if locked { throw AuthenticationError.interactionRequired }
        guard let record = values[reference] else { throw AuthenticationError.missingCredential }
        return record
    }
    func remove(_ reference: UUID) { values[reference] = nil }
}

@MainActor @Test func storedCredentialFeedsCollectorAndLockedVaultPreservesTheLastUsage() async throws {
    let repository = try AccountRepository(url: FileManager.default.temporaryDirectory.appendingPathComponent("AIQuotaStoredSession-\(UUID())/accounts.sqlite"))
    let vault = SessionVault(); let login = LoginCoordinator(repository: repository, vault: vault)
    let account = try await repository.add(provider: .codex, alias: "Stored")
    let attempt = try await login.begin(account.id)
    let identity = try RemoteIdentity(subject: "synthetic-user", workspace: "synthetic-workspace", product: "codex-subscription")
    let credential = try CredentialRecord(accountID: account.id, provider: .codex, identity: identity,
                                          kind: .oauth, secret: "synthetic-stored-token")
    _ = try await login.complete(attempt, verified: credential)
    let source = StoredAccountSessionSource(login: login, webProfiles: IsolatedWebProfiles())
    let body = Data(#"{"plan_type":"plus","rate_limit":{"primary_window":{"used_percent":20,"reset_at":1900000000,"limit_window_seconds":604800}}}"#.utf8)
    let transport = RecordingTransport(HTTPResult(status: 200, body: body))
    let collector = CodexSubscriptionCollector(sessions: source, transport: transport)
    let coordinator = RefreshCoordinator(repository: repository, collector: collector)
    try await coordinator.request(); await coordinator.waitUntilIdle()
    let original = try #require(await repository.usage(account.id))
    #expect(await transport.requests.first?.value(forHTTPHeaderField: "Authorization") == "Bearer synthetic-stored-token")
    await vault.lock()
    try await coordinator.request(); await coordinator.waitUntilIdle()
    #expect(await transport.requests.count == 1)
    #expect(try await repository.account(account.id).state == .stale)
    #expect(try await repository.usage(account.id)?.fetchedAt == original.fetchedAt)
    #expect(await coordinator.state().measurements[account.id]?.lastProblem == .credentials)
    #expect(try await repository.account(account.id).credentialReference == attempt.credentialReference)
}
