import AIQuotaAuth
import AIQuotaCollectors
import AIQuotaCore
import Observation
import WebKit

@MainActor @Observable final class ClaudeLoginFlow: NSObject, WKNavigationDelegate, WKUIDelegate {
    enum Phase { case starting, browsing, checking, choosing, saving, finished }
    private(set) var phase = Phase.starting
    private(set) var webView: WKWebView?
    private(set) var discovery: ClaudeAccountDiscovery?
    private(set) var errorMessage: String?
    private(set) var currentHost = "claude.ai"
    var selectedOrganization: String?
    private let accountID: UUID
    private let model: DesktopModel
    private let client = ClaudeWebClient()
    private var attempt: LoginAttempt?
    private var work: Task<Void, Never>?
    private var cancelled = false
    var busy: Bool { phase == .starting || phase == .checking || phase == .saving }
    var maySubmit: Bool { !busy && model.mayVerifyLogin(accountID) }
    var canCancel: Bool { phase != .saving }
    var canRestart: Bool { attempt == nil && phase != .starting && phase != .finished }
    init(accountID: UUID, model: DesktopModel) { self.accountID = accountID; self.model = model; super.init() }

    func start() async {
        guard attempt == nil, !cancelled else { return }
        phase = .starting; errorMessage = nil; discovery = nil; selectedOrganization = nil
        do {
            guard let login = model.login else { throw AuthenticationError.missingCredential }
            let attempt = try await login.begin(accountID)
            // The sheet can close while begin is awaiting the repository. Retire that late attempt.
            guard !cancelled, !Task.isCancelled else { await login.cancel(attempt); return }
            self.attempt = attempt
            guard attempt.provider == .claude else { throw CollectorError.unsupported }
            let webView = WKWebView(frame: .zero, configuration: model.webProfiles.configuration(for: attempt.webProfileID))
            webView.navigationDelegate = self; webView.uiDelegate = self
            self.webView = webView
            webView.load(URLRequest(url: URL(string: "https://claude.ai/login")!))
            phase = .browsing
        } catch { phase = .browsing; show(error) }
    }
    func reloadPage() { if !busy { errorMessage = nil; webView?.reload() } }
    func checkAccount() {
        guard let attempt, maySubmit else { return }
        phase = .checking; errorMessage = nil
        work = Task {
            do {
                let cookies = try await cookieHeader(attempt)
                let found = try await client.discover(cookieHeader: cookies)
                try Task.checkCancellation()
                guard let repository = model.repository else { throw CoreError.accountNotFound }
                let account = try await repository.account(accountID)
                if let identity = account.identity {
                    guard identity.subject == found.subject, found.organizations.contains(where: { $0.id == identity.workspace }) else {
                        throw CoreError.identityMismatch
                    }
                    selectedOrganization = identity.workspace
                } else { selectedOrganization = found.organizations.count == 1 ? found.organizations[0].id : nil }
                discovery = found; phase = .choosing
            } catch { if !Task.isCancelled { phase = .browsing; show(error) } }
        }
    }
    func connect() {
        guard let attempt, let discovery, let selectedOrganization, maySubmit else { return }
        phase = .checking; errorMessage = nil
        work = Task {
            do {
                let identity = try RemoteIdentity(subject: discovery.subject, workspace: selectedOrganization, product: "claude-subscription")
                let cookies = try await cookieHeader(attempt)
                // Recheck the remote subject and chosen organization with the current profile, then its usage.
                _ = try await client.collect(cookieHeader: cookies, expected: identity)
                try Task.checkCancellation()
                guard let login = model.login else { throw AuthenticationError.missingCredential }
                let record = try CredentialRecord(accountID: accountID, provider: .claude, identity: identity,
                                                  kind: .webSession, webProfileID: attempt.webProfileID)
                phase = .saving
                do { _ = try await login.complete(attempt, verified: record) }
                catch { self.attempt = nil; throw error }
                await model.reload()
                model.selectedAccountID = accountID
                phase = .finished
                Task { await model.refresh([accountID]) }
            } catch { if !Task.isCancelled { phase = .choosing; show(error) } }
        }
    }
    func cancel() async -> Bool {
        guard phase != .finished else { return true }
        if let attempt, let login = model.login, !(await login.cancel(attempt)) { return false }
        cancelled = true
        work?.cancel(); work = nil
        webView?.stopLoading(); webView?.navigationDelegate = nil; webView?.uiDelegate = nil; webView = nil
        attempt = nil
        return true
    }
    private func cookieHeader(_ attempt: LoginAttempt) async throws -> String {
        // Root-path cookies apply to every account/organization API request; narrower cookies are not forwarded.
        try await model.webProfiles.cookieHeader(for: URL(string: "https://claude.ai/")!, profileID: attempt.webProfileID)
    }
    private func show(_ error: any Error) {
        if error is CancellationError { return }
        switch error {
        case CoreError.identityMismatch:
            errorMessage = model.text("기존 연결과 다른 계정 또는 조직입니다. 올바른 계정으로 로그인해 주세요.", "This is a different account or organization. Sign in to the account already linked here.")
        case AuthenticationError.missingCredential, CollectorError.authenticationRequired:
            errorMessage = model.text("웹 화면에서 로그인을 마친 뒤 다시 확인해 주세요.", "Finish signing in below, then check again.")
        case CollectorError.rateLimited(let until):
            model.delayLogin(accountID, until: until)
            errorMessage = model.text("서버가 잠시 요청을 제한했습니다. 잠시 후 다시 시도해 주세요.", "The server is limiting requests. Please wait before trying again.")
        case AuthenticationError.interactionRequired:
            errorMessage = model.text("키체인에 접근할 수 없습니다. Mac의 잠금을 해제한 뒤 다시 시도해 주세요.", "Keychain is unavailable. Unlock your Mac and try again.")
        default:
            errorMessage = model.text("계정과 사용량을 확인하지 못했습니다. 기존 연결은 유지됩니다. 로그인 화면의 안내를 확인해 주세요.", "The account and usage could not be verified. Your previous connection is preserved. Check the sign-in page for details.")
        }
    }
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) { currentHost = webView.url?.host ?? "claude.ai" }
    func webView(_ webView: WKWebView, didFailProvisionalNavigation navigation: WKNavigation!, withError error: any Error) {
        if (error as NSError).code != NSURLErrorCancelled { show(error) }
    }
    func webView(_ webView: WKWebView, decidePolicyFor action: WKNavigationAction) async -> WKNavigationActionPolicy {
        guard let url = action.request.url, url.scheme == "https", url.user == nil, url.password == nil else { return .cancel }
        return .allow
    }
    func webView(_ webView: WKWebView, createWebViewWith configuration: WKWebViewConfiguration,
                 for navigationAction: WKNavigationAction, windowFeatures: WKWindowFeatures) -> WKWebView? {
        if navigationAction.targetFrame == nil { webView.load(navigationAction.request) }
        return nil
    }
}
