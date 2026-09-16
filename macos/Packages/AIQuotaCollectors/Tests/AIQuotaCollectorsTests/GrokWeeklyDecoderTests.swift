import AIQuotaCore
import Foundation
import Testing
@testable import AIQuotaCollectors

private struct GrokFixture: Decodable {
    let hex: String
    let remainingFraction: Double
    let resetsAt: String
    var data: Data {
        let chars = Array(hex)
        return Data(stride(from: 0, to: chars.count, by: 2).map { UInt8(String(chars[$0...($0 + 1)]), radix: 16)! })
    }
}
private func grokFixture(_ name: String) throws -> GrokFixture {
    let url = try #require(Bundle.module.url(forResource: "grok-\(name)", withExtension: "json", subdirectory: "Fixtures"))
    return try JSONDecoder().decode(GrokFixture.self, from: Data(contentsOf: url))
}
private func grokIdentity() throws -> RemoteIdentity { try RemoteIdentity(subject: "fixture-user", product: "grok-weekly") }

@Test(arguments: ["realResponse", "zeroUsageResponse"])
func grokWeeklyMatchesAndroidProductionByteFixtures(_ name: String) throws {
    let fixture = try grokFixture(name)
    let expected = try #require(ISO8601DateFormatter().date(from: fixture.resetsAt))
    // These captured August fixtures are meaningful inside their recorded current billing period.
    let report = try GrokWeeklyDecoder.decode(fixture.data, identity: grokIdentity(), fetchedAt: expected.addingTimeInterval(-86_400))
    let metric = try #require(report.metrics.first)
    #expect(abs((metric.remainingFraction ?? -1) - fixture.remainingFraction) < 0.0001)
    #expect(Int(metric.resetsAt!.timeIntervalSince1970) == Int(expected.timeIntervalSince1970))
    #expect(metric.period == "week")
}

func grokProtoInteger(_ value: UInt64) -> [UInt8] {
    var value = value; var result: [UInt8] = []
    repeat { let byte = UInt8(value & 127); value >>= 7; result.append(byte | (value == 0 ? 0 : 128)) } while value != 0
    return result
}
func grokProtoBytes(_ field: UInt64, _ bytes: [UInt8]) -> [UInt8] {
    grokProtoInteger(field << 3 | 2) + grokProtoInteger(UInt64(bytes.count)) + bytes
}
func grokFrame(_ bytes: [UInt8], flag: UInt8 = 0) -> Data {
    let count = UInt32(bytes.count)
    return Data([flag, UInt8(count >> 24), UInt8((count >> 16) & 255), UInt8((count >> 8) & 255), UInt8(count & 255)] + bytes)
}
func grokPeriodFixture(type: UInt64 = 2, start: UInt64 = 1_800_000_000, end: UInt64 = 1_800_604_800,
                       used: Float? = nil, duplicatePeriod: Bool = false, unknown: [UInt8] = []) -> Data {
    let period = [8] + grokProtoInteger(type) + grokProtoBytes(2, [8] + grokProtoInteger(start)) + grokProtoBytes(3, [8] + grokProtoInteger(end))
    var config = grokProtoBytes(8, period)
    if duplicatePeriod { config += grokProtoBytes(8, period) }
    if let used {
        let bits = used.bitPattern
        config += [13, UInt8(bits & 255), UInt8((bits >> 8) & 255), UInt8((bits >> 16) & 255), UInt8(bits >> 24)]
    }
    return grokFrame(grokProtoBytes(1, config + unknown))
}

@Test func grokOmittedZeroRequiresAKnownCompleteActivePeriod() throws {
    let now = Date(timeIntervalSince1970: 1_800_000_100)
    let active = try GrokWeeklyDecoder.decode(grokPeriodFixture(), identity: grokIdentity(), fetchedAt: now)
    #expect(active.metrics.first?.remainingFraction == 1)
    #expect(active.metrics.first?.startsAt == Date(timeIntervalSince1970: 1_800_000_000))
    for bytes in [grokPeriodFixture(type: 0), grokPeriodFixture(type: 99),
                  grokPeriodFixture(start: 1_799_000_000, end: 1_799_604_800),
                  grokPeriodFixture(start: 1_799_000_000, end: 1_799_604_800, used: 32),
                  grokPeriodFixture(start: 1_801_000_000, end: 1_801_604_800),
                  grokPeriodFixture(start: 1_800_604_800, end: 1_800_000_000),
                  grokFrame(grokProtoBytes(1, grokProtoBytes(5, [8] + grokProtoInteger(1_800_604_800))))] {
        #expect(throws: CollectorError.invalidResponse) { try GrokWeeklyDecoder.decode(bytes, identity: grokIdentity(), fetchedAt: now) }
    }
    let archived = try grokFixture("zeroUsageResponse")
    #expect(throws: CollectorError.invalidResponse) { try GrokWeeklyDecoder.decode(archived.data, identity: grokIdentity(), fetchedAt: now) }
}

@Test func grokCurrentPeriodsKeepMonthlyUsageSeparateAndIgnoreOpaqueExtensions() throws {
    let now = Date(timeIntervalSince1970: 1_800_000_100)
    let monthly = try GrokWeeklyDecoder.decode(grokPeriodFixture(type: 1, end: 1_802_592_000, used: 25), identity: grokIdentity(), fetchedAt: now)
    #expect(monthly.metrics.first?.period == "month")
    #expect(monthly.metrics.first?.id == "grok:monthly_credits")
    #expect(monthly.metrics.first?.remainingFraction == 0.75)
    let unknown = grokProtoBytes(30, [0, 255]) + grokProtoBytes(30, [255, 0])
    #expect(try GrokWeeklyDecoder.decode(grokPeriodFixture(unknown: unknown), identity: grokIdentity(), fetchedAt: now).metrics.first?.remainingFraction == 1)
    #expect(throws: CollectorError.invalidResponse) { try GrokWeeklyDecoder.decode(grokPeriodFixture(duplicatePeriod: true), identity: grokIdentity(), fetchedAt: now) }
}

@Test func grokRPCFailuresClassifyAuthenticationRateLimitAndServerErrors() throws {
    let now = Date(timeIntervalSince1970: 1_800_000_100)
    let identity = try grokIdentity()
    let auth = grokFrame(Array("grpc-status:16\r\ngrpc-message:No%20credentials%20presented.%20%5BWKE=unauthenticated:no-credentials%5D\r\n".utf8), flag: 128)
    #expect(throws: CollectorError.authenticationRequired) { try GrokWeeklyDecoder.decode(auth, identity: identity, fetchedAt: now) }
    #expect(throws: CollectorError.authenticationRequired) { try GrokWeeklyDecoder.decode(Data(), identity: identity, fetchedAt: now, headers: ["grpc-status":"16"]) }
    let denied = grokFrame(Array("grpc-status:7\r\ngrpc-message:permission%20denied\r\n".utf8), flag: 128)
    #expect(throws: CollectorError.invalidResponse) { try GrokWeeklyDecoder.decode(denied, identity: identity, fetchedAt: now) }
    #expect(throws: CollectorError.network) { try GrokWeeklyDecoder.decode(Data(), identity: identity, fetchedAt: now, headers: ["grpc-status":"14"]) }
    do {
        _ = try GrokWeeklyDecoder.decode(Data(), identity: identity, fetchedAt: now, headers: ["grpc-status":"8", "retry-after":"120"])
        Issue.record("RPC rate limit was accepted")
    } catch CollectorError.rateLimited(let until) { #expect(until == now.addingTimeInterval(120)) }
    let success = grokPeriodFixture() + grokFrame(Array("grpc-status:0\r\n".utf8), flag: 128)
    #expect(try GrokWeeklyDecoder.decode(success, identity: identity, fetchedAt: now, headers: ["grpc-status":"0"]).metrics.count == 1)
    #expect(throws: CollectorError.invalidResponse) { try GrokWeeklyDecoder.decode(success, identity: identity, fetchedAt: now, headers: ["grpc-status":"16"]) }
}

@Test func grokRejectsEveryTruncatedMessageAndMalformedFrames() throws {
    let fixture = try grokFixture("realResponse")
    let bytes = fixture.data
    let capturedAt = try #require(ISO8601DateFormatter().date(from: fixture.resetsAt)).addingTimeInterval(-86_400)
    for end in 0..<bytes.count {
        #expect(throws: (any Error).self) {
            try GrokWeeklyDecoder.decode(bytes.prefix(end), identity: grokIdentity(), fetchedAt: capturedAt)
        }
    }
    for invalid: Data in [Data([0,0,0,0,2,10,0]), bytes + Data([0]), Data([1]) + bytes.dropFirst()] {
        #expect(throws: (any Error).self) { try GrokWeeklyDecoder.decode(invalid, identity: grokIdentity(), fetchedAt: capturedAt) }
    }
    var failedTrailer = try grokFixture("zeroUsageResponse").data
    failedTrailer[failedTrailer.count - 3] = 55 // grpc-status 7
    #expect(throws: (any Error).self) { try GrokWeeklyDecoder.decode(failedTrailer, identity: grokIdentity(), fetchedAt: .now) }
    let wrongProduct = try RemoteIdentity(subject: "fixture-user", product: "grok-two-hour")
    #expect(throws: CoreError.identityMismatch) { try GrokWeeklyDecoder.decode(bytes, identity: wrongProduct, fetchedAt: .now) }
}
