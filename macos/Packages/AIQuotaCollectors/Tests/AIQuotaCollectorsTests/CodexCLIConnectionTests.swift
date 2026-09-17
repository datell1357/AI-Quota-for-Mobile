import AIQuotaAuth
import AIQuotaCore
import Foundation
import Testing
@testable import AIQuotaCollectors

private func ccData(_ value: Any) throws -> Data { try JSONSerialization.data(withJSONObject: value, options: .sortedKeys) }
private func ccBase64(_ data: Data) -> String { data.base64EncodedString().replacingOccurrences(of: "+", with: "-").replacingOccurrences(of: "/", with: "_").replacingOccurrences(of: "=", with: "") }
private func ccToken(user: String = "user-fixture-a", workspace: String = "workspace-a", expiry: Date = .now.addingTimeInterval(3600), marker: String = "synthetic") throws -> String {
    let auth: [String:Any] = ["chatgpt_user_id":user,"chatgpt_account_id":workspace]
    return try ccBase64(ccData(["alg":"RS256","typ":"JWT"])) + "." + ccBase64(ccData(["iss":"https://auth.openai.com","exp":Int64(expiry.timeIntervalSince1970),"https://api.openai.com/auth":auth,"marker":marker])) + ".c3ludGhldGlj"
}
private func ccFile(token: String? = nil, user: String = "user-fixture-a", workspace: String = "workspace-a") throws -> Data {
    try ccData(["auth_mode":"chatgpt","tokens":["access_token":try token ?? ccToken(user:user,workspace:workspace),"account_id":workspace,
        "refresh_token":"synthetic-refresh-must-stay-in-cli","id_token":"unrelated-id-token-must-not-supply-identity"],"last_refresh":"2026-01-01T00:00:00Z"])
}
private actor CCFiles: CredentialFileReading {
    var data: Data; private(set) var paths: [String] = []
    init(_ data: Data) { self.data = data }
    func set(_ data: Data) { self.data = data }
    func read(path: String) -> Data { paths.append(path); return data }
}
private actor CCHTTP: HTTPTransport {
    var status = 200, returnedWorkspace: String?
    var afterResponse: (@Sendable () async throws -> Void)?
    private(set) var requests: [URLRequest] = []
    func set(status: Int = 200, workspace: String? = nil, after: (@Sendable () async throws -> Void)? = nil) {
        self.status = status; returnedWorkspace = workspace; afterResponse = after
    }
    func send(_ request: URLRequest) async throws -> HTTPResult {
        requests.append(request)
        #expect(request.url == CodexSubscriptionCollector.endpoint && request.httpMethod == "GET")
        #expect(request.value(forHTTPHeaderField: "Cookie") == nil && request.httpBody == nil)
        let workspace = returnedWorkspace ?? request.value(forHTTPHeaderField: "ChatGPT-Account-Id")!
        let body = try ccData(["account_id":workspace,"plan_type":"plus","rate_limit":["primary_window":["used_percent":25,"reset_at":1_800_000_000,"limit_window_seconds":18000]]])
        try await afterResponse?()
        return HTTPResult(status: status, headers: ["Content-Type":"application/json","Retry-After":"45"], body: body)
    }
}

@Test func codexCLIConnectUsesExactBearerAndPersistsOnlySelectedLocatorAndIdentity() async throws {
    let token = try ccToken(), raw = try ccFile(token: token), files = CCFiles(raw), http = CCHTTP(), id = UUID()
    let client = CodexCLIConnection(files: files, usage: CodexTokenUsageClient(transport: http))
    let record = try await client.verify(path: "/fixture-a/auth.json", accountID: id, expected: nil)
    #expect(record.kind == .externalApplication && record.owner == .codexCLI && record.accountID == id)
    #expect(record.externalLocator == "/fixture-a/auth.json" && record.secret == nil && record.refreshToken == nil && record.expiresAt == nil)
    #expect(record.identity.subject == "user-fixture-a" && record.identity.workspace == "workspace-a")
    let requests = await http.requests
    #expect(requests.count == 1 && requests[0].value(forHTTPHeaderField: "Authorization") == "Bearer " + token)
    #expect(await files.paths == ["/fixture-a/auth.json","/fixture-a/auth.json"])
    #expect(await files.data == raw)
    let encoded = String(decoding: try JSONEncoder().encode(record), as: UTF8.self)
    #expect(!encoded.contains(token) && !encoded.contains("synthetic-refresh") && !encoded.contains("unrelated-id-token"))
    #expect(!String(reflecting: try CodexCLISnapshot.parse(raw, now: .now)).contains(token))
}

@Test func codexCLIRejectsAPIKeysOtherModesMissingClaimsExpiredTokensAndMismatchedAccountHints() async throws {
    let valid = try ccFile(), object = try #require(JSONSerialization.jsonObject(with: valid) as? [String:Any])
    var samples: [Data] = [Data(), Data("{bad}".utf8), Data(repeating:32,count:1_048_577)]
    for mode in ["api_key","chatgptAuthTokens","agent_identity"] { var x=object; x["auth_mode"]=mode; samples.append(try ccData(x)) }
    var keyed=object; keyed["OPENAI_API_KEY"]="synthetic-api-key"; samples.append(try ccData(keyed))
    samples.append(try ccFile(token:"opaque-token"))
    samples.append(try ccFile(token:ccToken(expiry:.now.addingTimeInterval(-1))))
    samples.append(try ccFile(token:ccToken(workspace:"workspace-b")))
    let parts=try ccToken().split(separator:"."); var claims=try #require(JSONSerialization.jsonObject(with: Data(base64Encoded:String(parts[1])+String(repeating:"=",count:(4-parts[1].count%4)%4))!) as? [String:Any])
    claims["https://api.openai.com/auth"]=["chatgpt_account_id":"workspace-a"]
    samples.append(try ccFile(token:String(parts[0])+"."+ccBase64(ccData(claims))+"."+parts[2]))
    for data in samples {
        let files=CCFiles(data),http=CCHTTP(),client=CodexCLIConnection(files:files,usage:CodexTokenUsageClient(transport:http))
        await #expect(throws:(any Error).self) { try await client.verify(path:"/fixture/auth.json",accountID:UUID(),expected:nil) }
        #expect(await http.requests.isEmpty)
    }
}

@Test func codexCLIRequiresServiceAcceptanceAndRejectsCrossWorkspaceUsage() async throws {
    for status in [401,403,429,503] {
        let files=CCFiles(try ccFile()),http=CCHTTP();await http.set(status:status)
        let client=CodexCLIConnection(files:files,usage:CodexTokenUsageClient(transport:http))
        await #expect(throws:CollectorError.self) { try await client.verify(path:"/fixture/auth.json",accountID:UUID(),expected:nil) }
        #expect(await files.paths.count == 1)
    }
    let http=CCHTTP();await http.set(workspace:"workspace-other")
    await #expect(throws:CoreError.identityMismatch) {
        try await CodexCLIConnection(files:CCFiles(ccFile()),usage:CodexTokenUsageClient(transport:http)).verify(path:"/fixture/auth.json",accountID:UUID(),expected:nil)
    }
}

@Test(arguments: [false,true])
func codexCLIDiscardsAccountSwitchOrRotationDuringConnectionVerification(_ changedAccount: Bool) async throws {
    let files=CCFiles(try ccFile()),http=CCHTTP()
    let replacement=try changedAccount ? ccFile(user:"user-fixture-b",workspace:"workspace-b") : ccFile(token:ccToken(marker:"rotated"))
    await http.set(after:{ await files.set(replacement) })
    let client=CodexCLIConnection(files:files,usage:CodexTokenUsageClient(transport:http))
    do { _=try await client.verify(path:"/fixture/auth.json",accountID:UUID(),expected:nil);Issue.record("Accepted changed CLI source") }
    catch CoreError.identityMismatch { #expect(changedAccount) }
    catch CoreError.staleAttempt { #expect(!changedAccount) }
}

private actor CCVault: CredentialVault {
    var values: [UUID:CredentialRecord] = [:]
    func create(_ record: CredentialRecord, reference: UUID) { values[reference] = record }
    func read(_ reference: UUID) throws -> CredentialRecord { guard let value=values[reference] else { throw AuthenticationError.missingCredential };return value }
    func remove(_ reference: UUID) { values[reference] = nil }
}
private struct CCNoCookies: WebCookieStore {
    func cookies(profileID: UUID) -> [HTTPCookie] { Issue.record("CLI accessed cookies");return [] }
    func write(_ cookie: HTTPCookie, profileID: UUID, now: Date) { Issue.record("CLI changed cookies") }
}
private func ccDirectory() throws -> URL {
    let url=FileManager.default.temporaryDirectory.resolvingSymlinksInPath().appendingPathComponent("AIQuotaCodexCLI-\(UUID())")
    try FileManager.default.createDirectory(at:url,withIntermediateDirectories:true);return url
}
@Test func codexCLITwoSelectedFilesFeedRealStorageCollectionAndSnapshotAcrossRotationAndReopen() async throws {
    let root=try ccDirectory(),repository=try AccountRepository(url:root.appendingPathComponent("accounts.sqlite")),vault=CCVault(),login=LoginCoordinator(repository:repository,vault:vault)
    let http=CCHTTP(),client=CodexCLIConnection(usage:CodexTokenUsageClient(transport:http))
    var accounts:[Account]=[], files:[URL]=[], originals:[Data]=[]
    for key in ["a","b"] {
        let directory=root.appendingPathComponent(key);try FileManager.default.createDirectory(at:directory,withIntermediateDirectories:true)
        let file=directory.appendingPathComponent("auth.json"),raw=try ccFile(user:"user-fixture-\(key)",workspace:"workspace-\(key)")
        try raw.write(to:file);files.append(file);originals.append(raw)
        let account=try await repository.add(provider:.codex,alias:"CLI \(key)"),attempt=try await login.begin(account.id)
        let record=try await client.verify(path:file.path,accountID:account.id,expected:nil)
        _=try await login.complete(attempt,verified:record);accounts.append(try await repository.account(account.id))
    }
    let source=StoredAccountSessionSource(login:login,webProfiles:CCNoCookies())
    let coordinator=RefreshCoordinator(repository:repository,collector:CodexSubscriptionCollector(sessions:source,transport:http))
    try await coordinator.request(accountIDs:accounts.map(\.id));await coordinator.waitUntilIdle()
    for account in accounts { #expect(try await repository.usage(account.id)?.metrics.first?.remainingFraction == 0.75) }
    let first=accounts[0],second=try await repository.account(accounts[1].id),secondUsage=try await repository.usage(second.id)
    let rotatedToken=try ccToken(marker:"rotated"),rotated=try ccFile(token:rotatedToken)
    try rotated.write(to:files[0],options:.atomic)
    try await coordinator.request(accountIDs:[first.id]);await coordinator.waitUntilIdle()
    #expect(await http.requests.last?.value(forHTTPHeaderField:"Authorization") == "Bearer " + rotatedToken)
    #expect(try await repository.account(first.id).credentialReference == first.credentialReference)
    #expect(try await repository.account(first.id).sessionRevision == first.sessionRevision)
    #expect(try await repository.account(second.id) == second)
    #expect(try await repository.usage(second.id) == secondUsage)
    #expect(try Data(contentsOf:files[0]) == rotated && Data(contentsOf:files[1]) == originals[1])
    let reopened=try AccountRepository(url:root.appendingPathComponent("accounts.sqlite"))
    #expect(try await reopened.account(first.id).credentialOwner == .codexCLI)
    let snapshot=root.appendingPathComponent("snapshot.json");_=try await SnapshotFileStore(url:snapshot,repository:repository).publish()
    let text=String(decoding:try Data(contentsOf:snapshot),as:UTF8.self)
    #expect(!text.contains("synthetic-refresh") && !text.contains(rotatedToken) && !text.contains(root.path) && !text.contains("user-fixture"))
    #expect(try SnapshotFileStore.read(from:snapshot).accounts.count == 2)
    try await login.disconnect(first.id)
    #expect(try Data(contentsOf:files[0]) == rotated && Data(contentsOf:files[1]) == originals[1])
}

@Test(arguments:["switchBefore","switchDuring","rotationDuring","expired","invalid","missing"])
func codexCLIFailuresPreservePriorUsageAndNeverSubstituteAnotherAccount(_ failure:String) async throws {
    let root=try ccDirectory(),file=root.appendingPathComponent("auth.json"),raw=try ccFile();try raw.write(to:file)
    let repository=try AccountRepository(url:root.appendingPathComponent("accounts.sqlite")),vault=CCVault(),login=LoginCoordinator(repository:repository,vault:vault)
    let account=try await repository.add(provider:.codex,alias:"CLI"),other=try await repository.add(provider:.claude,alias:"Keep"),http=CCHTTP()
    let attempt=try await login.begin(account.id),record=try await CodexCLIConnection(usage:CodexTokenUsageClient(transport:http)).verify(path:file.path,accountID:account.id,expected:nil)
    _=try await login.complete(attempt,verified:record)
    let coordinator=RefreshCoordinator(repository:repository,collector:CodexSubscriptionCollector(sessions:StoredAccountSessionSource(login:login,webProfiles:CCNoCookies()),transport:http))
    try await coordinator.request(accountIDs:[account.id]);await coordinator.waitUntilIdle()
    let before=try await repository.account(account.id),usage=try #require(await repository.usage(account.id)),requestCount=await http.requests.count
    switch failure {
    case "switchBefore": try ccFile(user:"user-fixture-b",workspace:"workspace-b").write(to:file,options:.atomic)
    case "switchDuring":
        let replacement=try ccFile(user:"user-fixture-b",workspace:"workspace-b");await http.set(after:{ try replacement.write(to:file,options:.atomic) })
    case "rotationDuring":
        let replacement=try ccFile(token:ccToken(marker:"rotated"));await http.set(after:{ try replacement.write(to:file,options:.atomic) })
    case "expired": try ccFile(token:ccToken(expiry:.now.addingTimeInterval(-1))).write(to:file,options:.atomic)
    case "missing": try FileManager.default.moveItem(at:file,to:root.appendingPathComponent("preserved-auth.json"))
    default: try Data("{}".utf8).write(to:file,options:.atomic)
    }
    try await coordinator.request(accountIDs:[account.id]);await coordinator.waitUntilIdle()
    #expect(try await repository.usage(account.id) == usage)
    let current=try await repository.account(account.id)
    #expect(current.identity == before.identity && current.credentialReference == before.credentialReference)
    #expect(try await repository.account(other.id) == other)
    if !failure.hasSuffix("During") { #expect(await http.requests.count == requestCount) }
    if failure == "switchBefore" || failure == "switchDuring" || failure == "expired" { #expect(current.state == .authenticationRequired) }
}
