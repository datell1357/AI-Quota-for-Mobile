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
    let report = try GrokWeeklyDecoder.decode(fixture.data, identity: grokIdentity(), fetchedAt: .now)
    let metric = try #require(report.metrics.first)
    #expect(abs((metric.remainingFraction ?? -1) - fixture.remainingFraction) < 0.0001)
    let expected = try #require(ISO8601DateFormatter().date(from: fixture.resetsAt))
    #expect(Int(metric.resetsAt!.timeIntervalSince1970) == Int(expected.timeIntervalSince1970))
    #expect(metric.period == "week")
}

@Test func grokRejectsEveryTruncatedMessageAndMalformedFrames() throws {
    let bytes = try grokFixture("realResponse").data
    for end in 0..<bytes.count {
        #expect(throws: (any Error).self) {
            try GrokWeeklyDecoder.decode(bytes.prefix(end), identity: grokIdentity(), fetchedAt: .now)
        }
    }
    for invalid: Data in [Data([0,0,0,0,2,10,0]), bytes + Data([0]), Data([1]) + bytes.dropFirst()] {
        #expect(throws: (any Error).self) { try GrokWeeklyDecoder.decode(invalid, identity: grokIdentity(), fetchedAt: .now) }
    }
    var failedTrailer = try grokFixture("zeroUsageResponse").data
    failedTrailer[failedTrailer.count - 3] = 55 // grpc-status 7
    #expect(throws: (any Error).self) { try GrokWeeklyDecoder.decode(failedTrailer, identity: grokIdentity(), fetchedAt: .now) }
    let wrongProduct = try RemoteIdentity(subject: "fixture-user", product: "grok-two-hour")
    #expect(throws: CoreError.identityMismatch) { try GrokWeeklyDecoder.decode(bytes, identity: wrongProduct, fetchedAt: .now) }
}
