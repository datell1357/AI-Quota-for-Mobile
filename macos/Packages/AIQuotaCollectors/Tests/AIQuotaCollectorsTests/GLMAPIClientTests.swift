import AIQuotaAuth
import AIQuotaCore
import Foundation
import Testing
@testable import AIQuotaCollectors

private let glmDate = Date(timeIntervalSince1970: 1_800_000_000)
private let glmKey = "synthetic-key-id.synthetic-key-secret"
private let glmBody = Data(#"{"code":200,"success":true,"data":{"level":"lite","limits":[{"type":"CREDIT_LIMIT","unit":3,"number":5,"usage":2000,"currentValue":500,"remaining":1500,"percentage":99,"nextResetTime":1800003600000},{"type":"CREDIT_LIMIT","unit":6,"number":1,"usage":10000,"currentValue":0,"remaining":10000,"percentage":0},{"type":"TIME_LIMIT","unit":5,"number":1,"usage":100,"currentValue":35,"percentage":35}]}}"#.utf8)
private let glmMCP = Data(#"{"code":200,"data":{"limits":[{"type":"TIME_LIMIT","unit":5,"number":1,"usage":100,"currentValue":25,"percentage":25}]}}"#.utf8)
private let glmNoSubscription = Data(#"{"code":200,"success":false,"msg":"You don't have any subscription"}"#.utf8)

private actor GLMTransport: HTTPTransport {
    private(set) var requests: [URLRequest] = []
    private var results: [HTTPResult]
    init(_ results: [HTTPResult]) { self.results = results }
    func send(_ request: URLRequest) throws -> HTTPResult {
        requests.append(request)
        guard !results.isEmpty else { throw CollectorError.network }
        return results.removeFirst()
    }
}
private actor GLMVault: CredentialVault {
    private(set) var records: [UUID: CredentialRecord] = [:]
    var failWrites = false
    func failNextWrite() { failWrites = true }
    func create(_ record: CredentialRecord, reference: UUID) throws {
        if failWrites { throw AuthenticationError.interactionRequired }
        records[reference] = record
    }
    func read(_ reference: UUID) throws -> CredentialRecord {
        guard let record = records[reference] else { throw AuthenticationError.missingCredential }
        return record
    }
    func remove(_ reference: UUID) { records[reference] = nil }
}
private func glmRepository() throws -> AccountRepository {
    try AccountRepository(url: FileManager.default.temporaryDirectory.appendingPathComponent("AIQuotaGLM-\(UUID())/accounts.sqlite"))
}

@Test func glmCountsOverrideRoundedPercentAndAllQuotaWindowsSurvive() throws {
    let quota = try GLMQuotaDecoder.decode(glmBody, fetchedAt: glmDate)
    #expect(quota.metrics.map(\.remainingFraction) == [0.75, 1, 0.65])
    #expect(quota.metrics.map(\.period) == ["5-hour", "Weekly", "Monthly"])
    #expect(quota.metrics.map(\.used) == [500, 0, 35])
    #expect(quota.metrics[0].resetsAt == glmDate.addingTimeInterval(3600))
    #expect(quota.plan == "lite")
    #expect(quota.hasPlanQuota)
}

@Test func glmAndroid55FixturePassesThroughNativeDecoder() throws {
    let url = try #require(Bundle.module.url(forResource: "glm-credit-limits", withExtension: "json", subdirectory: "Fixtures"))
    struct Fixture: Decodable { let payload: Payload; let expectedRemainingFractions: [Double]
        struct Payload: Codable { let code: Int; let msg: String; let success: Bool; let data: Details
            struct Details: Codable { let limits: [Limit]; let level: String
                struct Limit: Codable { let type: String; let unit: Int; let number: Int; let usage: Int; let currentValue: Int; let remaining: Int; let percentage: Int; let nextResetTime: Int64? }
            }
        }
    }
    let fixture = try JSONDecoder().decode(Fixture.self, from: Data(contentsOf: url))
    let quota = try GLMQuotaDecoder.decode(JSONEncoder().encode(fixture.payload), fetchedAt: glmDate)
    #expect(quota.metrics.compactMap(\.remainingFraction) == fixture.expectedRemainingFractions)
}

@Test func glmDoesNotInventQuotaForEmptyUnknownOrMalformedPayloads() throws {
    for json in [
        #"{"code":200,"success":true,"data":{"limits":[]}}"#,
        #"{"code":200,"success":false,"data":{"limits":[]}}"#,
        #"{"code":500,"msg":"You don't have any subscription"}"#,
        #"{"code":200,"data":{"limits":[{"type":"UNKNOWN"}]}}"#,
        #"{"code":200,"data":{"limits":[{"type":"CREDIT_LIMIT","unit":3,"number":5}]}}"#,
        #"{"code":200,"data":{"limits":[{"type":"CREDIT_LIMIT","unit":3,"number":5,"percentage":101}]}}"#,
        #"{"code":200,"data":{"limits":[{"type":"CREDIT_LIMIT","unit":3,"number":5,"usage":-1,"percentage":0}]}}"#,
        #"{"code":200,"data":{"limits":[{"type":"TOKENS_LIMIT","percentage":0}]}}"#,
    ] { #expect(throws: CollectorError.invalidResponse) { try GLMQuotaDecoder.decode(Data(json.utf8), fetchedAt: glmDate) } }
    let duplicated = Data(#"{"code":200,"data":{"limits":[{"type":"TOKENS_LIMIT","unit":3,"number":5,"percentage":0},{"type":"TOKENS_LIMIT","unit":3,"number":5,"percentage":0}]}}"#.utf8)
    #expect(throws: CollectorError.invalidResponse) { try GLMQuotaDecoder.decode(duplicated, fetchedAt: glmDate) }
}

@Test func glmEnvelopeAuthenticationCodeRetriesOnceAndServerFailureDoesNotRetry() async throws {
    let expired = Data(#"{"code":1001,"success":false}"#.utf8)
    let transport = GLMTransport([HTTPResult(status: 200, body: expired), HTTPResult(status: 200, body: expired)])
    await #expect(throws: CollectorError.authenticationRequired) {
        try await GLMAPIClient(transport: transport).collect(apiKey: glmKey, configuration: GLMAPIConfiguration())
    }
    #expect(await transport.requests.count == 2)
    let unavailable = GLMTransport([HTTPResult(status: 503, body: Data())])
    await #expect(throws: CollectorError.network) {
        try await GLMAPIClient(transport: unavailable).collect(apiKey: glmKey, configuration: GLMAPIConfiguration())
    }
    #expect(await unavailable.requests.count == 1)
}

@Test func glmZeroLimitIsUnknownAndImplausibleResetIsNotShiftedToAnotherTimezone() throws {
    let data = Data(#"{"code":200,"data":{"limits":[{"type":"CREDIT_LIMIT","unit":3,"number":5,"usage":0,"percentage":0,"nextResetTime":1800036000000},{"type":"CREDIT_LIMIT","unit":6,"number":1,"percentage":0}]}}"#.utf8)
    let quota = try GLMQuotaDecoder.decode(data, fetchedAt: glmDate)
    #expect(quota.metrics[0].status == .unknown)
    #expect(quota.metrics[0].remainingFraction == nil)
    #expect(quota.metrics[0].resetsAt == nil)
    #expect(quota.metrics[1].remainingFraction == 1)
}

@Test func glmOptionalPlanMetadataCannotDiscardVerifiedUsage() throws {
    let data = Data(#"{"code":200,"data":{"plan":{"name":"unrecognized structure"},"limits":[{"type":"CREDIT_LIMIT","unit":3,"number":5,"percentage":16.4}]}}"#.utf8)
    let quota = try GLMQuotaDecoder.decode(data, fetchedAt: glmDate)
    #expect(quota.plan == nil)
    #expect(abs((quota.metrics.first?.remainingFraction ?? 0) - 0.836) < 0.000001)
}

@Test func glmConfigurationBindsKeyRegionAndBothTeamSelectorsWithoutExposingTheKey() throws {
    var bindings = Set<RemoteIdentity>()
    for region in GLMAPIConfiguration.Region.allCases {
        for scope in GLMAPIConfiguration.Scope.allCases {
            let config = try GLMAPIConfiguration(region: region, scope: scope, organization: scope == .team ? "fixture-org" : nil, project: scope == .team ? "fixture-project" : nil)
            let identity = try config.binding(apiKey: glmKey)
            #expect(try GLMAPIConfiguration(binding: identity) == config)
            #expect(!identity.subject.contains(glmKey))
            bindings.insert(identity)
        }
    }
    #expect(bindings.count == 4)
    #expect(try GLMAPIConfiguration().binding(apiKey: glmKey) != GLMAPIConfiguration().binding(apiKey: "different.synthetic-key"))
    for bad in ["", "org\r\nInjected: value", "org with spaces"] {
        #expect(throws: GLMAPIError.invalidConfiguration) { try GLMAPIConfiguration(scope: .team, organization: bad, project: "fixture-project") }
    }
    #expect(throws: GLMAPIError.invalidConfiguration) { try GLMAPIConfiguration(scope: .team) }
    #expect(throws: GLMAPIError.invalidConfiguration) { try GLMAPIConfiguration(organization: "unexpected") }
    #expect(throws: GLMAPIError.invalidKey) { try GLMAPIConfiguration.normalizedKey("key\nInjected: secret") }
}

@Test func glmTeamRequestUsesOnlySelectedRegionAndScope() async throws {
    let transport = GLMTransport([HTTPResult(status: 200, body: glmBody)])
    let config = try GLMAPIConfiguration(region: .china, scope: .team, organization: "fixture-org", project: "fixture-project")
    let output = try await GLMAPIClient(transport: transport, now: { glmDate }).collect(apiKey: glmKey, configuration: config)
    let request = try #require(await transport.requests.first)
    #expect(request.url?.absoluteString == "https://open.bigmodel.cn/api/monitor/usage/quota/limit?type=2")
    #expect(request.value(forHTTPHeaderField: "Authorization") == "Bearer \(glmKey)")
    #expect(request.value(forHTTPHeaderField: "Bigmodel-Organization") == "fixture-org")
    #expect(request.value(forHTTPHeaderField: "Bigmodel-Project") == "fixture-project")
    #expect(request.value(forHTTPHeaderField: "Cookie") == nil)
    #expect(output.transferredBytes == glmBody.count)
    #expect(output.report.fetchedAt == glmDate)
}

@Test(arguments: [400, 401, 403, 404]) func glmRetriesLegacyRawAuthorizationOnlyOnCompatibleFailures(_ status: Int) async throws {
    let transport = GLMTransport([HTTPResult(status: status, body: Data()), HTTPResult(status: 200, body: glmBody)])
    _ = try await GLMAPIClient(transport: transport).collect(apiKey: glmKey, configuration: GLMAPIConfiguration())
    let requests = await transport.requests
    #expect(requests.count == 2)
    #expect(requests[0].url == requests[1].url)
    #expect(requests[1].value(forHTTPHeaderField: "Authorization") == glmKey)
}

@Test func glmMCPOnlyResponseCanRecoverPlanQuotaWithoutDroppingSuccessfulMCP() async throws {
    let transport = GLMTransport([HTTPResult(status: 200, body: glmMCP), HTTPResult(status: 200, body: glmBody)])
    let output = try await GLMAPIClient(transport: transport).collect(apiKey: glmKey, configuration: GLMAPIConfiguration())
    #expect(output.report.metrics.count == 3)
    #expect(output.transferredBytes == glmBody.count + glmMCP.count)
    let failedProbe = GLMTransport([HTTPResult(status: 200, body: glmMCP), HTTPResult(status: 401, body: Data())])
    let kept = try await GLMAPIClient(transport: failedProbe).collect(apiKey: glmKey, configuration: GLMAPIConfiguration())
    #expect(kept.report.metrics.first?.remainingFraction == 0.75)
    let offlineProbe = GLMTransport([HTTPResult(status: 200, body: glmMCP)])
    let offline = try await GLMAPIClient(transport: offlineProbe).collect(apiKey: glmKey, configuration: GLMAPIConfiguration())
    #expect(offline.report.metrics.first?.remainingFraction == 0.75)
}

@Test(arguments: [false, true]) func glmRateLimitStopsRetriesAndKeepsRetryAfter(_ afterMCP: Bool) async throws {
    let transport = GLMTransport((afterMCP ? [HTTPResult(status: 200, body: glmMCP)] : []) + [HTTPResult(status: 429, headers: ["Retry-After": "180"], body: Data())])
    await #expect(throws: CollectorError.rateLimited(until: glmDate.addingTimeInterval(180))) {
        try await GLMAPIClient(transport: transport, now: { glmDate }).collect(apiKey: glmKey, configuration: GLMAPIConfiguration())
    }
    #expect(await transport.requests.count == (afterMCP ? 2 : 1))
}

@Test func glmNoSubscriptionIsEmptyUsageAndCannotCreateCredentials() async throws {
    let repository = try glmRepository(); let vault = GLMVault(); let login = LoginCoordinator(repository: repository, vault: vault)
    let account = try await repository.add(provider: .glm, alias: "GLM fixture")
    let attempt = try await login.begin(account.id)
    let transport = GLMTransport([HTTPResult(status: 200, body: glmNoSubscription), HTTPResult(status: 200, body: glmNoSubscription)])
    let client = GLMAPIClient(transport: transport)
    let output = try await client.collect(apiKey: glmKey, configuration: GLMAPIConfiguration())
    #expect(output.report.metrics.isEmpty && output.report.plan == "No subscription")
    #expect(output.transferredBytes == glmNoSubscription.count)
    await #expect(throws: GLMAPIError.noSubscription) {
        try await GLMAPIKeyLogin(login: login, client: client).complete(attempt, apiKey: glmKey, configuration: GLMAPIConfiguration())
    }
    #expect(await vault.records.isEmpty)
    #expect(try await repository.account(account.id).credentialReference == nil)
    await login.cancel(attempt)
}

@MainActor @Test func glmVerifiedKeyFeedsCollectorSQLiteAndDisplayWithoutCredentialLeakage() async throws {
    let repository = try glmRepository(); let vault = GLMVault(); let login = LoginCoordinator(repository: repository, vault: vault)
    let account = try await repository.add(provider: .glm, alias: "GLM fixture")
    let attempt = try await login.begin(account.id)
    let empty = Data(#"{"code":200,"data":{"limits":[]}}"#.utf8)
    let transport = GLMTransport([HTTPResult(status: 200, body: glmBody), HTTPResult(status: 200, body: glmBody), HTTPResult(status: 200, body: empty), HTTPResult(status: 200, body: glmNoSubscription)])
    let configuration = try GLMAPIConfiguration()
    _ = try await GLMAPIKeyLogin(login: login, client: GLMAPIClient(transport: transport)).complete(attempt, apiKey: glmKey, configuration: configuration)
    let source = StoredAccountSessionSource(login: login, webProfiles: IsolatedWebProfiles())
    let collector = GLMAPICollector(sessions: source, transport: transport)
    let coordinator = RefreshCoordinator(repository: repository, collector: collector)
    try await coordinator.request(); await coordinator.waitUntilIdle()
    let snapshotURL = FileManager.default.temporaryDirectory.appendingPathComponent("AIQuotaGLMDisplay-\(UUID())/snapshot.json")
    let publisher = SnapshotFileStore(url: snapshotURL, repository: repository)
    _ = try await publisher.publish()
    let display = try SnapshotFileStore.read(from: snapshotURL)
    #expect(display.accounts[0].metrics.map(\.remainingFraction) == [0.75, 1, 0.65])
    #expect(display.accounts[0].state == .connected)
    let json = String(decoding: try JSONEncoder().encode(display), as: UTF8.self)
    #expect(!json.contains(glmKey) && !json.contains("api-key-sha256") && !json.contains("credentialReference"))
    let invalidRefresh = RefreshCoordinator(repository: repository, collector: collector)
    try await invalidRefresh.request(); await invalidRefresh.waitUntilIdle()
    #expect(try await repository.account(account.id).state == .stale)
    #expect(try await repository.usage(account.id)?.fetchedAt == display.accounts[0].fetchedAt)
    #expect(try await repository.usage(account.id)?.metrics == display.accounts[0].metrics)
    let context = try await repository.collectionContext(account.id)
    let unsubscribed = try await collector.collect(account: context.0, lease: context.1)
    try await repository.accept(unsubscribed.report, for: context.1)
    #expect(try await repository.account(account.id).state == .unavailable)
    #expect(try await repository.usage(account.id)?.metrics.isEmpty == true)
}

private struct GLMFixedSession: AccountSessionSource {
    let key: String
    var stale = false
    func session(for account: Account, lease: CollectionLease) async throws -> AuthenticatedSession {
        AuthenticatedSession(accountID: account.id, provider: .glm, generation: account.generation,
                             sessionRevision: stale ? 0 : account.sessionRevision, identity: lease.identity, accessToken: key)
    }
}
@Test func glmCollectorRejectsStaleSessionOrDifferentStoredKeyBeforeHTTP() async throws {
    let repository = try glmRepository(); let account = try await repository.add(provider: .glm, alias: "GLM fixture")
    try await repository.connect(account.id, expectedGeneration: account.generation, expectedSessionRevision: 0,
                                 identity: GLMAPIConfiguration().binding(apiKey: glmKey), method: .apiKey, owner: .aiQuota, credentialReference: UUID())
    let context = try await repository.collectionContext(account.id)
    let transport = GLMTransport([])
    await #expect(throws: CoreError.staleAttempt) {
        try await GLMAPICollector(sessions: GLMFixedSession(key: glmKey, stale: true), transport: transport).collect(account: context.0, lease: context.1)
    }
    await #expect(throws: CoreError.identityMismatch) {
        try await GLMAPICollector(sessions: GLMFixedSession(key: "different.synthetic-key"), transport: transport).collect(account: context.0, lease: context.1)
    }
    #expect(await transport.requests.isEmpty)
}

@Test func glmScopeMismatchAndKeychainFailurePreservePreviousConnection() async throws {
    let repository = try glmRepository(); let vault = GLMVault(); let login = LoginCoordinator(repository: repository, vault: vault)
    let account = try await repository.add(provider: .glm, alias: "GLM fixture")
    let config = try GLMAPIConfiguration(); let binding = try config.binding(apiKey: glmKey)
    let first = try await login.begin(account.id)
    _ = try await login.complete(first, verified: CredentialRecord(accountID: account.id, provider: .glm, identity: binding, kind: .apiKey, secret: glmKey))
    let transport = GLMTransport([HTTPResult(status: 200, body: glmBody)])
    let verifier = GLMAPIKeyLogin(login: login, client: GLMAPIClient(transport: transport))
    let mismatch = try await login.begin(account.id)
    await #expect(throws: CoreError.identityMismatch) {
        try await verifier.complete(mismatch, apiKey: glmKey, configuration: GLMAPIConfiguration(region: .china), expected: binding)
    }
    #expect(await transport.requests.isEmpty)
    await login.cancel(mismatch)
    let failedWrite = try await login.begin(account.id); await vault.failNextWrite()
    await #expect(throws: AuthenticationError.interactionRequired) { try await verifier.complete(failedWrite, apiKey: glmKey, configuration: config, expected: binding) }
    #expect(try await repository.account(account.id).credentialReference == first.credentialReference)
    #expect(await vault.records.count == 1)
}

private actor GLMDelayedTransport: HTTPTransport {
    private var continuation: CheckedContinuation<HTTPResult, Never>?
    private var observer: CheckedContinuation<Void, Never>?
    func send(_ request: URLRequest) async -> HTTPResult {
        await withCheckedContinuation { continuation in
            self.continuation = continuation; observer?.resume(); observer = nil
        }
    }
    func started() async {
        if continuation != nil { return }
        await withCheckedContinuation { observer = $0 }
    }
    func finish() { continuation?.resume(returning: HTTPResult(status: 200, body: glmBody)); continuation = nil }
}
@Test func glmCancelledLoginCannotCommitLateQuotaResponse() async throws {
    let repository = try glmRepository(); let vault = GLMVault(); let login = LoginCoordinator(repository: repository, vault: vault)
    let account = try await repository.add(provider: .glm, alias: "GLM fixture")
    let attempt = try await login.begin(account.id); let transport = GLMDelayedTransport()
    let task = Task { try await GLMAPIKeyLogin(login: login, client: GLMAPIClient(transport: transport)).complete(attempt, apiKey: glmKey, configuration: GLMAPIConfiguration()) }
    await transport.started(); await login.cancel(attempt); await transport.finish()
    await #expect(throws: CoreError.staleAttempt) { try await task.value }
    #expect(await vault.records.isEmpty)
    #expect(try await repository.account(account.id).state == .disconnected)
}
