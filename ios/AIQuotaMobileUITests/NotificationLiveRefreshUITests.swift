import XCTest

final class NotificationLiveRefreshUITests: XCTestCase {
    override func setUpWithError() throws {
        continueAfterFailure = false
    }

    func testNotificationPermissionDisabledPathShowsSettingsCopy() {
        let app = XCUIApplication()
        app.launchArguments += [
            "-AppleLanguages", "(en)",
            "-AppleLocale", "en_US",
            "-AIQuotaNotificationPermissionDenied"
        ]
        app.launch()
        openSettings(in: app)

        XCTAssertTrue(app.staticTexts["iOS notifications"].waitForExistence(timeout: 5))
        XCTAssertTrue(app.staticTexts["Notifications are disabled in iOS Settings."].waitForExistence(timeout: 5))
        XCTAssertTrue(app.staticTexts["Widgets and background refresh continue as passive iOS surfaces."].waitForExistence(timeout: 5))
    }

    func testNotificationPermissionAllowedPathShowsLocalNotificationCopy() {
        let app = XCUIApplication()
        app.launchArguments += [
            "-AppleLanguages", "(en)",
            "-AppleLocale", "en_US",
            "-AIQuotaNotificationPermissionGranted"
        ]
        app.launch()
        openSettings(in: app)

        XCTAssertTrue(app.staticTexts["Local quota notifications"].waitForExistence(timeout: 5))
        XCTAssertTrue(app.staticTexts["Local notifications are enabled."].waitForExistence(timeout: 5))
        XCTAssertTrue(app.staticTexts["iOS uses local notifications, widgets, and background refresh instead of an always-on notification."].waitForExistence(timeout: 5))
    }

    private func openSettings(in app: XCUIApplication) {
        let signInButton = app.buttons["Continue with Google"]
        if signInButton.waitForExistence(timeout: 3) {
            signInButton.tap()
        }
        app.buttons["Settings"].tap()
    }
}
