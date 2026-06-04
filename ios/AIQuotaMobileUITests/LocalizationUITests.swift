import XCTest

final class LocalizationUITests: XCTestCase {
    func testKoreanLaunchShowsKoreanNavigationLabels() {
        let app = XCUIApplication()
        app.launchArguments += ["-AppleLanguages", "(ko)", "-AppleLocale", "ko_KR"]
        app.launch()

        let signInButton = app.buttons["Continue with Google"]
        if signInButton.waitForExistence(timeout: 3) {
            signInButton.tap()
        }

        XCTAssertTrue(app.buttons["홈"].waitForExistence(timeout: 5))
        XCTAssertTrue(app.buttons["설정"].waitForExistence(timeout: 5))
    }

    func testEnglishLaunchShowsEnglishNavigationLabels() {
        let app = XCUIApplication()
        app.launchArguments += ["-AppleLanguages", "(en)", "-AppleLocale", "en_US"]
        app.launch()

        let signInButton = app.buttons["Continue with Google"]
        if signInButton.waitForExistence(timeout: 3) {
            signInButton.tap()
        }

        XCTAssertTrue(app.buttons["Home"].waitForExistence(timeout: 5))
        XCTAssertTrue(app.buttons["Settings"].waitForExistence(timeout: 5))
    }
}
