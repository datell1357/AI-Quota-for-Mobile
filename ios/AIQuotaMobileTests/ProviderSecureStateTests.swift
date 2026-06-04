import XCTest
@testable import AIQuotaMobile

final class ProviderSecureStateTests: XCTestCase {
    func testKeychainDescriptorScopesSecretsByProviderAndKind() {
        XCTAssertEqual(
            ProviderSecretDescriptor(providerId: .gemini, kind: .refreshToken).keychainAccount,
            "provider.gemini.refresh_token"
        )
        XCTAssertEqual(
            ProviderSecretDescriptor(providerId: .codex, kind: .pkceVerifier).keychainAccount,
            "provider.codex.pkce_verifier"
        )
    }

    func testWebSessionProfilesUseStableUniqueIdentifiers() {
        let profiles = ProviderId.defaultOrder.map(ProviderWebSessionProfile.profile(for:))
        let identifiers = profiles.map(\.identifier)

        XCTAssertEqual(Set(identifiers).count, ProviderId.defaultOrder.count)
        XCTAssertEqual(ProviderWebSessionProfile.profile(for: .claude).providerId, .claude)
        XCTAssertTrue(ProviderWebSessionProfile.profile(for: .claude).storageName.contains("claude"))
    }

    func testWidgetSnapshotSanitizerDropsProviderSecretsAndRawArtifacts() throws {
        let snapshot = ProviderUsageSnapshot(
            providerId: .gemini,
            connectionState: .connected,
            planLabel: "Pro",
            account: "user@example.com",
            message: "Trusted usage payload collected.",
            lines: [
                ProviderUsageLine(
                    label: "Gemini Pro",
                    remainingPercent: 0.72,
                    remainingText: "72% left",
                    resetText: "Resets tomorrow",
                    detailText: "Raw collector detail stays inside the app.",
                    severity: .normal,
                    sourceLabel: "Native collector"
                )
            ]
        )

        let envelope = ProviderWidgetSnapshotSanitizer.envelope(for: [snapshot])
        let data = try JSONEncoder().encode(envelope)
        let json = try XCTUnwrap(String(data: data, encoding: .utf8))

        XCTAssertTrue(json.contains("Gemini Pro"))
        XCTAssertFalse(json.localizedCaseInsensitiveContains("token"))
        XCTAssertFalse(json.localizedCaseInsensitiveContains("cookie"))
        XCTAssertFalse(json.localizedCaseInsensitiveContains("session"))
        XCTAssertFalse(json.localizedCaseInsensitiveContains("secret"))
        XCTAssertFalse(json.localizedCaseInsensitiveContains("authorization"))
        XCTAssertFalse(json.localizedCaseInsensitiveContains("verifier"))
        XCTAssertFalse(json.localizedCaseInsensitiveContains("rawPayload"))
        XCTAssertFalse(json.localizedCaseInsensitiveContains("html"))
    }

    func testWidgetCacheEnvelopeUsesSanitizedSchemaVersion() {
        let envelope = ProviderWidgetCacheEnvelope(
            generatedAt: "2026-06-04T00:00:00Z",
            providers: ProviderWidgetSnapshotSanitizer.sanitize([
                ProviderUsageSnapshot.disconnected(.claude)
            ])
        )

        XCTAssertEqual(envelope.schemaVersion, ProviderWidgetCacheEnvelope.currentSchemaVersion)
        XCTAssertEqual(envelope.providers.map(\.providerId), [.claude])
    }
}
