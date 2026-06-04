import XCTest
@testable import AIQuotaMobile

final class AIQuotaMobileTests: XCTestCase {
    func testProviderUsageDisplayValueFallsBackForMissingAmounts() {
        let line = UsageLine(
            type: "progress",
            label: "Session",
            used: nil,
            limit: nil,
            remaining: nil,
            format: UsageFormat(kind: "percent"),
            resetsAt: nil
        )

        XCTAssertEqual(line.displayValue, "--")
    }
}
