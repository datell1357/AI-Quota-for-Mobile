import Foundation
import Combine
import WebKit

struct ProviderWebCollectorMessage: Codable, Equatable {
    let type: String
    let provider: String?
    let pageURL: String?
    let payload: String?
    let errorKind: String?
    let message: String?
    let resourceURL: String?
}

enum ProviderWebCollectorBridgeEvent: Equatable {
    case usagePayload(String)
    case collectorError(String)
    case resourceObserved(String)
    case ignored
}

enum ProviderWebCollectorMessageProcessor {
    static func process(
        message: ProviderWebCollectorMessage,
        expectedProviderId: ProviderId,
        pageURL: String
    ) -> ProviderWebCollectorBridgeEvent {
        switch message.type {
        case "usagePayload":
            guard ProviderWebCollectorPolicy.shouldAcceptCollectorPayload(
                providerId: expectedProviderId,
                pageURL: pageURL,
                rawPayload: message.payload ?? "",
                payloadProvider: message.provider
            ) else {
                return .ignored
            }
            return .usagePayload(message.payload ?? "")
        case "collectorError":
            guard ProviderWebCollectorPolicy.shouldAcceptCollectorError(
                providerId: expectedProviderId,
                pageURL: pageURL
            ) else {
                return .ignored
            }
            return .collectorError(message.errorKind?.isEmpty == false ? message.errorKind! : "collector_error")
        case "resourceObserved":
            guard let resourceURL = message.resourceURL else { return .ignored }
            guard ProviderWebCollectorPolicy.shouldRunCollectorFromResource(
                providerId: expectedProviderId,
                pageURL: pageURL,
                resourceURL: resourceURL
            ) else {
                return .ignored
            }
            return .resourceObserved(resourceURL)
        default:
            return .ignored
        }
    }
}

enum ProviderWebCollectorPolicy {
    static func shouldRunCollector(providerId: ProviderId, pageURL: String, pageText: String) -> Bool {
        guard let components = URLComponents(string: pageURL),
              let host = components.host?.lowercased(with: Locale(identifier: "en_US_POSIX"))
        else {
            if [.copilot, .gemini, .antigravity].contains(providerId) {
                return pageURL == "about:blank"
            }
            return false
        }

        let path = components.path.lowercased()
        let text = pageText.lowercased()
        switch providerId {
        case .claude:
            return host.hasSuffix("claude.ai") &&
                !path.contains("login") &&
                !path.contains("logout") &&
                (path == "/" || path == "/new" || text.contains("claude"))
        case .codex:
            return (host == "chatgpt.com" || host.hasSuffix(".chatgpt.com") || host == "chat.openai.com") &&
                path != "/auth/login" &&
                !looksLikeChatGPTLoginText(pageText)
        case .gemini:
            return host == "gemini.google.com" &&
                (path == "/" || path.hasPrefix("/app") || path.hasPrefix("/usage"))
        case .copilot:
            return host == "github.com" &&
                !path.hasPrefix("/login") &&
                !path.hasPrefix("/sessions") &&
                !path.hasPrefix("/session") &&
                !path.contains("two-factor") &&
                (path.hasPrefix("/settings/copilot") ||
                    path.hasPrefix("/settings/billing/premium_requests_usage") ||
                    path.hasPrefix("/github-copilot"))
        case .antigravity:
            return (host == "antigravity.google" || host == "www.antigravity.google") &&
                !path.hasPrefix("/docs") &&
                !path.contains("login") &&
                !path.contains("signin")
        case .cursor:
            return (host == "cursor.com" || host == "www.cursor.com") &&
                (path.contains("dashboard") ||
                    path.contains("settings") ||
                    path.contains("account") ||
                    path.contains("billing"))
        }
    }

    static func shouldRunCollectorFromResource(
        providerId: ProviderId,
        pageURL: String,
        resourceURL: String
    ) -> Bool {
        guard shouldRunCollector(providerId: providerId, pageURL: pageURL, pageText: "") else { return false }
        guard ProviderDefinitionRegistry.isCollectorNavigationAllowed(providerId: providerId, url: resourceURL) else {
            return false
        }
        guard let components = URLComponents(string: resourceURL),
              let host = components.host?.lowercased(with: Locale(identifier: "en_US_POSIX"))
        else {
            return false
        }
        let path = components.path.lowercased()
        switch providerId {
        case .claude:
            return path == "/api/account_profile" ||
                path == "/api/organizations" ||
                path == "/api/organizations/me" ||
                (path.hasPrefix("/api/bootstrap/") && path.hasSuffix("/current_user_access")) ||
                (path.hasPrefix("/api/organizations/") && path.hasSuffix("/subscription_details"))
        case .codex:
            return path == "/api/auth/session" ||
                path == "/backend-api/subscriptions" ||
                path == "/backend-api/me" ||
                path.hasPrefix("/backend-api/accounts/check")
        case .cursor:
            return path == "/api/auth/stripe" ||
                path == "/api/usage" ||
                path == "/api/auth/usage" ||
                path == "/api/usage-summary" ||
                path == "/api/dashboard/get-credit-grants-balance"
        case .gemini:
            return (host == "cloudcode-pa.googleapis.com" && path.contains("v1internal")) ||
                (host == "gemini.google.com" && (path.hasPrefix("/app") || path.hasPrefix("/usage")))
        case .copilot:
            return path == "/github-copilot/chat/entitlement" ||
                path == "/github-copilot/chat/token" ||
                path == "/settings/billing/premium_requests_usage" ||
                path == "/settings/billing/copilot_usage_card" ||
                path == "/copilot_internal/user"
        case .antigravity:
            return path.contains("usage") || path.contains("quota") || path.contains("plan")
        }
    }

    static func shouldAcceptCollectorPayload(providerId: ProviderId, pageURL: String) -> Bool {
        if [.copilot, .gemini, .antigravity].contains(providerId) && pageURL == "about:blank" {
            return true
        }
        guard providerId != .claude else {
            guard let components = URLComponents(string: pageURL),
                  let host = components.host?.lowercased(with: Locale(identifier: "en_US_POSIX"))
            else { return false }
            let path = components.path.lowercased()
            return host.hasSuffix("claude.ai") &&
                !path.contains("login") &&
                !path.contains("logout")
        }
        return shouldRunCollector(providerId: providerId, pageURL: pageURL, pageText: "")
    }

    static func shouldAcceptCollectorPayload(
        providerId: ProviderId,
        pageURL: String,
        rawPayload: String,
        payloadProvider: String?
    ) -> Bool {
        guard shouldAcceptCollectorPayload(providerId: providerId, pageURL: pageURL) else { return false }
        let providerFromEnvelope = payloadProvider?.trimmingCharacters(in: .whitespacesAndNewlines).lowercased()
        if providerFromEnvelope == providerId.storageId {
            return true
        }
        guard let data = rawPayload.data(using: .utf8),
              let json = try? JSONSerialization.jsonObject(with: data) as? [String: Any],
              let provider = (json["provider"] as? String)?
                .trimmingCharacters(in: .whitespacesAndNewlines)
                .lowercased()
        else {
            return false
        }
        return provider == providerId.storageId
    }

    static func shouldAcceptCollectorError(providerId: ProviderId, pageURL: String) -> Bool {
        shouldAcceptCollectorPayload(providerId: providerId, pageURL: pageURL) ||
            isRefreshLoginPage(providerId: providerId, pageURL: pageURL)
    }

    static func buildCollectorBootstrapScript(providerId: ProviderId) -> String {
        """
        (function() {
          if (window.__aiQuotaCollectorHookInstalled) { return; }
          window.__aiQuotaCollectorHookInstalled = true;
          function post(message) {
            try { window.webkit.messageHandlers.AIQuotaCollectorBridge.postMessage(message); } catch (error) {}
          }
          var originalFetch = window.fetch;
          if (originalFetch) {
            window.fetch = function(input, init) {
              var resourceURL = String((input && input.url) || input || "");
              return originalFetch.apply(this, arguments).then(function(response) {
                post({ type: "resourceObserved", provider: "\(providerId.storageId)", pageURL: location.href, resourceURL: resourceURL });
                return response;
              });
            };
          }
          var originalOpen = XMLHttpRequest.prototype.open;
          XMLHttpRequest.prototype.open = function(method, url) {
            this.__aiQuotaResourceURL = String(url || "");
            return originalOpen.apply(this, arguments);
          };
          var originalSend = XMLHttpRequest.prototype.send;
          XMLHttpRequest.prototype.send = function() {
            this.addEventListener("load", function() {
              post({ type: "resourceObserved", provider: "\(providerId.storageId)", pageURL: location.href, resourceURL: this.__aiQuotaResourceURL || "" });
            });
            return originalSend.apply(this, arguments);
          };
        })();
        """
    }

    private static func isRefreshLoginPage(providerId: ProviderId, pageURL: String) -> Bool {
        guard let components = URLComponents(string: pageURL),
              let host = components.host?.lowercased(with: Locale(identifier: "en_US_POSIX"))
        else { return false }
        let path = components.path.lowercased()
        switch providerId {
        case .claude:
            return (host.hasSuffix("claude.ai") && path.contains("login")) || host == "accounts.google.com"
        case .codex:
            return host == "auth.openai.com" ||
                host == "accounts.google.com" ||
                ((host == "chatgpt.com" || host.hasSuffix(".chatgpt.com")) && path == "/auth/login")
        case .gemini:
            return host == "accounts.google.com"
        case .copilot:
            return host == "github.com" &&
                (path.hasPrefix("/login") ||
                    path.hasPrefix("/sessions") ||
                    path.hasPrefix("/session") ||
                    path.contains("two-factor"))
        case .antigravity:
            return host == "accounts.google.com"
        case .cursor:
            return host == "accounts.google.com" ||
                host == "api.workos.com" ||
                host == "auth.workos.com" ||
                host == "workos.com" ||
                host == "authenticate.cursor.sh" ||
                host == "authenticator.cursor.sh" ||
                (host == "github.com" && (path.hasPrefix("/login") || path.hasPrefix("/session"))) ||
                ((host == "cursor.com" || host == "www.cursor.com") &&
                    (path.contains("login") || path.contains("signin") || path.contains("auth")))
        }
    }

    private static func looksLikeChatGPTLoginText(_ pageText: String) -> Bool {
        let text = pageText.lowercased()
        return (text.contains("로그인") && text.contains("회원가입")) ||
            text.contains("google 계정으로 계속하기") ||
            text.contains("log in or sign up") ||
            text.contains("continue with google")
    }
}

@MainActor
final class ProviderWebLoginCollectorShell: NSObject, ObservableObject, WKNavigationDelegate, WKScriptMessageHandler {
    static let bridgeName = "AIQuotaCollectorBridge"
    static let pageCaptureScript = "(function(){return (document.documentElement.innerText||document.title||'').slice(0,12000);})()"

    @Published private(set) var latestEvent: ProviderWebCollectorBridgeEvent = .ignored

    private let providerId: ProviderId
    private let startURL: URL
    private var injectedPages: Set<String> = []
    private(set) lazy var webView: WKWebView = makeWebView()

    init(providerId: ProviderId, startURL: URL? = nil) {
        self.providerId = providerId
        let definition = ProviderDefinitionRegistry.definition(for: providerId)
        self.startURL = startURL ?? URL(string: definition.loginStartUrl)!
        super.init()
    }

    func start() {
        webView.load(URLRequest(url: startURL))
    }

    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        webView.evaluateJavaScript(Self.pageCaptureScript) { [weak self, weak webView] result, _ in
            guard let self, let webView else { return }
            let pageText = result as? String ?? ""
            Task { @MainActor in
                self.injectCollectorIfReady(webView: webView, pageURL: webView.url?.absoluteString ?? "", pageText: pageText)
            }
        }
    }

    func userContentController(_ userContentController: WKUserContentController, didReceive message: WKScriptMessage) {
        guard message.name == Self.bridgeName else { return }
        guard let collectorMessage = decodeCollectorMessage(message.body) else {
            latestEvent = .ignored
            return
        }
        let pageURL = collectorMessage.pageURL ?? webView.url?.absoluteString ?? ""
        latestEvent = ProviderWebCollectorMessageProcessor.process(
            message: collectorMessage,
            expectedProviderId: providerId,
            pageURL: pageURL
        )
        if case .resourceObserved = latestEvent {
            injectCollectorIfReady(webView: webView, pageURL: pageURL, pageText: "")
        }
    }

    private func makeWebView() -> WKWebView {
        let configuration = WKWebViewConfiguration()
        let controller = WKUserContentController()
        controller.add(self, name: Self.bridgeName)
        controller.addUserScript(WKUserScript(
            source: ProviderWebCollectorPolicy.buildCollectorBootstrapScript(providerId: providerId),
            injectionTime: .atDocumentStart,
            forMainFrameOnly: false
        ))
        configuration.userContentController = controller
        configuration.preferences.javaScriptCanOpenWindowsAutomatically = true
        configuration.defaultWebpagePreferences.allowsContentJavaScript = true
        if #available(iOS 17.0, *) {
            configuration.websiteDataStore = ProviderWebSessionProfile.profile(for: providerId).makeWebsiteDataStore()
        }
        let webView = WKWebView(frame: .zero, configuration: configuration)
        webView.navigationDelegate = self
        return webView
    }

    private func injectCollectorIfReady(webView: WKWebView, pageURL: String, pageText: String) {
        guard ProviderWebCollectorPolicy.shouldRunCollector(
            providerId: providerId,
            pageURL: pageURL,
            pageText: pageText
        ) else {
            return
        }
        let key = "\(providerId.storageId):\(hostAndPath(pageURL))"
        guard injectedPages.insert(key).inserted else { return }
        let script = ProviderWebCollectorPolicy.buildCollectorBootstrapScript(providerId: providerId)
        webView.evaluateJavaScript(script)
    }

    private func decodeCollectorMessage(_ body: Any) -> ProviderWebCollectorMessage? {
        if let message = body as? [String: Any],
           let data = try? JSONSerialization.data(withJSONObject: message) {
            return try? JSONDecoder().decode(ProviderWebCollectorMessage.self, from: data)
        }
        if let text = body as? String,
           let data = text.data(using: .utf8) {
            return try? JSONDecoder().decode(ProviderWebCollectorMessage.self, from: data)
        }
        return nil
    }

    private func hostAndPath(_ url: String) -> String {
        guard let components = URLComponents(string: url) else { return "invalid" }
        return "\(components.host ?? "unknown"):\(components.path)"
    }
}

enum ProviderWebCollectorFixtureParser {
    static func collectorMessage(from html: String) -> ProviderWebCollectorMessage? {
        guard let range = html.range(of: "postMessage(") else { return nil }
        let suffix = html[range.upperBound...]
        guard let start = suffix.firstIndex(of: "{"),
              let end = suffix[start...].firstIndex(of: ")")
        else { return nil }
        let jsonText = suffix[start..<end]
        guard let data = String(jsonText).data(using: .utf8) else { return nil }
        return try? JSONDecoder().decode(ProviderWebCollectorMessage.self, from: data)
    }

    static func snapshot(fromTrustedPayload rawPayload: String) -> ProviderUsageSnapshot? {
        guard let data = rawPayload.data(using: .utf8),
              let json = try? JSONSerialization.jsonObject(with: data) as? [String: Any],
              let provider = ProviderId.fromStorageId(json["provider"] as? String)
        else {
            return nil
        }
        let lines = (json["lines"] as? [[String: Any]] ?? []).compactMap { line -> ProviderUsageLine? in
            guard let label = line["label"] as? String else { return nil }
            let remainingPercent = line["remainingPercent"] as? Double
            return ProviderUsageLine(
                label: label,
                remainingPercent: remainingPercent.map(Float.init),
                remainingText: line["remainingText"] as? String,
                resetText: line["resetText"] as? String,
                severity: .normal,
                key: line["key"] as? String
            )
        }
        return ProviderUsageSnapshot(
            providerId: provider,
            connectionState: .connected,
            planLabel: json["planLabel"] as? String,
            account: json["account"] as? String,
            message: "Trusted WebView usage payload collected.",
            lines: lines
        )
    }
}
