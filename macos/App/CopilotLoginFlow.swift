import AIQuotaAuth
import AIQuotaCollectors
import AIQuotaCore
import AppKit
import Foundation
import Observation

@MainActor @Observable final class CopilotLoginFlow {
    private(set) var busy = false
    private(set) var finished = false
    private(set) var grant: CopilotDeviceGrant?
    private(set) var errorMessage: String?
    private let accountID: UUID
    private let model: DesktopModel
    private var attempt: LoginAttempt?
    private var work: Task<Void, Never>?
    private var closed = false
    var configured: Bool { model.copilotConfiguration != nil }
    var mayStart: Bool { configured && !busy && !closed && model.mayVerifyLogin(accountID) }
    init(accountID: UUID, model: DesktopModel) { self.accountID = accountID; self.model = model }
    func start() {
        guard mayStart, let configuration = model.copilotConfiguration, let login = model.login, let repository = model.repository else { return }
        busy = true; errorMessage = nil; grant = nil
        work = Task {
            defer { busy = false; work = nil; grant = nil }
            do {
                let account = try await repository.account(accountID)
                guard account.provider == .copilot else { throw CoreError.identityMismatch }
                let attempt = try await login.begin(accountID)
                guard !closed, !Task.isCancelled else { await login.cancel(attempt); return }
                self.attempt = attempt
                let authorization = CopilotDeviceAuthorization(configuration: configuration)
                let grant = try await authorization.begin()
                try await login.validateLogin(attempt); try Task.checkCancellation()
                self.grant = grant
                let record = try await authorization.authorize(grant, accountID: accountID, expected: account.identity)
                try await login.validateLogin(attempt); try Task.checkCancellation()
                _ = try await login.complete(attempt, verified: record)
                self.attempt = nil
                await model.reload(); await model.retryCredentialCleanup()
                model.selectedAccountID = accountID; finished = true
                Task { await model.refresh([accountID]) }
            } catch {
                if let attempt { await login.cancel(attempt) }
                attempt = nil
                if !closed && !Task.isCancelled { show(error) }
            }
        }
    }
    func openGitHub() {
        guard grant != nil, busy, !closed else { return }
        if !NSWorkspace.shared.open(CopilotDeviceGrant.verificationURL) {
            errorMessage = model.text("브라우저를 열지 못했습니다. github.com/login/device에 직접 접속해 코드를 입력하세요.", "Could not open the browser. Visit github.com/login/device and enter the code.")
        }
    }
    func cancel() async -> Bool {
        if let attempt, let login = model.login, !(await login.cancel(attempt)) { return false }
        closed = true; work?.cancel(); grant = nil; attempt = nil
        await model.retryCredentialCleanup()
        return true
    }
    private func show(_ error: any Error) {
        switch error {
        case CopilotAuthorizationError.expiredCode:
            errorMessage = model.text("인증 코드가 만료됐습니다. 다시 시작해 새 코드를 받으세요.", "The code expired. Start again to get a new code.")
        case CopilotAuthorizationError.accessDenied:
            errorMessage = model.text("GitHub에서 연결이 승인되지 않았습니다. 다시 시작할 수 있습니다.", "GitHub did not authorize this connection. You can start again.")
        case CopilotAuthorizationError.invalidClient, CopilotAuthorizationError.deviceFlowDisabled, CopilotAuthorizationError.configurationRequired:
            errorMessage = model.text("이 앱 버전의 GitHub 로그인 설정을 사용할 수 없습니다. 앱 업데이트를 확인해 주세요.", "GitHub sign-in is unavailable in this app version. Check for an app update.")
        case CoreError.identityMismatch:
            errorMessage = model.text("기존 연결과 다른 GitHub 계정입니다. 같은 계정으로 다시 로그인해 주세요.", "This is a different GitHub account. Sign in to the account already linked here.")
        case CollectorError.rateLimited(let until):
            model.delayLogin(accountID, until: until)
            errorMessage = model.text("서버가 요청을 제한했습니다. 잠시 후 다시 시도해 주세요.", "The server is limiting requests. Please wait before trying again.")
        case AuthenticationError.interactionRequired:
            errorMessage = model.text("키체인에 접근할 수 없습니다. Mac의 잠금을 해제하고 다시 시도해 주세요.", "Keychain is unavailable. Unlock your Mac and try again.")
        default:
            errorMessage = model.text("Copilot 사용량을 확인하지 못했습니다. 계정의 구독과 접근 권한을 확인하고 다시 시도해 주세요. 기존 연결은 유지됩니다.", "Copilot usage could not be verified. Check the account’s subscription and access, then try again. Your existing connection is preserved.")
        }
    }
}
