import AIQuotaAuth
import AIQuotaCore
import Foundation
import SQLite3
import Testing
@testable import AIQuotaCollectors

private func caJSON(_ value: Any) throws -> Data { try JSONSerialization.data(withJSONObject: value, options: .sortedKeys) }
private func caToken(user: String = "local-a", expiry: Int64 = Int64(Date.now.timeIntervalSince1970) + 3600, algorithm: String = "RS256", signature: String = "synthetic") throws -> String {
    func segment(_ value: Any) throws -> String {
        try caJSON(value).base64EncodedString().replacingOccurrences(of: "+", with: "-").replacingOccurrences(of: "/", with: "_").replacingOccurrences(of: "=", with: "")
    }
    return try segment(["alg": algorithm]) + "." + segment(["sub": "auth0|" + user, "exp": expiry]) + "." + signature
}
private func caIdentity(_ other: Bool = false) throws -> RemoteIdentity { try RemoteIdentity(subject: other ? "server-b" : "server-a", product: "cursor-subscription") }
private actor CAState: CursorStateReading {
    var data: Data
    var failure: AuthenticationError?
    private(set) var paths: [String] = []
    init(_ data: Data) { self.data = data }
    func set(_ value: Data) { data = value }
    func fail(_ value: AuthenticationError) { failure = value }
    func accessToken(path: String) throws -> Data { paths.append(path); if let failure { throw failure }; return data }
}
private actor CAHTTP: HTTPTransport {
    private(set) var requests: [URLRequest] = []
    var profileCount = 0
    var switchAt: Int?, failAt: Int?, status = 403
    var afterUsage: (@Sendable () async throws -> Void)?
    func configure(switchAt: Int? = nil, failAt: Int? = nil, status: Int = 403, afterUsage: (@Sendable () async throws -> Void)? = nil) {
        self.switchAt = switchAt; self.failAt = failAt; self.status = status; self.afterUsage = afterUsage; requests = []; profileCount = 0
    }
    func send(_ request: URLRequest) async throws -> HTTPResult {
        requests.append(request)
        #expect(request.httpMethod == "GET" && request.httpBody == nil && request.url?.host == "cursor.com")
        #expect(request.value(forHTTPHeaderField: "Authorization") == nil)
        let cookie = try #require(request.value(forHTTPHeaderField: "Cookie"))
        #expect(cookie.hasPrefix("WorkosCursorSessionToken="))
        if requests.count == failAt { return HTTPResult(status: status, body: Data("{}".utf8)) }
        let other = cookie.hasPrefix("WorkosCursorSessionToken=local-b%3A%3A")
        if request.url == CursorWebClient.accountURL {
            profileCount += 1
            let switched = switchAt.map { profileCount >= $0 } ?? false
            return HTTPResult(status: 200, body: try caJSON(["sub": other || switched ? "server-b" : "server-a", "email": "unused@example.invalid"]))
        }
        if request.url == CursorWebClient.summaryURL {
            try await afterUsage?()
            return HTTPResult(status: 200, body: Data(#"{"membershipType":"Pro","planUsage":{"totalPercentUsed":25}}"#.utf8))
        }
        #expect(request.url?.path == "/api/usage")
        #expect(URLComponents(url: try #require(request.url), resolvingAgainstBaseURL: false)?.queryItems == [URLQueryItem(name: "user", value: other ? "server-b" : "server-a")])
        return HTTPResult(status: 404, body: Data())
    }
}

@Test func cursorAppDecodesUTF8AndUTF16WithoutChangingTheJWTAndRedactsItsDescription() throws {
    let token = try caToken(), utf16 = try #require(token.data(using: .utf16LittleEndian))
    for raw in [Data(token.utf8), utf16, Data([0xff, 0xfe]) + utf16] {
        let snapshot = try CursorAppSnapshot.parse(raw, now: .now)
        #expect(snapshot.cookieHeader == "WorkosCursorSessionToken=local-a%3A%3A" + token)
        #expect(!String(reflecting: snapshot).contains(token))
    }
}

@Test func cursorAppPersistsOnlyTheSelectedLocationAndServerIdentity() async throws {
    let token = try caToken(), state = CAState(Data(token.utf8)), http = CAHTTP()
    let record = try await CursorAppConnection(state: state, client: CursorWebClient(transport: http))
        .verify(path: "/selected/state.vscdb", accountID: UUID(), expected: nil)
    #expect(record.identity == (try caIdentity()) && record.kind == .externalApplication && record.owner == .cursorApplication)
    #expect(record.externalLocator == "/selected/state.vscdb" && record.externalKeychain == nil)
    #expect(record.secret == nil && record.refreshToken == nil && record.expiresAt == nil)
    let encoded = String(decoding: try JSONEncoder().encode(record), as: UTF8.self)
    #expect(!encoded.contains(token) && !encoded.contains("local-a"))
    #expect(await state.paths == ["/selected/state.vscdb", "/selected/state.vscdb"])
    let requests = await http.requests
    #expect(requests.count == 5 && requests.allSatisfy { $0.value(forHTTPHeaderField: "Cookie") == "WorkosCursorSessionToken=local-a%3A%3A" + token })
}

@Test func cursorAppRejectsMalformedExpiredAndUnsafeTokensBeforeSendingHTTP() async throws {
    let samples = try [Data(), Data("not-a-jwt".utf8), Data(caToken(expiry: 1).utf8), Data(caToken(algorithm: "none").utf8),
                      Data(caToken(user: "unsafe;cookie").utf8), Data(caToken(user: "a|b").utf8), Data(caToken(signature: "").utf8),
                      Data((caToken() + "\n").utf8), Data(repeating: 65, count: 131_073)]
    for data in samples {
        let http = CAHTTP()
        await #expect(throws: (any Error).self) {
            try await CursorAppConnection(state: CAState(data), client: CursorWebClient(transport: http))
                .verify(path: "/selected/state.vscdb", accountID: UUID(), expected: nil)
        }
        #expect(await http.requests.isEmpty)
    }
}

@Test func cursorAppRejectsChangedSourceOrIdentityAndCancelledWorkBeforeCommit() async throws {
    let state = CAState(Data(try caToken().utf8)), http = CAHTTP(), client = CursorAppConnection(state: state, client: CursorWebClient(transport: http))
    await #expect(throws: CoreError.identityMismatch) { try await client.verify(path: "/selected/state.vscdb", accountID: UUID(), expected: caIdentity(true)) }
    #expect(await http.requests.count == 1)
    let rotated = Data(try caToken(signature: "rotated").utf8)
    await http.configure(afterUsage: { await state.set(rotated) })
    await #expect(throws: CoreError.staleAttempt) { try await client.verify(path: "/selected/state.vscdb", accountID: UUID(), expected: nil) }
    await http.configure()
    let task = Task { withUnsafeCurrentTask { $0?.cancel() }; return try await client.verify(path: "/selected/state.vscdb", accountID: UUID(), expected: nil) }
    await #expect(throws: CancellationError.self) { try await task.value }
    #expect(await http.requests.isEmpty)
}

private actor CAVault: CredentialVault {
    var records: [UUID: CredentialRecord] = [:]
    func create(_ record: CredentialRecord, reference: UUID) { records[reference] = record }
    func read(_ reference: UUID) throws -> CredentialRecord { guard let record = records[reference] else { throw AuthenticationError.missingCredential }; return record }
    func remove(_ reference: UUID) { records[reference] = nil }
}
private struct CANoCookies: WebCookieStore {
    func cookies(profileID: UUID) -> [HTTPCookie] { Issue.record("Cursor app read browser cookies"); return [] }
    func write(_ cookie: HTTPCookie, profileID: UUID, now: Date) { Issue.record("Cursor app wrote cookies") }
}
private func caDirectory() throws -> URL {
    let root = FileManager.default.temporaryDirectory.resolvingSymlinksInPath().appendingPathComponent("AIQuotaCursorApp-\(UUID())")
    try FileManager.default.createDirectory(at: root, withIntermediateDirectories: true); return root
}
private func caWriteDatabase(_ file: URL, token: String) throws {
    var db: OpaquePointer?
    guard sqlite3_open(file.path, &db) == SQLITE_OK, let db else { throw AuthenticationError.invalidCredential }
    defer { sqlite3_close(db) }
    #expect(sqlite3_exec(db, "CREATE TABLE IF NOT EXISTS ItemTable(key TEXT PRIMARY KEY,value TEXT)", nil, nil, nil) == SQLITE_OK)
    var statement: OpaquePointer?
    #expect(sqlite3_prepare_v2(db, "INSERT OR REPLACE INTO ItemTable VALUES('cursorAuth/accessToken',?)", -1, &statement, nil) == SQLITE_OK)
    defer { sqlite3_finalize(statement) }
    sqlite3_bind_text(statement, 1, token, -1, unsafeBitCast(-1, to: sqlite3_destructor_type.self))
    #expect(sqlite3_step(statement) == SQLITE_DONE)
}

@Test func cursorAppSelectedDatabasesFeedLoginCollectionAndSnapshotAndPreserveExternalOwnership() async throws {
    for otherUser in [false, true] {
        let root = try caDirectory(), file = root.appendingPathComponent("state.vscdb")
        let user = otherUser ? "local-b" : "local-a"
        try caWriteDatabase(file, token: caToken(user: user))
        let repository = try AccountRepository(url: root.appendingPathComponent("accounts.sqlite")), vault = CAVault(), login = LoginCoordinator(repository: repository, vault: vault), http = CAHTTP()
        let account = try await repository.add(provider: .cursor, alias: "Synthetic")
        let other = try await repository.add(provider: .codex, alias: "Preserve")
        await #expect(throws: CoreError.singleAccountOnly) { try await repository.add(provider: .cursor, alias: "Not allowed") }
        let connection = CursorAppConnection(client: CursorWebClient(transport: http)), attempt = try await login.begin(account.id)
        let record = try await connection.verify(path: file.path, accountID: account.id, expected: nil)
        _ = try await login.complete(attempt, verified: record)
        let connected = try await repository.account(account.id)
        let sessions = StoredAccountSessionSource(login: login, webProfiles: CANoCookies())
        let coordinator = RefreshCoordinator(repository: repository, collector: CursorWebCollector(sessions: sessions, transport: http))
        try await coordinator.request(accountIDs: [account.id]); await coordinator.waitUntilIdle()
        #expect(try await repository.usage(account.id)?.identity == caIdentity(otherUser))
        let rotated = try caToken(user: user, signature: "rotated"); try caWriteDatabase(file, token: rotated)
        try await coordinator.request(accountIDs: [account.id]); await coordinator.waitUntilIdle()
        #expect(await http.requests.last?.value(forHTTPHeaderField: "Cookie") == "WorkosCursorSessionToken=" + user + "%3A%3A" + rotated)
        #expect(try await repository.account(account.id).sessionRevision == connected.sessionRevision)
        #expect(try await repository.account(other.id) == other)
        #expect(try await repository.usage(other.id) == nil)
        let restored = try AccountRepository(url: root.appendingPathComponent("accounts.sqlite"))
        #expect(try await restored.account(account.id).credentialOwner == .cursorApplication)
        let snapshot = root.appendingPathComponent("snapshot.json"); _ = try await SnapshotFileStore(url: snapshot, repository: repository).publish()
        let text = String(decoding: try Data(contentsOf: snapshot), as: UTF8.self)
        #expect(!text.contains(root.path) && !text.contains(rotated) && !text.contains(otherUser ? "server-b" : "server-a"))
        #expect(try SnapshotFileStore.read(from: snapshot).accounts.count == 2)
        let before = try Data(contentsOf: file)
        try await login.disconnect(account.id)
        #expect(try Data(contentsOf: file) == before)
    }
}

@Test(arguments: ["switched", "switchedDuring", "rotatedDuring", "expired", "missing", "invalid", "denied"])
func cursorAppFailuresKeepPreviousUsageIdentityAndOtherAccount(_ failure: String) async throws {
    let root = try caDirectory(), state = CAState(Data(try caToken().utf8)), http = CAHTTP()
    let repository = try AccountRepository(url: root.appendingPathComponent("accounts.sqlite")), vault = CAVault(), login = LoginCoordinator(repository: repository, vault: vault)
    let account = try await repository.add(provider: .cursor, alias: "Selected"), other = try await repository.add(provider: .codex, alias: "Keep")
    let connection = CursorAppConnection(state: state, client: CursorWebClient(transport: http)), attempt = try await login.begin(account.id)
    _ = try await login.complete(attempt, verified: connection.verify(path: "/selected/state.vscdb", accountID: account.id, expected: nil))
    let coordinator = RefreshCoordinator(repository: repository, collector: CursorWebCollector(
        sessions: StoredAccountSessionSource(login: login, webProfiles: CANoCookies(), cursorState: state), transport: http))
    try await coordinator.request(accountIDs: [account.id]); await coordinator.waitUntilIdle()
    let before = try await repository.account(account.id), usage = try #require(await repository.usage(account.id))
    await http.configure()
    switch failure {
    case "switched": await state.set(Data(try caToken(user: "local-b").utf8))
    case "switchedDuring": await http.configure(switchAt: 2)
    case "rotatedDuring": let data = Data(try caToken(signature: "rotated").utf8); await http.configure(afterUsage: { await state.set(data) })
    case "expired": await state.set(Data(try caToken(expiry: 1).utf8))
    case "missing": await state.fail(.missingCredential)
    case "denied": await http.configure(failAt: 2)
    default: await state.set(Data("invalid".utf8))
    }
    try await coordinator.request(accountIDs: [account.id]); await coordinator.waitUntilIdle()
    let after = try await repository.account(account.id)
    #expect(try await repository.usage(account.id) == usage)
    #expect(try await repository.account(other.id) == other)
    #expect(after.identity == before.identity && after.credentialReference == before.credentialReference && after.sessionRevision == before.sessionRevision)
    if ["expired", "missing", "invalid"].contains(failure) { #expect(await http.requests.isEmpty) }
}
