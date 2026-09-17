import AIQuotaAuth
import AIQuotaCore
import Foundation
import Testing
@testable import AIQuotaCollectors

private let clUserA = "11111111-1111-4111-8111-111111111111"
private let clUserB = "22222222-2222-4222-8222-222222222222"
private let clOrgA = "aaaaaaaa-aaaa-4aaa-8aaa-aaaaaaaaaaaa"
private let clOrgB = "bbbbbbbb-bbbb-4bbb-8bbb-bbbbbbbbbbbb"
private func clJSON(_ object: Any) throws -> Data { try JSONSerialization.data(withJSONObject: object, options: .sortedKeys) }
private func clIdentity(_ other: Bool = false) throws -> RemoteIdentity {
    try RemoteIdentity(subject: other ? clUserB : clUserA, workspace: other ? clOrgB : clOrgA, product: "claude-subscription")
}
private func clFile(token: String = "synthetic-claude-a", expiry: Double = Date.now.addingTimeInterval(3600).timeIntervalSince1970 * 1000,
                    scopes: [String] = ["user:profile", "user:inference"]) throws -> Data {
    try clJSON(["claudeAiOauth": ["accessToken": token, "refreshToken": "synthetic-never-copy-or-refresh", "expiresAt": expiry,
                                 "scopes": scopes, "subscriptionType": "untrusted-local-plan"],
                "oauthAccount": ["accountUuid": "untrusted-local-subject"], "mcpOAuth": ["unrelated": "synthetic-mcp-preserve"]])
}
private actor CLFiles: CredentialFileReading {
    var data: Data
    var error: AuthenticationError?
    private(set) var paths: [String] = []
    init(_ data: Data) { self.data = data }
    func set(_ data: Data) { self.data = data }
    func fail(_ error: AuthenticationError) { self.error = error }
    func read(path: String) throws -> Data { paths.append(path); if let error { throw error }; return data }
}
private actor CLKeychain: ExternalKeychainReading {
    var data: Data
    var error: AuthenticationError?
    private(set) var reads: [(ExternalKeychainReference, Bool)] = []
    init(_ data: Data) { self.data = data }
    func set(_ data: Data) { self.data = data }
    func fail(_ error: AuthenticationError) { self.error = error }
    func read(_ reference: ExternalKeychainReference, allowInteraction: Bool) throws -> Data {
        reads.append((reference, allowInteraction)); if let error { throw error }; return data
    }
}
private actor CLHTTP: HTTPTransport {
    private(set) var requests: [URLRequest] = []
    var profileCount = 0
    var failIndex: Int?, status = 200, invalidBody: Data?, switchProfileAt: Int?
    var afterUsage: (@Sendable () async throws -> Void)?
    func configure(failIndex: Int? = nil, status: Int = 200, invalidBody: Data? = nil, switchProfileAt: Int? = nil,
                   afterUsage: (@Sendable () async throws -> Void)? = nil) {
        self.failIndex = failIndex; self.status = status; self.invalidBody = invalidBody
        self.switchProfileAt = switchProfileAt; self.afterUsage = afterUsage; profileCount = 0; requests = []
    }
    func send(_ request: URLRequest) async throws -> HTTPResult {
        requests.append(request)
        #expect(request.httpMethod == "GET" && request.httpBody == nil)
        #expect(request.value(forHTTPHeaderField: "Cookie") == nil && request.value(forHTTPHeaderField: "X-Api-Key") == nil)
        #expect(request.value(forHTTPHeaderField: "anthropic-beta") == "oauth-2025-04-20")
        #expect(request.value(forHTTPHeaderField: "User-Agent") == "AIQuota-macOS")
        if requests.count == failIndex { return HTTPResult(status: status, headers: ["Retry-After": "45"], body: invalidBody ?? Data("{}".utf8)) }
        let body: Data
        if request.url == ClaudeOAuthClient.profileURL {
            profileCount += 1
            let switched = switchProfileAt.map { profileCount >= $0 } ?? false
            let other = request.value(forHTTPHeaderField: "Authorization") == "Bearer synthetic-claude-b" || switched
            body = try clJSON(["account": ["uuid": other ? clUserB : clUserA, "email": "not-identity@example.invalid"],
                               "organization": ["uuid": other ? clOrgB : clOrgA, "rate_limit_tier": "default_claude_pro"]])
        } else {
            #expect(request.url == ClaudeOAuthClient.usageURL)
            body = try clJSON(["five_hour": ["utilization": 0.36, "resets_at": "2027-01-01T01:00:00Z"],
                               "seven_day": ["utilization": 25], "seven_day_sonnet": ["utilization": 80],
                               "extra_usage": ["is_enabled": true, "used_credits": 150, "monthly_limit": 1000]])
            try await afterUsage?()
        }
        return HTTPResult(status: 200, headers: ["Content-Type": "application/json"], body: body)
    }
}

@Test func claudeOAuthReadsServerIdentityBeforeAndAfterUsageAndPreservesUnitsAndSource() async throws {
    let http = CLHTTP(), identity = try clIdentity()
    let output = try await ClaudeOAuthClient(transport: http).collect(accessToken: "synthetic-claude-a", expected: identity)
    #expect(output.report.identity == identity && output.report.plan == "Pro")
    for (metric, expected) in zip(output.report.metrics, [0.9964, 0.75, 0.2, 0.85]) { #expect(abs(try #require(metric.remainingFraction) - expected) < 0.000001) }
    #expect(output.report.metrics.allSatisfy { $0.source == .oauthAPI })
    #expect(output.report.metrics.last?.used == 150 && output.report.metrics.last?.limit == 1000)
    let requests = await http.requests
    #expect(requests.map(\.url) == [ClaudeOAuthClient.profileURL, ClaudeOAuthClient.usageURL, ClaudeOAuthClient.profileURL])
    #expect(requests.allSatisfy { $0.value(forHTTPHeaderField: "Authorization") == "Bearer synthetic-claude-a" })
}

@Test(arguments: [1, 2, 3], [401, 403, 429, 503, 204])
func claudeOAuthHTTPFailuresStopWithoutInventingUsage(_ position: Int, _ status: Int) async throws {
    let http = CLHTTP(); await http.configure(failIndex: position, status: status)
    await #expect(throws: CollectorError.self) { try await ClaudeOAuthClient(transport: http).collect(accessToken: "synthetic", expected: clIdentity()) }
    #expect(await http.requests.count == position)
}

@Test func claudeOAuthRejectsMissingOrChangedServerIdentityAndMalformedQuota() async throws {
    for position in [1, 3] {
        let http = CLHTTP(); await http.configure(switchProfileAt: position == 1 ? 1 : 2)
        await #expect(throws: CoreError.identityMismatch) { try await ClaudeOAuthClient(transport: http).collect(accessToken: "synthetic", expected: clIdentity()) }
        #expect(await http.requests.count == position)
    }
    for raw in [Data("{}".utf8), try clJSON(["account": ["email": "not-identity@example.invalid"], "organization": ["uuid": clOrgA]]),
                try clJSON(["account": ["uuid": "invalid"], "organization": ["uuid": clOrgA]])] {
        let http = CLHTTP(); await http.configure(failIndex: 1, invalidBody: raw)
        await #expect(throws: CollectorError.invalidResponse) { try await ClaudeOAuthClient(transport: http).collect(accessToken: "synthetic", expected: nil) }
        #expect(await http.requests.count == 1)
    }
    let http = CLHTTP(); await http.configure(failIndex: 2, invalidBody: Data("{}".utf8))
    await #expect(throws: CollectorError.invalidResponse) { try await ClaudeOAuthClient(transport: http).collect(accessToken: "synthetic", expected: clIdentity()) }
}

@Test(arguments: [false, true])
func claudeCodeSelectedFileOrKeychainPersistsOnlyItsLocatorAndServerIdentity(_ keychainMode: Bool) async throws {
    let raw = try clFile(), files = CLFiles(raw), keychain = CLKeychain(raw), http = CLHTTP()
    let reference = try ExternalKeychainReference(service: "Claude Code-credentials-1234abcd", account: "synthetic-user")
    let source: ClaudeCodeSource = keychainMode ? .keychain(reference) : .file("/fixture/.credentials.json")
    let client = ClaudeCodeConnection(files: files, keychain: keychain, client: ClaudeOAuthClient(transport: http))
    let record = try await client.verify(source: source, accountID: UUID(), expected: nil, allowInteraction: true)
    #expect(record.identity == (try clIdentity()) && record.owner == .claudeCode && record.kind == .externalApplication)
    #expect(record.externalKeychain == (keychainMode ? reference : nil))
    #expect(record.externalLocator == (keychainMode ? nil : "/fixture/.credentials.json"))
    #expect(record.secret == nil && record.refreshToken == nil && record.expiresAt == nil)
    let encoded = String(decoding: try JSONEncoder().encode(record), as: UTF8.self)
    #expect(!encoded.contains("synthetic-claude-a") && !encoded.contains("synthetic-never-copy") && !encoded.contains("untrusted"))
    #expect(!String(reflecting: try ClaudeCodeSnapshot.parse(raw, now: .now)).contains("synthetic-claude-a"))
    #expect(await files.data == raw)
    #expect(await keychain.data == raw)
    if keychainMode {
        let reads = await keychain.reads
        #expect(reads.map(\.0) == [reference, reference] && reads.map(\.1) == [true, false])
        #expect(await files.paths.isEmpty)
    } else {
        #expect(await files.paths == ["/fixture/.credentials.json", "/fixture/.credentials.json"])
        #expect(await keychain.reads.isEmpty)
    }
}

@Test func claudeCodeRejectsUnrelatedSourcesExpiredMissingAndInferenceOnlyCredentialsBeforeHTTP() async throws {
    let samples = try [Data(), Data("{}".utf8), clJSON(["mcpOAuth": ["unrelated": "preserve"]]),
                      clFile(expiry: 1), clFile(scopes: ["user:inference"]), clFile(token: "line\nbreak"), Data(repeating: 32, count: 1_048_577)]
    for raw in samples {
        let http = CLHTTP()
        await #expect(throws: (any Error).self) {
            try await ClaudeCodeConnection(files: CLFiles(raw), client: ClaudeOAuthClient(transport: http))
                .verify(source: .file("/fixture/.credentials.json"), accountID: UUID(), expected: nil)
        }
        #expect(await http.requests.isEmpty)
    }
    #expect(throws: CollectorError.unsupported) { try ClaudeCodeSource.file("/fixture/auth.json").validate() }
    #expect(throws: CollectorError.unsupported) { try ClaudeCodeSource.keychain(ExternalKeychainReference(service: "Unrelated-service", account: "synthetic")).validate() }
    #expect(throws: CollectorError.unsupported) { try ClaudeCodeSource.keychain(ExternalKeychainReference(service: "Claude Code-credentials-extra", account: "synthetic")).validate() }
}

@Test func claudeCodeRefusesToCommitAChangedSourceAndCancelsWithoutUsingFallbackStorage() async throws {
    let raw = try clFile(), files = CLFiles(raw), keychain = CLKeychain(raw), http = CLHTTP()
    let rotated = try clFile(token: "synthetic-rotated")
    await http.configure(afterUsage: { await files.set(rotated) })
    let client = ClaudeCodeConnection(files: files, keychain: keychain, client: ClaudeOAuthClient(transport: http))
    await #expect(throws: CoreError.staleAttempt) {
        try await client.verify(source: .file("/fixture/.credentials.json"), accountID: UUID(), expected: nil)
    }
    await http.configure(); await keychain.fail(.cancelled)
    let reference = try ExternalKeychainReference(service: "Claude Code-credentials", account: "synthetic")
    await #expect(throws: CancellationError.self) {
        try await client.verify(source: .keychain(reference), accountID: UUID(), expected: nil, allowInteraction: true)
    }
    #expect(await http.requests.isEmpty)
    #expect(await files.paths.count == 2)
    #expect(await files.data == rotated)
}

private actor CLVault: CredentialVault {
    var values: [UUID: CredentialRecord] = [:]
    func create(_ record: CredentialRecord, reference: UUID) { values[reference] = record }
    func read(_ reference: UUID) throws -> CredentialRecord { guard let record = values[reference] else { throw AuthenticationError.missingCredential }; return record }
    func remove(_ reference: UUID) { values[reference] = nil }
}
private struct CLNoCookies: WebCookieStore {
    func cookies(profileID: UUID) -> [HTTPCookie] { Issue.record("Claude Code read web cookies"); return [] }
    func write(_ cookie: HTTPCookie, profileID: UUID, now: Date) { Issue.record("Claude Code wrote cookies") }
}
private func clDirectory() throws -> URL {
    let url = FileManager.default.temporaryDirectory.resolvingSymlinksInPath().appendingPathComponent("AIQuotaClaudeCode-\(UUID())")
    try FileManager.default.createDirectory(at: url, withIntermediateDirectories: true); return url
}

@Test func claudeCodeTwoSourcesFeedLoginCollectionSQLiteAndSnapshotWithoutSharingOrRefreshingTokens() async throws {
    let root = try clDirectory(), file = root.appendingPathComponent(".credentials.json"), rawA = try clFile(), rawB = try clFile(token: "synthetic-claude-b")
    try rawA.write(to: file)
    let keychain = CLKeychain(rawB), reference = try ExternalKeychainReference(service: "Claude Code-credentials", account: "synthetic-user")
    let repository = try AccountRepository(url: root.appendingPathComponent("accounts.sqlite")), vault = CLVault(), login = LoginCoordinator(repository: repository, vault: vault), http = CLHTTP()
    let connection = ClaudeCodeConnection(keychain: keychain, client: ClaudeOAuthClient(transport: http))
    var accounts: [Account] = []
    for source in [ClaudeCodeSource.file(file.path), .keychain(reference)] {
        let account = try await repository.add(provider: .claude, alias: "Synthetic"), attempt = try await login.begin(account.id)
        let record = try await connection.verify(source: source, accountID: account.id, expected: nil)
        _ = try await login.complete(attempt, verified: record); accounts.append(try await repository.account(account.id))
    }
    let sessions = StoredAccountSessionSource(login: login, webProfiles: CLNoCookies(), externalKeychain: keychain)
    let coordinator = RefreshCoordinator(repository: repository, collector: ClaudeWebCollector(sessions: sessions, oauth: ClaudeOAuthClient(transport: http)))
    try await coordinator.request(accountIDs: accounts.map(\.id)); await coordinator.waitUntilIdle()
    #expect(try await repository.usage(accounts[0].id)?.identity == clIdentity())
    #expect(try await repository.usage(accounts[1].id)?.identity == clIdentity(true))
    let second = try await repository.account(accounts[1].id), secondUsage = try await repository.usage(second.id)
    let rotated = try clFile(token: "synthetic-rotated-a"); try rotated.write(to: file, options: .atomic)
    try await coordinator.request(accountIDs: [accounts[0].id]); await coordinator.waitUntilIdle()
    #expect(await http.requests.last?.value(forHTTPHeaderField: "Authorization") == "Bearer synthetic-rotated-a")
    #expect(try await repository.account(accounts[0].id).sessionRevision == accounts[0].sessionRevision)
    #expect(try await repository.account(second.id) == second)
    #expect(try await repository.usage(second.id) == secondUsage)
    let restored = try AccountRepository(url: root.appendingPathComponent("accounts.sqlite"))
    #expect(try await restored.account(second.id).credentialOwner == .claudeCode)
    let snapshot = root.appendingPathComponent("snapshot.json"); _ = try await SnapshotFileStore(url: snapshot, repository: repository).publish()
    let text = String(decoding: try Data(contentsOf: snapshot), as: UTF8.self)
    #expect(!text.contains(root.path) && !text.contains(reference.service) && !text.contains("synthetic-claude") && !text.contains(clUserA))
    #expect(try SnapshotFileStore.read(from: snapshot).accounts.count == 2)
    try await login.disconnect(accounts[0].id); try await login.disconnect(second.id)
    #expect(try Data(contentsOf: file) == rotated)
    #expect(await keychain.data == rawB)
    #expect(await keychain.reads.allSatisfy { !$0.1 })
}

@Test(arguments: ["switched", "switchedDuring", "rotatedDuring", "expired", "locked", "missing", "invalid", "denied"])
func claudeCodeFailuresPreserveStoredUsageIdentityAndOtherAccount(_ failure: String) async throws {
    let root = try clDirectory(), keychain = CLKeychain(try clFile()), http = CLHTTP()
    let source = ClaudeCodeSource.keychain(try ExternalKeychainReference(service: "Claude Code-credentials", account: "synthetic"))
    let repository = try AccountRepository(url: root.appendingPathComponent("accounts.sqlite")), vault = CLVault(), login = LoginCoordinator(repository: repository, vault: vault)
    let account = try await repository.add(provider: .claude, alias: "Selected"), other = try await repository.add(provider: .codex, alias: "Keep")
    let connection = ClaudeCodeConnection(keychain: keychain, client: ClaudeOAuthClient(transport: http)), attempt = try await login.begin(account.id)
    _ = try await login.complete(attempt, verified: connection.verify(source: source, accountID: account.id, expected: nil))
    let coordinator = RefreshCoordinator(repository: repository, collector: ClaudeWebCollector(
        sessions: StoredAccountSessionSource(login: login, webProfiles: CLNoCookies(), externalKeychain: keychain), oauth: ClaudeOAuthClient(transport: http)))
    try await coordinator.request(accountIDs: [account.id]); await coordinator.waitUntilIdle()
    let before = try await repository.account(account.id), usage = try #require(await repository.usage(account.id))
    await http.configure()
    switch failure {
    case "switched": await keychain.set(try clFile(token: "synthetic-claude-b"))
    case "switchedDuring": await http.configure(switchProfileAt: 2)
    case "rotatedDuring": let rotated = try clFile(token: "synthetic-rotated"); await http.configure(afterUsage: { await keychain.set(rotated) })
    case "expired": await keychain.set(try clFile(expiry: 1))
    case "locked": await keychain.fail(.interactionRequired)
    case "missing": await keychain.fail(.missingCredential)
    case "denied": await http.configure(failIndex: 2, status: 403)
    default: await keychain.set(Data("{bad}".utf8))
    }
    try await coordinator.request(accountIDs: [account.id]); await coordinator.waitUntilIdle()
    let after = try await repository.account(account.id)
    #expect(try await repository.usage(account.id) == usage)
    #expect(try await repository.account(other.id) == other)
    #expect(after.identity == before.identity && after.credentialReference == before.credentialReference && after.sessionRevision == before.sessionRevision)
    #expect(await keychain.reads.allSatisfy { !$0.1 })
    if ["expired", "locked", "missing", "invalid"].contains(failure) { #expect(await http.requests.isEmpty) }
}
