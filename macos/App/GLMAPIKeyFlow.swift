import AIQuotaAuth
import AIQuotaCollectors
import AIQuotaCore
import Foundation
import Observation

@MainActor @Observable final class GLMAPIKeyFlow {
    var apiKey = ""
    var region = GLMAPIConfiguration.Region.global
    var scope = GLMAPIConfiguration.Scope.personal
    var organization = ""
    var project = ""
    private(set) var loading = true
    private(set) var busy = false
    private(set) var finished = false
    private(set) var errorMessage: String?
    private(set) var existingBinding: RemoteIdentity?
    private let accountID: UUID
    private let model: DesktopModel
    private var attempt: LoginAttempt?
    private var work: Task<Void, Never>?
    private var closed = false
    private var configuration: GLMAPIConfiguration? {
        try? GLMAPIConfiguration(region: region, scope: scope,
                                 organization: scope == .team ? organization.trimmingCharacters(in: .whitespacesAndNewlines) : nil,
                                 project: scope == .team ? project.trimmingCharacters(in: .whitespacesAndNewlines) : nil)
    }
    var maySubmit: Bool {
        !loading && !busy && !closed && configuration != nil && (try? GLMAPIConfiguration.normalizedKey(apiKey)) != nil && model.mayVerifyLogin(accountID)
    }
    init(accountID: UUID, model: DesktopModel) { self.accountID = accountID; self.model = model }
    func start() async {
        do {
            guard let repository = model.repository else { throw CoreError.accountNotFound }
            let account = try await repository.account(accountID)
            guard !closed, !Task.isCancelled, account.provider == .glm else { return }
            if let binding = account.identity {
                let configuration = try GLMAPIConfiguration(binding: binding)
                existingBinding = binding; region = configuration.region; scope = configuration.scope
                organization = configuration.organization ?? ""; project = configuration.project ?? ""
            }
            loading = false
        } catch { show(error) }
    }
    func connect() {
        guard maySubmit, let configuration, let login = model.login else { return }
        busy = true; errorMessage = nil
        let key = apiKey
        work = Task {
            defer { busy = false; work = nil }
            do {
                let attempt = try await login.begin(accountID)
                guard !closed, !Task.isCancelled else { await login.cancel(attempt); return }
                self.attempt = attempt
                _ = try await GLMAPIKeyLogin(login: login).complete(attempt, apiKey: key, configuration: configuration, expected: existingBinding)
                self.attempt = nil; apiKey = ""
                await model.reload(); await model.retryCredentialCleanup()
                model.selectedAccountID = accountID; finished = true
                Task { await model.refresh([accountID]) }
            } catch {
                if let attempt { await login.cancel(attempt) }
                attempt = nil
                if !Task.isCancelled && !closed { show(error) }
            }
        }
    }
    func cancel() async -> Bool {
        if let attempt, let login = model.login, !(await login.cancel(attempt)) { return false }
        closed = true; apiKey = ""; work?.cancel(); attempt = nil
        await model.retryCredentialCleanup()
        return true
    }
    private func show(_ error: any Error) {
        switch error {
        case CoreError.identityMismatch:
            errorMessage = model.text("기존 연결과 API 키 또는 범위가 다릅니다. 같은 키로 다시 시도하거나, 계정 상세에서 ‘계정 제거’ 후 새로 추가해 다른 키를 연결하세요.", "The API key or scope differs from this connection. Retry with the same key, or remove this account from its detail page and add it again to connect another key.")
        case GLMAPIError.noSubscription:
            errorMessage = model.text("이 키에서 Coding Plan 구독을 확인하지 못했습니다. 구독과 선택한 지역을 확인해 주세요.", "No Coding Plan subscription was found for this key. Check the subscription and selected region.")
        case CollectorError.authenticationRequired:
            errorMessage = model.text("API 키가 만료되었거나 선택한 범위에 접근할 수 없습니다.", "The API key has expired or cannot access the selected scope.")
        case CollectorError.rateLimited(let until):
            model.delayLogin(accountID, until: until)
            errorMessage = model.text("서버가 요청을 제한했습니다. 잠시 후 다시 시도해 주세요.", "The server is limiting requests. Please wait before trying again.")
        case AuthenticationError.interactionRequired:
            errorMessage = model.text("키체인에 접근할 수 없습니다. Mac의 잠금을 해제한 뒤 다시 시도해 주세요.", "Keychain is unavailable. Unlock your Mac and try again.")
        default:
            errorMessage = model.text("사용량을 확인하지 못했습니다. 키·지역·팀 정보를 확인해 주세요. 기존 연결은 유지됩니다.", "Usage could not be verified. Check the key, region and team details. Your existing connection is preserved.")
        }
    }
}
