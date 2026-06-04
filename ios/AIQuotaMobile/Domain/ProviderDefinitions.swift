import Foundation

enum ProviderAuthStoreKind: String {
    case webviewProfile = "WEBVIEW_PROFILE"
    case nativeToken = "NATIVE_TOKEN"
    case tokenOrWebViewFallback = "TOKEN_OR_WEBVIEW_FALLBACK"
    case backendGateway = "BACKEND_GATEWAY"
}

enum ProviderCollectionKind: String {
    case webviewCollector = "WEBVIEW_COLLECTOR"
    case nativeAPI = "NATIVE_API"
    case nativeAPIWithWebViewFallback = "NATIVE_API_WITH_WEBVIEW_FALLBACK"
    case backendGateway = "BACKEND_GATEWAY"
}

struct ProviderDefinition: Equatable {
    let providerId: ProviderId
    let loginStartUrl: String
    let allowedHosts: Set<String>
    let loginAllowedHosts: Set<String>
    let collectorAllowedHosts: Set<String>
    let preferredUsageEndpoint: String
    let authStoreKind: ProviderAuthStoreKind
    let collectionKind: ProviderCollectionKind
    let sessionProbeUrl: String

    init(
        providerId: ProviderId,
        loginStartUrl: String,
        allowedHosts: Set<String>,
        loginAllowedHosts: Set<String>? = nil,
        collectorAllowedHosts: Set<String>? = nil,
        preferredUsageEndpoint: String,
        authStoreKind: ProviderAuthStoreKind,
        collectionKind: ProviderCollectionKind,
        sessionProbeUrl: String
    ) {
        self.providerId = providerId
        self.loginStartUrl = loginStartUrl
        self.allowedHosts = allowedHosts
        self.loginAllowedHosts = loginAllowedHosts ?? allowedHosts
        self.collectorAllowedHosts = collectorAllowedHosts ?? allowedHosts
        self.preferredUsageEndpoint = preferredUsageEndpoint
        self.authStoreKind = authStoreKind
        self.collectionKind = collectionKind
        self.sessionProbeUrl = sessionProbeUrl
    }
}

enum ProviderDefinitionRegistry {
    static let all: [ProviderDefinition] = [
        ProviderDefinition(
            providerId: .claude,
            loginStartUrl: "https://claude.ai/login",
            allowedHosts: Set([
                "claude.ai",
                "www.claude.ai",
                "accounts.google.com",
                "myaccount.google.com",
                "google.com",
                "www.google.com",
                "oauth2.googleapis.com",
                "cloudcode-pa.googleapis.com",
                "apis.google.com",
                "accounts.youtube.com",
                "play.google.com",
                "challenges.cloudflare.com",
                "www.recaptcha.net",
                "recaptcha.net",
                "ssl.gstatic.com",
                "www.gstatic.com"
            ]),
            collectorAllowedHosts: Set([
                "claude.ai",
                "www.claude.ai"
            ]),
            preferredUsageEndpoint: "https://claude.ai/api/organizations/{organizationId}/usage",
            authStoreKind: .webviewProfile,
            collectionKind: .webviewCollector,
            sessionProbeUrl: "https://claude.ai/"
        ),
        ProviderDefinition(
            providerId: .codex,
            loginStartUrl: "https://chatgpt.com/auth/login",
            allowedHosts: Set([
                "chatgpt.com",
                "chat.openai.com",
                "auth.openai.com",
                "accounts.google.com",
                "accounts.youtube.com",
                "play.google.com",
                "appleid.apple.com",
                "challenges.cloudflare.com"
            ]),
            collectorAllowedHosts: Set([
                "chatgpt.com",
                "chat.openai.com"
            ]),
            preferredUsageEndpoint: "https://chatgpt.com/",
            authStoreKind: .webviewProfile,
            collectionKind: .webviewCollector,
            sessionProbeUrl: "https://chatgpt.com/api/auth/session"
        ),
        ProviderDefinition(
            providerId: .gemini,
            loginStartUrl: "https://gemini.google.com/usage",
            allowedHosts: Set([
                "accounts.google.com",
                "myaccount.google.com",
                "google.com",
                "www.google.com",
                "oauth2.googleapis.com",
                "gemini.google.com",
                "accounts.youtube.com",
                "play.google.com",
                "challenges.cloudflare.com",
                "www.recaptcha.net",
                "recaptcha.net",
                "www.gstatic.com",
                "ssl.gstatic.com"
            ]),
            collectorAllowedHosts: Set([
                "gemini.google.com"
            ]),
            preferredUsageEndpoint: "https://cloudcode-pa.googleapis.com/v1internal:retrieveUserQuota",
            authStoreKind: .nativeToken,
            collectionKind: .nativeAPI,
            sessionProbeUrl: "https://gemini.google.com/app"
        ),
        ProviderDefinition(
            providerId: .copilot,
            loginStartUrl: "https://github.com/settings/copilot/features",
            allowedHosts: Set([
                "github.com",
                "api.github.com",
                "github.githubassets.com",
                "githubassets.com",
                "githubusercontent.com",
                "objects.githubusercontent.com",
                "avatars.githubusercontent.com"
            ]),
            collectorAllowedHosts: Set([
                "github.com"
            ]),
            preferredUsageEndpoint: "https://github.com/github-copilot/chat/entitlement",
            authStoreKind: .webviewProfile,
            collectionKind: .webviewCollector,
            sessionProbeUrl: "https://github.com/settings/copilot/features"
        ),
        ProviderDefinition(
            providerId: .antigravity,
            loginStartUrl: "https://antigravity.google/",
            allowedHosts: Set([
                "antigravity.google",
                "www.antigravity.google",
                "accounts.google.com",
                "myaccount.google.com",
                "google.com",
                "www.google.com",
                "oauth2.googleapis.com",
                "apis.google.com",
                "accounts.youtube.com",
                "play.google.com",
                "challenges.cloudflare.com",
                "www.recaptcha.net",
                "recaptcha.net",
                "ssl.gstatic.com",
                "www.gstatic.com"
            ]),
            collectorAllowedHosts: Set([
                "antigravity.google",
                "www.antigravity.google"
            ]),
            preferredUsageEndpoint: "https://daily-cloudcode-pa.googleapis.com/v1internal:fetchAvailableModels",
            authStoreKind: .nativeToken,
            collectionKind: .nativeAPI,
            sessionProbeUrl: "https://antigravity.google/"
        ),
        ProviderDefinition(
            providerId: .cursor,
            loginStartUrl: "https://cursor.com/dashboard",
            allowedHosts: Set([
                "cursor.com",
                "www.cursor.com",
                "cursor.sh",
                "api2.cursor.sh",
                "authenticate.cursor.sh",
                "authenticator.cursor.sh",
                "api.workos.com",
                "auth.workos.com",
                "workos.com",
                "accounts.google.com",
                "myaccount.google.com",
                "google.com",
                "www.google.com",
                "oauth2.googleapis.com",
                "accounts.youtube.com",
                "play.google.com",
                "challenges.cloudflare.com",
                "www.recaptcha.net",
                "recaptcha.net",
                "ssl.gstatic.com",
                "www.gstatic.com",
                "github.com",
                "github.githubassets.com",
                "githubassets.com",
                "githubusercontent.com"
            ]),
            collectorAllowedHosts: Set([
                "cursor.com",
                "www.cursor.com"
            ]),
            preferredUsageEndpoint: "https://api2.cursor.sh/auth/poll",
            authStoreKind: .tokenOrWebViewFallback,
            collectionKind: .nativeAPIWithWebViewFallback,
            sessionProbeUrl: "https://cursor.com/dashboard"
        )
    ]

    static func definition(for providerId: ProviderId) -> ProviderDefinition {
        guard let definition = all.first(where: { $0.providerId == providerId }) else {
            preconditionFailure("Missing provider definition for \(providerId.storageId)")
        }
        return definition
    }

    static func isAllowed(providerId: ProviderId, url: String) -> Bool {
        isLoginNavigationAllowed(providerId: providerId, url: url) ||
            isCollectorNavigationAllowed(providerId: providerId, url: url)
    }

    static func isLoginNavigationAllowed(providerId: ProviderId, url: String) -> Bool {
        guard let host = host(of: url) else { return false }
        let definition = definition(for: providerId)
        if definition.loginAllowedHosts.contains("accounts.google.com") && isGoogleAccountHost(host) {
            return true
        }
        return isHostAllowed(host, allowedHosts: definition.loginAllowedHosts)
    }

    static func isCollectorNavigationAllowed(providerId: ProviderId, url: String) -> Bool {
        guard let host = host(of: url) else { return false }
        return isHostAllowed(host, allowedHosts: definition(for: providerId).collectorAllowedHosts)
    }

    private static func isHostAllowed(_ host: String, allowedHosts: Set<String>) -> Bool {
        allowedHosts.contains { allowedHost in
            host == allowedHost || host.hasSuffix(".\(allowedHost)")
        }
    }

    private static func host(of url: String) -> String? {
        URLComponents(string: url)?
            .host?
            .lowercased(with: Locale(identifier: "en_US_POSIX"))
    }

    private static func isGoogleAccountHost(_ host: String) -> Bool {
        let range = NSRange(location: 0, length: host.utf16.count)
        return googleAccountHost.firstMatch(in: host, options: [], range: range) != nil
    }

    private static let googleAccountHost = try! NSRegularExpression(
        pattern: #"^accounts\.google\.(?:com|[a-z]{2}|co\.[a-z]{2}|com\.[a-z]{2})$"#
    )
}
