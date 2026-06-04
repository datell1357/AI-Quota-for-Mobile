import XCTest

final class DashboardReorderUITests: XCTestCase {
    func testDragMiddleProviderBeforeAndAfterAdjacentProviderPersists() {
        let app = XCUIApplication()
        app.launch()

        let signInButton = app.buttons["Continue with Google"]
        if signInButton.waitForExistence(timeout: 3) {
            signInButton.tap()
        }

        let codex = app.otherElements["dashboard-card-codex"]
        let gemini = app.otherElements["dashboard-card-gemini"]
        let copilot = app.otherElements["dashboard-card-copilot"]

        XCTAssertTrue(codex.waitForExistence(timeout: 5))
        XCTAssertTrue(gemini.waitForExistence(timeout: 5))
        XCTAssertTrue(copilot.waitForExistence(timeout: 5))

        codex.press(forDuration: 0.35, thenDragTo: copilot)
        XCTAssertTrue(
            app.otherElements["dashboard-order-claude-gemini-codex-copilot-antigravity-cursor"]
                .waitForExistence(timeout: 3)
        )

        codex.press(forDuration: 0.35, thenDragTo: gemini)
        XCTAssertTrue(
            app.otherElements["dashboard-order-claude-codex-gemini-copilot-antigravity-cursor"]
                .waitForExistence(timeout: 3)
        )
    }
}
