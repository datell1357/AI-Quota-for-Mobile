import AIQuotaAuth
import AIQuotaCollectors
import AIQuotaCore
import AppKit
import Foundation
import Network
import Observation
import ServiceManagement
import SwiftUI
import UserNotifications
import WidgetKit

struct AccountSelection: Identifiable { let id: UUID }
enum DesktopSheet: Identifiable {
    case providers, edit(AccountSelection), connect(AccountSelection), glmAPIKey(AccountSelection), widgets
    var id: String {
        switch self { case .providers: "providers"; case .edit(let account): "edit-\(account.id)"; case .connect(let account): "connect-\(account.id)"; case .glmAPIKey(let account): "glm-api-key-\(account.id)"; case .widgets: "widgets" }
    }
}

private struct CollectorRegistry: UsageCollector {
    let collectors: [ProviderID: any UsageCollector]
    func collect(account: Account, lease: CollectionLease) async throws -> CollectionOutput {
        guard let collector = collectors[account.provider] else { throw CollectorError.unsupported }
        return try await collector.collect(account: account, lease: lease)
    }
}

@MainActor @Observable final class DesktopModel {
    private(set) var preferences = DesktopPreferences()
    private(set) var snapshot = WidgetSnapshot(revision: 0, writtenAt: .distantPast, accounts: [])
    private(set) var loading = true
    private(set) var refreshing = false
    private(set) var online = true
    private(set) var awake = true
    private(set) var widgetSharingAvailable = false
    private(set) var loginRetryAfter: [UUID: Date] = [:]
    private(set) var accountOperations = Set<UUID>()
    private(set) var credentialCleanupPending = false
    private(set) var cleaningCredentials = false
    private var credentialCleanupRequested = false
    private var dismissedSheetCleanup: Task<Void, Never>?
    private var loginRetryTasks: [UUID: Task<Void, Never>] = [:]
    var notificationStatus: UNAuthorizationStatus = .notDetermined
    var loginItemStatus = SMAppService.mainApp.status
    var selectedAccountID: UUID?
    var sheet: DesktopSheet?
    var errorMessage: String?
    var startupError: String?
    private(set) var repository: AccountRepository?
    private(set) var login: LoginCoordinator?
    let webProfiles = IsolatedWebProfiles()
    private var coordinator: RefreshCoordinator?
    private var snapshotStore: SnapshotFileStore?
    private let widgetReloader = WidgetTimelineReloader()
    private var publishesToAppGroup = false
    private var publicationRunning = false
    private var publicationPending = false
    private var preferencesURL: URL?
    private var started = false
    private var reloadSequence: UInt64 = 0
    private var environmentMonitor: EnvironmentMonitor?
    @ObservationIgnored private var panelController: DesktopPanelController?
    let notificationDelivery = NotificationDispatcher()

    func text(_ korean: String, _ english: String) -> String { preferences.usesKorean ? korean : english }
    var visibleAccounts: [DisplayAccount] { snapshot.accounts.filter { !$0.isHidden } }
    var pinnedAccounts: [DisplayAccount] {
        let index = Dictionary(uniqueKeysWithValues: snapshot.accounts.map { ($0.id, $0) })
        return preferences.pinnedAccountIDs.compactMap { index[$0] }.filter { !$0.isHidden }
    }
    var panelAccountIDs: [UUID] {
        preferences.panel?.accountIDs ?? (preferences.pinnedAccountIDs.isEmpty ? Array(visibleAccounts.prefix(6)).map(\.id) : preferences.pinnedAccountIDs)
    }
    var representative: DisplayAccount? {
        if let id = preferences.representativeAccountID { return snapshot.accounts.first { $0.id == id && !$0.isHidden } }
        return visibleAccounts.first
    }
    var menuBarTitle: String {
        guard let account = representative,
              let metric = account.metrics.first(where: { $0.status == .limited }), let fraction = metric.remainingFraction,
              account.state == .connected else { return "AI Quota" }
        return fraction.formatted(.percent.precision(.fractionLength(0)))
    }
    func start() async {
        guard !started else { return }
        started = true
        do {
            let root = try dataDirectory()
            preferencesURL = root.appendingPathComponent("preferences-v1.json")
            preferences = try DesktopPreferences.load(from: preferencesURL!)
            let repository = try AccountRepository(url: root.appendingPathComponent("accounts.sqlite"))
            self.repository = repository
            let login = LoginCoordinator(repository: repository, vault: KeychainCredentialVault(), profiles: webProfiles)
            try await login.recoverAbandonedLogins()
            self.login = login
            let source = StoredAccountSessionSource(login: login, webProfiles: webProfiles)
            let registry = CollectorRegistry(collectors: [.claude: ClaudeWebCollector(sessions: source), .codex: CodexSubscriptionCollector(sessions: source), .cursor: CursorWebCollector(sessions: source), .grok: GrokWeeklyCollector(sessions: source), .glm: GLMAPICollector(sessions: source), .opencode: OpenCodeWebCollector(sessions: source)])
            let coordinator = RefreshCoordinator(repository: repository, collector: registry, didUpdate: { [weak self] _ in await self?.reload() })
            self.coordinator = coordinator
            if ProcessInfo.processInfo.arguments.contains("--data-directory") {
                // An isolated QA run must never publish synthetic accounts into the real widget container.
                snapshotStore = SnapshotFileStore(url: root.appendingPathComponent(SharedPaths.snapshotName), repository: repository)
            } else if let shared = SharedPaths.snapshotURL {
                snapshotStore = SnapshotFileStore(url: shared, repository: repository); publishesToAppGroup = true
            }
            await coordinator.setAutomaticEnabled(preferences.automaticRefresh)
            await reload()
            environmentMonitor = EnvironmentMonitor { [weak self] online, awake in
                await self?.setEnvironment(online: online, awake: awake)
            }
            environmentMonitor?.start()
            await coordinator.start()
            // Permission services must not delay displaying the already-opened account store.
        } catch {
            startupError = text("저장된 데이터를 열지 못했습니다. 기존 파일을 보존한 상태입니다.", "Saved data could not be opened. Existing files have been preserved.")
        }
        loading = false
        synchronizePanel()
        Task { await retryCredentialCleanup() }
    }
    private func dataDirectory() throws -> URL {
        let args = ProcessInfo.processInfo.arguments
        if let index = args.firstIndex(of: "--data-directory") {
            guard args.indices.contains(index + 1) else { throw CocoaError(.fileReadInvalidFileName) }
            let path = args[index + 1]
            guard path.hasPrefix("/") else { throw CocoaError(.fileReadInvalidFileName) }
            return URL(fileURLWithPath: path, isDirectory: true)
        }
        return try FileManager.default.url(for: .applicationSupportDirectory, in: .userDomainMask, appropriateFor: nil, create: true)
            .appendingPathComponent("AIQuota", isDirectory: true)
    }
    func reload() async {
        guard let repository else { return }
        reloadSequence += 1; let sequence = reloadSequence
        do {
            let updated = try await repository.displaySnapshot()
            guard sequence == reloadSequence else { return }
            snapshot = updated
            schedulePublication()
            Task {
                do { try await notificationDelivery.deliver(repository: repository, sender: SystemNotificationSender(korean: preferences.usesKorean)) }
                catch { show(error) }
            }
        } catch { show(error) }
    }
    /// Coalesce requests; the publisher reads the latest database projection when it is ready.
    /// Shared-container IO cannot hold up the UI or collector.
    private func schedulePublication() {
        guard let snapshotStore else { return }
        publicationPending = true
        guard !publicationRunning else { return }
        publicationRunning = true
        Task {
            defer { publicationRunning = false }
            while publicationPending {
                publicationPending = false
                do {
                    _ = try await snapshotStore.publish()
                    widgetSharingAvailable = publishesToAppGroup
                    if publishesToAppGroup, let published = await snapshotStore.publishedSnapshot() {
                        try await widgetReloader.reloadAffectedWidgets(snapshot: published)
                    }
                } catch CoreError.staleAttempt { /* A newer publication already won. */ }
                catch { widgetSharingAvailable = false }
            }
        }
    }
    func refresh(_ ids: [UUID]? = nil) async {
        guard let coordinator else { return }
        refreshing = true
        do { try await coordinator.request(accountIDs: ids); await coordinator.waitUntilIdle(); await reload() }
        catch { show(error) }
        refreshing = false
    }
    func addProviders(_ providers: Set<ProviderID>) async -> Bool {
        guard let repository else { return false }
        do {
            let existing = try await repository.accounts()
            for provider in ProviderID.allCases where providers.contains(provider) {
                if !existing.contains(where: { $0.provider == provider }) {
                    _ = try await repository.add(provider: provider, alias: provider.displayName)
                }
            }
            await reload(); return true
        } catch { show(error); return false }
    }
    func addAccount(_ provider: ProviderID) async {
        guard let repository else { return }
        do {
            let count = try await repository.accounts().filter { $0.provider == provider }.count
            let account = try await repository.add(provider: provider, alias: "\(provider.displayName) \(count + 1)")
            await reload(); selectedAccountID = account.id
        } catch { show(error) }
    }
    func updateAccount(_ account: Account, alias: String, hidden: Bool, reset: Bool, threshold: Int?) async -> Bool {
        guard let repository else { return false }
        do {
            try await repository.updatePresentation(account.id, alias: alias, isHidden: hidden)
            if (reset && !account.notifications.resetEnabled) || (threshold != nil && account.notifications.thresholdPercent == nil) {
                await requestNotificationPermission()
            }
            try await repository.setNotificationPreferences(account.id, NotificationPreferences(resetEnabled: reset, thresholdPercent: threshold))
            await reload(); return true
        } catch { show(error); return false }
    }
    func disconnect(_ id: UUID) async {
        guard let login, accountOperations.insert(id).inserted else { return }
        defer { accountOperations.remove(id) }
        await notificationDelivery.beginAccountChange(id)
        await notificationDelivery.drainAccount(id)
        do { await coordinator?.cancelAccount(id); try await login.disconnect(id) }
        catch { show(error) }
        await notificationDelivery.endAccountChange(id)
        await reload(); await retryCredentialCleanup()
    }
    func removeAccount(_ id: UUID) async {
        guard let login, accountOperations.insert(id).inserted else { return }
        defer { accountOperations.remove(id) }
        await notificationDelivery.beginAccountChange(id)
        await notificationDelivery.drainAccount(id)
        do {
            await coordinator?.cancelAccount(id)
            try await login.removeAccount(id)
            loginRetryTasks.removeValue(forKey: id)?.cancel(); loginRetryAfter[id] = nil
            if selectedAccountID == id { selectedAccountID = nil }
        } catch { show(error) }
        await notificationDelivery.endAccountChange(id)
        await reload(); await retryCredentialCleanup()
    }
    func retryCredentialCleanup() async {
        guard let login else { return }
        credentialCleanupRequested = true
        guard !cleaningCredentials else { return }
        cleaningCredentials = true
        defer { cleaningCredentials = false }
        repeat {
            credentialCleanupRequested = false
            do { credentialCleanupPending = try await login.retryCleanup() > 0 }
            catch { credentialCleanupPending = true }
        } while credentialCleanupRequested
    }
    func cleanupAfterSheetDismissal() {
        dismissedSheetCleanup?.cancel()
        dismissedSheetCleanup = Task { [weak self] in
            guard let self else { return }
            await retryCredentialCleanup()
            // WebKit can retain a loading view after AppKit detaches it. Bounded retries allow
            // that asynchronous release; persistent failures remain journaled and user-visible.
            for delay in [1, 3] {
                guard credentialCleanupPending, !Task.isCancelled else { return }
                do { try await Task.sleep(for: .seconds(delay)) } catch { return }
                await retryCredentialCleanup()
            }
        }
    }
    func reorder(_ id: UUID, offset: Int) async {
        guard let repository else { return }
        var ids = snapshot.accounts.map(\.id)
        guard let current = ids.firstIndex(of: id), ids.indices.contains(current + offset) else { return }
        ids.swapAt(current, current + offset)
        do { try await repository.reorder(ids); await reload() } catch { show(error) }
    }
    func setPinned(_ id: UUID, pinned: Bool) {
        updatePreferences { value in
            if pinned && !value.pinnedAccountIDs.contains(id) { value.pinnedAccountIDs.append(id) }
            if !pinned { value.pinnedAccountIDs.removeAll { $0 == id } }
        }
    }
    func updatePreferences(_ transform: (inout DesktopPreferences) -> Void) {
        guard let preferencesURL else { return }
        var updated = preferences; transform(&updated)
        do { try updated.save(to: preferencesURL); preferences = updated; synchronizePanel() }
        catch { show(error) }
    }
    func setPanelVisible(_ visible: Bool) {
        updatePreferences { var panel = $0.panel ?? DesktopPanelPreferences(); panel.visible = visible; $0.panel = panel }
        if visible, preferences.panel?.visible == true { panelController?.focus() }
    }
    func setPanelAccounts(_ ids: [UUID]) {
        updatePreferences { var panel = $0.panel ?? DesktopPanelPreferences(); panel.accountIDs = ids; $0.panel = panel }
    }
    private func synchronizePanel() {
        guard !loading, startupError == nil else { return }
        if panelController == nil, preferences.panel?.visible == true {
            panelController = DesktopPanelController(makeContent: { [weak self] in
                guard let self else { return NSView() }
                return NSHostingView(rootView: DesktopPanelView().environment(self))
            }, didClose: { [weak self] in self?.setPanelVisible(false) }, didChangeFrame: { [weak self] frame in
                guard let self, self.preferences.panel?.frame != frame else { return }
                self.updatePreferences { var panel = $0.panel ?? DesktopPanelPreferences(); panel.frame = frame; $0.panel = panel }
            })
        }
        panelController?.apply(visible: preferences.panel?.visible == true, alwaysOnTop: preferences.panelAlwaysOnTop,
                               title: text("AI Quota 고정 패널", "AI Quota Desktop Panel"), savedFrame: preferences.panel?.frame)
    }
    func setAutomaticRefresh(_ enabled: Bool) async {
        updatePreferences { $0.automaticRefresh = enabled }
        await coordinator?.setAutomaticEnabled(preferences.automaticRefresh)
    }
    func setEnvironment(online: Bool, awake: Bool) async {
        self.online = online; self.awake = awake
        do { try await coordinator?.setEnvironment(online: online, awake: awake) }
        catch { show(error) }
    }
    func mayVerifyLogin(_ id: UUID) -> Bool { loginRetryAfter[id].map { $0 <= .now } ?? true }
    func delayLogin(_ id: UUID, until: Date) {
        let deadline = max(until, loginRetryAfter[id] ?? .distantPast)
        loginRetryAfter[id] = deadline
        loginRetryTasks[id]?.cancel()
        loginRetryTasks[id] = Task { [weak self] in
            while deadline > .now {
                do { try await Task.sleep(for: .seconds(min(deadline.timeIntervalSinceNow, 86_400))) }
                catch { return }
            }
            guard let self, self.loginRetryAfter[id] == deadline else { return }
            self.loginRetryAfter[id] = nil; self.loginRetryTasks[id] = nil
        }
    }
    func statusText(_ state: ConnectionState) -> String {
        switch state {
        case .disconnected: text("연결 필요", "Not connected")
        case .connecting: text("연결 중", "Connecting")
        case .connected: text("최신", "Up to date")
        case .stale: text("이전 수집값", "Previous reading")
        case .authenticationRequired: text("다시 로그인 필요", "Sign in again")
        case .unavailable: text("사용량 확인 불가", "Usage unavailable")
        case .error: text("확인 필요", "Needs attention")
        }
    }
    func show(_ error: any Error) {
        if error is CancellationError { return }
        switch error {
        case CoreError.invalidAlias: errorMessage = text("계정 이름을 입력해 주세요.", "Enter an account name.")
        case CoreError.singleAccountOnly: errorMessage = text("이 제공자는 계정을 하나만 추가할 수 있습니다.", "This provider supports one account.")
        case CoreError.identityMismatch: errorMessage = text("선택한 계정과 로그인한 계정이 다릅니다.", "The signed-in account does not match the selected account.")
        case CoreError.staleAttempt: errorMessage = text("계정 연결 상태가 변경됐습니다. 다시 확인해 주세요.", "The account connection changed. Please try again.")
        default: errorMessage = text("작업을 완료하지 못했습니다. 다시 시도해 주세요.", "The operation could not be completed. Please try again.")
        }
    }
}
