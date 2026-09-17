import AIQuotaAuth
import AIQuotaCollectors
import AIQuotaCore
import AppKit
import Foundation
import Observation

@MainActor @Observable final class AntigravityLoginFlow {
    enum Phase { case idle, openingBrowser, waitingForBrowser, verifying, saving }
    private(set) var phase = Phase.idle
    private(set) var finished = false
    private(set) var errorMessage: String?
    private let accountID: UUID
    private let model: DesktopModel
    private var attempt: LoginAttempt?
    private var receiver: LoopbackOAuthReceiver?
    private var work: Task<Void, Never>?
    private var closed = false
    var configured: Bool { model.antigravityConfiguration != nil }
    var busy: Bool { phase != .idle }
    var mayStart: Bool { configured && !busy && !closed && model.mayVerifyLogin(accountID) }
    init(accountID: UUID, model: DesktopModel) { self.accountID = accountID; self.model = model }
    func start() {
        guard mayStart, let configuration = model.antigravityConfiguration, let login = model.login, let repository = model.repository else { return }
        phase = .openingBrowser; errorMessage = nil
        work = Task {
            defer { phase = .idle; work = nil }
            do {
                let account = try await repository.account(accountID)
                guard account.provider == .antigravity else { throw CoreError.identityMismatch }
                let attempt = try await login.begin(accountID)
                guard !closed, !Task.isCancelled else { await login.cancel(attempt); return }
                self.attempt = attempt
                let proof = try OAuthProofKey(), receiver = try LoopbackOAuthReceiver(state: proof.state)
                self.receiver = receiver
                let redirect = try await receiver.start()
                let client = AntigravityOAuthClient(configuration: configuration)
                let request = try client.authorization(redirectURL: redirect, proof: proof)
                try Task.checkCancellation(); try await login.validateLogin(attempt)
                guard NSWorkspace.shared.open(request.authorizationURL) else { throw LoopbackOAuthError.unavailable }
                phase = .waitingForBrowser
                let code = try await receiver.waitForCode()
                await receiver.cancel(); self.receiver = nil
                try Task.checkCancellation(); try await login.validateLogin(attempt)
                phase = .verifying
                let record = try await client.exchange(request, code: code, accountID: accountID, expected: account.identity)
                try Task.checkCancellation(); try await login.validateLogin(attempt)
                phase = .saving
                _ = try await login.complete(attempt, verified: record)
                self.attempt = nil
                await model.reload(); await model.retryCredentialCleanup()
                model.selectedAccountID = accountID; finished = true
                Task { await model.refresh([accountID]) }
            } catch {
                await receiver?.cancel(); receiver = nil
                if let attempt { await login.cancel(attempt) }; attempt = nil
                if !closed && !Task.isCancelled { show(error) }
            }
        }
    }
    func cancel() async -> Bool {
        if let attempt, let login = model.login, !(await login.cancel(attempt)) { return false }
        closed = true; work?.cancel(); await receiver?.cancel(); receiver = nil; attempt = nil
        await model.retryCredentialCleanup()
        return true
    }
    private func show(_ error: any Error) {
        switch error {
        case LoopbackOAuthError.accessDenied:
            errorMessage = model.text("Google에서 연결을 승인하지 않았습니다. 다시 시도할 수 있습니다.", "Google authorization was declined. You can try again.")
        case LoopbackOAuthError.timedOut:
            errorMessage = model.text("로그인 대기 시간이 지났습니다. 다시 시작해 주세요.", "The sign-in request timed out. Please start again.")
        case LoopbackOAuthError.unavailable:
            errorMessage = model.text("브라우저 또는 로그인 응답 수신기를 열지 못했습니다. 다시 시도해 주세요.", "Could not open the browser or receive the sign-in response. Please try again.")
        case AntigravityAuthorizationError.configurationRequired:
            errorMessage = model.text("이 앱 버전의 Google 로그인 설정을 사용할 수 없습니다. 앱 업데이트를 확인해 주세요.", "Google sign-in is unavailable in this app version. Check for an app update.")
        case AntigravityAuthorizationError.missingScopes, AntigravityAuthorizationError.offlineAccessRequired:
            errorMessage = model.text("계정 확인과 백그라운드 갱신에 필요한 Google 권한을 받지 못했습니다. 승인 항목을 확인하고 다시 시도해 주세요.", "The Google permissions needed to verify the account and refresh in the background were not granted. Review the requested permissions and try again.")
        case CoreError.identityMismatch:
            errorMessage = model.text("기존 연결과 다른 Google 계정 또는 Antigravity 프로젝트입니다. 같은 계정으로 다시 로그인해 주세요.", "This is a different Google account or Antigravity project. Sign in to the account already linked here.")
        case CollectorError.rateLimited(let until):
            model.delayLogin(accountID, until: until)
            errorMessage = model.text("서버가 요청을 제한했습니다. 잠시 후 다시 시도해 주세요.", "The server is limiting requests. Please wait before trying again.")
        default:
            errorMessage = model.text("Antigravity 계정과 사용량을 확인하지 못했습니다. 구독과 접근 권한을 확인하고 다시 시도해 주세요. 기존 연결은 유지됩니다.", "The Antigravity account and usage could not be verified. Check the subscription and access, then try again. Your existing connection is preserved.")
        }
    }
}
