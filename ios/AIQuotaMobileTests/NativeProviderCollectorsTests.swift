import XCTest
@testable import AIQuotaMobile

final class NativeProviderCollectorsTests: XCTestCase {
    func testOAuthConfigurationUsesIOSClientIdsAndRedirectSchemes() throws {
        let gemini = try XCTUnwrap(NativeOAuthConfiguration.configuration(for: .gemini))
        let antigravity = try XCTUnwrap(NativeOAuthConfiguration.configuration(for: .antigravity))

        XCTAssertEqual(gemini.clientIdInfoKey, "AIQuotaGeminiIOSClientId")
        XCTAssertEqual(gemini.redirectScheme, "aiquota-gemini")
        XCTAssertEqual(gemini.redirectURI, "aiquota-gemini:/oauth2redirect")
        XCTAssertEqual(antigravity.clientIdInfoKey, "AIQuotaAntigravityIOSClientId")
        XCTAssertEqual(antigravity.redirectScheme, "aiquota-antigravity")
        XCTAssertEqual(antigravity.redirectURI, "aiquota-antigravity:/oauth2redirect")
    }

    func testGeminiRefreshesTokenAndNormalizesTrustedPayload() async throws {
        let store = InMemoryProviderSecretStore()
        try store.saveString("refresh-gemini", providerId: .gemini, kind: .refreshToken)
        let http = MockNativeProviderHTTPClient(responses: [
            .init(statusCode: 200, body: #"{"access_token":"access-gemini","refresh_token":"refresh-next","expires_in":3600}"#),
            .init(statusCode: 200, body: #"{"cloudaicompanionProject":"project-123","paidTier":{"name":"gemini-codeassist-google-one-ai-pro"}}"#),
            .init(statusCode: 200, body: #"{"buckets":[{"modelId":"gemini-2.5-pro","remainingFraction":0.98,"resetTime":"2026-05-20T14:42:49Z"}]}"#)
        ])
        let collector = NativeProviderCollector(secretStore: store, httpClient: http)

        let result = await collector.collect(providerId: .gemini, fetchedAt: "2026-06-04T00:00:00Z")

        XCTAssertNil(result.failure)
        XCTAssertEqual(result.snapshot?.providerId, .gemini)
        XCTAssertEqual(result.snapshot?.connectionState, .connected)
        XCTAssertEqual(result.snapshot?.planLabel, "Pro")
        XCTAssertEqual(result.snapshot?.lines.first?.label, "2.5 pro")
        XCTAssertEqual(result.snapshot?.lines.first?.remainingPercent ?? -1, 0.98, accuracy: 0.001)
        XCTAssertNotNil(ProviderUsageNormalizer.normalize(
            providerId: .gemini,
            rawPayload: #"{"plan":"standard-tier","limits":[{"modelId":"gemini-2.5-pro","remainingFraction":0.98}]}"#,
            source: .providerApi
        ))
        XCTAssertEqual(try store.loadString(providerId: .gemini, kind: .accessToken), "access-gemini")
        XCTAssertEqual(try store.loadString(providerId: .gemini, kind: .refreshToken), "refresh-next")
        XCTAssertTrue(http.requests.contains { $0.url.contains("retrieveUserQuota") })
    }

    func testAntigravityPrivateApiForbiddenMapsWithoutReloginLoop() async throws {
        let store = InMemoryProviderSecretStore()
        try store.saveString("refresh-antigravity", providerId: .antigravity, kind: .refreshToken)
        let http = MockNativeProviderHTTPClient(responses: [
            .init(statusCode: 200, body: #"{"access_token":"access-antigravity","refresh_token":"refresh-next","expires_in":3600}"#),
            .init(statusCode: 200, body: #"{"cloudaicompanionProject":"project-123","paidTier":{"name":"Google AI Pro"}}"#),
            .init(statusCode: 403, body: #"{"error":{"status":"PERMISSION_DENIED"}}"#)
        ])
        let collector = NativeProviderCollector(secretStore: store, httpClient: http)

        let result = await collector.collect(providerId: .antigravity, fetchedAt: "2026-06-04T00:00:00Z")

        XCTAssertNil(result.snapshot)
        XCTAssertEqual(result.failure?.errorKind, .backendAPIForbidden)
        XCTAssertEqual(result.failure?.rawErrorKind, "BACKEND_API_FORBIDDEN")
        XCTAssertFalse(result.requiresWebViewFallback)
        XCTAssertTrue(http.requests.contains { $0.url.contains("fetchAvailableModels") })
    }

    func testCursorNativeFailureRequestsWebViewFallback() async throws {
        let store = InMemoryProviderSecretStore()
        let http = MockNativeProviderHTTPClient(responses: [])
        let collector = NativeProviderCollector(secretStore: store, httpClient: http)

        let result = await collector.collect(providerId: .cursor, fetchedAt: "2026-06-04T00:00:00Z")

        XCTAssertNil(result.snapshot)
        XCTAssertEqual(result.failure?.errorKind, .tokenMissing)
        XCTAssertTrue(result.requiresWebViewFallback)
    }
}

private final class InMemoryProviderSecretStore: ProviderSecretStore {
    private var storage: [String: Data] = [:]

    func save(_ data: Data, providerId: ProviderId, kind: ProviderSecretKind) throws {
        storage[key(providerId, kind)] = data
    }

    func load(providerId: ProviderId, kind: ProviderSecretKind) throws -> Data? {
        storage[key(providerId, kind)]
    }

    func delete(providerId: ProviderId, kind: ProviderSecretKind) throws {
        storage.removeValue(forKey: key(providerId, kind))
    }

    func saveString(_ value: String, providerId: ProviderId, kind: ProviderSecretKind) throws {
        try save(Data(value.utf8), providerId: providerId, kind: kind)
    }

    func loadString(providerId: ProviderId, kind: ProviderSecretKind) throws -> String? {
        guard let data = try load(providerId: providerId, kind: kind) else { return nil }
        return String(data: data, encoding: .utf8)
    }

    private func key(_ providerId: ProviderId, _ kind: ProviderSecretKind) -> String {
        "\(providerId.storageId).\(kind.rawValue)"
    }
}

private final class MockNativeProviderHTTPClient: NativeProviderHTTPClient {
    struct Request {
        let url: String
        let body: String
        let bearerToken: String?
    }

    private var responses: [NativeProviderHTTPResponse]
    private(set) var requests: [Request] = []

    init(responses: [NativeProviderHTTPResponse]) {
        self.responses = responses
    }

    func postJSON(url: String, body: String, bearerToken: String?) async throws -> NativeProviderHTTPResponse {
        requests.append(Request(url: url, body: body, bearerToken: bearerToken))
        guard !responses.isEmpty else {
            return NativeProviderHTTPResponse(statusCode: 500, body: "{}")
        }
        return responses.removeFirst()
    }
}
