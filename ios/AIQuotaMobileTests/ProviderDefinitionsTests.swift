import XCTest
@testable import AIQuotaMobile

final class ProviderDefinitionsTests: XCTestCase {
    func testRegistryMirrorsAndroidProviderDefinitions() {
        XCTAssertEqual(
            ProviderDefinitionRegistry.all.map(\.providerId),
            [.claude, .codex, .gemini, .copilot, .antigravity, .cursor]
        )

        let gemini = ProviderDefinitionRegistry.definition(for: .gemini)
        XCTAssertEqual(gemini.loginStartUrl, "https://gemini.google.com/usage")
        XCTAssertEqual(gemini.preferredUsageEndpoint, "https://cloudcode-pa.googleapis.com/v1internal:retrieveUserQuota")
        XCTAssertEqual(gemini.sessionProbeUrl, "https://gemini.google.com/app")
        XCTAssertEqual(gemini.authStoreKind, .nativeToken)
        XCTAssertEqual(gemini.collectionKind, .nativeAPI)

        let cursor = ProviderDefinitionRegistry.definition(for: .cursor)
        XCTAssertEqual(cursor.authStoreKind, .tokenOrWebViewFallback)
        XCTAssertEqual(cursor.collectionKind, .nativeAPIWithWebViewFallback)
        XCTAssertEqual(cursor.preferredUsageEndpoint, "https://api2.cursor.sh/auth/poll")
    }

    func testLoginAllowedHostsAcceptOAuthAndProviderHosts() {
        XCTAssertTrue(ProviderDefinitionRegistry.isLoginNavigationAllowed(
            providerId: .claude,
            url: "https://accounts.google.com/o/oauth2/v2/auth"
        ))
        XCTAssertTrue(ProviderDefinitionRegistry.isLoginNavigationAllowed(
            providerId: .codex,
            url: "https://auth.openai.com/authorize"
        ))
        XCTAssertTrue(ProviderDefinitionRegistry.isLoginNavigationAllowed(
            providerId: .cursor,
            url: "https://api.workos.com/sso/authorize"
        ))
    }

    func testCollectorAllowedHostsRejectLoginOnlyHosts() {
        XCTAssertTrue(ProviderDefinitionRegistry.isCollectorNavigationAllowed(
            providerId: .claude,
            url: "https://www.claude.ai/api/organizations"
        ))
        XCTAssertFalse(ProviderDefinitionRegistry.isCollectorNavigationAllowed(
            providerId: .claude,
            url: "https://accounts.google.com/o/oauth2/v2/auth"
        ))
        XCTAssertFalse(ProviderDefinitionRegistry.isCollectorNavigationAllowed(
            providerId: .cursor,
            url: "https://api.workos.com/sso/authorize"
        ))
    }

    func testRegionalGoogleAccountHostsAreAcceptedForGoogleLoginProviders() {
        XCTAssertTrue(ProviderDefinitionRegistry.isLoginNavigationAllowed(
            providerId: .gemini,
            url: "https://accounts.google.co.kr/o/oauth2/v2/auth"
        ))
        XCTAssertTrue(ProviderDefinitionRegistry.isLoginNavigationAllowed(
            providerId: .antigravity,
            url: "https://accounts.google.de/signin"
        ))
        XCTAssertFalse(ProviderDefinitionRegistry.isLoginNavigationAllowed(
            providerId: .copilot,
            url: "https://accounts.google.co.kr/o/oauth2/v2/auth"
        ))
    }

    func testUnrelatedHostsAndMalformedUrlsAreRejected() {
        XCTAssertFalse(ProviderDefinitionRegistry.isAllowed(
            providerId: .codex,
            url: "https://evil-chatgpt.com/"
        ))
        XCTAssertFalse(ProviderDefinitionRegistry.isAllowed(
            providerId: .gemini,
            url: "not a url"
        ))
    }
}
