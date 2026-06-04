import XCTest
@testable import AIQuotaMobile

final class ProviderWebLoginCollectorTests: XCTestCase {
    func testLocalHtmlFixturePostsTrustedUsagePayload() throws {
        let html = try localHtmlFixture()
        let message = try XCTUnwrap(ProviderWebCollectorFixtureParser.collectorMessage(from: html))

        XCTAssertEqual(message.type, "usagePayload")
        XCTAssertEqual(message.provider, "codex")
        XCTAssertNotNil(message.payload)
    }

    func testTrustedPayloadUpdatesProviderSnapshot() throws {
        let html = try localHtmlFixture()
        let message = try XCTUnwrap(ProviderWebCollectorFixtureParser.collectorMessage(from: html))
        let event = ProviderWebCollectorMessageProcessor.process(
            message: message,
            expectedProviderId: .codex,
            pageURL: "https://chatgpt.com/"
        )

        guard case let .usagePayload(rawPayload) = event else {
            return XCTFail("Expected trusted usage payload")
        }
        let snapshot = try XCTUnwrap(ProviderWebCollectorFixtureParser.snapshot(fromTrustedPayload: rawPayload))

        XCTAssertEqual(snapshot.providerId, .codex)
        XCTAssertEqual(snapshot.connectionState, .connected)
        XCTAssertEqual(snapshot.planLabel, "Plus")
        XCTAssertEqual(snapshot.lines.first?.label, "Codex messages")
    }

    func testMismatchedProviderPayloadIsIgnored() throws {
        let message = ProviderWebCollectorMessage(
            type: "usagePayload",
            provider: "claude",
            pageURL: "https://chatgpt.com/",
            payload: #"{"provider":"claude","lines":[]}"#,
            errorKind: nil,
            message: nil,
            resourceURL: nil
        )

        XCTAssertEqual(
            ProviderWebCollectorMessageProcessor.process(
                message: message,
                expectedProviderId: .codex,
                pageURL: "https://chatgpt.com/"
            ),
            .ignored
        )
    }

    func testCollectorErrorIsAcceptedOnAllowedProviderPage() {
        let message = ProviderWebCollectorMessage(
            type: "collectorError",
            provider: "codex",
            pageURL: "https://chatgpt.com/",
            payload: nil,
            errorKind: "codex_usage_unavailable",
            message: "Codex session reached without usage.",
            resourceURL: nil
        )

        XCTAssertEqual(
            ProviderWebCollectorMessageProcessor.process(
                message: message,
                expectedProviderId: .codex,
                pageURL: "https://chatgpt.com/"
            ),
            .collectorError("codex_usage_unavailable")
        )
    }

    private func localHtmlFixture() throws -> String {
        let root = URL(fileURLWithPath: #filePath)
            .deletingLastPathComponent()
            .deletingLastPathComponent()
            .deletingLastPathComponent()
        let url = root
            .appendingPathComponent("test/fixtures/ios-web-collector/trusted-codex-collector.html")
        return try String(contentsOf: url, encoding: .utf8)
    }
}
