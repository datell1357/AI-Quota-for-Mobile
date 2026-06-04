import XCTest
@testable import AIQuotaMobile

final class AIQuotaDesignTokensTests: XCTestCase {
    func testMacOSThemeMatchesAndroidDefaultPalette() {
        let colors = AIQuotaDesignTokens.colors(for: .macOS)

        XCTAssertEqual(colors.appBackground, 0xFFFAF9F5)
        XCTAssertEqual(colors.primary, 0xFFCC785C)
        XCTAssertEqual(colors.trafficRed, 0xFFFF5F57)
        XCTAssertEqual(colors.trafficYellow, 0xFFFFBD2E)
        XCTAssertEqual(colors.trafficGreen, 0xFF28C840)
    }

    func testWindowsThemeMatchesAndroidClassicPalette() {
        let colors = AIQuotaDesignTokens.colors(for: .windows)

        XCTAssertEqual(colors.border, 0xFF1C293C)
        XCTAssertEqual(colors.selectedNav, 0xFFFDC800)
        XCTAssertEqual(colors.titleBar, 0xFF432DD7)
    }
}
