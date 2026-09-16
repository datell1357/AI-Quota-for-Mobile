import AIQuotaAuth
import AIQuotaCore
import Foundation
import Testing
@testable import AIQuotaCollectors

private let antigravityTime = Date(timeIntervalSince1970: 1_789_588_800)
private func antigravityIdentity(_ subject: String = "12345", project: String = "fixture-project") throws -> RemoteIdentity {
    try RemoteIdentity(subject: subject, workspace: project, product: "antigravity-subscription")
}
private func agJSON(_ value: Any) throws -> Data { try JSONSerialization.data(withJSONObject: value, options: [.sortedKeys]) }
private func agModels(_ fraction: Double = 1) -> [String:Any] {
    ["models":["gemini-test":["displayName":"Gemini test", "quotaInfo":["remainingFraction":fraction,"resetTime":"2026-10-01T01:02:03.125Z"]]]]
}
private func agBuckets(_ fraction: Double = 0.8) -> [String:Any] {
    ["buckets":[["modelId":"gemini-test", "remainingFraction":fraction, "resetTime":"2026-10-01T01:02:03.125Z"]]]
}
private func agDecode(_ models: [String:Any]?, _ quota: [String:Any]? = nil, plan: String? = nil) throws -> UsageReport {
    try AntigravityUsageDecoder.decode(models: models.map(agJSON), verifiedQuota: quota.map(agJSON),
                                       identity: antigravityIdentity(), plan: plan, fetchedAt: antigravityTime)
}
private func agFixture(_ name: String) throws -> [String:Any] {
    let url = try #require(Bundle.module.url(forResource: "antigravity-" + name, withExtension: "json", subdirectory: "Fixtures"))
    let fixture = try #require(JSONSerialization.jsonObject(with: Data(contentsOf: url)) as? [String:Any])
    return try #require(fixture["payload"] as? [String:Any])
}

@Test func antigravityAndroidModelFractionsAndResetDatesSurviveTheConsumer() throws {
    let report = try agDecode(agFixture("availableModelsResponseNormalizesToTrustedAntigravityUsage"), plan: "Google AI Pro")
    let models = Dictionary(uniqueKeysWithValues: report.metrics.map { ($0.id, $0) })
    #expect(models["antigravity:gemini-3-pro-high"]?.remainingFraction == 0.83)
    #expect(models["antigravity:claude-opus-4-5-thinking"]?.remainingFraction == 0.74)
    #expect(models["antigravity:gemini-3-pro-high"]?.resetsAt == ISO8601DateFormatter().date(from: "2026-06-01T00:00:00Z"))
    #expect(report.plan == "AI Pro" && report.metrics.count == 2)
    #expect(report.metrics.allSatisfy { $0.source == .oauthAPI && $0.period == "model" && $0.limit == nil && $0.used == nil })
}

@Test func antigravityAndroidModelOrderDoesNotTurnAvailabilityIntoFullQuota() throws {
    let report = try agDecode(agFixture("antigravityAvailableModelsAreSortedByProductPriority"))
    #expect(report.metrics.map(\.label) == ["Gemini 3.5 Flash (High)","Gemini 3.5 Flash (Medium)","Gemini 3.1 Pro (High)",
        "Gemini 3.1 Pro (Low)","Gemini 3 Flash","Gemini 3.1 Flash Image","Gemini 3.1 Flash Lite",
        "Claude Sonnet 4.6 (Thinking)","Claude Opus 4.6 (Thinking)","GPT-OSS 120B (Medium)"])
    #expect(report.metrics.filter { $0.remainingFraction != nil }.map(\.remainingFraction) == [0.8])
    #expect(report.metrics.filter { $0.status == .unknown }.count == 9)
}

@Test(arguments: [0.0, 0.01, 0.73525, 0.99999, 1.0])
func antigravityVerifiedQuotaRetainsExactFractionAndReset(_ fraction: Double) throws {
    let metric = try agDecode(agModels(), agBuckets(fraction)).metrics[0]
    #expect(metric.remainingFraction == fraction && metric.status == .limited && metric.accuracy == .measured)
    #expect(metric.resetsAt?.timeIntervalSince1970 == 1_790_816_523.125)
    #expect(metric.limit == nil && metric.remaining == nil && metric.used == nil)
}

@Test func antigravityUnverifiedFullEmptyAndAvailabilityOnlyHaveNoQuota() throws {
    for quota in [nil, ["buckets":[]]] as [[String:Any]?] {
        #expect(throws: CollectorError.unsupported) { try agDecode(agModels(), quota) }
    }
    #expect(throws: CollectorError.unsupported) { try agDecode(["models":["gemini-test":["displayName":"Gemini test"]]]) }
    #expect(throws: CollectorError.unsupported) { try agDecode(nil) }
    #expect(throws: CollectorError.unsupported) { try agDecode(agModels(0.5), ["buckets":[]]) }
    #expect(try agDecode(nil, agBuckets()).metrics[0].label == "gemini-test")
}

@Test func antigravityMissingFractionDoesNotBecomeZeroOrFullAndInternalModelsStayOut() throws {
    let models: [String:Any] = ["models":[
        "known":["quotaInfo":["remainingFraction":1]],
        "missing":["quotaInfo":["remainingFraction":1]],
        "internal":["isInternal":true,"quotaInfo":["remainingFraction":0.3]],
        "availability":["displayName":"Available"]]]
    let quotas: [String:Any] = ["buckets":[
        ["modelId":"known","remainingFraction":0.4],
        ["modelId":"missing","resetTime":"2026-10-01T00:00:00Z"],
        ["modelId":"internal","remainingFraction":0.3]]]
    let report = try agDecode(models, quotas)
    #expect(report.metrics.count == 2)
    let missing = try #require(report.metrics.first { $0.id == "antigravity:missing" })
    #expect(missing.status == .unknown && missing.remainingFraction == nil && missing.resetsAt != nil)
}

@Test func antigravityMalformedQuotaCannotFallBackToPlausibleAvailability() throws {
    for bad in [-0.01, 1.01, true, "0.5", "NaN", [0.5]] as [Any] {
        let quotas: [String:Any] = ["buckets":[["modelId":"gemini-test", "remainingFraction":bad]]]
        #expect(throws: CollectorError.invalidResponse) { try agDecode(agModels(0.8), quotas) }
    }
    for reset in ["2026-02-30T00:00:00Z", "2026-01-01T24:00:00Z", "2026-10-01", "tomorrow", "2026-01-01T00:61:00Z", "2026-01-01T00:00:00Z\n"] {
        #expect(throws: CollectorError.invalidResponse) { try agDecode(agModels(), ["buckets":[["modelId":"gemini-test","remainingFraction":0.5,"resetTime":reset]]]) }
    }
    for malformed in [[:], ["buckets":[:]], ["buckets":[["remainingFraction":0.5]]], ["buckets":[["modelId":"bad\nid","remainingFraction":0.5]]], ["buckets":[["modelId":"bad-id\n","remainingFraction":0.5]]]] as [[String:Any]] {
        #expect(throws: CollectorError.invalidResponse) { try agDecode(agModels(0.8), malformed) }
    }
    #expect(throws: CollectorError.invalidResponse) { try agDecode(["models":["x":["displayName":"bad\nlabel","quotaInfo":["remainingFraction":0.5]]]]) }
    #expect(throws: CollectorError.invalidResponse) {
        try AntigravityUsageDecoder.decode(models: Data(repeating: 32, count: 1_048_577), verifiedQuota: nil,
                                           identity: antigravityIdentity(), plan: nil, fetchedAt: antigravityTime)
    }
}

@Test func antigravityConflictingUnidentifiedBucketsAreNotCollapsed() throws {
    let row: [String:Any] = ["modelId":"gemini-test", "remainingFraction":0.5]
    #expect(try agDecode(agModels(), ["buckets":[row,row]]).metrics.count == 1)
    #expect(throws: CollectorError.invalidResponse) { try agDecode(agModels(), ["buckets":[row,["modelId":"gemini-test","remainingFraction":0.3]]]) }
    let large = Dictionary(uniqueKeysWithValues: (0..<201).map { ("model-\($0)", ["quotaInfo":["remainingFraction":0.5]]) })
    #expect(throws: CollectorError.invalidResponse) { try agDecode(["models":large]) }
    #expect(throws: CollectorError.invalidResponse) { try agDecode(agModels(), ["buckets":Array(repeating:row,count:1001)]) }
}

private actor AntigravityHTTP: HTTPTransport {
    private(set) var requests: [URLRequest] = []
    var subjects = ["12345"], projects = ["fixture-project"]
    var models = agModels(), quota = agBuckets()
    var status = 200, statusMethod = "", headers: [String:String] = [:]
    func setSubjects(_ values: [String]) { subjects = values }
    func setProjects(_ values: [String]) { projects = values }
    func setQuota(_ value: [String:Any]) { quota = value }
    func setModels(_ value: [String:Any]) { models = value }
    func fail(_ code: Int, method: String = "userinfo", headers: [String:String] = [:]) { status = code; statusMethod = method; self.headers = headers }
    func send(_ request: URLRequest) throws -> HTTPResult {
        requests.append(request)
        #expect(request.url?.scheme == "https" && request.url?.query == nil)
        #expect(request.value(forHTTPHeaderField: "Authorization") == "Bearer synthetic-antigravity-token")
        #expect(request.value(forHTTPHeaderField: "User-Agent") == "AIQuota-macOS")
        #expect(request.value(forHTTPHeaderField: "Cookie") == nil)
        let method = request.url!.path.components(separatedBy: ":").last!
        if method.hasSuffix(statusMethod), status != 200 {
            return HTTPResult(status: status, headers: headers, body: Data("provider diagnostic, never log".utf8))
        }
        let value: [String:Any]
        if request.url?.path == "/oauth2/v2/userinfo" {
            #expect(request.url?.host == "www.googleapis.com" && request.httpMethod == "GET" && request.httpBody == nil)
            value = ["id":subjects.count > 1 ? subjects.removeFirst() : subjects[0], "email":"fixture@example.invalid", "verified_email":true]
        } else {
            #expect(request.url?.host == "daily-cloudcode-pa.googleapis.com" && request.httpMethod == "POST")
            let bytes = try #require(request.httpBody)
            let body = try #require(JSONSerialization.jsonObject(with: bytes) as? [String:Any])
            switch method {
            case "loadCodeAssist":
                #expect(body["mode"] as? String == "FULL_ELIGIBILITY_CHECK")
                #expect((body["metadata"] as? [String:String])?["ideType"] == "ANTIGRAVITY")
                let project = projects.count > 1 ? projects.removeFirst() : projects[0]
                value = project.isEmpty ? [:] : ["cloudaicompanionProject":["id":project], "paidTier":["name":"Google AI Pro"]]
            case "fetchAvailableModels", "retrieveUserQuota":
                #expect(body as? [String:String] == ["project":"fixture-project"])
                value = method == "fetchAvailableModels" ? models : quota
            default: Issue.record("Unexpected or state-changing endpoint: \(method)"); throw CollectorError.invalidResponse
            }
        }
        return try HTTPResult(status: 200, headers: ["Content-Type":"application/json; charset=utf-8"], body: agJSON(value))
    }
}

@Test func antigravityAPIConfirmsRemoteIdentityAndProjectOnBothSidesOfCollection() async throws {
    let http = AntigravityHTTP(), client = AntigravityAPIClient(transport: http, now: { antigravityTime })
    let account = try await client.discover(accessToken: "synthetic-antigravity-token")
    #expect(try account.identity == antigravityIdentity() && account.email == "fixture@example.invalid")
    let output = try await client.collect(accessToken: "synthetic-antigravity-token", expected: account.identity)
    #expect(output.report.metrics[0].remainingFraction == 0.8 && output.report.plan == "AI Pro" && output.transferredBytes > 200)
    #expect(await http.requests.compactMap { $0.url?.path } == ["/oauth2/v2/userinfo","/v1internal:loadCodeAssist","/oauth2/v2/userinfo",
        "/oauth2/v2/userinfo","/v1internal:loadCodeAssist","/v1internal:fetchAvailableModels","/v1internal:retrieveUserQuota","/v1internal:loadCodeAssist","/oauth2/v2/userinfo"])
}

@Test(arguments: ["user-before", "user-after", "project-before", "project-after", "no-project"])
func antigravityRejectsAccountChangesAndNeverOnboardsDuringQuotaRead(_ failure: String) async throws {
    let http = AntigravityHTTP(), client = AntigravityAPIClient(transport: http)
    switch failure {
    case "user-before": await http.setSubjects(["99999"])
    case "user-after": await http.setSubjects(["12345","99999"])
    case "project-before": await http.setProjects(["other-project"])
    case "project-after": await http.setProjects(["fixture-project","other-project"])
    default: await http.setProjects([""])
    }
    do { _ = try await client.collect(accessToken: "synthetic-antigravity-token", expected: antigravityIdentity()); Issue.record("Accepted identity change") }
    catch CoreError.identityMismatch { #expect(failure != "no-project") }
    catch CollectorError.unsupported { #expect(failure == "no-project") }
    #expect(await !http.requests.contains { $0.url?.path.contains("onboard") == true })
}

@Test func antigravityHTTPFailuresKeepTheirMeaningAndForbiddenQuotaCannotProveFull() async throws {
    for code in [401,403,429,503,302] {
        let http = AntigravityHTTP(); await http.fail(code)
        let client = AntigravityAPIClient(transport: http, now: { antigravityTime })
        do { _ = try await client.discover(accessToken: "synthetic-antigravity-token"); Issue.record("Accepted HTTP failure") }
        catch CollectorError.authenticationRequired { #expect(code == 401) }
        catch CollectorError.invalidResponse { #expect(code == 403 || code == 302) }
        catch CollectorError.rateLimited(let until) { #expect(code == 429 && until == antigravityTime.addingTimeInterval(60)) }
        catch CollectorError.network { #expect(code == 503) }
    }
    let http = AntigravityHTTP(), client = AntigravityAPIClient(transport: http, now: { antigravityTime })
    await http.fail(403, method: "retrieveUserQuota")
    await #expect(throws: CollectorError.unsupported) { try await client.collect(accessToken: "synthetic-antigravity-token", expected: antigravityIdentity()) }
    await http.setModels(agModels(0.625))
    #expect(try await client.collect(accessToken: "synthetic-antigravity-token", expected: antigravityIdentity()).report.metrics[0].remainingFraction == 0.625)
    await http.fail(403, method: "fetchAvailableModels")
    #expect(try await client.collect(accessToken: "synthetic-antigravity-token", expected: antigravityIdentity()).report.metrics[0].remainingFraction == 0.8)
    await http.fail(403, method: "retrieveUserQuota", headers: ["Retry-After":"75"])
    await #expect(throws: CollectorError.rateLimited(until: antigravityTime.addingTimeInterval(75))) { try await client.collect(accessToken: "synthetic-antigravity-token", expected: antigravityIdentity()) }
    await http.fail(403, method: "loadCodeAssist", headers: ["Retry-After":"75"])
    await #expect(throws: CollectorError.rateLimited(until: antigravityTime.addingTimeInterval(75))) { try await client.discover(accessToken: "synthetic-antigravity-token") }
}

private actor AntigravityVault: CredentialVault {
    var values: [UUID:CredentialRecord] = [:]
    func create(_ record: CredentialRecord, reference: UUID) { values[reference] = record }
    func read(_ reference: UUID) throws -> CredentialRecord { guard let value = values[reference] else { throw AuthenticationError.missingCredential }; return value }
    func remove(_ reference: UUID) { values[reference] = nil }
}
private struct AntigravityNoCookies: WebCookieStore {
    func cookies(profileID: UUID) throws -> [HTTPCookie] { Issue.record("OAuth collector accessed web cookies"); return [] }
    func write(_ cookie: HTTPCookie, profileID: UUID, now: Date) { Issue.record("OAuth collector changed web cookies") }
}

@Test(arguments: ["identity", "project", "unverified", "partial", "unauthorized"])
func antigravityStoredSessionAndSnapshotPreservePriorUsageAfterFailure(_ failure: String) async throws {
    let url = FileManager.default.temporaryDirectory.appendingPathComponent("AIQuotaAntigravity-\(UUID())/accounts.sqlite")
    let repository = try AccountRepository(url: url), login = LoginCoordinator(repository: repository, vault: AntigravityVault())
    let account = try await repository.add(provider: .antigravity, alias: "Antigravity fixture"), other = try await repository.add(provider: .claude, alias: "Keep")
    let attempt = try await login.begin(account.id)
    _ = try await login.complete(attempt, verified: CredentialRecord(accountID: account.id, provider: .antigravity,
        identity: antigravityIdentity(), kind: .oauth, secret: "synthetic-antigravity-token"))
    let connected = try await repository.account(account.id), http = AntigravityHTTP()
    let collector = AntigravitySubscriptionCollector(sessions: StoredAccountSessionSource(login: login, webProfiles: AntigravityNoCookies()), transport: http, now: { antigravityTime })
    let coordinator = RefreshCoordinator(repository: repository, collector: collector, now: { antigravityTime })
    try await coordinator.request(accountIDs: [account.id]); await coordinator.waitUntilIdle()
    let usage = try #require(await repository.usage(account.id))
    switch failure {
    case "identity": await http.setSubjects(["99999"])
    case "project": await http.setProjects(["other-project"])
    case "unverified": await http.fail(403, method: "retrieveUserQuota")
    case "partial": await http.setQuota([:])
    default: await http.fail(401)
    }
    try await coordinator.request(accountIDs: [account.id]); await coordinator.waitUntilIdle()
    #expect(try await repository.usage(account.id) == usage)
    let current = try await repository.account(account.id)
    #expect(current.identity == connected.identity && current.credentialReference == connected.credentialReference)
    #expect(current.state == (["identity","project","unauthorized"].contains(failure) ? .authenticationRequired : .stale))
    #expect(try await repository.account(other.id) == other)
    let snapshot = url.deletingLastPathComponent().appendingPathComponent("snapshot.json")
    _ = try await SnapshotFileStore(url: snapshot, repository: repository).publish(now: antigravityTime)
    #expect(try SnapshotFileStore.read(from: snapshot).accounts.first { $0.id == account.id }?.metrics == usage.metrics)
    let content = String(decoding: try Data(contentsOf: snapshot), as: UTF8.self)
    #expect(!content.contains("synthetic-antigravity-token") && !content.contains("fixture-project") && !content.contains("12345"))
}

private actor AntigravityLateHTTP: HTTPTransport {
    let inner = AntigravityHTTP()
    private var pending: CheckedContinuation<Void,Never>?, ready: CheckedContinuation<Void,Never>?
    func send(_ request: URLRequest) async throws -> HTTPResult {
        if request.url?.path == "/v1internal:retrieveUserQuota" { await withCheckedContinuation { pending = $0; ready?.resume(); ready = nil } }
        return try await inner.send(request)
    }
    func waitForQuota() async { if pending == nil { await withCheckedContinuation { ready = $0 } } }
    func complete() { pending?.resume(); pending = nil }
}
@Test func antigravityCancellationDiscardsLateQuotaResponse() async throws {
    let http = AntigravityLateHTTP()
    let task = Task { try await AntigravityAPIClient(transport: http).collect(accessToken: "synthetic-antigravity-token", expected: antigravityIdentity()) }
    await http.waitForQuota(); task.cancel(); await http.complete()
    await #expect(throws: CancellationError.self) { try await task.value }
}

private struct AntigravityResponse: HTTPTransport {
    let response: HTTPResult
    func send(_ request: URLRequest) -> HTTPResult { response }
}
@Test func antigravityIdentityCannotComeFromEmailAloneOrMalformedHTTP() async throws {
    let badUsers: [[String:Any]] = [["email":"fixture@example.invalid","verified_email":true],
        ["id":true,"email":"fixture@example.invalid","verified_email":true], ["id":"12345","email":"fixture@example.invalid","verified_email":false],
        ["id":"12345\n","email":"fixture@example.invalid","verified_email":true],
        ["id":"12345","email":"bad\n@example.invalid","verified_email":true]]
    var responses = try badUsers.map { try HTTPResult(status: 200, headers: ["Content-Type":"application/json"], body: agJSON($0)) }
    responses.append(HTTPResult(status: 200, headers: ["Content-Type":"text/html"], body: Data("<html>login</html>".utf8)))
    responses.append(HTTPResult(status: 200, headers: ["Content-Type":"application/json"], body: Data(repeating: 32, count: 1_048_577)))
    for response in responses {
        let client = AntigravityAPIClient(transport: AntigravityResponse(response: response))
        await #expect(throws: CollectorError.invalidResponse) { try await client.discover(accessToken: "synthetic-antigravity-token") }
    }
    let http = AntigravityHTTP(), client = AntigravityAPIClient(transport: http)
    for token in ["", " token", "token\n", "Bearer token", String(repeating: "x", count: 16_385)] {
        await #expect(throws: CollectorError.authenticationRequired) { try await client.discover(accessToken: token) }
    }
    #expect(await http.requests.isEmpty)
}

private struct AntigravityFixedSource: AccountSessionSource {
    let session: AuthenticatedSession
    func session(for account: Account, lease: CollectionLease) -> AuthenticatedSession { session }
}
@Test func antigravityCollectorRejectsCrossAccountSessionAndWrongProductBeforeSending() async throws {
    let repository = try AccountRepository(url: FileManager.default.temporaryDirectory.appendingPathComponent("AIQuotaAntigravityLease-\(UUID())/accounts.sqlite"))
    let login = LoginCoordinator(repository: repository, vault: AntigravityVault())
    let account = try await repository.add(provider: .antigravity, alias: "fixture"), attempt = try await login.begin(account.id)
    _ = try await login.complete(attempt, verified: CredentialRecord(accountID: account.id, provider: .antigravity,
        identity: antigravityIdentity(), kind: .oauth, secret: "synthetic-antigravity-token"))
    let lease = try await repository.beginCollection(account.id, now: antigravityTime), http = AntigravityHTTP()
    for change in ["account", "generation", "revision"] {
        let session = AuthenticatedSession(accountID: change == "account" ? UUID() : account.id, provider: .antigravity,
            generation: change == "generation" ? UUID() : lease.generation,
            sessionRevision: change == "revision" ? lease.sessionRevision + 1 : lease.sessionRevision,
            identity: lease.identity, accessToken: "synthetic-antigravity-token")
        let collector = AntigravitySubscriptionCollector(sessions: AntigravityFixedSource(session: session), transport: http)
        await #expect(throws: CoreError.staleAttempt) { try await collector.collect(account: account, lease: lease) }
    }
    let wrongProduct = try RemoteIdentity(subject: "12345", workspace: "fixture-project", product: "gemini-cli")
    await #expect(throws: CoreError.identityMismatch) { try await AntigravityAPIClient(transport: http).collect(accessToken: "synthetic-antigravity-token", expected: wrongProduct) }
    #expect(await http.requests.isEmpty)
}
