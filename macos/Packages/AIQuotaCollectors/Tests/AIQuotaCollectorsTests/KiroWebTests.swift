import AIQuotaAuth
import AIQuotaCore
import CoreFoundation
import CryptoKit
import Foundation
import Testing
@testable import AIQuotaCollectors

private let kiroTime = Date(timeIntervalSince1970: 1_785_000_000)
private let kiroSubject = "d-0000000000.00000000-0000-0000-0000-000000000000"
private func kiroIdentity(_ subject: String = kiroSubject) throws -> RemoteIdentity {
    try RemoteIdentity(subject: subject, product: "kiro-web-subscription")
}
private func hexData(_ string: String) -> Data {
    let bytes = Array(string.utf8)
    return Data(stride(from: 0, to: bytes.count, by: 2).map { UInt8(String(decoding: bytes[$0..<$0+2], as: UTF8.self), radix: 16)! })
}
private func kiroFixture(_ name: String = "kiro-android-cbor") throws -> [String: Any] {
    let url = try #require(Bundle.module.url(forResource: name, withExtension: "json", subdirectory: "Fixtures"))
    return try #require(JSONSerialization.jsonObject(with: Data(contentsOf: url)) as? [String: Any])
}
private func kiroWire() throws -> Data { hexData(try #require(kiroFixture()["hex"] as? String)) }
private func kiroPayload() throws -> [String: Any] { try KiroCBOR.object(kiroWire()) }
private func kiroRow() throws -> [String: Any] { try #require((kiroPayload()["usageBreakdownList"] as? [[String: Any]])?.first) }
private func kiroDecode(row: [String: Any]) throws -> UsageReport {
    var root = try kiroPayload(); root["usageBreakdownList"] = [row]
    return try KiroUsageDecoder.decode(cbor(root), identity: kiroIdentity(), fetchedAt: kiroTime)
}
/// Independent fixture writer: definite containers and f64 values (the captured fixture also
/// exercises indefinite containers, integer widths and tagged timestamps).
private func cbor(_ value: Any) -> Data {
    func head(_ major: UInt8, _ count: Int) -> Data {
        if count < 24 { return Data([major << 5 | UInt8(count)]) }
        if count < 256 { return Data([major << 5 | 24, UInt8(count)]) }
        if count < 65_536 { return Data([major << 5 | 25, UInt8(count >> 8), UInt8(count & 255)]) }
        return Data([major << 5 | 26] + (0..<4).reversed().map { UInt8((count >> ($0 * 8)) & 255) })
    }
    if value is NSNull { return Data([0xf6]) }
    if let text = value as? String { return head(3, text.utf8.count) + Data(text.utf8) }
    if let data = value as? Data { return head(2, data.count) + data }
    if let date = value as? Date { return Data([0xc1]) + cbor(date.timeIntervalSince1970) }
    if let map = value as? [String: Any] {
        return map.keys.sorted().reduce(head(5, map.count)) { $0 + cbor($1) + cbor(map[$1]!) }
    }
    if let list = value as? [Any] { return list.reduce(head(4, list.count)) { $0 + cbor($1) } }
    let number = value as! NSNumber
    if CFGetTypeID(number) == CFBooleanGetTypeID() { return Data([number.boolValue ? 0xf5 : 0xf4]) }
    let bits = number.doubleValue.bitPattern
    return Data([0xfb] + (0..<8).reversed().map { UInt8((bits >> ($0 * 8)) & 255) })
}

@Test func kiroCapturedAndroidCBORPassesThroughTheRealCollectorDecoder() throws {
    let bytes = try kiroWire(), fixture = try kiroFixture()
    #expect(bytes.count == 743)
    #expect(SHA256.hash(data: bytes).map { String(format: "%02x", $0) }.joined() == fixture["sha256"] as? String)
    let report = try KiroUsageDecoder.decode(bytes, identity: kiroIdentity(), fetchedAt: kiroTime)
    let metric = try #require(report.metrics.first)
    #expect(report.plan == "KIRO PRO MAX" && report.metrics.count == 1)
    #expect(metric.id == "kiro:credit" && metric.used == 66.05 && metric.limit == 5000 && metric.unit == "credits")
    #expect(abs((metric.remainingFraction ?? -1) - 0.98679) < 0.000001)
    #expect(metric.resetsAt == Date(timeIntervalSince1970: 1_785_542_400) && metric.expiresAt == nil)
}

@Test func kiroAndroidNormalizedRegressionInputsKeepFractionAndUncappedConsumption() throws {
    for name in ["kiro-kiroCreditBreakdownBecomesRemainingPercentWithResetInstant", "kiro-kiroSentinelLimitIsTreatedAsUncappedUsage"] {
        let fixture = try kiroFixture(name)
        let payload = try #require(fixture["payload"] as? [String: Any])
        let entry = try #require((payload["entries"] as? [[String: Any]])?.first)
        var row = try kiroRow()
        row["currentUsageWithPrecision"] = entry["used"]
        row["usageLimitWithPrecision"] = entry["limit"]
        let metric = try #require(kiroDecode(row: row).metrics.first)
        #expect(metric.used == entry["used"] as? Double)
        if let fraction = (fixture["expectedRemainingFractions"] as? [Any])?.first as? Double {
            #expect(abs((metric.remainingFraction ?? -1) - fraction) < 0.000001)
        } else { #expect(metric.status == .unknown && metric.remainingFraction == nil && metric.limit == nil) }
    }
}

@Test func kiroCBORHandlesIndefiniteStringsIntegersBinaryAndAllFloatWidths() throws {
    let object = try KiroCBOR.object(hexData("bf61619f01f4f5f6ff61627f626162626364ff6163f93e006164fa3fc00000616521ff"))
    #expect((object["a"] as? [Any])?.count == 4 && object["b"] as? String == "abcd")
    #expect(object["c"] as? Double == 1.5 && object["d"] as? Double == 1.5 && object["e"] as? Double == -2)
    let binary = try KiroCBOR.object(hexData("a16162420aff"))
    #expect(binary["b"] as? Data == Data([10,255]))
}

@Test func kiroCBORRejectsEveryTruncationOfCapturedPayloadAndMalformedBounds() throws {
    let wire = try kiroWire()
    for length in 0..<wire.count {
        #expect(throws: CollectorError.invalidResponse) { try KiroCBOR.object(Data(wire.prefix(length))) }
    }
    for value in ["a0a0", "a2616101616102", "bf6161ffff", "a16161ff", "a10101", "a16161c2a0",
                  "a161617f4100ff", "a1616161ff", "a16161f97c00", "a16161fa7f800000", "a16161fb7ff8000000000000",
                  "a161611bffffffffffffffff", "a161615bffffffffffffffff", "a161619a00010000", "a16161c1f5"] {
        #expect(throws: CollectorError.invalidResponse) { try KiroCBOR.object(hexData(value)) }
    }
    for data in [Data(repeating: 0, count: 524_289), cbor(["deep":String(repeating:"x",count:65_537)]),
                 hexData("a16161" + String(repeating: "81", count: 32) + "00"),
                 cbor(["many":Array(repeating:Array(repeating:0,count:4096),count:6)])] {
        #expect(throws: CollectorError.invalidResponse) { try KiroCBOR.object(data) }
    }
}

@Test func kiroKeepsTrialBonusesPrepaidAndOverageSeparateFromWebMonthlyCredits() throws {
    var row = try kiroRow()
    row["currentUsageWithPrecision"] = 125.75; row["usageLimitWithPrecision"] = 100.0
    row["currentOveragesWithPrecision"] = 25.75; row["overageCharges"] = 1.03
    row["freeTrialInfo"] = ["freeTrialStatus":"ACTIVE", "currentUsageWithPrecision":3.5, "usageLimit":10,
                           "freeTrialExpiry":kiroTime.addingTimeInterval(3600)]
    row["bonuses"] = [["bonusCode":"synthetic-promo","displayName":"Bonus","status":"ACTIVE","currentUsage":2.25,"usageLimit":20,
                       "expiresAt":kiroTime.addingTimeInterval(7200), "redeemedAt":kiroTime.addingTimeInterval(-100)]]
    row["overageCredits"] = [["currentUsage":2,"usageLimit":10,"expiresAt":kiroTime.addingTimeInterval(10800)],
                              ["currentUsage":3,"usageLimit":20,"expiresAt":kiroTime.addingTimeInterval(10800)]]
    var root = try kiroPayload(); root["usageBreakdownList"] = [row]; root["overageConfiguration"] = ["overageEnabled":true]
    let result = try KiroUsageDecoder.decode(cbor(root), identity: kiroIdentity(), fetchedAt: kiroTime)
    #expect(result.metrics.count == 6)
    #expect(result.metrics[0].used == 125.75 && result.metrics[0].remainingFraction == 0)
    #expect(result.metrics[1].used == 3.5 && result.metrics[1].expiresAt == kiroTime.addingTimeInterval(3600) && result.metrics[1].resetsAt == nil)
    #expect(result.metrics[2].used == 2.25 && !result.metrics[2].id.contains("synthetic-promo"))
    #expect(result.metrics[3].used == 5 && result.metrics[3].limit == 30)
    #expect(result.metrics[4].used == 25.75 && result.metrics[4].limit == 10000)
    #expect(result.metrics[5].used == 1.03 && result.metrics[5].unit == "USD" && result.metrics[5].status == .unknown)
    var reordered = row; reordered["overageCredits"] = (row["overageCredits"] as! [[String: Any]]).reversed().map { $0 }
    root["usageBreakdownList"] = [reordered]
    #expect(try KiroUsageDecoder.decode(cbor(root), identity: kiroIdentity(), fetchedAt: kiroTime) == result)
}

@Test func kiroInactiveAndExpiredBonusCannotBecomeAvailableOrResetQuota() throws {
    var row = try kiroRow()
    row["freeTrialInfo"] = ["freeTrialStatus":"EXPIRED"]
    row["bonuses"] = [["status":"EXPIRED"],["bonusCode":"expired-clock","displayName":"Bonus","status":"ACTIVE",
                                        "currentUsage":1,"usageLimit":10,"expiresAt":kiroTime.addingTimeInterval(-1)]]
    let metrics = try kiroDecode(row: row).metrics
    #expect(metrics.count == 2 && metrics[1].remainingFraction == 0 && metrics[1].remaining == 0)
    #expect(metrics[1].used == 1 && metrics[1].expiresAt != nil && metrics[1].resetsAt == nil)
}

@Test(arguments: [0.0, 999_999, 1_000_000])
func kiroNoPerUserCeilingKeepsKnownUsageWithoutInventingUnlimited(_ cap: Double) throws {
    var row = try kiroRow(); row["usageLimitWithPrecision"] = cap
    let metric = try #require(kiroDecode(row: row).metrics.first)
    #expect(metric.status == .unknown && metric.used == 66.05 && metric.remainingFraction == nil && metric.limit == nil)
}

@Test func kiroMissingAndMalformedAmountsIdentityUnitsAndDuplicateRowsAreRejected() throws {
    for field in ["currentUsageWithPrecision","usageLimitWithPrecision","currentOveragesWithPrecision","overageCharges"] {
        let invalids: [Any] = [-1.0, true, "1", Double.infinity]
        for bad in invalids {
            var row = try kiroRow(); row[field] = bad
            #expect(throws: CollectorError.invalidResponse) { try kiroDecode(row: row) }
        }
    }
    var root = try kiroPayload()
    root["usageBreakdownList"] = []
    #expect(throws: CollectorError.invalidResponse) { try KiroUsageDecoder.decode(cbor(root), identity: kiroIdentity(), fetchedAt: kiroTime) }
    root["usageBreakdownList"] = [try kiroRow(),try kiroRow()]
    #expect(throws: CollectorError.invalidResponse) { try KiroUsageDecoder.decode(cbor(root), identity: kiroIdentity(), fetchedAt: kiroTime) }
    root["userInfo"] = ["userId":"different"]
    #expect(throws: CoreError.identityMismatch) { try KiroUsageDecoder.decode(cbor(root), identity: kiroIdentity(), fetchedAt: kiroTime) }
    var row = try kiroRow(); row["nextDateReset"] = 1_785_542_400_000.0
    #expect(throws: CollectorError.invalidResponse) { try kiroDecode(row: row) }
    row = try kiroRow(); row["currentUsageWithPrecision"] = nil; row["currentUsage"] = nil
    #expect(throws: CollectorError.invalidResponse) { try kiroDecode(row: row) }
    row = try kiroRow(); row["overageCredits"] = [["currentUsage":11,"usageLimit":10],["currentUsage":0,"usageLimit":20]]
    #expect(throws: CollectorError.invalidResponse) { try kiroDecode(row: row) }
    row = try kiroRow(); row["resourceType"] = "SANDBOX_RUNTIME"; row["unit"] = nil
    #expect(throws: CollectorError.invalidResponse) { try kiroDecode(row: row) }
    row["unit"] = "SECONDS"; row["usageLimitWithPrecision"] = 1_000_000.0
    #expect(try kiroDecode(row: row).metrics.first?.limit == 1_000_000 && kiroDecode(row: row).metrics.first?.unit == "SECONDS")
    row = try kiroRow(); row["currentOverages"] = nil; row["currentOveragesWithPrecision"] = nil
    root = try kiroPayload(); root["usageBreakdownList"] = [row]; root["overageConfiguration"] = ["overageEnabled":true]
    #expect(throws: CollectorError.invalidResponse) { try KiroUsageDecoder.decode(cbor(root), identity: kiroIdentity(), fetchedAt: kiroTime) }
}

private actor KiroHTTP: HTTPTransport {
    private(set) var requests: [URLRequest] = []
    var reads = 0
    var subject = kiroSubject
    var changedAfter = false
    var idp = "Github"
    var status = "Active"
    var usage: Data
    var failure: (String, HTTPResult)?
    var rotate = false
    init() throws { usage = try kiroWire() }
    func setIdentity(_ value: String, after: Bool = false) { subject = value; changedAfter = after; reads = 0 }
    func setProfile(idp: String = "Github", status: String = "Active") { self.idp = idp; self.status = status }
    func setFailure(_ operation: String, _ result: HTTPResult) { failure = (operation,result) }
    func setUsage(_ data: Data) { usage = data }
    func setRotation() { rotate = true }
    func send(_ request: URLRequest) throws -> HTTPResult {
        #expect(request.url?.host == "app.kiro.dev" && request.httpMethod == "POST" && request.httpBody == Data([0xa0]))
        #expect(request.value(forHTTPHeaderField: "smithy-protocol") == "rpc-v2-cbor")
        #expect(request.value(forHTTPHeaderField: "Content-Type") == "application/cbor")
        #expect(request.value(forHTTPHeaderField: "Authorization") == nil)
        let query = try #require(request.url.flatMap { URLComponents(url: $0, resolvingAgainstBaseURL: false) }?.queryItems)
        #expect(query.first { $0.name == "origin" }?.value == "KIRO_IDE")
        let operation = try #require(request.url?.lastPathComponent)
        #expect(["GetUserInfo","GetUserUsageAndLimits"].contains(operation))
        if rotate && operation == "GetUserUsageAndLimits" { #expect(request.value(forHTTPHeaderField: "Cookie") == "AccessToken=synthetic-rotated") }
        requests.append(request)
        if let failure, failure.0 == operation { return failure.1 }
        var headers = ["content-type":"application/cbor"]
        if operation == "GetUserInfo" {
            reads += 1
            if rotate { headers["Set-Cookie"] = "AccessToken=synthetic-rotated; Path=/; Secure; Max-Age=3600" }
            let id = changedAfter && reads == 1 ? kiroSubject : subject
            return HTTPResult(status: 200, headers: headers, body: cbor(["userId":id,"email":"fixture@example.invalid","idp":idp,"status":status]))
        }
        #expect(query.first { $0.name == "isEmailRequired" }?.value == "true")
        return HTTPResult(status: 200, headers: headers, body: usage)
    }
}

@Test(arguments: ["Github","Google","BuilderId"])
func kiroWebSupportsPersonalIdentityProvidersWithoutCLIOrTokenImport(_ idp: String) async throws {
    let http = try KiroHTTP(); await http.setProfile(idp: idp)
    let client = KiroWebClient(transport: http, now: { kiroTime })
    let found = try await client.discover(cookieHeader: "AccessToken=synthetic")
    #expect(found.subject == kiroSubject && found.identityProvider == idp)
    let report = try await client.collect(cookieHeader: "AccessToken=synthetic", expected: kiroIdentity())
    #expect(report.report.metrics.first?.used == 66.05 && report.transferredBytes > 743)
    #expect(await http.requests.count == 4)
}

@Test(arguments: [false,true])
func kiroIdentityChangesBeforeOrAfterUsageCannotReplaceTheAccount(after: Bool) async throws {
    let http = try KiroHTTP(); await http.setIdentity("different", after: after)
    await #expect(throws: CoreError.identityMismatch) {
        try await KiroWebClient(transport: http).collect(cookieHeader: "AccessToken=synthetic", expected: kiroIdentity())
    }
    #expect(await http.requests.count == (after ? 3 : 1))
}

@Test func kiroChecksUsageIdentityAndDoesNotGuessOrganizationProfiles() async throws {
    let http = try KiroHTTP(); var root = try kiroPayload(); root["userInfo"] = ["userId":"wrong"]
    await http.setUsage(cbor(root))
    await #expect(throws: CoreError.identityMismatch) {
        try await KiroWebClient(transport: http).collect(cookieHeader: "AccessToken=synthetic", expected: kiroIdentity())
    }
    await http.setProfile(idp: "AWSIdC")
    await #expect(throws: KiroSessionError.unsupportedIdentityProvider) { try await KiroWebClient(transport: http).discover(cookieHeader: "AccessToken=synthetic") }
    await http.setProfile(status: "PendingProfileSelection")
    await #expect(throws: KiroSessionError.profileSelectionRequired) { try await KiroWebClient(transport: http).discover(cookieHeader: "AccessToken=synthetic") }
    await http.setProfile(status: "Stale")
    await #expect(throws: CollectorError.authenticationRequired) { try await KiroWebClient(transport: http).discover(cookieHeader: "AccessToken=synthetic") }
}

@Test func kiroHTTPFailuresMissingCookiesAndWrongContentTypeAreNotUsage() async throws {
    let http = try KiroHTTP()
    for cookie in ["visitor=synthetic","AccessToken=","AccessToken=unsafe\n"] {
        await #expect(throws: CollectorError.authenticationRequired) { try await KiroWebClient(transport: http).discover(cookieHeader: cookie) }
    }
    #expect(await http.requests.isEmpty)
    for status in [401,403,423,429,503,200] {
        await http.setFailure("GetUserInfo", HTTPResult(status: status, headers: ["Content-Type":"text/html","Retry-After":"75"], body: Data("sign in".utf8)))
        do { _ = try await KiroWebClient(transport: http, now: { kiroTime }).discover(cookieHeader: "AccessToken=synthetic"); Issue.record("Bad response accepted") }
        catch CollectorError.authenticationRequired { #expect(status == 401) }
        catch CollectorError.invalidResponse { #expect(status == 403 || status == 200) }
        catch KiroSessionError.accountRestricted { #expect(status == 423) }
        catch CollectorError.rateLimited(let until) { #expect(status == 429 && until == kiroTime.addingTimeInterval(75)) }
        catch CollectorError.network { #expect(status == 503) }
    }
}

private actor KiroVault: CredentialVault {
    private var records: [UUID: CredentialRecord] = [:]
    func create(_ record: CredentialRecord, reference: UUID) { records[reference] = record }
    func read(_ reference: UUID) throws -> CredentialRecord {
        guard let record = records[reference] else { throw AuthenticationError.missingCredential }; return record
    }
    func remove(_ reference: UUID) { records[reference] = nil }
}
private actor KiroCookies: WebCookieStore {
    let profile: UUID
    private(set) var value = "synthetic"
    init(profile: UUID) { self.profile = profile }
    func cookies(profileID: UUID) throws -> [HTTPCookie] {
        #expect(profileID == profile)
        return [try #require(HTTPCookie(properties: [.domain:"app.kiro.dev",.path:"/",.name:"AccessToken",.value:value,.secure:"TRUE"]))]
    }
    func write(_ cookie: HTTPCookie, profileID: UUID, now: Date) { #expect(profileID == profile); value = cookie.value }
}
@Test(arguments: ["identity","malformed","unauthorized","restricted"])
func kiroVerifiedWebSessionFeedsRealStorageAndPreservesPreviousUsage(_ failure: String) async throws {
    let url = FileManager.default.temporaryDirectory.appendingPathComponent("AIQuotaKiro-\(UUID())/accounts.sqlite")
    let repository = try AccountRepository(url: url), login = LoginCoordinator(repository: repository, vault: KiroVault())
    let account = try await repository.add(provider: .kiro, alias: "Kiro fixture")
    let other = try await repository.add(provider: .claude, alias: "Preserved account")
    let attempt = try await login.begin(account.id), http = try KiroHTTP()
    let identity = try kiroIdentity()
    _ = try await KiroWebClient(transport: http, now: { kiroTime }).collect(cookieHeader: "AccessToken=synthetic", expected: identity)
    _ = try await login.complete(attempt, verified: CredentialRecord(accountID: account.id, provider: .kiro, identity: identity,
                                                                    kind: .webSession, webProfileID: attempt.webProfileID))
    let cookies = KiroCookies(profile: attempt.webProfileID); await http.setRotation()
    let collector = KiroWebCollector(sessions: StoredAccountSessionSource(login: login, webProfiles: cookies), transport: http, now: { kiroTime })
    let coordinator = RefreshCoordinator(repository: repository, collector: collector, now: { kiroTime })
    try await coordinator.request(accountIDs: [account.id]); await coordinator.waitUntilIdle()
    let original = try #require(await repository.usage(account.id))
    #expect(original.metrics.first?.used == 66.05)
    #expect(await cookies.value == "synthetic-rotated")
    let snapshotURL = url.deletingLastPathComponent().appendingPathComponent("snapshot.json")
    _ = try await SnapshotFileStore(url: snapshotURL, repository: repository).publish()
    #expect(try SnapshotFileStore.read(from: snapshotURL).accounts.first { $0.id == account.id }?.metrics == original.metrics)
    switch failure {
    case "identity": await http.setIdentity("different")
    case "malformed": await http.setUsage(Data([0xa0]))
    case "restricted": await http.setFailure("GetUserUsageAndLimits", HTTPResult(status: 423, body: Data()))
    default: await http.setFailure("GetUserUsageAndLimits", HTTPResult(status: 401, body: Data()))
    }
    try await coordinator.request(accountIDs: [account.id]); await coordinator.waitUntilIdle()
    #expect(try await repository.usage(account.id) == original)
    let current = try await repository.account(account.id)
    #expect(current.credentialReference == attempt.credentialReference && current.identity == identity)
    #expect(current.state == (failure == "malformed" ? .stale : .authenticationRequired))
    #expect(try await repository.account(other.id) == other)
    let json = String(decoding: try JSONEncoder().encode(await repository.displaySnapshot()), as: UTF8.self)
    #expect(!json.contains("synthetic-rotated") && !json.contains(attempt.webProfileID.uuidString) && !json.contains(kiroSubject))
}

private actor KiroDelayedHTTP: HTTPTransport {
    private var pending: CheckedContinuation<HTTPResult, Never>?
    private var entry: CheckedContinuation<Void, Never>?
    func send(_ request: URLRequest) async -> HTTPResult { await withCheckedContinuation { pending = $0; entry?.resume(); entry = nil } }
    func waitForRequest() async { if pending == nil { await withCheckedContinuation { entry = $0 } } }
    func complete() { pending?.resume(returning: HTTPResult(status: 200, headers: ["content-type":"application/cbor"], body: cbor(["userId":kiroSubject,"status":"Active","idp":"Github"]))); pending = nil }
}
@Test func kiroCancellationDiscardsLateIdentityResponse() async throws {
    let http = KiroDelayedHTTP(), task = Task { try await KiroWebClient(transport: http).discover(cookieHeader: "AccessToken=synthetic") }
    await http.waitForRequest(); task.cancel(); await http.complete()
    await #expect(throws: CancellationError.self) { try await task.value }
}
