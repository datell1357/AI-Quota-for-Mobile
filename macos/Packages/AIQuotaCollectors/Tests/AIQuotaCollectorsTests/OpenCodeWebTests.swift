import AIQuotaAuth
import AIQuotaCore
import Foundation
import Testing
@testable import AIQuotaCollectors

private let ocTime = Date(timeIntervalSince1970: 1_800_000_100)
private let ocCookie = "auth=synthetic-opencode-session"
private let ocGo = #"{mine:!0,rollingUsage:{usagePercent:25,resetInSec:7200,usage:300000000,limit:1200000000},weeklyUsage:{usagePercent:40,resetInSec:86400},monthlyUsage:{usagePercent:10,resetInSec:172800}}"#
private let ocBilling = #"{balance:450000000,monthlyUsage:1500000000,monthlyLimit:20,timeMonthlyUsageUpdated:new Date("2027-01-01T00:00:00.000Z"),subscription:null}"#
private func ocIdentity(_ subject: String = "acc_A", workspace: String = "wrk_B") throws -> RemoteIdentity {
    try RemoteIdentity(subject: subject, workspace: workspace, product: "opencode-workspace")
}
private func ocFrame(_ value: String, instance: String = "server-fn:test") -> Data {
    let body = "((self.$R=self.$R||{})[\"\(instance)\"]=[],($R=>\(value))($R[\"\(instance)\"]))"
    return Data((String(format: ";0x%08x;", body.utf8.count) + body).utf8)
}
private func ocDecode(_ go: String = ocGo, billing: String = ocBilling) throws -> UsageReport {
    try OpenCodeUsageDecoder.decode(go: ocFrame(go), billing: ocFrame(billing), identity: ocIdentity(), fetchedAt: ocTime)
}

@Test func openCodeDataParserReadsFramedReferencesDatesBooleansAndUnicodeWithoutExecution() throws {
    let wire = ocFrame(#"$R[0]={name:"한글 \x3Ctag\x3E",enabled:!0,missing:void 0,child:$R[1]={id:"wrk_A"},again:$R[1],updated:new Date("2026-09-17T00:00:00.000Z")}"#)
    let object = try #require(OpenCodeServerPayload.decode(wire, instance: "server-fn:test") as? [String: Any])
    #expect(object["name"] as? String == "한글 <tag>")
    #expect(object["enabled"] as? Bool == true && object["missing"] is NSNull)
    #expect((object["again"] as? [String: String])?["id"] == "wrk_A")
    #expect(object["updated"] as? String == "2026-09-17T00:00:00.000Z")
    #expect(try OpenCodeServerPayload.decode(Data("null".utf8)) is NSNull)
    let plain = try #require(OpenCodeServerPayload.decode(Data(#"[{"id":"wrk_A","name":"Personal"}]"#.utf8)) as? [[String: String]])
    #expect(plain[0]["id"] == "wrk_A")
}

@Test(arguments: ["fetch('https://example.invalid')", "(()=>{while(true){}})()", "new Function('return 1')()",
                 "Object.assign({}, {usagePercent:0})", "$R[0]={self:$R[0]}", "$R[1]", "{x:1,x:2}",
                 "{x:NaN}", "{x:Infinity}", "{x:1e309}", #"{x:"\xGG"}"#, "[1,,2]", "null);fetch('x')", "{x:$R[1]=1,y:$R[1]=2}"])
func openCodeDataParserRejectsCodeUnknownReferencesAndInvalidValues(_ input: String) throws {
    #expect(throws: CollectorError.invalidResponse) { try OpenCodeServerPayload.decode(ocFrame(input)) }
}

@Test func openCodeDataParserRejectsTruncationMultipleFramesWrongInstanceAndResourceExhaustion() throws {
    let frame = ocFrame(ocGo)
    for end in [0,1,11,12,frame.count - 1] {
        #expect(throws: CollectorError.invalidResponse) { try OpenCodeServerPayload.decode(Data(frame.prefix(end))) }
    }
    #expect(throws: CollectorError.invalidResponse) { try OpenCodeServerPayload.decode(frame + frame) }
    #expect(throws: CollectorError.invalidResponse) { try OpenCodeServerPayload.decode(frame, instance: "server-fn:other") }
    for value in [String(repeating: "[", count: 25) + "0" + String(repeating: "]", count: 25),
                  "[" + Array(repeating: "0", count: 20_001).joined(separator: ",") + "]",
                  "\"" + String(repeating: "x", count: 65_537) + "\""] {
        #expect(throws: CollectorError.invalidResponse) { try OpenCodeServerPayload.decode(Data(value.utf8)) }
    }
}

@Test(arguments: [0.0, 0.36, 1, 100, 125])
func openCodeRawGoPercentFieldsNeverBecomeFractions(_ used: Double) throws {
    let go = "{mine:true," + ["rollingUsage","weeklyUsage","monthlyUsage"].map { "\($0):{usagePercent:\(used),resetInSec:120}" }.joined(separator: ",") + "}"
    let report = try ocDecode(go)
    #expect(report.metrics.prefix(3).allSatisfy { abs(($0.remainingFraction ?? -1) - max(0, 1 - used / 100)) < 0.0000001 })
    #expect(report.metrics.prefix(3).allSatisfy { $0.resetsAt == ocTime.addingTimeInterval(120) })
}

@Test func openCodeKeepsAllGoWindowsAndZenAmountsInTheirOwnUnits() throws {
    let report = try ocDecode()
    #expect(report.metrics.map(\.id) == ["opencode:go_5_hour_limit","opencode:go_weekly_limit","opencode:go_monthly_limit","opencode:zen_credits","opencode:zen_monthly_spend"])
    #expect(report.metrics[0].used == 3 && report.metrics[0].limit == 12 && report.metrics[0].unit == "USD")
    #expect(report.metrics[1].remainingFraction == 0.6 && report.metrics[2].remainingFraction == 0.9)
    #expect(report.metrics[3].remaining == 4.5 && report.metrics[3].remainingFraction == nil)
    #expect(report.metrics[4].used == 15 && report.metrics[4].limit == 20 && report.metrics[4].remainingFraction == 0.25)
    #expect(report.metrics[4].resetsAt == ISO8601DateFormatter().date(from: "2027-02-01T00:00:00Z"))
    let negative = try ocDecode(billing: #"{balance:-125000000,monthlyUsage:120000000,monthlyLimit:null,timeMonthlyUsageUpdated:new Date("2027-01-01T00:00:00.000Z")}"#)
    #expect(negative.metrics[3].remaining == -1.25)
    #expect(negative.metrics[4].status == .unlimited && negative.metrics[4].used == 1.2)
}

@Test func openCodeDoesNotAdoptAnotherMembersGoQuotaOrInventAbsentSubscriptions() throws {
    let other = try ocDecode(ocGo.replacingOccurrences(of: "mine:!0", with: "mine:!1"))
    #expect(other.metrics[0].status == .unsupported && other.metrics[0].remainingFraction == nil)
    #expect(!other.metrics.contains { $0.id == "opencode:go_5_hour_limit" })
    let zen = try ocDecode("null", billing: #"{balance:0,monthlyUsage:0,monthlyLimit:null,timeMonthlyUsageUpdated:null}"#)
    #expect(zen.plan == "Zen" && zen.metrics.count == 2 && zen.metrics.first?.remaining == 0)
    #expect(throws: CollectorError.invalidResponse) { try ocDecode("null", billing: "{}") }
    for billing in ["{}", "{unknown:0}", "{balance:null}"] {
        #expect(throws: CollectorError.invalidResponse) { try ocDecode(billing: billing) }
    }
}

@Test func openCodeZenSpendUsesTheConsoleUTCMonthRuleWithoutBorrowingGoReset() throws {
    let old = try ocDecode(billing: ocBilling.replacingOccurrences(of: "2027-01-01", with: "2026-12-31"))
    let spend = try #require(old.metrics.first { $0.id == "opencode:zen_monthly_spend" })
    #expect(spend.used == 0 && spend.remainingFraction == 1)
    #expect(spend.startsAt == ISO8601DateFormatter().date(from: "2027-01-01T00:00:00Z"))
    #expect(spend.resetsAt != old.metrics[2].resetsAt)
    #expect(throws: CollectorError.invalidResponse) { try ocDecode(billing: ocBilling.replacingOccurrences(of: "2027-01-01", with: "2027-02-01")) }
    #expect(throws: CollectorError.invalidResponse) { try ocDecode(billing: #"{balance:1,monthlyUsage:100,monthlyLimit:20}"#) }
    let delayedBilling = try OpenCodeUsageDecoder.decode(go: ocFrame(ocGo), billing: ocFrame(ocBilling), identity: ocIdentity(),
                                                        fetchedAt: ocTime, goReceivedAt: ocTime.addingTimeInterval(-30))
    #expect(delayedBilling.metrics[0].resetsAt == ocTime.addingTimeInterval(7170))
}

@Test(arguments: ["{}", "null", #"{mine:true,rollingUsage:{usagePercent:0,resetInSec:1}}"#,
                 ocGo.replacingOccurrences(of: "25", with: "true"), ocGo.replacingOccurrences(of: "25", with: "-1"),
                 ocGo.replacingOccurrences(of: "resetInSec:7200", with: "resetInSec:-1"),
                 ocGo.replacingOccurrences(of: "resetInSec:7200", with: "resetInSec:1e12")])
func openCodeRejectsMissingMalformedOrPartialQuota(_ input: String) throws {
    #expect(throws: CollectorError.invalidResponse) { try ocDecode(input, billing: "{}") }
}

@Test func openCodeConsumesPreservedAndroidDashboardFixtureAndExplicitFractionUnits() throws {
    let url = try #require(Bundle.module.url(forResource: "opencode-android-regression", withExtension: "json", subdirectory: "Fixtures"))
    let fixture = try #require(JSONSerialization.jsonObject(with: Data(contentsOf: url)) as? [String: Any])
    let payload = try JSONSerialization.data(withJSONObject: try #require(fixture["payload"]))
    let report = try OpenCodeUsageDecoder.decodeDashboard(payload, identity: ocIdentity(), fetchedAt: ocTime)
    #expect(report.metrics.map(\.remainingFraction) == [0.75,0.6,0.9,nil])
    #expect(report.metrics.last?.remaining == 4.5 && report.metrics.last?.unit == "credits")
    #expect(report.metrics.allSatisfy { $0.resetsAt == nil && $0.source == .webPage })
    let explicit = Data(#"{"data":{"limits":[{"label":"Go 5 hour limit","remainingFraction":0.01},{"label":"Go weekly limit","used_percent":1}]}}"#.utf8)
    let exact = try OpenCodeUsageDecoder.decodeDashboard(explicit, identity: ocIdentity(), fetchedAt: ocTime)
    #expect(exact.metrics.map(\.remainingFraction) == [0.01,0.99])
}

private actor OpenCodeHTTP: HTTPTransport {
    private(set) var requests: [URLRequest] = []
    private var profileReads = 0
    private var workspaceReads = 0
    var subject = "acc_A"
    var afterSubject: String?
    var missingWorkspace = false
    var missingWorkspaceAfter = false
    var multipleAccounts = false
    var rotate = false
    var go = ocGo
    var billing = ocBilling
    var failure: (String, HTTPResult)?
    func setIdentity(_ subject: String, after: Bool = false) { if after { afterSubject = subject } else { self.subject = subject }; profileReads = 0 }
    func setMissingWorkspace(after: Bool = false) { missingWorkspace = !after; missingWorkspaceAfter = after; workspaceReads = 0 }
    func setMultipleAccounts() { multipleAccounts = true }
    func setRotation() { rotate = true }
    func setFailure(_ id: String, result: HTTPResult) { failure = (id,result) }
    func setGo(_ body: String) { go = body }
    func setBilling(_ body: String) { billing = body }
    func send(_ request: URLRequest) throws -> HTTPResult {
        #expect(request.httpMethod == "GET" && request.httpBody == nil && request.url?.host == "opencode.ai")
        #expect(request.value(forHTTPHeaderField: "Authorization") == nil)
        requests.append(request)
        if request.url == OpenCodeWebClient.accountURL {
            profileReads += 1
            let current = profileReads > 1 ? afterSubject ?? subject : subject
            var accounts = [current:["id":current,"email":"fixture@example.invalid"]]
            if multipleAccounts { accounts["acc_OTHER"] = ["id":"acc_OTHER"] }
            return HTTPResult(status: 200, headers: rotate ? ["Set-Cookie":"auth=synthetic-rotated; Path=/; Secure; Max-Age=3600"] : [:],
                              body: try JSONSerialization.data(withJSONObject: ["current":current,"account":accounts]))
        }
        if rotate { #expect(request.value(forHTTPHeaderField: "Cookie") == "auth=synthetic-rotated") }
        let components = try #require(request.url.flatMap { URLComponents(url: $0, resolvingAgainstBaseURL: false) })
        let id = try #require(components.queryItems?.first { $0.name == "id" }?.value)
        #expect(request.value(forHTTPHeaderField: "X-Server-Id") == id)
        if let failure, failure.0 == id { return failure.1 }
        let instance = try #require(request.value(forHTTPHeaderField: "X-Server-Instance"))
        let value: String
        if id == OpenCodeWebClient.workspacesID {
            workspaceReads += 1
            #expect(components.queryItems?.count == 1)
            value = missingWorkspace || (missingWorkspaceAfter && workspaceReads > 1) ? #"[{id:"wrk_A",name:"Other"}]"# : #"[$R[1]={id:"wrk_A",name:"Personal"},$R[2]={id:"wrk_B",name:"선택한 팀"}]"#
        } else {
            #expect(components.queryItems?.first { $0.name == "args" }?.value == #"["wrk_B"]"#)
            #expect([OpenCodeWebClient.goID, OpenCodeWebClient.billingID].contains(id))
            value = id == OpenCodeWebClient.goID ? go : billing
        }
        return HTTPResult(status: 200, body: ocFrame("$R[0]=" + value, instance: instance))
    }
}

@Test func openCodeDiscoversAllWorkspacesAndCollectsOnlyTheExplicitSelection() async throws {
    let http = OpenCodeHTTP(); let client = OpenCodeWebClient(transport: http, now: { ocTime })
    let found = try await client.discover(cookieHeader: ocCookie)
    #expect(found.subject == "acc_A" && found.workspaces.map(\.id) == ["wrk_A","wrk_B"])
    let result = try await client.collect(cookieHeader: ocCookie, expected: ocIdentity())
    #expect(result.report.identity == (try ocIdentity()) && result.report.metrics.count == 5 && result.transferredBytes > 0)
    #expect(await http.requests.count == 9)
}

@Test(arguments: [false,true])
func openCodeRejectsIdentityOrMembershipChangesBeforeAndAfterUsage(after: Bool) async throws {
    let changed = OpenCodeHTTP(); await changed.setIdentity("acc_B", after: after)
    await #expect(throws: CoreError.identityMismatch) { try await OpenCodeWebClient(transport: changed, now: { ocTime }).collect(cookieHeader: ocCookie, expected: ocIdentity()) }
    #expect(await changed.requests.count == (after ? 5 : 1))
    let removed = OpenCodeHTTP(); await removed.setMissingWorkspace(after: after)
    await #expect(throws: CoreError.identityMismatch) { try await OpenCodeWebClient(transport: removed, now: { ocTime }).collect(cookieHeader: ocCookie, expected: ocIdentity()) }
    #expect(await removed.requests.count == (after ? 6 : 2))
}

@Test func openCodeRejectsAmbiguousSessionsVisitorCookiesAndInvalidScopes() async throws {
    let http = OpenCodeHTTP(); await http.setMultipleAccounts()
    await #expect(throws: OpenCodeSessionError.multipleAccounts) { try await OpenCodeWebClient(transport: http).discover(cookieHeader: ocCookie) }
    #expect(await http.requests.count == 1)
    for cookie in ["visitor=synthetic","auth=", "auth=\nunsafe"] {
        await #expect(throws: CollectorError.authenticationRequired) { try await OpenCodeWebClient(transport: http).discover(cookieHeader: cookie) }
    }
    for identity in [try RemoteIdentity(subject: "acc_A", product: "opencode-workspace"), try ocIdentity(workspace: "wrk_A/../B"),
                     try RemoteIdentity(subject: "acc_A", workspace: "wrk_B", product: "codex-subscription")] {
        await #expect(throws: CoreError.identityMismatch) { try await OpenCodeWebClient(transport: http).collect(cookieHeader: ocCookie, expected: identity) }
    }
    #expect(await http.requests.count == 1)
}

@Test func openCodeKeepsHTTPFailuresAndSerializedAuthenticationErrorsDistinct() async throws {
    for status in [401,403,429,503] {
        let http = OpenCodeHTTP(); await http.setFailure(OpenCodeWebClient.goID, result: HTTPResult(status: status, headers: ["Retry-After":"90"], body: Data()))
        do { _ = try await OpenCodeWebClient(transport: http, now: { ocTime }).collect(cookieHeader: ocCookie, expected: ocIdentity()); Issue.record("Failure accepted") }
        catch CollectorError.authenticationRequired { #expect(status == 401) }
        catch CollectorError.invalidResponse { #expect(status == 403) }
        catch CollectorError.rateLimited(let until) { #expect(status == 429 && until == ocTime.addingTimeInterval(90)) }
        catch CollectorError.network { #expect(status == 503) }
    }
    let http = OpenCodeHTTP()
    await http.setFailure(OpenCodeWebClient.workspacesID, result: HTTPResult(status: 200, headers: ["X-Error":#"actor of type "public" is not associated with an account"#], body: Data("error".utf8)))
    await #expect(throws: CollectorError.authenticationRequired) { try await OpenCodeWebClient(transport: http).discover(cookieHeader: ocCookie) }
}

private actor OpenCodeFixedHTTP: HTTPTransport {
    let result: HTTPResult
    init(_ result: HTTPResult) { self.result = result }
    func send(_ request: URLRequest) -> HTTPResult { result }
}
@Test func openCodeEmptySessionAndMalformedStableIdentityCannotConnect() async throws {
    for json in ["{}", #"{"account":{},"current":"acc_A"}"#] {
        let http = OpenCodeFixedHTTP(HTTPResult(status: 200, body: Data(json.utf8)))
        await #expect(throws: CollectorError.authenticationRequired) { try await OpenCodeWebClient(transport: http).discover(cookieHeader: ocCookie) }
    }
    for json in [#"{"account":{"acc_A":{"email":"fixture@example.invalid"}}}"#,
                 #"{"account":{"acc_A":{"id":"acc_B"}}}"#,
                 #"{"account":{"acc_A":{"id":"acc_A"}},"current":"acc_B"}"#,
                 #"{"account":{" acc_A":{"id":" acc_A"}}}"#] {
        let http = OpenCodeFixedHTTP(HTTPResult(status: 200, body: Data(json.utf8)))
        await #expect(throws: CollectorError.invalidResponse) { try await OpenCodeWebClient(transport: http).discover(cookieHeader: ocCookie) }
    }
}

@Test func openCodeSerializedLoginRedirectAndBillingFailureNeverBecomeSuccessfulGoUsage() async throws {
    let http = OpenCodeHTTP()
    // The exact constructor/headers shape was observed from the public, unauthenticated query.
    let redirect = ocFrame(#"$R[0]=new Response(null,$R[1]={headers:$R[2]=new Headers($R[3]=[$R[4]=["location","/auth/authorize"]]),status:302,statusText:"Found"})"#)
    await http.setFailure(OpenCodeWebClient.goID, result: HTTPResult(status: 200, headers: ["X-Error":"true"], body: redirect))
    await #expect(throws: CollectorError.authenticationRequired) { try await OpenCodeWebClient(transport: http).collect(cookieHeader: ocCookie, expected: ocIdentity()) }
    let limited = OpenCodeHTTP()
    await limited.setFailure(OpenCodeWebClient.billingID, result: HTTPResult(status: 429, headers: ["Retry-After":"45"], body: Data()))
    await #expect(throws: CollectorError.rateLimited(until: ocTime.addingTimeInterval(45))) {
        try await OpenCodeWebClient(transport: limited, now: { ocTime }).collect(cookieHeader: ocCookie, expected: ocIdentity())
    }
    #expect(await limited.requests.count == 4)
}

private actor OpenCodeDelayedHTTP: HTTPTransport {
    private var continuation: CheckedContinuation<HTTPResult, Never>?
    private var entry: CheckedContinuation<Void, Never>?
    func send(_ request: URLRequest) async -> HTTPResult { await withCheckedContinuation { continuation = $0; entry?.resume(); entry = nil } }
    func waitForRequest() async { if continuation == nil { await withCheckedContinuation { entry = $0 } } }
    func complete() { continuation?.resume(returning: HTTPResult(status: 200, body: Data(#"{"account":{"acc_A":{"id":"acc_A"}}}"#.utf8))); continuation = nil }
}
@Test func openCodeCancelledDiscoveryDoesNotAdoptALateProfile() async throws {
    let http = OpenCodeDelayedHTTP(); let task = Task { try await OpenCodeWebClient(transport: http).discover(cookieHeader: ocCookie) }
    await http.waitForRequest(); task.cancel(); await http.complete()
    await #expect(throws: CancellationError.self) { try await task.value }
}

private actor OpenCodeVault: CredentialVault {
    private var records: [UUID: CredentialRecord] = [:]
    func create(_ record: CredentialRecord, reference: UUID) { records[reference] = record }
    func read(_ reference: UUID) throws -> CredentialRecord {
        guard let record = records[reference] else { throw AuthenticationError.missingCredential }; return record
    }
    func remove(_ reference: UUID) { records[reference] = nil }
}
private actor OpenCodeCookies: WebCookieStore {
    let profile: UUID
    private(set) var value = "synthetic-opencode-session"
    init(profile: UUID) { self.profile = profile }
    func cookies(profileID: UUID) throws -> [HTTPCookie] {
        #expect(profileID == profile)
        return [try #require(HTTPCookie(properties: [.domain:"opencode.ai",.path:"/",.name:"auth",.value:value,.secure:"TRUE"]))]
    }
    func write(_ cookie: HTTPCookie, profileID: UUID, now: Date) { #expect(profileID == profile); value = cookie.value }
}
@Test(arguments: ["identity", "membership", "malformed", "billingMalformed", "unauthorized", "multiple"])
func openCodeVerifiedWorkspaceFeedsRealStorageAndPreservesLastUsageOnFailure(_ failure: String) async throws {
    let url = FileManager.default.temporaryDirectory.appendingPathComponent("AIQuotaOpenCode-\(UUID())/accounts.sqlite")
    let repository = try AccountRepository(url: url); let login = LoginCoordinator(repository: repository, vault: OpenCodeVault())
    let account = try await repository.add(provider: .opencode, alias: "OpenCode fixture")
    let untouched = try await repository.add(provider: .claude, alias: "Other account")
    let attempt = try await login.begin(account.id)
    let http = OpenCodeHTTP(); let client = OpenCodeWebClient(transport: http, now: { ocTime })
    let discovered = try await client.discover(cookieHeader: ocCookie)
    let identity = try ocIdentity(discovered.subject)
    _ = try await client.collect(cookieHeader: ocCookie, expected: identity)
    _ = try await login.complete(attempt, verified: CredentialRecord(accountID: account.id, provider: .opencode, identity: identity,
                                                                    kind: .webSession, webProfileID: attempt.webProfileID))
    let cookies = OpenCodeCookies(profile: attempt.webProfileID); await http.setRotation()
    let collector = OpenCodeWebCollector(sessions: StoredAccountSessionSource(login: login, webProfiles: cookies), transport: http, now: { ocTime })
    let coordinator = RefreshCoordinator(repository: repository, collector: collector, now: { ocTime })
    try await coordinator.request(accountIDs: [account.id]); await coordinator.waitUntilIdle()
    let original = try #require(await repository.usage(account.id))
    #expect(original.metrics.count == 5 && original.metrics[2].remainingFraction == 0.9)
    #expect(await cookies.value == "synthetic-rotated")
    let snapshotURL = url.deletingLastPathComponent().appendingPathComponent("snapshot.json")
    let store = SnapshotFileStore(url: snapshotURL, repository: repository)
    _ = try await store.publish()
    #expect(try SnapshotFileStore.read(from: snapshotURL).accounts.first { $0.id == account.id }?.metrics == original.metrics)
    switch failure {
    case "identity": await http.setIdentity("different-user")
    case "membership": await http.setMissingWorkspace()
    case "multiple": await http.setMultipleAccounts()
    case "malformed": await http.setGo("{}")
    case "billingMalformed": await http.setBilling("{}")
    default: await http.setFailure(OpenCodeWebClient.goID, result: HTTPResult(status: 401, body: Data()))
    }
    try await coordinator.request(accountIDs: [account.id]); await coordinator.waitUntilIdle()
    #expect(try await repository.usage(account.id) == original)
    let current = try await repository.account(account.id)
    #expect(current.state == (["malformed", "billingMalformed"].contains(failure) ? .stale : .authenticationRequired))
    #expect(current.identity == identity && current.credentialReference == attempt.credentialReference)
    #expect(try await repository.account(untouched.id) == untouched)
    let json = String(decoding: try JSONEncoder().encode(await repository.displaySnapshot()), as: UTF8.self)
    #expect(!json.contains("synthetic-rotated") && !json.contains(attempt.webProfileID.uuidString) && !json.contains(identity.subject))
}
