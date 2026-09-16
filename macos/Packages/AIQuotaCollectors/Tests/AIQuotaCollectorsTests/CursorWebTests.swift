import AIQuotaAuth
import AIQuotaCore
import Foundation
import Testing
@testable import AIQuotaCollectors

private let cursorTime = Date(timeIntervalSince1970: 1_800_000_100)
private let cursorCookie = "WorkosCursorSessionToken=synthetic-cursor-session"
private let cursorSummary = Data(#"{"membershipType":"Pro","individualUsage":{"plan":{"enabled":true,"used":1000,"limit":4000,"remaining":3000,"totalPercentUsed":25,"autoPercentUsed":0.36,"apiPercentUsed":1},"onDemand":{"enabled":true,"used":500,"limit":2000,"remaining":1500}}}"#.utf8)
private func cursorIdentity(_ subject: String = "synthetic-cursor-user") throws -> RemoteIdentity {
    try RemoteIdentity(subject: subject, product: "cursor-subscription")
}
private func decodeCursor(_ json: String) throws -> UsageReport {
    try CursorUsageDecoder.decode(Data(json.utf8), identity: cursorIdentity(), fetchedAt: cursorTime)
}

@Test func cursorMatchesAllNineAndroidRegressionInputs() throws {
    let url = try #require(Bundle.module.url(forResource: "cursor-android-regressions", withExtension: "json", subdirectory: "Fixtures"))
    let fixture = try #require(JSONSerialization.jsonObject(with: Data(contentsOf: url)) as? [String: Any])
    let cases = try #require(fixture["fixtures"] as? [[String: Any]])
    #expect(cases.count == 9)
    for item in cases {
        let data = try JSONSerialization.data(withJSONObject: try #require(item["payload"]))
        guard let expected = item["expected"] as? [String: Double] else {
            #expect(throws: CollectorError.invalidResponse) { try CursorUsageDecoder.decode(data, identity: cursorIdentity(), fetchedAt: cursorTime) }
            continue
        }
        let report = try CursorUsageDecoder.decode(data, identity: cursorIdentity(), fetchedAt: cursorTime)
        #expect(Set(report.metrics.map(\.id)) == Set(expected.keys))
        for metric in report.metrics {
            #expect(abs(try #require(metric.remainingFraction) - (try #require(expected[metric.id]))) < 0.001)
        }
    }
}

@Test func cursorKeepsPercentPrecisionAndConvertsOnlyKnownCentsFields() throws {
    let report = try CursorUsageDecoder.decode(cursorSummary, identity: cursorIdentity(), fetchedAt: cursorTime)
    #expect(report.plan == "Pro" && report.metrics.count == 4)
    let total = try #require(report.metrics.first)
    #expect(total.unit == "USD" && total.used == 10 && total.limit == 40 && total.remaining == 30)
    #expect(total.remainingFraction == 0.75)
    #expect(abs(try #require(report.metrics.first { $0.id == "cursor:auto" }?.remainingFraction) - 0.9964) < 0.000001)
    #expect(report.metrics.first { $0.id == "cursor:api" }?.remainingFraction == 0.99)
    #expect(report.metrics.first { $0.id == "cursor:on_demand" }?.used == 5)
    let noTotal = try decodeCursor(#"{"individualUsage":{"plan":{"autoPercentUsed":20,"apiPercentUsed":60}}}"#)
    #expect(noTotal.metrics.map(\.id) == ["cursor:auto", "cursor:api"])
    #expect(!noTotal.metrics.contains { $0.id == "cursor:total" }) // No invented average of separate pools.
}

@Test func cursorDistinguishesExplicitUnlimitedFromMissingOrZeroCaps() throws {
    let unlimited = try decodeCursor(#"{"isUnlimited":true,"individualUsage":{"plan":{"enabled":true}}}"#)
    #expect(unlimited.metrics.first?.status == .unlimited && unlimited.metrics.first?.remainingFraction == nil)
    let mixed = try decodeCursor(#"{"planUsage":{"totalPercentUsed":10},"individualUsage":{"onDemand":{"enabled":true,"used":0,"limit":null}}}"#)
    #expect(mixed.metrics.last?.status == .unknown)
    #expect(mixed.metrics.last?.remainingFraction == nil)
    let disabled = try decodeCursor(#"{"planUsage":{"totalPercentUsed":10,"onDemand":{"enabled":false,"used":0,"limit":2000}}}"#)
    #expect(disabled.metrics.count == 1)
}

@Test(arguments: ["{}", "[]", #"{"individualUsage":{"plan":{"used":0,"limit":0,"remaining":0}}}"#,
                 #"{"teamUsage":{"pooled":{"used":10,"limit":100}}}"#,
                 #"{"planUsage":{"totalPercentUsed":true}}"#, #"{"planUsage":{"totalPercentUsed":-1}}"#,
                 #"{"planUsage":{"totalPercentUsed":"NaN"}}"#, #"{"planUsage":[]}"#,
                 #"{"planUsage":{"remainingPercent":101}}"#, #"{"planUsage":{"remainingFraction":4}}"#,
                 #"{"planUsage":{"totalPercentUsed":2},"billingCycleEnd":"bad-date"}"#,
                 #"{"planUsage":{"totalPercentUsed":2},"billingCycleStart":2000,"billingCycleEnd":1000}"#])
func cursorRejectsMalformedAndUnboundUsage(_ json: String) throws {
    #expect(throws: CollectorError.invalidResponse) { try decodeCursor(json) }
}

@Test func cursorPreservesResetBoundsAndUsesConservativeDuplicateRows() throws {
    let report = try decodeCursor(#"{"billingCycleStart":"2026-09-01T00:00:00Z","billingCycleEnd":1790812800000,"planUsage":{"totalPercentUsed":20},"limits":[{"title":"Total usage","usedPercent":35}]}"#)
    #expect(report.metrics.count == 1 && report.metrics[0].remainingFraction == 0.65)
    #expect(report.metrics[0].resetsAt == Date(timeIntervalSince1970: 1_790_812_800))
    #expect(report.metrics[0].startsAt != nil)
    #expect(throws: CollectorError.invalidResponse) {
        try decodeCursor(#"{"billingCycleEnd":1790812800000,"planUsage":{"totalPercentUsed":20},"limits":[{"title":"Total usage","usedPercent":35,"resetAt":1790812801000}]}"#)
    }
}

@Test func cursorLegacyRequestsUseReportedTotalsWithoutInventingResetDates() throws {
    let report = try CursorUsageDecoder.decode(Data("{}".utf8), requestUsage: Data(#"{"gpt-4":{"numRequests":2,"numRequestsTotal":20,"maxRequestUsage":100},"premium":{"numRequests":5,"maxRequestUsage":50}}"#.utf8), identity: cursorIdentity(), fetchedAt: cursorTime)
    let metric = try #require(report.metrics.first)
    #expect(metric.id == "cursor:requests" && metric.unit == "requests")
    #expect(metric.used == 25 && metric.limit == 150 && metric.resetsAt == nil)
}

@Test func cursorKeepsLegacyPeriodsSeparateAndRetainsSummaryRequestBuckets() throws {
    let summary = Data(#"{"billingCycleStart":"2026-09-05T00:00:00Z","billingCycleEnd":"2026-10-05T00:00:00Z","planUsage":{"totalPercentUsed":20,"autoPercentUsed":10,"resetAt":"2026-10-06T00:00:00Z"}}"#.utf8)
    let legacy = Data(#"{"startOfMonth":"2026-09-01T00:00:00Z","gpt-4":{"numRequestsTotal":20,"maxRequestUsage":100}}"#.utf8)
    let report = try CursorUsageDecoder.decode(summary, requestUsage: legacy, identity: cursorIdentity(), fetchedAt: cursorTime)
    let requests = try #require(report.metrics.first { $0.id == "cursor:requests" })
    let total = try #require(report.metrics.first { $0.id == "cursor:total" })
    #expect(requests.resetsAt == nil && requests.startsAt != total.startsAt)
    #expect(report.metrics.first { $0.id == "cursor:auto" }?.resetsAt == total.resetsAt)
    let embedded = Data(#"{"requestUsage":{"gpt-4":{"numRequests":10,"maxRequestUsage":100}}}"#.utf8)
    let kept = try CursorUsageDecoder.decode(embedded, requestUsage: Data("{}".utf8), identity: cursorIdentity(), fetchedAt: cursorTime)
    #expect(kept.metrics.first?.remainingFraction == 0.9)
}

private actor CursorHTTP: HTTPTransport {
    private(set) var requests: [URLRequest] = []
    private var profileReads = 0
    var subject = "synthetic-cursor-user"
    var changedSubject: String?
    var summary = HTTPResult(status: 200, body: cursorSummary)
    var legacy = HTTPResult(status: 404, body: Data())
    var rotate = false
    func setSubject(_ value: String, afterUsage: Bool = false) { if afterUsage { changedSubject = value } else { subject = value } }
    func setSummary(_ value: HTTPResult) { summary = value }
    func setLegacy(_ value: HTTPResult) { legacy = value }
    func setRotation() { rotate = true }
    func send(_ request: URLRequest) throws -> HTTPResult {
        #expect(request.httpMethod == "GET" && request.httpBody == nil)
        #expect(request.url?.host == "cursor.com" && request.value(forHTTPHeaderField: "Authorization") == nil)
        requests.append(request)
        if request.url == CursorWebClient.accountURL {
            profileReads += 1
            return HTTPResult(status: 200, headers: rotate ? ["Set-Cookie":"WorkosCursorSessionToken=synthetic-rotated; Path=/; Secure; Max-Age=3600"] : [:],
                              body: try JSONSerialization.data(withJSONObject: ["sub":profileReads > 1 ? changedSubject ?? subject : subject,"email":"fixture@example.invalid"]))
        }
        if rotate { #expect(request.value(forHTTPHeaderField: "Cookie") == "WorkosCursorSessionToken=synthetic-rotated") }
        if request.url == CursorWebClient.summaryURL { return summary }
        #expect(request.url?.path == "/api/usage")
        #expect(URLComponents(url: try #require(request.url), resolvingAgainstBaseURL: false)?.queryItems == [URLQueryItem(name: "user", value: subject)])
        return legacy
    }
}
private actor CursorFixedHTTP: HTTPTransport {
    let result: HTTPResult
    private(set) var calls = 0
    init(_ result: HTTPResult) { self.result = result }
    func send(_ request: URLRequest) -> HTTPResult { calls += 1; return result }
}

@Test func cursorWebUsesStableRemoteIdentityAndAccountBoundReadOnlyEndpoints() async throws {
    let http = CursorHTTP(); let client = CursorWebClient(transport: http, now: { cursorTime })
    let discovery = try await client.discover(cookieHeader: cursorCookie)
    #expect(discovery.subject == "synthetic-cursor-user" && discovery.email == "fixture@example.invalid")
    let output = try await client.collect(cookieHeader: cursorCookie, expected: cursorIdentity())
    #expect(output.report.metrics.first?.remainingFraction == 0.75 && output.report.fetchedAt == cursorTime)
    #expect(await http.requests.count == 5)
    #expect(output.transferredBytes > cursorSummary.count)
}

@Test func cursorDiscoveryRejectsVisitorsNoSessionAndMissingStableID() async throws {
    let http = CursorFixedHTTP(HTTPResult(status: 200, body: Data(#"{"sub":"verified"}"#.utf8)))
    for cookie in ["visitor=true", "WorkosCursorSessionToken=", "next-auth.session-token=", "wos-session=\nunsafe"] {
        await #expect(throws: CollectorError.authenticationRequired) { try await CursorWebClient(transport: http).discover(cookieHeader: cookie) }
    }
    #expect(await http.calls == 0)
    #expect(try await CursorWebClient(transport: http).discover(cookieHeader: "wos-session=synthetic").subject == "verified")
    for body in ["{}", #"{"email":"fixture@example.invalid"}"#, #"{"sub":""}"#, #"{"sub":" user"}"#, #"{"sub":"user\n"}"#, #"{"sub":4}"#] {
        let bad = CursorFixedHTTP(HTTPResult(status: 200, body: Data(body.utf8)))
        await #expect(throws: CollectorError.invalidResponse) { try await CursorWebClient(transport: bad).discover(cookieHeader: cursorCookie) }
    }
    let empty = CursorFixedHTTP(HTTPResult(status: 204, body: Data()))
    await #expect(throws: CollectorError.authenticationRequired) { try await CursorWebClient(transport: empty).discover(cookieHeader: cursorCookie) }
}

@Test(arguments: [false, true])
func cursorRejectsIdentityChangesBeforeOrAfterUsage(afterUsage: Bool) async throws {
    let http = CursorHTTP(); await http.setSubject("other-user", afterUsage: afterUsage)
    await #expect(throws: CoreError.identityMismatch) {
        try await CursorWebClient(transport: http).collect(cookieHeader: cursorCookie, expected: cursorIdentity())
    }
    #expect(await http.requests.count == (afterUsage ? 4 : 1))
}

@Test func cursorRejectsUnboundWorkspaceAndOtherProductsBeforeNetwork() async throws {
    let http = CursorHTTP(); let client = CursorWebClient(transport: http)
    for identity in [try RemoteIdentity(subject: "user", workspace: "team", product: "cursor-subscription"),
                     try RemoteIdentity(subject: "user", product: "cursor-local-estimate")] {
        await #expect(throws: CoreError.identityMismatch) { try await client.collect(cookieHeader: cursorCookie, expected: identity) }
    }
    #expect(await http.requests.isEmpty)
}

@Test func cursorLegacyRouteCanSupplyRequestsWhenSummaryIsMissing() async throws {
    let http = CursorHTTP(); await http.setSummary(HTTPResult(status: 404, body: Data()))
    await http.setLegacy(HTTPResult(status: 200, body: Data(#"{"gpt-4":{"numRequestsTotal":77,"maxRequestUsage":500}}"#.utf8)))
    let output = try await CursorWebClient(transport: http).collect(cookieHeader: cursorCookie, expected: cursorIdentity())
    #expect(output.report.metrics.map(\.id) == ["cursor:requests"])
    #expect(output.report.metrics.first?.remainingFraction == 0.846)
    #expect(output.report.metrics.first?.resetsAt == nil)
}

@Test func cursorAuthenticationChallengesRateLimitsAndServerFailuresRemainDistinct() async throws {
    for status in [401,403,429,503] {
        let http = CursorHTTP(); await http.setSummary(HTTPResult(status: status, headers: ["Retry-After":"120"], body: Data()))
        do {
            _ = try await CursorWebClient(transport: http, now: { cursorTime }).collect(cookieHeader: cursorCookie, expected: cursorIdentity())
            Issue.record("HTTP failure accepted")
        } catch CollectorError.authenticationRequired { #expect(status == 401) }
        catch CollectorError.invalidResponse { #expect(status == 403) }
        catch CollectorError.rateLimited(let until) { #expect(status == 429 && until == cursorTime.addingTimeInterval(120)) }
        catch CollectorError.network { #expect(status == 503) }
        #expect(await http.requests.count == 2)
    }
}

@Test func cursorLegacyRateLimitIsNotHiddenByAnEarlierSuccessfulSummary() async throws {
    let http = CursorHTTP()
    await http.setLegacy(HTTPResult(status: 429, headers: ["Retry-After":"90"], body: Data()))
    await #expect(throws: CollectorError.rateLimited(until: cursorTime.addingTimeInterval(90))) {
        try await CursorWebClient(transport: http, now: { cursorTime }).collect(cookieHeader: cursorCookie, expected: cursorIdentity())
    }
    #expect(await http.requests.count == 3)
}

private actor CursorDelayedHTTP: HTTPTransport {
    private var continuation: CheckedContinuation<HTTPResult, Never>?
    private var entry: CheckedContinuation<Void, Never>?
    func send(_ request: URLRequest) async -> HTTPResult {
        await withCheckedContinuation { continuation = $0; entry?.resume(); entry = nil }
    }
    func waitForRequest() async { if continuation == nil { await withCheckedContinuation { entry = $0 } } }
    func complete() { continuation?.resume(returning: HTTPResult(status: 200, body: Data(#"{"sub":"late-user"}"#.utf8))); continuation = nil }
}
@Test func cursorCancelledDiscoveryCannotAdoptALateResponse() async throws {
    let http = CursorDelayedHTTP()
    let task = Task { try await CursorWebClient(transport: http).discover(cookieHeader: cursorCookie) }
    await http.waitForRequest(); task.cancel(); await http.complete()
    await #expect(throws: CancellationError.self) { try await task.value }
}

private actor CursorVault: CredentialVault {
    private var records: [UUID: CredentialRecord] = [:]
    func create(_ record: CredentialRecord, reference: UUID) { records[reference] = record }
    func read(_ reference: UUID) throws -> CredentialRecord {
        guard let value = records[reference] else { throw AuthenticationError.missingCredential }; return value
    }
    func remove(_ reference: UUID) { records[reference] = nil }
}
private actor CursorCookies: WebCookieStore {
    let profile: UUID
    private(set) var value = "synthetic-cursor-session"
    init(profile: UUID) { self.profile = profile }
    func cookies(profileID: UUID) throws -> [HTTPCookie] {
        #expect(profileID == profile)
        return [try #require(HTTPCookie(properties: [.domain:"cursor.com",.path:"/",.name:"WorkosCursorSessionToken",.value:value,.secure:"TRUE"]))]
    }
    func write(_ cookie: HTTPCookie, profileID: UUID, now: Date) { #expect(profileID == profile); value = cookie.value }
}

@Test(arguments: ["identity", "malformed", "unauthorized"])
func cursorVerifiedSessionFeedsCoordinatorAndPreservesLastReadingOnFailure(_ failure: String) async throws {
    let url = FileManager.default.temporaryDirectory.appendingPathComponent("AIQuotaCursor-\(UUID())/accounts.sqlite")
    let repository = try AccountRepository(url: url); let login = LoginCoordinator(repository: repository, vault: CursorVault())
    let account = try await repository.add(provider: .cursor, alias: "Cursor fixture"); let attempt = try await login.begin(account.id)
    let http = CursorHTTP(); let client = CursorWebClient(transport: http, now: { cursorTime })
    let found = try await client.discover(cookieHeader: cursorCookie); let identity = try cursorIdentity(found.subject)
    _ = try await client.collect(cookieHeader: cursorCookie, expected: identity)
    _ = try await login.complete(attempt, verified: CredentialRecord(accountID: account.id, provider: .cursor, identity: identity, kind: .webSession, webProfileID: attempt.webProfileID))
    let cookies = CursorCookies(profile: attempt.webProfileID); await http.setRotation()
    let source = StoredAccountSessionSource(login: login, webProfiles: cookies)
    let collector = CursorWebCollector(sessions: source, transport: http, now: { cursorTime })
    let coordinator = RefreshCoordinator(repository: repository, collector: collector, now: { cursorTime })
    try await coordinator.request(); await coordinator.waitUntilIdle()
    let original = try #require(await repository.usage(account.id))
    #expect(original.metrics.first?.remainingFraction == 0.75)
    #expect(await cookies.value == "synthetic-rotated")
    let store = SnapshotFileStore(url: url.deletingLastPathComponent().appendingPathComponent("snapshot.json"), repository: repository)
    _ = try await store.publish()
    let snapshot = try SnapshotFileStore.read(from: url.deletingLastPathComponent().appendingPathComponent("snapshot.json"))
    #expect(snapshot.accounts.first?.metrics == original.metrics)
    if failure == "identity" { await http.setSubject("different-cursor-user") }
    else { await http.setSummary(HTTPResult(status: failure == "unauthorized" ? 401 : 200, body: Data("{}".utf8))) }
    try await coordinator.request(); await coordinator.waitUntilIdle()
    #expect(try await repository.usage(account.id) == original)
    let current = try await repository.account(account.id)
    #expect(current.state == (failure == "malformed" ? .stale : .authenticationRequired))
    #expect(current.credentialReference == attempt.credentialReference && current.identity == identity)
    let json = String(decoding: try JSONEncoder().encode(await repository.displaySnapshot()), as: UTF8.self)
    #expect(!json.contains("synthetic-rotated") && !json.contains(attempt.webProfileID.uuidString) && !json.contains(identity.subject))
}
