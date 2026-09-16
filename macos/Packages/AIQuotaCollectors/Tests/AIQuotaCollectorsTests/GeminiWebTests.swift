import AIQuotaAuth
import AIQuotaCore
import Foundation
import Testing
@testable import AIQuotaCollectors

private let geminiTime = Date(timeIntervalSince1970: 1_784_851_200)
private let geminiSubject = "synthetic-google-account-a"
private let geminiToken = "synthetic-xsrf:+/&=%한글"
private func geminiIdentity(_ subject: String = geminiSubject) throws -> RemoteIdentity { try RemoteIdentity(subject: subject, product: "gemini-web-subscription") }
private func geminiJSON(_ value: Any) throws -> Data { try JSONSerialization.data(withJSONObject: value, options: [.sortedKeys,.fragmentsAllowed]) }
private func geminiHTML(subject: String = geminiSubject, signedIn: Bool = true, index: String = "0") throws -> Data {
    let wiz: [String:Any] = ["S06Grb":subject,"Lz8rbb":signedIn,"QrtxK":index,"SNlM0e":geminiToken,"FdrFJe":"synthetic-session","cfb2h":"boq_synthetic"]
    return Data("<html><script nonce=\"fixture\">window.WIZ_global_data = \(String(decoding: try geminiJSON(wiz), as: UTF8.self));</script></html>".utf8)
}
private func geminiRows(_ used: Double = 0.04) -> [Any] {
    [2,[[2357.0,used,1,[[1784872713,33384000]]],[48302.0,0.0,2,[[1785401913,33483000]]]]]
}
private func geminiWire(_ payload: [Any] = geminiRows(), rpc: String = "jSf9Qc") throws -> Data {
    let body = String(decoding: try geminiJSON(payload), as: UTF8.self)
    return Data(")]}'\n\n".utf8) + (try geminiJSON([["wrb.fr",rpc,body,NSNull(),NSNull(),NSNull(),"usage-page"]]))
}
private func geminiFixture(_ name: String) throws -> [String:Any] {
    let url = try #require(Bundle.module.url(forResource: name, withExtension: "json", subdirectory: "Fixtures"))
    return try #require(JSONSerialization.jsonObject(with: Data(contentsOf: url)) as? [String:Any])
}

@Test func geminiAndroidWireAndWebFractionFixturesReachTheProductionDecoder() throws {
    let fixture = try geminiFixture("gemini-android-web"), wire = Data(try #require(fixture["wire"] as? String).utf8)
    let report = try GeminiWebData.report(GeminiWebData.payload(wire), identity: geminiIdentity(), fetchedAt: geminiTime)
    #expect(report.metrics.map(\.remainingFraction) == [1,1])
    #expect(report.metrics.map(\.id) == ["gemini:5h","gemini:week"])
    #expect(report.metrics[0].resetsAt == Date(timeIntervalSince1970: 1784872713.033384))
    let structured = try geminiFixture("gemini-geminiUsagePageLimitPayloadNormalizesDomRows")
    let payload = try #require(structured["payload"] as? [String:Any]), usage = try #require(payload["usage"] as? [String:Any])
    let lines = try #require(usage["x"] as? [[String:Any]])
    let rows: [Any] = [2,lines.enumerated().map { [9000,$0.element["u"]!,Double($0.offset + 1),NSNull()] }]
    let normalized = try GeminiWebData.report(rows, identity: geminiIdentity(), fetchedAt: geminiTime)
    #expect(normalized.metrics.map(\.remainingFraction) == [0.96,1])
    #expect(normalized.metrics.allSatisfy { $0.unit == "percent" && $0.limit == 100 })
    var unknownTier = geminiRows(); unknownTier[0] = 999
    #expect(try GeminiWebData.report(unknownTier, identity: geminiIdentity(), fetchedAt: geminiTime).plan == nil)
}

@Test(arguments: [0.0,0.0025,0.01,0.99,1])
func geminiUsesWebFractionsWithoutInventingRequestCounts(_ used: Double) throws {
    let report = try GeminiWebData.report(geminiRows(used), identity: geminiIdentity(), fetchedAt: geminiTime)
    #expect(report.plan == "Google AI Pro")
    #expect(report.metrics[0].used == used * 100 && report.metrics[0].remainingFraction == 1 - used)
    #expect(report.metrics[0].limit == 100 && report.metrics[0].remaining != 2357)
}

@Test func geminiRejectsPartialMalformedLegacyCountAndWrongProductResponses() throws {
    for bad in [NSNull(),-0.1,1.1,30.0,true,"0.5"] as [Any] {
        var rows = try #require(geminiRows()[1] as? [[Any]]); rows[0][1] = bad
        #expect(throws: CollectorError.invalidResponse) { try GeminiWebData.report([2,rows], identity: geminiIdentity(), fetchedAt: geminiTime) }
    }
    let row = try #require((geminiRows()[1] as? [[Any]])?.first)
    for rows in [[],[row],[row,row],[row,[9000,0,4,NSNull()]]] as [[[Any]]] {
        #expect(throws: CollectorError.invalidResponse) { try GeminiWebData.report([2,rows], identity: geminiIdentity(), fetchedAt: geminiTime) }
    }
    for bad in [[[1784872713000,0]],[[1784872713,-1]],[[1784872713,1_000_000_000]],[[1784872713.5,0]],[[true,0]]] as [Any] {
        var rows = try #require(geminiRows()[1] as? [[Any]]); rows[0][3] = bad
        #expect(throws: CollectorError.invalidResponse) { try GeminiWebData.report([2,rows], identity: geminiIdentity(), fetchedAt: geminiTime) }
    }
    #expect(throws: CoreError.identityMismatch) {
        try GeminiWebData.report(geminiRows(), identity: RemoteIdentity(subject: geminiSubject, product: "gemini-cli"), fetchedAt: geminiTime)
    }
}

@Test func geminiBootstrapSeparatesAccountAndTransportSessionAndRejectsAmbiguity() throws {
    let html = try geminiHTML(), session = try GeminiWebData.session(html)
    #expect(session.subject == geminiSubject && session.sessionID == "synthetic-session" && session.token == geminiToken)
    #expect(!String(describing: session).contains(geminiToken) && !String(reflecting: session).contains(geminiSubject))
    #expect(throws: CollectorError.authenticationRequired) { try GeminiWebData.session(geminiHTML(signedIn: false)) }
    #expect(throws: GeminiSessionError.primaryAccountRequired) { try GeminiWebData.session(geminiHTML(index: "1")) }
    let raw = String(decoding: html, as: UTF8.self)
    let bad = [raw + raw,raw.replacingOccurrences(of: "\"S06Grb\":", with: "\"S06Grb\":\"different\",\"S06Grb\":"),
               raw.replacingOccurrences(of: "\"Lz8rbb\":true", with: "\"Lz8rbb\":1"),
               raw.replacingOccurrences(of: "\"S06Grb\":\"\(geminiSubject)\"", with: "\"S06Grb\":null"),
               "<script>window.WIZ_global_data = (() => ({}))();</script>",
               "<script>window.WIZ_global_data = {\"deep\":" + String(repeating: "[", count: 32) + "0" + String(repeating: "]", count: 32) + "};</script>",
               String(repeating: "x", count: 2_097_153)]
    for value in bad { #expect(throws: CollectorError.invalidResponse) { try GeminiWebData.session(Data(value.utf8)) } }
}

@Test func geminiFrameReaderRejectsTruncationDuplicatesWrongRPCAndExecutableText() throws {
    let wire = try geminiWire()
    for length in 0..<wire.count { #expect(throws: CollectorError.invalidResponse) { try GeminiWebData.payload(Data(wire.prefix(length))) } }
    let frame = Data(wire.dropFirst(6))
    for data in [wire + frame, try geminiWire(rpc: "different"),wire + Data(";alert(1)".utf8),Data(wire.dropFirst(4)),
                 Data(")]}'\n[[\"er\",\"jSf9Qc\",16]]".utf8),Data(repeating: 0, count: 524_289)] {
        #expect(throws: CollectorError.invalidResponse) { try GeminiWebData.payload(data) }
    }
    let telemetry = Data("\n[[\"di\",12],[\"af.httprm\",1]]\n".utf8)
    #expect(try GeminiWebData.payload(wire + telemetry).count == 2)
}

@Test func geminiSelectedGoogleIndexCannotSilentlyBecomeTheDefaultAccount() throws {
    for url in ["https://gemini.google.com/usage","https://gemini.google.com/u/0/app?authuser=0"] {
        try GeminiWebClient.validateLoginURL(URL(string: url))
    }
    for url in ["https://gemini.google.com/u/1/usage","https://gemini.google.com/u/10/app","https://gemini.google.com/usage?authuser=1", "https://gemini.google.com/usage?authuser=0&authuser=1"] {
        #expect(throws: GeminiSessionError.primaryAccountRequired) { try GeminiWebClient.validateLoginURL(URL(string: url)) }
    }
    for url in ["https://accounts.google.com/","https://gemini.google.com.evil.invalid/","http://gemini.google.com/","https://user@gemini.google.com/","https://gemini.google.com:8443/"] {
        #expect(throws: CollectorError.authenticationRequired) { try GeminiWebClient.validateLoginURL(URL(string: url)) }
    }
}

private actor GeminiHTTP: HTTPTransport {
    private(set) var requests: [URLRequest] = []
    var subjects = [geminiSubject]
    var payload = geminiRows()
    var failure: (method: String, status: Int)?
    var expiredOnce = false
    var rotate = false
    func setSubjects(_ values: [String]) { subjects = values }
    func setPayload(_ value: [Any]) { payload = value }
    func setFailure(method: String, status: Int) { failure = (method,status) }
    func expireOnce() { expiredOnce = true }
    func rotateCookies() { rotate = true }
    func send(_ request: URLRequest) throws -> HTTPResult {
        requests.append(request)
        #expect(request.url?.host == "gemini.google.com" && request.value(forHTTPHeaderField: "Authorization") == nil)
        #expect(request.value(forHTTPHeaderField: "Cookie")?.contains("SID=synthetic") == true)
        if let failure, request.httpMethod == failure.method { return HTTPResult(status: failure.status, headers: ["Retry-After":"75"], body: Data()) }
        if request.httpMethod == "POST" {
            #expect(request.url?.path == "/_/BardChatUi/data/batchexecute")
            let query = try #require(URLComponents(url: request.url!, resolvingAgainstBaseURL: false)?.queryItems)
            #expect(query.first { $0.name == "rpcids" }?.value == "jSf9Qc" && query.first { $0.name == "authuser" }?.value == "0")
            #expect(query.first { $0.name == "source-path" }?.value == "/usage")
            let text = String(decoding: try #require(request.httpBody), as: UTF8.self)
            let values = Dictionary(uniqueKeysWithValues: text.split(separator: "&").map { value in
                let parts = value.split(separator: "=", maxSplits: 1); return (String(parts[0]),String(parts[1]).removingPercentEncoding!)
            })
            #expect(values["at"] == geminiToken)
            let encodedInput = try #require(values["f.req"])
            let input = try #require(JSONSerialization.jsonObject(with: Data(encodedInput.utf8)) as? [[[Any]]])
            #expect(input.count == 1 && input[0].count == 1 && input[0][0][0] as? String == "jSf9Qc" && input[0][0][1] as? String == "[]")
            if expiredOnce { expiredOnce = false; return HTTPResult(status: 400, body: Data("xsrf".utf8)) }
            var headers = ["Content-Type":"application/json; charset=utf-8"]
            if rotate { headers["Set-Cookie"] = "SID=synthetic-rotated; Domain=.google.com; Path=/; Secure; HttpOnly" }
            return try HTTPResult(status: 200, headers: headers, body: geminiWire(payload))
        }
        #expect(request.url?.path == "/usage")
        let subject = subjects.count > 1 ? subjects.removeFirst() : subjects[0]
        return try HTTPResult(status: 200, headers: ["Content-Type":"text/html; charset=utf-8"], body: geminiHTML(subject: subject))
    }
}

@Test func geminiColdCollectionVerifiesIdentityBeforeAndAfterTheReadOnlyRPC() async throws {
    let http = GeminiHTTP(), client = GeminiWebClient(transport: http, now: { geminiTime })
    #expect(try await client.discover(cookieHeader: "SID=synthetic").subject == geminiSubject)
    let result = try await client.collect(cookieHeader: "SID=synthetic", expected: geminiIdentity())
    #expect(result.report.metrics[0].remainingFraction == 0.96 && result.transferredBytes > 500)
    #expect(await http.requests.map(\.httpMethod) == ["GET","GET","POST","GET"])
    await http.setSubjects([geminiSubject,"other"])
    await #expect(throws: CoreError.identityMismatch) { try await client.collect(cookieHeader: "SID=synthetic", expected: geminiIdentity()) }
}

@Test func geminiHTTPFailuresAndVisitorCookiesCannotBecomeQuota() async throws {
    let http = GeminiHTTP(), client = GeminiWebClient(transport: http, now: { geminiTime })
    for cookie in ["NID=visitor","SID=","SID=unsafe\n"] { await #expect(throws: CollectorError.authenticationRequired) { try await client.discover(cookieHeader: cookie) } }
    #expect(await http.requests.isEmpty)
    for status in [401,403,429,503] {
        await http.setFailure(method: "GET", status: status)
        do { _ = try await client.discover(cookieHeader: "SID=synthetic"); Issue.record("HTTP failure accepted") }
        catch CollectorError.authenticationRequired { #expect(status == 401) }
        catch CollectorError.invalidResponse { #expect(status == 403) }
        catch CollectorError.rateLimited(let until) { #expect(status == 429 && until == geminiTime.addingTimeInterval(75)) }
        catch CollectorError.network { #expect(status == 503) }
    }
}

private final class GeminiClock: @unchecked Sendable {
    private let lock = NSLock(); private var value = geminiTime
    func read() -> Date { lock.withLock { value } }
    func advance(_ seconds: TimeInterval) { lock.withLock { value = value.addingTimeInterval(seconds) } }
}
private actor GeminiVault: CredentialVault {
    var values: [UUID:CredentialRecord] = [:]
    func create(_ record: CredentialRecord, reference: UUID) { values[reference] = record }
    func read(_ reference: UUID) throws -> CredentialRecord { guard let value = values[reference] else { throw AuthenticationError.missingCredential }; return value }
    func remove(_ reference: UUID) { values[reference] = nil }
}
private actor GeminiCookies: WebCookieStore {
    let profile: UUID
    var value = "synthetic"
    init(_ profile: UUID) { self.profile = profile }
    func change(_ value: String) { self.value = value }
    func cookies(profileID: UUID) throws -> [HTTPCookie] {
        #expect(profileID == profile)
        return [try #require(HTTPCookie(properties: [.domain:".google.com",.path:"/",.name:"SID",.value:value,.secure:"TRUE"]))]
    }
    func write(_ cookie: HTTPCookie, profileID: UUID, now: Date) { #expect(profileID == profile); value = cookie.value }
}
private struct GeminiSetup {
    let repository: AccountRepository, login: LoginCoordinator, account: Account, cookies: GeminiCookies, http: GeminiHTTP
    let collector: GeminiWebCollector
    let url: URL
    init(clock: GeminiClock) async throws {
        url = FileManager.default.temporaryDirectory.appendingPathComponent("AIQuotaGemini-\(UUID())/accounts.sqlite")
        repository = try AccountRepository(url: url); login = LoginCoordinator(repository: repository, vault: GeminiVault())
        let added = try await repository.add(provider: .gemini, alias: "Gemini fixture")
        let attempt = try await login.begin(added.id)
        _ = try await login.complete(attempt, verified: CredentialRecord(accountID: added.id, provider: .gemini, identity: geminiIdentity(), kind: .webSession, webProfileID: attempt.webProfileID))
        account = try await repository.account(added.id); cookies = GeminiCookies(attempt.webProfileID); http = GeminiHTTP()
        collector = GeminiWebCollector(sessions: StoredAccountSessionSource(login: login, webProfiles: cookies), transport: http, now: { clock.read() })
    }
    func collect(clock: GeminiClock) async throws -> CollectionOutput {
        let lease = try await repository.beginCollection(account.id, now: clock.read())
        return try await collector.collect(account: account, lease: lease)
    }
}

@Test func geminiCacheReusesOnlyTheBoundSessionWithoutExtendingItsTTL() async throws {
    let clock = GeminiClock(), setup = try await GeminiSetup(clock: clock)
    _ = try await setup.collect(clock: clock); #expect(await setup.http.requests.count == 3)
    clock.advance(60); _ = try await setup.collect(clock: clock); #expect(await setup.http.requests.count == 4)
    clock.advance(839); _ = try await setup.collect(clock: clock); #expect(await setup.http.requests.count == 5)
    clock.advance(1); _ = try await setup.collect(clock: clock); #expect(await setup.http.requests.count == 8)
    await setup.cookies.change("synthetic-browser-change")
    _ = try await setup.collect(clock: clock); #expect(await setup.http.requests.count == 11)
    let replacement = try await setup.login.begin(setup.account.id)
    _ = try await setup.login.complete(replacement, verified: CredentialRecord(accountID: setup.account.id, provider: .gemini, identity: geminiIdentity(), kind: .webSession, secret: "SID=synthetic-browser-change"))
    _ = try await setup.collect(clock: clock); #expect(await setup.http.requests.count == 14)
}

@Test func geminiExpiredCachedRPCBootstrapsOnceAndCookieRotationRechecksTheAccount() async throws {
    let clock = GeminiClock(), setup = try await GeminiSetup(clock: clock)
    let initial = try await setup.collect(clock: clock)
    await setup.http.expireOnce(); let renewed = try await setup.collect(clock: clock)
    #expect(renewed.transferredBytes == initial.transferredBytes + 4)
    #expect(await setup.http.requests.count == 7)
    await setup.http.rotateCookies(); _ = try await setup.collect(clock: clock)
    #expect(await setup.http.requests.count == 9)
    #expect(await setup.cookies.value == "synthetic-rotated")
    await setup.http.setFailure(method: "POST", status: 400)
    await #expect(throws: CollectorError.invalidResponse) { try await setup.collect(clock: clock) }
    #expect(await setup.http.requests.count == 11)
}

@Test func geminiCacheCannotCrossAccountsCookiesOrAdoptAnOlderSequence() async throws {
    let clock = GeminiClock(), a = try await GeminiSetup(clock: clock), b = try await GeminiSetup(clock: clock)
    let leaseA = try await a.repository.beginCollection(a.account.id, now: clock.read())
    let leaseB = try await b.repository.beginCollection(b.account.id, now: clock.read())
    let keyA = GeminiRPCCache.Key(leaseA, cookie: "SID=synthetic"), keyB = GeminiRPCCache.Key(leaseB, cookie: "SID=synthetic")
    let changedCookie = GeminiRPCCache.Key(leaseA, cookie: "SID=synthetic-other")
    let cache = GeminiRPCCache(), session = try GeminiWebData.session(geminiHTML())
    let report = try GeminiWebData.report(geminiRows(), identity: geminiIdentity(), fetchedAt: clock.read())
    let reading = GeminiWebClient.Reading(output: CollectionOutput(report: report, transferredBytes: 100), session: session, capturedAt: clock.read())
    try await cache.put(reading, key: keyA, sequence: 10)
    #expect(await cache.get(keyB, now: clock.read()) == nil)
    #expect(await cache.get(changedCookie, now: clock.read()) == nil)
    try await cache.put(reading, key: keyA, sequence: 9)
    #expect(await cache.get(keyA, now: clock.read())?.sequence == 10)
    #expect(await cache.get(keyA, now: clock.read().addingTimeInterval(-1)) == nil)
}

@Test(arguments: ["identity","cookie-identity","partial","unauthorized"])
func geminiRealStorageKeepsLastUsageAndOtherAccountsAfterCollectionFailure(_ failure: String) async throws {
    let clock = GeminiClock(), setup = try await GeminiSetup(clock: clock)
    let other = try await setup.repository.add(provider: .claude, alias: "Preserved")
    let coordinator = RefreshCoordinator(repository: setup.repository, collector: setup.collector, now: { clock.read() })
    try await coordinator.request(accountIDs: [setup.account.id]); await coordinator.waitUntilIdle()
    let usage = try #require(await setup.repository.usage(setup.account.id))
    switch failure {
    case "identity": await setup.cookies.change("synthetic-other-account"); await setup.http.setSubjects(["other"])
    case "cookie-identity": await setup.http.rotateCookies(); await setup.http.setSubjects(["other"])
    case "partial": await setup.http.setPayload([2,[]])
    default: await setup.http.setFailure(method: "POST", status: 401)
    }
    try await coordinator.request(accountIDs: [setup.account.id]); await coordinator.waitUntilIdle()
    #expect(try await setup.repository.usage(setup.account.id) == usage)
    let current = try await setup.repository.account(setup.account.id)
    #expect(current.identity == setup.account.identity && current.credentialReference == setup.account.credentialReference)
    #expect(current.state == (failure == "partial" ? .stale : .authenticationRequired))
    #expect(try await setup.repository.account(other.id) == other)
    let file = setup.url.deletingLastPathComponent().appendingPathComponent("snapshot.json")
    _ = try await SnapshotFileStore(url: file, repository: setup.repository).publish(now: clock.read())
    #expect(try SnapshotFileStore.read(from: file).accounts.first { $0.id == setup.account.id }?.metrics == usage.metrics)
    let text = String(decoding: try Data(contentsOf: file), as: UTF8.self)
    #expect(!text.contains(geminiToken) && !text.contains(geminiSubject) && !text.contains("synthetic-session"))
}

private actor GeminiLateHTTP: HTTPTransport {
    private var pending: CheckedContinuation<HTTPResult,Never>?
    private var entry: CheckedContinuation<Void,Never>?
    func send(_ request: URLRequest) async throws -> HTTPResult {
        if request.httpMethod != "POST" { return try HTTPResult(status: 200, headers: ["Content-Type":"text/html"], body: geminiHTML()) }
        return await withCheckedContinuation { pending = $0; entry?.resume(); entry = nil }
    }
    func waitForRPC() async { if pending == nil { await withCheckedContinuation { entry = $0 } } }
    func complete() throws { pending?.resume(returning: try HTTPResult(status: 200, headers: ["Content-Type":"application/json"], body: geminiWire())); pending = nil }
}
@Test func geminiCancelledUsageCannotAdoptTheLateQuota() async throws {
    let http = GeminiLateHTTP(), task = Task { try await GeminiWebClient(transport: http).collect(cookieHeader: "SID=synthetic", expected: geminiIdentity()) }
    await http.waitForRPC(); task.cancel(); try await http.complete()
    await #expect(throws: CancellationError.self) { try await task.value }
}
