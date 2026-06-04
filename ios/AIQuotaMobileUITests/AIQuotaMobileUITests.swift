import XCTest

final class AIQuotaMobileUITests: XCTestCase {
    func testAppLaunchesToAIQuotaShell() {
        let app = XCUIApplication()
        app.launch()

        XCTAssertTrue(app.navigationBars["AI Quota"].waitForExistence(timeout: 5))
    }
}
