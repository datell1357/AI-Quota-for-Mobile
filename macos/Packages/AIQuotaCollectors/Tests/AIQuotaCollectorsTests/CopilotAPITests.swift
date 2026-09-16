import AIQuotaAuth
import AIQuotaCore
import Foundation
import Testing
@testable import AIQuotaCollectors

private let copilotTime = Date(timeIntervalSince1970: 1_789_588_800)
private func copilotIdentity(_ subject: String = "12345") throws -> RemoteIdentity { try RemoteIdentity(subject: subject, product: "copilot-subscription") }
private func copilotJSON(_ object: Any) throws -> Data { try JSONSerialization.data(withJSONObject: object, options: [.sortedKeys]) }
private func copilotPayload(_ q: [String:Any], billing: Bool = false) -> [String:Any] {
    ["copilot_plan":"individual", "token_based_billing":billing, "quota_reset_date":"2026-10-01",
     "quota_snapshots":["premium_interactions":q]]
}
private func copilotDecode(_ value: [String:Any]) throws -> UsageReport {
    try CopilotUsageDecoder.decode(copilotJSON(value), identity: copilotIdentity(), fetchedAt: copilotTime)
}
private func copilotMetered() -> [String:Any] { ["entitlement":300, "remaining":240, "percent_remaining":80, "unlimited":false] }

@Test func copilotAndroidFixturesPreservePremiumChatAndInlineMeaning() throws {
    let cases = [("copilotQuotaSnapshotsNormalizePremiumInteractions",["copilot:premium_requests","copilot:chat"],[0.735,0.88]),
                 ("copilotLimitedUserQuotasNormalizeFreeTierChatAndCompletions",["copilot:chat","copilot:completions"],[0.82,0.75]),
                 ("copilotMissingCompletionQuotaDoesNotCreateZeroCompletionLine",["copilot:chat"],[0.82])]
    for (name, ids, fractions) in cases {
        let url = try #require(Bundle.module.url(forResource: "copilot-" + name, withExtension: "json", subdirectory: "Fixtures"))
        let fixture = try #require(JSONSerialization.jsonObject(with: Data(contentsOf: url)) as? [String:Any])
        let report = try copilotDecode(#require(fixture["payload"] as? [String:Any]))
        #expect(report.metrics.map(\.id) == ids)
        #expect(report.metrics.map(\.remainingFraction) == fractions.map(Optional.some))
        #expect(report.metrics.allSatisfy { $0.source == .oauthAPI && $0.unit == "requests" })
        if name.contains("FreeTier") { #expect(report.plan == "Copilot Free") }
    }
}

@Test(arguments: [0.0,1.0,73.5,100.0,-20.0])
func copilotPercentUnitsRetainPrecisionAndOverage(_ percent: Double) throws {
    let report = try copilotDecode(copilotPayload(["entitlement":300,"percent_remaining":percent,"unlimited":false]))
    let m = try #require(report.metrics.first)
    #expect(m.remainingFraction == max(0,percent / 100))
    #expect(m.used == 300 - 300 * percent / 100 && m.remaining == max(0,300 * percent / 100))
    #expect(m.unit == "requests" && m.limit == 300)
}

@Test func copilotAICreditsUseTheirOwnRemainingFieldAndMetricIdentity() throws {
    let q: [String:Any] = ["entitlement":"1000","quota_remaining":650.25,"remaining":0,"percent_remaining":65.025,"credits_used":1284,"has_quota":false]
    let report = try copilotDecode(copilotPayload(q,billing:true)), m = try #require(report.metrics.first)
    #expect(m.id == "copilot:ai-credits" && m.label == "AI Credits" && m.unit == "credits")
    #expect(m.remaining == 650.25 && m.used == 349.75 && m.limit == 1000)
    let fraction = try #require(m.remainingFraction)
    #expect(abs(fraction - 0.65025) < 1e-12 && m.used != 1284)
    #expect(try copilotDecode(copilotPayload(copilotMetered())).metrics[0].id != m.id)
}

@Test func copilotOrganizationPoolIsNotAnUnlimitedOrFullAllowance() throws {
    for billing in [false,true] {
        let q: [String:Any] = ["unlimited":true,"percent_remaining":100,"credits_used":1284,"entitlement":"0"]
        let m = try #require(copilotDecode(copilotPayload(q,billing:billing)).metrics.first)
        #expect(m.status == .unknown && m.used == 1284 && m.unit == "credits")
        #expect(m.remainingFraction == nil && m.limit == nil && m.remaining == nil)
        #expect(m.id.hasSuffix(":consumed-credits"))
        var exhausted = q; exhausted["has_quota"] = false
        #expect(try copilotDecode(copilotPayload(exhausted,billing:billing)).metrics[0].used == nil)
    }
    let inline: [String:Any] = ["quota_snapshots":["completions":["unlimited":true,"percent_remaining":100]]]
    let m = try copilotDecode(inline).metrics[0]
    #expect(m.id == "copilot:completions" && m.status == .unlimited && m.remainingFraction == nil)
}

@Test func copilotZeroEntitlementAndPercentageOnlyAreDifferentStates() throws {
    let unknown = try copilotDecode(copilotPayload(["entitlement":0,"remaining":0,"percent_remaining":100])).metrics[0]
    #expect(unknown.status == .unknown && unknown.remainingFraction == nil && unknown.used == nil)
    let percentage = try copilotDecode(copilotPayload(["percent_remaining":1])).metrics[0]
    #expect(percentage.unit == "percent" && percentage.remainingFraction == 0.01 && percentage.used == 99)
    for payload in [[:],["token_based_billing":true],copilotPayload([:]),copilotPayload(["remaining":20]),
                    ["quota_snapshots":["unfamiliar":["percent_remaining":100]]]] as [[String:Any]] {
        #expect(throws: CollectorError.invalidResponse) { try copilotDecode(payload) }
    }
}

@Test func copilotRejectsMalformedNumbersAndDoesNotEraseLimitsThroughInvalidFallbacks() throws {
    for field in ["entitlement","remaining","quota_remaining","percent_remaining","credits_used"] {
        for bad in [true,"NaN","Infinity"," 1",[1],"1e999"] as [Any] {
            var q = copilotMetered(); q[field] = bad
            #expect(throws: CollectorError.invalidResponse) { try copilotDecode(copilotPayload(q)) }
        }
    }
    for q in [["entitlement":-1,"percent_remaining":90],["credits_used":-1,"unlimited":true],
              ["percent_remaining":101],["entitlement":300,"remaining":400,"percent_remaining":80],
              ["unlimited":"true","percent_remaining":100]] as [[String:Any]] {
        #expect(throws: CollectorError.invalidResponse) { try copilotDecode(copilotPayload(q)) }
    }
    #expect(throws: CoreError.identityMismatch) {
        try CopilotUsageDecoder.decode(copilotJSON(copilotPayload(copilotMetered())), identity: RemoteIdentity(subject: "12345", product: "github-api"), fetchedAt: copilotTime)
    }
    #expect(throws: CollectorError.invalidResponse) { try CopilotUsageDecoder.decode(Data(repeating:32,count:1_048_577), identity: copilotIdentity(), fetchedAt: copilotTime) }
}

@Test func copilotResetPrecedenceAndAdditionalUsageKeepSeparateDenominators() throws {
    var q = copilotMetered()
    q["quota_reset_at"] = 1_800_000_000.5; q["overage_count"] = 35.5; q["overage_entitlement"] = 100; q["overage_permitted"] = true
    var value = copilotPayload(q); value["quota_reset_date_utc"] = "2026-10-01T03:04:05.250Z"
    let report = try copilotDecode(value)
    #expect(report.metrics.count == 2 && report.metrics[0].used == 60)
    #expect(report.metrics.allSatisfy { $0.resetsAt == Date(timeIntervalSince1970: 1_800_000_000.5) })
    #expect(report.metrics[1].id == "copilot:premium_requests:overage" && report.metrics[1].used == 35.5 && report.metrics[1].limit == 100)
    q["overage_entitlement"] = 0
    #expect(try copilotDecode(copilotPayload(q)).metrics[1].status == .unknown)
    for raw in ["2026-02-30","2026-02-30T00:00:00Z","2026-10-01 garbage","2026-10-01T00:00:00","", "2026-10-01\n"] {
        var bad = copilotPayload(copilotMetered()); bad["quota_reset_date"] = raw
        #expect(throws: CollectorError.invalidResponse) { try copilotDecode(bad) }
    }
    q["quota_reset_at"] = 1_800_000_000_000
    #expect(throws: CollectorError.invalidResponse) { try copilotDecode(copilotPayload(q)) }
}

private actor CopilotHTTP: HTTPTransport {
    private(set) var requests: [URLRequest] = []
    var subjects = [12345]
    var payload = copilotPayload(copilotMetered())
    var status = 200, headers = ["Content-Type":"application/json"]
    func setSubjects(_ values: [Int]) { subjects = values }
    func setPayload(_ value: [String:Any]) { payload = value }
    func fail(_ code: Int, headers: [String:String] = [:]) { status = code; self.headers = headers }
    func send(_ request: URLRequest) throws -> HTTPResult {
        requests.append(request)
        #expect(request.url?.scheme == "https" && request.url?.host == "api.github.com")
        #expect(request.httpMethod == "GET" && request.httpBody == nil && request.value(forHTTPHeaderField:"Cookie") == nil)
        #expect(request.value(forHTTPHeaderField:"Authorization") == "token synthetic-copilot-token")
        #expect(request.value(forHTTPHeaderField:"User-Agent") == "AIQuota-macOS")
        if status != 200 { return HTTPResult(status:status,headers:headers,body:Data()) }
        if request.url?.path == "/user" {
            let id = subjects.count > 1 ? subjects.removeFirst() : subjects[0]
            return try HTTPResult(status:200,headers:headers,body:copilotJSON(["id":id,"login":"fixture-user","type":"User"]))
        }
        #expect(request.url?.path == "/copilot_internal/user")
        return try HTTPResult(status:200,headers:headers,body:copilotJSON(payload))
    }
}

@Test func copilotAPIConfirmsStableNumericIdentityOnBothSidesOfUsage() async throws {
    let http = CopilotHTTP(), client = CopilotAPIClient(transport:http,now:{copilotTime})
    let found = try await client.discover(accessToken:"synthetic-copilot-token")
    #expect(found.subject == "12345" && found.login == "fixture-user")
    let output = try await client.collect(accessToken:"synthetic-copilot-token",expected:copilotIdentity())
    #expect(output.report.metrics[0].remainingFraction == 0.8 && output.transferredBytes > 200)
    #expect(await http.requests.compactMap { $0.url?.path } == ["/user","/user","/copilot_internal/user","/user"])
    await http.setSubjects([12345,67890])
    await #expect(throws:CoreError.identityMismatch) { try await client.collect(accessToken:"synthetic-copilot-token",expected:copilotIdentity()) }
}

@Test func copilotAPIRejectsInvalidTokensBeforeSendingAndPreservesHTTPFailureMeaning() async throws {
    let http = CopilotHTTP(), client = CopilotAPIClient(transport:http,now:{copilotTime})
    for token in [""," token","Bearer token","token\n",String(repeating:"x",count:16_385)] {
        await #expect(throws:CollectorError.authenticationRequired) { try await client.discover(accessToken:token) }
    }
    #expect(await http.requests.isEmpty)
    for status in [401,403,429,503,302] {
        await http.fail(status)
        do { _ = try await client.discover(accessToken:"synthetic-copilot-token"); Issue.record("Accepted failed HTTP response") }
        catch CollectorError.authenticationRequired { #expect(status == 401) }
        catch CollectorError.invalidResponse { #expect(status == 403 || status == 302) }
        catch CollectorError.rateLimited(let until) { #expect(status == 429 && until == copilotTime.addingTimeInterval(60)) }
        catch CollectorError.network { #expect(status == 503) }
    }
    await http.fail(403,headers:["Retry-After":"75"])
    await #expect(throws:CollectorError.rateLimited(until:copilotTime.addingTimeInterval(75))) { try await client.discover(accessToken:"synthetic-copilot-token") }
    await http.fail(403,headers:["X-RateLimit-Remaining":"0","X-RateLimit-Reset":String(copilotTime.addingTimeInterval(90).timeIntervalSince1970)])
    await #expect(throws:CollectorError.rateLimited(until:copilotTime.addingTimeInterval(90))) { try await client.discover(accessToken:"synthetic-copilot-token") }
}

private actor CopilotVault: CredentialVault {
    var values: [UUID:CredentialRecord] = [:]
    func create(_ record: CredentialRecord, reference: UUID) { values[reference] = record }
    func read(_ reference: UUID) throws -> CredentialRecord { guard let value = values[reference] else { throw AuthenticationError.missingCredential }; return value }
    func remove(_ reference: UUID) { values[reference] = nil }
}
private struct CopilotNoCookies: WebCookieStore {
    func cookies(profileID: UUID) throws -> [HTTPCookie] { Issue.record("Token API read a web profile"); return [] }
    func write(_ cookie: HTTPCookie, profileID: UUID, now: Date) { Issue.record("Token API changed a web profile") }
}

@Test(arguments:["identity","partial","unauthorized"])
func copilotStoredSessionCollectorAndSnapshotKeepPriorUsageAfterFailure(_ failure: String) async throws {
    let url = FileManager.default.temporaryDirectory.appendingPathComponent("AIQuotaCopilot-\(UUID())/accounts.sqlite")
    let repository = try AccountRepository(url:url), login = LoginCoordinator(repository:repository,vault:CopilotVault())
    let a = try await repository.add(provider:.copilot,alias:"Copilot fixture"), other = try await repository.add(provider:.claude,alias:"Keep")
    let attempt = try await login.begin(a.id)
    _ = try await login.complete(attempt,verified:CredentialRecord(accountID:a.id,provider:.copilot,identity:copilotIdentity(),kind:.oauth,secret:"synthetic-copilot-token"))
    let connected = try await repository.account(a.id), http = CopilotHTTP()
    let collector = CopilotSubscriptionCollector(sessions:StoredAccountSessionSource(login:login,webProfiles:CopilotNoCookies()),transport:http,now:{copilotTime})
    let coordinator = RefreshCoordinator(repository:repository,collector:collector,now:{copilotTime})
    try await coordinator.request(accountIDs:[a.id]); await coordinator.waitUntilIdle()
    let usage = try #require(await repository.usage(a.id))
    switch failure {
    case "identity": await http.setSubjects([99999])
    case "partial": await http.setPayload(["quota_snapshots":[:]])
    default: await http.fail(401)
    }
    try await coordinator.request(accountIDs:[a.id]); await coordinator.waitUntilIdle()
    #expect(try await repository.usage(a.id) == usage)
    let current = try await repository.account(a.id)
    #expect(current.identity == connected.identity && current.credentialReference == connected.credentialReference)
    #expect(current.state == (failure == "partial" ? .stale : .authenticationRequired))
    #expect(try await repository.account(other.id) == other)
    let snapshot = url.deletingLastPathComponent().appendingPathComponent("snapshot.json")
    _ = try await SnapshotFileStore(url:snapshot,repository:repository).publish(now:copilotTime)
    #expect(try SnapshotFileStore.read(from:snapshot).accounts.first { $0.id == a.id }?.metrics == usage.metrics)
    let text = String(decoding:try Data(contentsOf:snapshot),as:UTF8.self)
    #expect(!text.contains("synthetic-copilot-token") && !text.contains("12345"))
}

private actor CopilotLateHTTP: HTTPTransport {
    private var pending: CheckedContinuation<HTTPResult,Never>?
    private var ready: CheckedContinuation<Void,Never>?
    func send(_ request: URLRequest) async throws -> HTTPResult {
        if request.url?.path == "/user" { return try HTTPResult(status:200,headers:["Content-Type":"application/json"],body:copilotJSON(["id":12345,"login":"fixture","type":"User"])) }
        return await withCheckedContinuation { pending = $0; ready?.resume(); ready = nil }
    }
    func waitForUsage() async { if pending == nil { await withCheckedContinuation { ready = $0 } } }
    func complete() throws { pending?.resume(returning:try HTTPResult(status:200,headers:["Content-Type":"application/json"],body:copilotJSON(copilotPayload(copilotMetered())))); pending = nil }
}
@Test func copilotCancelledCollectionDiscardsTheLateResponse() async throws {
    let http = CopilotLateHTTP()
    let task = Task { try await CopilotAPIClient(transport:http).collect(accessToken:"synthetic-copilot-token",expected:copilotIdentity()) }
    await http.waitForUsage(); task.cancel(); try await http.complete()
    await #expect(throws:CancellationError.self) { try await task.value }
}

private actor CopilotQueueHTTP: HTTPTransport {
    var results: [HTTPResult]
    private(set) var paths: [String] = []
    init(_ results: [HTTPResult]) { self.results = results }
    func send(_ request: URLRequest) throws -> HTTPResult {
        paths.append(request.url!.path)
        guard !results.isEmpty else { throw CollectorError.invalidResponse }
        return results.removeFirst()
    }
}
@Test func copilotAPIRejectsMissingStableIDHTMLAndOversizedResponses() async throws {
    let badUsers: [[String:Any]] = [
        ["login":"fixture","type":"User"], ["id":true,"login":"fixture","type":"User"],
        ["id":0,"login":"fixture","type":"User"], ["id":12345,"login":"fixture","type":"Organization"],
        ["id":12345,"login":"","type":"User"], ["id":12345,"login":"bad\nname","type":"User"]]
    var responses = try badUsers.map { try HTTPResult(status:200,headers:["Content-Type":"application/json"],body:copilotJSON($0)) }
    responses.append(HTTPResult(status:200,headers:["Content-Type":"text/html"],body:Data("<html>login</html>".utf8)))
    responses.append(HTTPResult(status:200,headers:["Content-Type":"application/json"],body:Data(repeating:32,count:1_048_577)))
    for response in responses {
        let client = CopilotAPIClient(transport:CopilotQueueHTTP([response]))
        await #expect(throws:CollectorError.invalidResponse) { try await client.discover(accessToken:"synthetic-copilot-token") }
    }
}
@Test func copilotUsernameChangeDoesNotReplaceStableAccountIdentity() async throws {
    func user(_ id: Int, _ login: String) throws -> HTTPResult {
        try HTTPResult(status:200,headers:["Content-Type":"application/json"],body:copilotJSON(["id":id,"login":login,"type":"User"]))
    }
    let usage = try HTTPResult(status:200,headers:["Content-Type":"application/json"],body:copilotJSON(copilotPayload(copilotMetered())))
    let renamed = try CopilotQueueHTTP([user(12345,"before"),usage,user(12345,"after")])
    _ = try await CopilotAPIClient(transport:renamed).collect(accessToken:"synthetic-copilot-token",expected:copilotIdentity())
    let changed = try CopilotQueueHTTP([user(99999,"before"),usage])
    await #expect(throws:CoreError.identityMismatch) {
        try await CopilotAPIClient(transport:changed).collect(accessToken:"synthetic-copilot-token",expected:copilotIdentity())
    }
    #expect(await changed.paths == ["/user"])
}
private struct CopilotFixedSource: AccountSessionSource {
    let value: AuthenticatedSession
    func session(for account: Account, lease: CollectionLease) -> AuthenticatedSession { value }
}
@Test func copilotCollectorRejectsCrossAccountCredentialsBeforeSending() async throws {
    let url = FileManager.default.temporaryDirectory.appendingPathComponent("AIQuotaCopilotLease-\(UUID())/accounts.sqlite")
    let repository = try AccountRepository(url:url), login = LoginCoordinator(repository:repository,vault:CopilotVault())
    let account = try await repository.add(provider:.copilot,alias:"fixture"), attempt = try await login.begin(account.id)
    _ = try await login.complete(attempt,verified:CredentialRecord(accountID:account.id,provider:.copilot,identity:copilotIdentity(),kind:.oauth,secret:"synthetic-copilot-token"))
    let lease = try await repository.beginCollection(account.id,now:copilotTime), http = CopilotHTTP()
    let wrong = AuthenticatedSession(accountID:UUID(),provider:.copilot,generation:lease.generation,sessionRevision:lease.sessionRevision,
                                     identity:lease.identity,accessToken:"synthetic-copilot-token")
    let collector = CopilotSubscriptionCollector(sessions:CopilotFixedSource(value:wrong),transport:http)
    await #expect(throws:CoreError.staleAttempt) { try await collector.collect(account:account,lease:lease) }
    #expect(await http.requests.isEmpty)
}
