import AIQuotaAuth
import AIQuotaCollectors
import AIQuotaCore
import AppKit
import Foundation
import Observation
import UniformTypeIdentifiers

@MainActor @Observable final class ClaudeCodeLoginFlow {
    var useKeychain = true
    var service = ClaudeCodeSource.defaultKeychainService
    var keychainAccount = NSUserName()
    private(set) var path: String?
    var source: ClaudeCodeSource? {
        let selected: ClaudeCodeSource
        if useKeychain {
            guard let reference = try? ExternalKeychainReference(service: service, account: keychainAccount) else { return nil }
            selected = .keychain(reference)
        } else {
            guard let path else { return nil }; selected = .file(path)
        }
        guard (try? selected.validate()) != nil else { return nil }
        return selected
    }
    private(set) var busy = false
    private(set) var finished = false
    private(set) var errorMessage: String?
    private let accountID: UUID
    private let model: DesktopModel
    private var attempt: LoginAttempt?
    private var work: Task<Void, Never>?
    private var closed = false
    var maySubmit: Bool { source != nil && !busy && !closed && model.mayVerifyLogin(accountID) }
    init(accountID: UUID, model: DesktopModel) { self.accountID = accountID; self.model = model }
    func chooseFile() {
        guard !busy, !closed else { return }
        let panel = NSOpenPanel()
        panel.title = model.text("Claude Code의 .credentials.json 선택", "Choose Claude Code .credentials.json")
        panel.canChooseDirectories = false; panel.canChooseFiles = true; panel.allowsMultipleSelection = false
        panel.showsHiddenFiles = true; panel.canCreateDirectories = false; panel.allowedContentTypes = [.json]
        panel.begin { [weak self] response in
            guard let self, !self.closed, response == .OK, let url = panel.url else { return }
            guard url.lastPathComponent == ".credentials.json" else {
                self.path = nil
                self.errorMessage = self.model.text("Claude Code가 저장한 .credentials.json 파일을 선택해 주세요.", "Choose the .credentials.json file saved by Claude Code."); return
            }
            self.path = url.deletingLastPathComponent().resolvingSymlinksInPath().appendingPathComponent(url.lastPathComponent).path
            self.errorMessage = nil
        }
    }
    func connect() {
        guard maySubmit, let source, let login = model.login, let repository = model.repository else { return }
        busy = true; errorMessage = nil
        work = Task {
            defer { busy = false; work = nil }
            do {
                let account = try await repository.account(accountID)
                guard account.provider == .claude else { throw CoreError.identityMismatch }
                let attempt = try await login.begin(accountID)
                guard !closed, !Task.isCancelled else { await login.cancel(attempt); return }
                self.attempt = attempt
                let record = try await ClaudeCodeConnection().verify(source: source, accountID: accountID, expected: account.identity, allowInteraction: true)
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
            errorMessage = model.text("기존 연결과 다른 계정·워크스페이스이거나 이미 연결된 계정입니다. Claude Code에서 선택한 계정을 확인해 주세요.", "This account or workspace differs from the existing connection, or is already connected. Check the account selected in Claude Code.")
        case CoreError.staleAttempt:
            errorMessage = model.text("확인 중 Claude Code 인증 정보가 바뀌었습니다. 다시 확인해 주세요.", "The Claude Code credentials changed during verification. Please try again.")
        case CollectorError.authenticationRequired:
            errorMessage = model.text("Claude Code 세션이 만료되었거나 거부됐습니다. 같은 Claude Code 환경에서 다시 로그인한 뒤 확인해 주세요.", "The Claude Code session has expired or was rejected. Sign in again in the same Claude Code environment, then retry.")
        case CollectorError.credentialsUnavailable:
            errorMessage = model.text("선택한 인증 정보를 읽지 못했습니다. Keychain 항목·잠금·접근 허용 또는 파일 위치를 확인해 주세요. 기존 연결은 유지됩니다.", "The selected credentials could not be read. Check the Keychain item, lock and access permission, or the file location. Your existing connection is preserved.")
        case CollectorError.unsupported:
            errorMessage = model.text("Claude 구독 로그인과 사용량 조회 권한이 필요합니다. 같은 Claude Code 환경에서 다시 로그인하거나 웹 계정 연결을 이용해 주세요.", "A Claude subscription login with usage access is required. Sign in again in the same Claude Code environment, or use the web account connection.")
        case CollectorError.rateLimited(let until):
            model.delayLogin(accountID, until: until)
            errorMessage = model.text("서버가 요청을 제한했습니다. 잠시 후 다시 시도해 주세요.", "The server is limiting requests. Please wait before trying again.")
        default:
            errorMessage = model.text("Claude 구독 사용량을 확인하지 못했습니다. Claude Code 로그인과 선택한 파일을 확인해 주세요. 기존 연결은 유지됩니다.", "Claude subscription usage could not be verified. Check the Claude Code sign-in and selected file. Your existing connection is preserved.")
        }
    }
}
