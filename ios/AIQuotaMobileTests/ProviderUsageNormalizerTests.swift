import XCTest
@testable import AIQuotaMobile

final class ProviderUsageNormalizerTests: XCTestCase {
    private let fixtureNames = [
        "claude-usage-api.json",
        "codex-wham-rate-limits.json",
        "gemini-code-assist-buckets.json",
        "copilot-quota-snapshots.json",
        "cursor-combined-plan-requests.json",
        "antigravity-collected-quota.json"
    ]

    func testAndroidParityFixturesNormalizeAllProviders() throws {
        for name in fixtureNames {
            let fixture = try loadFixture(named: name)
            let snapshot = try XCTUnwrap(
                ProviderUsageNormalizer.normalize(
                    providerId: fixture.providerId,
                    rawPayload: fixture.rawPayload,
                    source: fixture.source,
                    fetchedAt: "2026-06-04T00:00:00Z"
                ),
                "\(name) should normalize"
            )

            XCTAssertEqual(snapshot.providerId, fixture.expected.providerId, name)
            XCTAssertEqual(snapshot.connectionState, .connected, name)
            XCTAssertEqual(snapshot.planLabel, fixture.expected.planLabel, name)
            XCTAssertEqual(snapshot.account, fixture.expected.account, name)
            XCTAssertEqual(snapshot.updatedAt, "2026-06-04T00:00:00Z", name)
            XCTAssertEqual(snapshot.lines.count, fixture.expected.lines.count, name)

            for (actual, expected) in zip(snapshot.lines, fixture.expected.lines) {
                XCTAssertEqual(actual.label, expected.label, name)
                XCTAssertEqual(actual.resetText, expected.resetText, name)
                XCTAssertEqual(actual.resetsAt, expected.resetsAt, name)
                assertEqualOptional(actual.usedAmount, expected.usedAmount, name)
                assertEqualOptional(actual.limitAmount, expected.limitAmount, name)
                assertEqualOptional(actual.remainingAmount, expected.remainingAmount, name)
                XCTAssertEqual(actual.unit, expected.unit ?? "percent", name)
                XCTAssertEqual(actual.sourceLabel, fixture.expected.sourceLabel, name)
                XCTAssertEqual(actual.confidence ?? -1, fixture.expected.confidence, accuracy: 0.001, name)
                XCTAssertEqual(actual.remainingPercent ?? -1, expected.remainingPercent ?? -1, accuracy: 0.001, name)
            }
        }
    }

    private func assertEqualOptional(_ actual: Double?, _ expected: Double?, _ message: String) {
        switch (actual, expected) {
        case let (actual?, expected?):
            XCTAssertEqual(actual, expected, accuracy: 0.001, message)
        case (nil, nil):
            break
        default:
            XCTFail(message)
        }
    }

    private func loadFixture(named name: String) throws -> NormalizerFixture {
        let root = URL(fileURLWithPath: #filePath)
            .deletingLastPathComponent()
            .deletingLastPathComponent()
            .deletingLastPathComponent()
        let url = root.appendingPathComponent("test/fixtures/provider-normalizers/\(name)")
        let data = try Data(contentsOf: url)
        let object = try JSONSerialization.jsonObject(with: data) as? [String: Any]
        let rawPayload = try XCTUnwrap(object?["rawPayload"] as? [String: Any])
        let rawData = try JSONSerialization.data(withJSONObject: rawPayload, options: [.sortedKeys])
        let rawPayloadString = try XCTUnwrap(String(data: rawData, encoding: .utf8))
        let provider = try XCTUnwrap(ProviderId(rawValue: object?["providerId"] as? String ?? ""))
        let source = try XCTUnwrap(ProviderPayloadSource(rawValue: object?["source"] as? String ?? ""))
        let expectedData = try JSONSerialization.data(withJSONObject: XCTUnwrap(object?["expected"]), options: [])
        let expected = try JSONDecoder().decode(ExpectedSnapshot.self, from: expectedData)
        return NormalizerFixture(providerId: provider, source: source, rawPayload: rawPayloadString, expected: expected)
    }
}

private struct NormalizerFixture {
    let providerId: ProviderId
    let source: ProviderPayloadSource
    let rawPayload: String
    let expected: ExpectedSnapshot
}

private struct ExpectedSnapshot: Decodable {
    let providerId: ProviderId
    let planLabel: String?
    let account: String?
    let sourceLabel: String
    let confidence: Float
    let lines: [ExpectedLine]
}

private struct ExpectedLine: Decodable {
    let label: String
    let remainingPercent: Float?
    let resetText: String?
    let resetsAt: String?
    let usedAmount: Double?
    let limitAmount: Double?
    let remainingAmount: Double?
    let unit: String?
}
