import XCTest
@testable import AIQuotaMobile

final class AIQuotaAppShellTests: XCTestCase {
    func testProviderNavigationOrderMatchesContract() {
        XCTAssertEqual(
            ProviderId.defaultOrder.map(\.displayName),
            ["Claude", "Codex", "Gemini", "Copilot", "Antigravity", "Cursor"]
        )
    }

    func testProviderDetailRoutesCompareByProvider() {
        XCTAssertEqual(AppRoute.providerDetail(.codex), AppRoute.providerDetail(.codex))
        XCTAssertNotEqual(AppRoute.providerDetail(.codex), AppRoute.providerDetail(.claude))
    }
}
