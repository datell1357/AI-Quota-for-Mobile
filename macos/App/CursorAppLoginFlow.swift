import AIQuotaAuth
import AIQuotaCollectors
import AIQuotaCore
import AppKit
import Foundation
import Observation
import UniformTypeIdentifiers

@MainActor @Observable final class CursorAppLoginFlow {
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
        panel.title = model.text("Cursor 앱의 state.vscdb 선택", "Choose Cursor state.vscdb")
        panel.canChooseDirectories = false; panel.canChooseFiles = true; panel.allowsMultipleSelection = false
        panel.showsHiddenFiles = true; panel.canCreateDirectories = false; panel.allowedContentTypes = [.data]
        panel.begin { [weak self] response in
            guard let self, !self.closed, response == .OK, let url = panel.url else { return }
            guard url.lastPathComponent == "state.vscdb" else {
                self.path = nil
                self.errorMessage = self.model.text("Cursor 앱이 저장한 state.vscdb 파일을 선택해 주세요.", "Choose the state.vscdb file saved by Cursor."); return
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
                guard account.provider == .cursor else { throw CoreError.identityMismatch }
                let attempt = try await login.begin(accountID)
                guard !closed, !Task.isCancelled else { await login.cancel(attempt); return }
                self.attempt = attempt
                let record = try await CursorAppConnection().verify(path: path, accountID: accountID, expected: account.identity)
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
            errorMessage = model.text("기존 연결과 다른 계정이거나 이미 연결된 계정입니다. Cursor에서 선택한 계정을 확인해 주세요.", "This account differs from the existing connection, or is already connected. Check the account selected in Cursor.")
        case CoreError.staleAttempt:
            errorMessage = model.text("확인 중 Cursor 인증 정보가 바뀌었습니다. 다시 확인해 주세요.", "The Cursor credentials changed during verification. Please try again.")
        case CollectorError.authenticationRequired:
            errorMessage = model.text("Cursor 세션이 만료되었거나 거부됐습니다. 같은 Cursor 앱 환경에서 다시 로그인한 뒤 확인해 주세요.", "The Cursor session has expired or was rejected. Sign in again in the same Cursor environment, then retry.")
        case CollectorError.credentialsUnavailable:
            errorMessage = model.text("선택한 Cursor 상태 DB를 읽지 못했습니다. 앱의 로그인 상태·파일 위치·접근 권한을 확인하고 다시 시도해 주세요. 기존 연결은 유지됩니다.", "The selected Cursor state database could not be read. Check app sign-in, file location and access, then retry. Your existing connection is preserved.")
        case CollectorError.unsupported:
            errorMessage = model.text("Cursor 앱의 state.vscdb를 선택해 주세요. 이 저장 형식을 사용할 수 없다면 웹 계정 연결을 이용할 수 있습니다.", "Choose the Cursor app’s state.vscdb. If this storage format is unavailable, use the web account connection.")
        case CollectorError.rateLimited(let until):
            model.delayLogin(accountID, until: until)
            errorMessage = model.text("서버가 요청을 제한했습니다. 잠시 후 다시 시도해 주세요.", "The server is limiting requests. Please wait before trying again.")
        default:
            errorMessage = model.text("Cursor 구독 사용량을 확인하지 못했습니다. Cursor 로그인과 선택한 파일을 확인해 주세요. 기존 연결은 유지됩니다.", "Cursor subscription usage could not be verified. Check the Cursor sign-in and selected file. Your existing connection is preserved.")
        }
    }
}
