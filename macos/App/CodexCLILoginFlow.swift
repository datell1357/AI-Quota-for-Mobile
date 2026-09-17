import AIQuotaAuth
import AIQuotaCollectors
import AIQuotaCore
import AppKit
import Foundation
import Observation
import UniformTypeIdentifiers

@MainActor @Observable final class CodexCLILoginFlow {
    private(set) var path: String?
    private(set) var busy = false
    private(set) var finished = false
    private(set) var errorMessage: String?
    private let accountID: UUID
    private let model: DesktopModel
    private var attempt: LoginAttempt?
    private var work: Task<Void, Never>?
    private var closed = false
    var maySubmit: Bool { path != nil && !busy && !closed && model.mayVerifyLogin(accountID) }
    init(accountID: UUID, model: DesktopModel) { self.accountID = accountID; self.model = model }
    func chooseFile() {
        guard !busy, !closed else { return }
        let panel = NSOpenPanel()
        panel.title = model.text("Codex CLI의 auth.json 선택", "Choose Codex CLI auth.json")
        panel.canChooseDirectories = false; panel.canChooseFiles = true; panel.allowsMultipleSelection = false
        panel.showsHiddenFiles = true; panel.canCreateDirectories = false; panel.allowedContentTypes = [.json]
        panel.begin { [weak self] response in
            guard let self, !self.closed, response == .OK, let url = panel.url else { return }
            guard url.lastPathComponent == "auth.json" else {
                self.errorMessage = self.model.text("Codex CLI가 저장한 auth.json 파일을 선택해 주세요.", "Choose the auth.json file saved by Codex CLI."); return
            }
            self.path = url.deletingLastPathComponent().resolvingSymlinksInPath().appendingPathComponent(url.lastPathComponent).path
            self.errorMessage = nil
        }
    }
    func connect() {
        guard maySubmit, let path, let login = model.login, let repository = model.repository else { return }
        busy = true; errorMessage = nil
        work = Task {
            defer { busy = false; work = nil }
            do {
                let account = try await repository.account(accountID)
                guard account.provider == .codex else { throw CoreError.identityMismatch }
                let attempt = try await login.begin(accountID)
                guard !closed, !Task.isCancelled else { await login.cancel(attempt); return }
                self.attempt = attempt
                let record = try await CodexCLIConnection().verify(path: path, accountID: accountID, expected: account.identity)
                try Task.checkCancellation(); try await login.validateLogin(attempt)
                _ = try await login.complete(attempt, verified: record)
                self.attempt = nil
                await model.reload(); await model.retryCredentialCleanup()
                model.selectedAccountID = accountID; finished = true
                Task { await model.refresh([accountID]) }
            } catch {
                if let attempt { await login.cancel(attempt) }; attempt = nil
                if !closed && !Task.isCancelled { show(error) }
            }
        }
    }
    func cancel() async -> Bool {
        if let attempt, let login = model.login, !(await login.cancel(attempt)) { return false }
        closed = true; work?.cancel(); attempt = nil
        await model.retryCredentialCleanup()
        return true
    }
    private func show(_ error: any Error) {
        switch error {
        case CoreError.identityMismatch, CoreError.duplicateRemoteIdentity:
            errorMessage = model.text("기존 연결과 다른 계정·워크스페이스이거나 이미 연결된 계정입니다. CLI에서 선택한 계정을 확인해 주세요.", "This account or workspace differs from the existing connection, or is already connected. Check the account selected in Codex CLI.")
        case CoreError.staleAttempt:
            errorMessage = model.text("확인 중 CLI 인증 정보가 바뀌었습니다. 다시 확인해 주세요.", "The CLI credentials changed during verification. Please try again.")
        case CollectorError.authenticationRequired:
            errorMessage = model.text("CLI 세션이 만료되었거나 거부됐습니다. 같은 Codex CLI 환경에서 다시 로그인한 뒤 확인해 주세요.", "The CLI session has expired or was rejected. Sign in again in the same Codex CLI environment, then retry.")
        case CollectorError.credentialsUnavailable:
            errorMessage = model.text("선택한 인증 파일을 읽지 못했습니다. 파일 위치와 접근 권한을 확인해 주세요. 기존 연결은 유지됩니다.", "The selected credential file could not be read. Check its location and permissions. Your existing connection is preserved.")
        case CollectorError.unsupported:
            errorMessage = model.text("이 연결은 auth.json에 저장된 ChatGPT 로그인만 지원합니다. API 키·별도 키체인·메모리 전용 인증은 웹 연결을 이용해 주세요.", "This connection supports ChatGPT sign-in stored in auth.json. For API keys, separate Keychain storage or memory-only authentication, use the web connection.")
        case CollectorError.rateLimited(let until):
            model.delayLogin(accountID, until: until)
            errorMessage = model.text("서버가 요청을 제한했습니다. 잠시 후 다시 시도해 주세요.", "The server is limiting requests. Please wait before trying again.")
        default:
            errorMessage = model.text("Codex 구독 사용량을 확인하지 못했습니다. CLI 로그인과 선택한 파일을 확인해 주세요. 기존 연결은 유지됩니다.", "Codex subscription usage could not be verified. Check the CLI sign-in and selected file. Your existing connection is preserved.")
        }
    }
}
