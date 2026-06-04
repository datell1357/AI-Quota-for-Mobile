import Foundation

struct NativeOAuthConfiguration: Equatable {
    let providerId: ProviderId
    let clientIdInfoKey: String
    let redirectScheme: String
    let authorizationEndpoint: String
    let tokenEndpoint: String
    let scopes: [String]

    var redirectURI: String {
        "\(redirectScheme):/oauth2redirect"
    }

    func clientId(bundle: Bundle = .main) -> String? {
        let value = bundle.object(forInfoDictionaryKey: clientIdInfoKey) as? String
        let trimmed = value?.trimmingCharacters(in: .whitespacesAndNewlines) ?? ""
        return trimmed.isEmpty || trimmed.hasPrefix("$(") ? nil : trimmed
    }

    static func configuration(for providerId: ProviderId) -> NativeOAuthConfiguration? {
        switch providerId {
        case .gemini:
            NativeOAuthConfiguration(
                providerId: .gemini,
                clientIdInfoKey: "AIQuotaGeminiIOSClientId",
                redirectScheme: "aiquota-gemini",
                authorizationEndpoint: "https://accounts.google.com/o/oauth2/v2/auth",
                tokenEndpoint: "https://oauth2.googleapis.com/token",
                scopes: [
                    "openid",
                    "email",
                    "profile",
                    "https://www.googleapis.com/auth/cloud-platform"
                ]
            )
        case .antigravity:
            NativeOAuthConfiguration(
                providerId: .antigravity,
                clientIdInfoKey: "AIQuotaAntigravityIOSClientId",
                redirectScheme: "aiquota-antigravity",
                authorizationEndpoint: "https://accounts.google.com/o/oauth2/v2/auth",
                tokenEndpoint: "https://oauth2.googleapis.com/token",
                scopes: [
                    "openid",
                    "email",
                    "profile",
                    "https://www.googleapis.com/auth/cloud-platform"
                ]
            )
        default:
            nil
        }
    }
}

struct NativeProviderHTTPResponse: Equatable {
    let statusCode: Int
    let body: String

    var isSuccess: Bool {
        (200...299).contains(statusCode)
    }
}

protocol NativeProviderHTTPClient {
    func postJSON(url: String, body: String, bearerToken: String?) async throws -> NativeProviderHTTPResponse
}

final class URLSessionNativeProviderHTTPClient: NativeProviderHTTPClient {
    private let session: URLSession

    init(session: URLSession = .shared) {
        self.session = session
    }

    func postJSON(url: String, body: String, bearerToken: String?) async throws -> NativeProviderHTTPResponse {
        var request = URLRequest(url: URL(string: url)!)
        request.httpMethod = "POST"
        request.httpBody = Data(body.utf8)
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        request.setValue("application/json", forHTTPHeaderField: "Accept")
        request.setValue("AIQuota-iOS/1.0", forHTTPHeaderField: "User-Agent")
        if let bearerToken {
            request.setValue("Bearer \(bearerToken)", forHTTPHeaderField: "Authorization")
        }

        let (data, response) = try await session.data(for: request)
        let statusCode = (response as? HTTPURLResponse)?.statusCode ?? 0
        return NativeProviderHTTPResponse(
            statusCode: statusCode,
            body: String(data: data, encoding: .utf8) ?? ""
        )
    }
}

enum NativeProviderCollectorErrorKind: String, Equatable {
    case tokenMissing = "TOKEN_MISSING"
    case tokenRefreshFailed = "TOKEN_REFRESH_FAILED"
    case backendAPIForbidden = "BACKEND_API_FORBIDDEN"
    case providerAPIFailed = "PROVIDER_API_FAILED"
    case trustedPayloadMissing = "TRUSTED_PAYLOAD_MISSING"
    case unsupported = "NATIVE_UNSUPPORTED"
}

struct NativeProviderCollectorFailure: Error, Equatable {
    let providerId: ProviderId
    let errorKind: NativeProviderCollectorErrorKind
    let message: String
    let requiresWebViewFallback: Bool

    var rawErrorKind: String {
        errorKind.rawValue
    }
}

struct NativeProviderCollectionResult: Equatable {
    let snapshot: ProviderUsageSnapshot?
    let failure: NativeProviderCollectorFailure?

    var requiresWebViewFallback: Bool {
        failure?.requiresWebViewFallback ?? false
    }

    static func success(_ snapshot: ProviderUsageSnapshot) -> NativeProviderCollectionResult {
        NativeProviderCollectionResult(snapshot: snapshot, failure: nil)
    }

    static func failed(_ failure: NativeProviderCollectorFailure) -> NativeProviderCollectionResult {
        NativeProviderCollectionResult(snapshot: nil, failure: failure)
    }
}

final class NativeProviderCollector {
    private let secretStore: ProviderSecretStore
    private let httpClient: NativeProviderHTTPClient
    private let bundle: Bundle

    init(
        secretStore: ProviderSecretStore = KeychainProviderSecretStore(),
        httpClient: NativeProviderHTTPClient = URLSessionNativeProviderHTTPClient(),
        bundle: Bundle = .main
    ) {
        self.secretStore = secretStore
        self.httpClient = httpClient
        self.bundle = bundle
    }

    func collect(providerId: ProviderId, fetchedAt: String = ISO8601DateFormatter().string(from: Date())) async -> NativeProviderCollectionResult {
        switch providerId {
        case .gemini:
            return await collectGemini(fetchedAt: fetchedAt)
        case .antigravity:
            return await collectAntigravity(fetchedAt: fetchedAt)
        case .cursor:
            return await collectCursor(fetchedAt: fetchedAt)
        default:
            return .failed(failure(
                providerId: providerId,
                errorKind: .unsupported,
                message: "Native API collection is not configured for \(providerId.displayName).",
                fallback: false
            ))
        }
    }

    func savePendingOAuthState(providerId: ProviderId, state: String, pkceVerifier: String) throws {
        try saveString(state, providerId: providerId, kind: ProviderSecretKind.oauthState)
        try saveString(pkceVerifier, providerId: providerId, kind: ProviderSecretKind.pkceVerifier)
    }

    func refreshAccessToken(providerId: ProviderId) async throws -> String? {
        guard let configuration = NativeOAuthConfiguration.configuration(for: providerId),
              let refreshToken = try loadString(providerId: providerId, kind: ProviderSecretKind.refreshToken) else {
            return nil
        }

        let body = jsonString([
            "grant_type": "refresh_token",
            "refresh_token": refreshToken,
            "client_id": configuration.clientId(bundle: bundle) ?? "",
            "redirect_uri": configuration.redirectURI
        ])
        let response = try await httpClient.postJSON(
            url: configuration.tokenEndpoint,
            body: body,
            bearerToken: nil
        )
        guard response.isSuccess,
              let payload = jsonObject(response.body),
              let accessToken = payload["access_token"] as? String,
              !accessToken.isEmpty else {
            return nil
        }

        try saveString(accessToken, providerId: providerId, kind: ProviderSecretKind.accessToken)
        if let nextRefreshToken = payload["refresh_token"] as? String, !nextRefreshToken.isEmpty {
            try saveString(nextRefreshToken, providerId: providerId, kind: ProviderSecretKind.refreshToken)
        }
        try saveString(response.body, providerId: providerId, kind: ProviderSecretKind.nativeAPICredential)
        return accessToken
    }

    private func collectGemini(fetchedAt: String) async -> NativeProviderCollectionResult {
        do {
            guard try loadString(providerId: .gemini, kind: ProviderSecretKind.refreshToken) != nil else {
                return .failed(failure(
                    providerId: .gemini,
                    errorKind: .tokenMissing,
                    message: "Gemini OAuth refresh token was unavailable.",
                    fallback: false
                ))
            }
            guard let accessToken = try await refreshAccessToken(providerId: .gemini) else {
                return .failed(failure(
                    providerId: .gemini,
                    errorKind: .tokenRefreshFailed,
                    message: "Gemini OAuth token refresh did not complete.",
                    fallback: false
                ))
            }

            let load = try await httpClient.postJSON(
                url: Self.geminiLoadURL,
                body: jsonString(["metadata": ["source": "aiquota-ios"]]),
                bearerToken: accessToken
            )
            guard load.isSuccess, let loadJson = jsonObject(load.body) else {
                return .failed(apiFailure(providerId: .gemini, response: load, method: "loadCodeAssist", fallback: false))
            }

            let projectId = string(loadJson, "cloudaicompanionProject")
            let quota = try await httpClient.postJSON(
                url: Self.geminiQuotaURL,
                body: jsonString(["project": projectId ?? ""]),
                bearerToken: accessToken
            )
            guard quota.isSuccess, let quotaJson = jsonObject(quota.body) else {
                return .failed(apiFailure(providerId: .gemini, response: quota, method: "retrieveUserQuota", fallback: false))
            }

            var payloadObject: [String: Any] = [
                "limits": array(quotaJson, "buckets") ?? array(quotaJson, "limits") ?? []
            ]
            if let plan = geminiPlan(from: loadJson) {
                payloadObject["plan"] = plan
            }
            if let email = string(loadJson, "email") {
                payloadObject["account"] = email
            }
            let payload = jsonString(payloadObject)
            guard let snapshot = ProviderUsageNormalizer.normalize(
                providerId: .gemini,
                rawPayload: payload,
                source: .providerApi,
                fetchedAt: fetchedAt
            ) else {
                return .failed(failure(
                    providerId: .gemini,
                    errorKind: .trustedPayloadMissing,
                    message: "Gemini retrieveUserQuota returned no trusted quota buckets.",
                    fallback: false
                ))
            }
            return .success(snapshot)
        } catch {
            return .failed(failure(
                providerId: .gemini,
                errorKind: .tokenRefreshFailed,
                message: "Gemini native OAuth collection failed.",
                fallback: false
            ))
        }
    }

    private func collectAntigravity(fetchedAt: String) async -> NativeProviderCollectionResult {
        do {
            guard try loadString(providerId: .antigravity, kind: ProviderSecretKind.refreshToken) != nil else {
                return .failed(failure(
                    providerId: .antigravity,
                    errorKind: .tokenMissing,
                    message: "Antigravity OAuth refresh token was unavailable.",
                    fallback: false
                ))
            }
            guard let accessToken = try await refreshAccessToken(providerId: .antigravity) else {
                return .failed(failure(
                    providerId: .antigravity,
                    errorKind: .tokenRefreshFailed,
                    message: "Antigravity OAuth token refresh did not complete.",
                    fallback: false
                ))
            }

            let load = try await httpClient.postJSON(
                url: Self.antigravityLoadURL,
                body: jsonString(["metadata": ["source": "aiquota-ios"]]),
                bearerToken: accessToken
            )
            let loadJson = load.isSuccess ? jsonObject(load.body) : nil
            let projectId = loadJson.flatMap { string($0, "cloudaicompanionProject") }
            let models = try await httpClient.postJSON(
                url: Self.antigravityModelsURL,
                body: jsonString(["project": projectId ?? ""]),
                bearerToken: accessToken
            )
            guard models.isSuccess, let modelsJson = jsonObject(models.body) else {
                return .failed(apiFailure(providerId: .antigravity, response: models, method: "fetchAvailableModels", fallback: false))
            }

            var payloadObject: [String: Any] = [
                "quota": ["windows": antigravityWindows(from: modelsJson)]
            ]
            if let plan = antigravityPlan(from: loadJson) {
                payloadObject["plan"] = plan
            }
            let payload = jsonString(payloadObject)
            guard let snapshot = ProviderUsageNormalizer.normalize(
                providerId: .antigravity,
                rawPayload: payload,
                source: .providerApi,
                fetchedAt: fetchedAt
            ) else {
                return .failed(failure(
                    providerId: .antigravity,
                    errorKind: .trustedPayloadMissing,
                    message: "Antigravity fetchAvailableModels returned no trusted model quotas.",
                    fallback: false
                ))
            }
            return .success(snapshot)
        } catch {
            return .failed(failure(
                providerId: .antigravity,
                errorKind: .tokenRefreshFailed,
                message: "Antigravity native OAuth collection failed.",
                fallback: false
            ))
        }
    }

    private func collectCursor(fetchedAt: String) async -> NativeProviderCollectionResult {
        do {
            guard let token = try loadString(providerId: .cursor, kind: ProviderSecretKind.accessToken)
                    ?? loadString(providerId: .cursor, kind: ProviderSecretKind.nativeAPICredential) else {
                return .failed(failure(
                    providerId: .cursor,
                    errorKind: .tokenMissing,
                    message: "Cursor native API credential was unavailable.",
                    fallback: true
                ))
            }
            let response = try await httpClient.postJSON(
                url: Self.cursorUsageURL,
                body: jsonString(["source": "aiquota-ios"]),
                bearerToken: token
            )
            guard response.isSuccess else {
                return .failed(apiFailure(providerId: .cursor, response: response, method: "cursorUsage", fallback: true))
            }
            guard let snapshot = ProviderUsageNormalizer.normalize(
                providerId: .cursor,
                rawPayload: response.body,
                source: .networkResponse,
                fetchedAt: fetchedAt
            ) else {
                return .failed(failure(
                    providerId: .cursor,
                    errorKind: .trustedPayloadMissing,
                    message: "Cursor native API returned no trusted usage payload.",
                    fallback: true
                ))
            }
            return .success(snapshot)
        } catch {
            return .failed(failure(
                providerId: .cursor,
                errorKind: .providerAPIFailed,
                message: "Cursor native API collection failed.",
                fallback: true
            ))
        }
    }

    private func apiFailure(
        providerId: ProviderId,
        response: NativeProviderHTTPResponse,
        method: String,
        fallback: Bool
    ) -> NativeProviderCollectorFailure {
        failure(
            providerId: providerId,
            errorKind: response.statusCode == 403 ? .backendAPIForbidden : .providerAPIFailed,
            message: "\(providerId.displayName) \(method) failed with HTTP \(response.statusCode).",
            fallback: fallback
        )
    }

    private func failure(
        providerId: ProviderId,
        errorKind: NativeProviderCollectorErrorKind,
        message: String,
        fallback: Bool
    ) -> NativeProviderCollectorFailure {
        NativeProviderCollectorFailure(
            providerId: providerId,
            errorKind: errorKind,
            message: message,
            requiresWebViewFallback: fallback
        )
    }

    private func saveString(_ value: String, providerId: ProviderId, kind: ProviderSecretKind) throws {
        try secretStore.save(Data(value.utf8), providerId: providerId, kind: kind)
    }

    private func loadString(providerId: ProviderId, kind: ProviderSecretKind) throws -> String? {
        guard let data = try secretStore.load(providerId: providerId, kind: kind) else { return nil }
        return String(data: data, encoding: .utf8)
    }

    private static let geminiLoadURL = "https://cloudcode-pa.googleapis.com/v1internal:loadCodeAssist"
    private static let geminiQuotaURL = "https://cloudcode-pa.googleapis.com/v1internal:retrieveUserQuota"
    private static let antigravityLoadURL = "https://daily-cloudcode-pa.googleapis.com/v1internal:loadCodeAssist"
    private static let antigravityModelsURL = "https://daily-cloudcode-pa.googleapis.com/v1internal:fetchAvailableModels"
    private static let cursorUsageURL = "https://api2.cursor.sh/auth/poll"
}

private func jsonObject(_ raw: String) -> [String: Any]? {
    guard let data = raw.data(using: .utf8) else { return nil }
    return (try? JSONSerialization.jsonObject(with: data)) as? [String: Any]
}

private func jsonString(_ object: [String: Any]) -> String {
    guard JSONSerialization.isValidJSONObject(object),
          let data = try? JSONSerialization.data(withJSONObject: object, options: [.sortedKeys]),
          let string = String(data: data, encoding: .utf8) else {
        return "{}"
    }
    return string
}

private func string(_ object: [String: Any], _ key: String) -> String? {
    if let value = object[key] as? String {
        return value.isEmpty ? nil : value
    }
    if let object = object[key] as? [String: Any] {
        return string(object, "id") ?? string(object, "name")
    }
    return nil
}

private func array(_ object: [String: Any], _ key: String) -> [Any]? {
    object[key] as? [Any]
}

private func geminiPlan(from loadJson: [String: Any]) -> String? {
    if let tier = loadJson["paidTier"] as? [String: Any],
       let name = string(tier, "name"),
       name.lowercased().contains("pro") {
        return "GEMINI_PRO"
    }
    if let subscription = loadJson["subscription"] as? [String: Any] {
        return string(subscription, "tier") ?? string(subscription, "name")
    }
    return string(loadJson, "plan")
}

private func antigravityPlan(from loadJson: [String: Any]?) -> String? {
    guard let loadJson else { return nil }
    if let paidTier = loadJson["paidTier"] as? [String: Any] {
        return string(paidTier, "displayName") ?? string(paidTier, "name")
    }
    if let subscription = loadJson["subscription"] as? [String: Any] {
        return string(subscription, "displayName") ?? string(subscription, "name")
    }
    return string(loadJson, "plan")
}

private func antigravityWindows(from modelsJson: [String: Any]) -> [[String: Any]] {
    let models = modelsJson["models"] as? [String: Any] ?? modelsJson
    return models.values.compactMap { value in
        guard let model = value as? [String: Any],
              let quotaInfo = model["quotaInfo"] as? [String: Any],
              let label = string(model, "displayName") else {
            return nil
        }
        return [
            "displayName": label,
            "remainingFraction": quotaInfo["remainingFraction"] ?? quotaInfo["remaining_fraction"] ?? NSNull(),
            "resetTime": quotaInfo["resetTime"] ?? quotaInfo["reset_time"] ?? NSNull(),
            "unit": "requests"
        ]
    }
}
