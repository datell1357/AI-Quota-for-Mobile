import AIQuotaAuth
import AIQuotaCollectors
import AIQuotaCore
import Observation
import WebKit

@MainActor @Observable final class WebLoginFlow: NSObject, WKNavigationDelegate, WKUIDelegate {
    enum Phase { case starting, browsing, checking, choosing, saving, finished }
    private(set) var phase = Phase.starting
    private(set) var webView: WKWebView?
    private(set) var discovery: WebLoginDiscovery?
    private(set) var service: WebLoginService?
    private(set) var errorMessage: String?
    private(set) var currentHost = ""
    var selectedWorkspace: String?
    private let accountID: UUID
    private let model: DesktopModel
    private var attempt: LoginAttempt?
    private var work: Task<Void, Never>?
    private var cancelled = false
    var busy: Bool { phase == .starting || phase == .checking || phase == .saving }
    var maySubmit: Bool { !busy && model.mayVerifyLogin(accountID) }
    var canCancel: Bool { phase != .saving }
    var canRestart: Bool { attempt == nil && phase != .starting && phase != .finished }
    var hasRequiredScope: Bool { service.map { !$0.requiresWorkspace || selectedWorkspace != nil } ?? false }
    init(accountID: UUID, model: DesktopModel) { self.accountID = accountID; self.model = model; super.init() }

    func start() async {
        guard attempt == nil, !cancelled else { return }
        phase = .starting; errorMessage = nil; discovery = nil; selectedWorkspace = nil
        do {
            guard let login = model.login else { throw AuthenticationError.missingCredential }
            let attempt = try await login.begin(accountID)
            // The sheet can close while begin is awaiting the repository. Retire that late attempt.
            guard !cancelled, !Task.isCancelled else { await login.cancel(attempt); return }
            self.attempt = attempt
            guard let service = WebLoginService(provider: attempt.provider) else {
                await login.cancel(attempt); self.attempt = nil
                throw CollectorError.unsupported
            }
            self.service = service; currentHost = service.origin.host ?? ""
            try await login.prepareWebProfile(attempt)
            let webView = try WKWebView(frame: .zero, configuration: model.webProfiles.configuration(for: attempt.webProfileID))
            webView.navigationDelegate = self; webView.uiDelegate = self
            self.webView = webView
            webView.load(URLRequest(url: service.loginURL))
            phase = .browsing
        } catch {
            if let attempt, let login = model.login { await login.cancel(attempt) }
            attempt = nil; phase = .browsing
            if !cancelled && !Task.isCancelled { show(error) }
        }
    }
    func reloadPage() { if !busy { errorMessage = nil; webView?.reload() } }
    func checkAccount() {
        guard let attempt, let service, maySubmit else { return }
        phase = .checking; errorMessage = nil
        work = Task {
            do {
                let session = try await cookieSession(attempt)
                let found = try await service.discover(cookieHeader: session.header, transport: session.transport)
                try Task.checkCancellation()
                guard let repository = model.repository else { throw CoreError.accountNotFound }
                let account = try await repository.account(accountID)
                if let identity = account.identity {
                    guard identity.subject == found.subject, identity.product == service.product,
                          (service.requiresWorkspace ? found.choices.contains(where: { $0.id == identity.workspace }) : identity.workspace == nil) else {
                        throw CoreError.identityMismatch
                    }
                    selectedWorkspace = identity.workspace
                } else { selectedWorkspace = found.choices.count == 1 ? found.choices[0].id : nil }
                discovery = found; phase = .choosing
            } catch { if !Task.isCancelled { phase = .browsing; show(error) } }
        }
    }
    func connect() {
        guard let attempt, let service, let discovery, hasRequiredScope, maySubmit else { return }
        phase = .checking; errorMessage = nil
        work = Task {
            do {
                let identity = try RemoteIdentity(subject: discovery.subject, workspace: service.requiresWorkspace ? selectedWorkspace : nil, product: service.product)
                let session = try await cookieSession(attempt)
                // Recheck the remote subject and chosen scope with the current profile, then its usage.
                try await service.verify(cookieHeader: session.header, identity: identity, transport: session.transport)
                try Task.checkCancellation()
                guard let login = model.login else { throw AuthenticationError.missingCredential }
                let record = try CredentialRecord(accountID: accountID, provider: attempt.provider, identity: identity,
                                                  kind: .webSession, webProfileID: attempt.webProfileID)
                phase = .saving
                do { _ = try await login.complete(attempt, verified: record) }
                catch { self.attempt = nil; throw error }
                await model.reload()
                await model.retryCredentialCleanup()
                model.selectedAccountID = accountID
                phase = .finished
                Task { await model.refresh([accountID]) }
            } catch { if !Task.isCancelled { phase = .choosing; show(error) } }
        }
    }
    func cancel() async -> Bool {
        webView?.stopLoading(); webView?.navigationDelegate = nil; webView?.uiDelegate = nil; webView = nil
        guard phase != .finished else { return true }
        if let attempt, let login = model.login, !(await login.cancel(attempt)) { return false }
        cancelled = true
        work?.cancel(); work = nil
        attempt = nil
        await model.retryCredentialCleanup()
        return true
    }
    private func cookieSession(_ attempt: LoginAttempt) async throws -> (header: String, transport: WebSessionHTTPTransport) {
        guard let service, service.provider == attempt.provider, let login = model.login else { throw CoreError.identityMismatch }
        let cookies = WebCookieSession(profileID: attempt.webProfileID, origin: service.origin, store: model.webProfiles,
                                       validate: { try await login.validateLogin(attempt) })
        let header = try await cookies.header(for: service.origin)
        let transport = WebSessionHTTPTransport(base: NativeHTTPTransport(allowedHosts: [service.origin.host!]), cookies: cookies)
        return (header, transport)
    }
    private func show(_ error: any Error) {
        if error is CancellationError { return }
        switch error {
        case CoreError.identityMismatch:
            errorMessage = model.text("기존 연결과 다른 계정 또는 워크스페이스입니다. 올바른 계정으로 로그인해 주세요.", "This is a different account or workspace. Sign in to the account already linked here.")
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
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) { currentHost = webView.url?.host ?? service?.origin.host ?? "" }
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
