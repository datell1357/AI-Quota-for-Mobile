import AIQuotaCore
import SwiftUI

struct DashboardView: View {
    @Environment(DesktopModel.self) private var model
    var body: some View {
        @Bindable var model = model
        NavigationSplitView {
            VStack(spacing: 0) {
                HStack(spacing: 10) {
                    Image(systemName: "chart.pie.fill").font(.title2).foregroundStyle(Color.accentColor)
                    Text("AI Quota").font(.title3.bold())
                    Spacer()
                }.padding(20)
                List(selection: $model.selectedAccountID) {
                    Button { model.selectedAccountID = nil } label: {
                        Label(model.text("모든 계정", "All accounts"), systemImage: "square.grid.2x2")
                    }.buttonStyle(.plain).accessibilityIdentifier("dashboard.overview")
                    Section(model.text("계정", "Accounts")) {
                        ForEach(model.snapshot.accounts) { account in
                            HStack {
                                ProviderMark(provider: account.provider)
                                Text(account.alias).lineLimit(2)
                                if account.isHidden { Image(systemName: "eye.slash").foregroundStyle(.secondary) }
                            }.tag(account.id)
                        }
                    }
                }.listStyle(.sidebar)
                Button { model.sheet = .providers } label: {
                    Label(model.text("제공자 추가", "Add providers"), systemImage: "plus")
                        .frame(maxWidth: .infinity, alignment: .leading)
                }.padding().accessibilityIdentifier("dashboard.addProviders")
            }.navigationSplitViewColumnWidth(min: 200, ideal: 220, max: 280)
        } detail: {
            if let startupError = model.startupError {
                ContentUnavailableView(model.text("데이터를 열 수 없음", "Cannot open data"), systemImage: "externaldrive.badge.exclamationmark", description: Text(startupError))
            } else if model.loading {
                ProgressView(model.text("계정 불러오는 중…", "Loading accounts…"))
            } else if let id = model.selectedAccountID {
                if let account = model.snapshot.accounts.first(where: { $0.id == id }) {
                    AccountDetailView(account: account)
                } else {
                    ContentUnavailableView(model.text("계정을 찾을 수 없음", "Account not found"), systemImage: "person.crop.circle.badge.questionmark")
                }
            } else {
                overview
            }
        }
        .toolbar {
            ToolbarItemGroup {
                if !model.online { Label(model.text("오프라인", "Offline"), systemImage: "wifi.slash").foregroundStyle(.secondary) }
                if model.credentialCleanupPending {
                    SettingsLink { Label(model.text("로그인 정보 정리 대기", "Sign-in cleanup pending"), systemImage: "exclamationmark.triangle") }
                        .foregroundStyle(.orange).labelStyle(.iconOnly)
                        .help(model.text("설정에서 남은 로그인 정보 정리를 다시 시도할 수 있습니다.", "Open Settings to retry cleanup of retired sign-in data."))
                }
                Button { Task { await model.refresh() } } label: { Label(model.text("새로고침", "Refresh"), systemImage: "arrow.clockwise") }
                    .disabled(model.refreshing || model.loading || !model.online).accessibilityIdentifier("dashboard.refresh")
                SettingsLink { Label(model.text("설정", "Settings"), systemImage: "gearshape") }
                Button { model.sheet = .widgets } label: { Label(model.text("위젯 추가 안내", "Add widgets"), systemImage: "rectangle.3.group") }
                    .accessibilityIdentifier("dashboard.widgets")
                Button { model.setPanelVisible(true) } label: {
                    Label(model.text("고정 패널", "Desktop panel"), systemImage: "pin")
                }.accessibilityIdentifier("dashboard.panel")
            }
        }
        .frame(minWidth: 820, minHeight: 560)
    }
    private var overview: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 24) {
                HStack(alignment: .top) {
                    VStack(alignment: .leading, spacing: 8) {
                        Text(model.text("사용량 한눈에 보기", "Your usage at a glance")).font(.largeTitle.bold())
                        Text(model.text("여러 계정의 한도와 잔여량을 한곳에서 확인하세요.", "Keep track of limits and remaining usage across your accounts."))
                            .foregroundStyle(.secondary)
                    }
                    Spacer()
                }
                if model.visibleAccounts.isEmpty {
                    ContentUnavailableView {
                        Label(model.text("표시할 계정이 없습니다", "No visible accounts"), systemImage: "square.stack.3d.up")
                    } description: {
                        Text(model.text("제공자를 추가하거나 사이드바에서 숨긴 계정을 다시 표시하세요.", "Add a provider or unhide an account from the sidebar."))
                    } actions: {
                        Button(model.text("제공자 추가", "Add providers")) { model.sheet = .providers }.buttonStyle(.borderedProminent)
                    }.padding(.vertical, 50)
                } else {
                    LazyVGrid(columns: [GridItem(.adaptive(minimum: 260), spacing: 16)], alignment: .leading, spacing: 16) {
                        ForEach(model.visibleAccounts) { account in
                            VStack(alignment: .leading, spacing: 8) {
                                AccountUsageCard(account: account)
                                Button(model.text("상세 보기", "View details")) { model.selectedAccountID = account.id }
                                    .buttonStyle(.link).padding(.horizontal, 8)
                            }
                        }
                    }
                }
            }.padding(28)
        }.background(Color(nsColor: .windowBackgroundColor))
    }
}

struct AccountDetailView: View {
    @Environment(DesktopModel.self) private var model
    let account: DisplayAccount
    @State private var confirmingDisconnect = false
    @State private var confirmingRemoval = false
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                HStack {
                    Text(account.alias).font(.largeTitle.bold())
                    Spacer()
                    Button(model.text("계정 설정", "Account settings")) { model.sheet = .edit(AccountSelection(id: account.id)) }
                }
                AccountUsageCard(account: account)
                HStack {
                    Button(model.text("이 계정 새로고침", "Refresh account")) { Task { await model.refresh([account.id]) } }
                        .disabled(model.refreshing || account.state == .disconnected || !model.online)
                    Toggle(model.text("메뉴 막대에 고정", "Pin to menu bar"), isOn: Binding(
                        get: { model.preferences.pinnedAccountIDs.contains(account.id) },
                        set: { model.setPinned(account.id, pinned: $0) }))
                        .disabled(!model.preferences.pinnedAccountIDs.contains(account.id) && model.preferences.pinnedAccountIDs.count >= 6)
                }
                if WebLoginService(provider: account.provider) != nil {
                    Button(account.state == .disconnected ? model.text("웹 계정 연결", "Connect web account") : model.text("다시 로그인", "Sign in again")) {
                        model.sheet = .connect(AccountSelection(id: account.id))
                    }.buttonStyle(.borderedProminent).accessibilityIdentifier("account.connect")
                }
                if account.provider == .cursor {
                    Button(model.text("Cursor 앱에서 연결", "Connect from Cursor app")) {
                        model.sheet = .cursorApp(AccountSelection(id: account.id))
                    }.accessibilityIdentifier("account.connectCursorApp")
                }
                if account.provider == .claude {
                    Button(model.text("Claude Code에서 연결", "Connect from Claude Code")) {
                        model.sheet = .claudeCode(AccountSelection(id: account.id))
                    }.accessibilityIdentifier("account.connectClaudeCode")
                }
                if account.provider == .codex {
                    Button(model.text("Codex CLI에서 연결", "Connect from Codex CLI")) {
                        model.sheet = .codexCLI(AccountSelection(id: account.id))
                    }.accessibilityIdentifier("account.connectCodexCLI")
                }
                if account.provider == .copilot {
                    Button(model.text("GitHub에서 연결", "Connect with GitHub")) {
                        model.sheet = .copilot(AccountSelection(id: account.id))
                    }.buttonStyle(.borderedProminent).accessibilityIdentifier("account.connectCopilot")
                }
                if account.provider == .antigravity {
                    Button(model.text("Google에서 연결", "Connect with Google")) {
                        model.sheet = .antigravity(AccountSelection(id: account.id))
                    }.buttonStyle(.borderedProminent).accessibilityIdentifier("account.connectAntigravity")
                }
                if account.provider.supportsMultipleAccounts {
                    Button(model.text("\(account.provider.displayName) 계정 추가", "Add another \(account.provider.displayName) account")) {
                        Task { await model.addAccount(account.provider) }
                    }.accessibilityIdentifier("account.addAnother")
                }
                if account.provider == .glm {
                    Button(model.text("API 키로 연결", "Connect with API key")) {
                        model.sheet = .glmAPIKey(AccountSelection(id: account.id))
                    }.buttonStyle(.borderedProminent).accessibilityIdentifier("account.connectGLM")
                }
                if account.state != .disconnected {
                    Button(model.text("연결 해제", "Disconnect"), role: .destructive) { confirmingDisconnect = true }
                }
                Button(model.text("계정 제거", "Remove account"), role: .destructive) { confirmingRemoval = true }
                    .accessibilityIdentifier("account.remove")
                if account.isHidden {
                    Label(model.text("이 계정은 전체 화면과 메뉴 막대에서 숨겨져 있습니다.", "This account is hidden from the overview and menu bar."), systemImage: "eye.slash")
                        .foregroundStyle(.secondary)
                }
            }.padding(28).frame(maxWidth: 820, alignment: .leading)
        }
        .disabled(model.accountOperations.contains(account.id))
        .overlay { if model.accountOperations.contains(account.id) { ProgressView() } }
        .confirmationDialog(model.text("이 계정의 연결을 해제할까요?", "Disconnect this account?"), isPresented: $confirmingDisconnect) {
            Button(model.text("연결 해제", "Disconnect"), role: .destructive) { Task { await model.disconnect(account.id) } }
        } message: { Text(model.text("계정 이름과 알림 설정은 유지됩니다.", "The account name and notification preferences will be kept.")) }
        .confirmationDialog(model.text("AI Quota에서 ‘\(account.alias)’ 계정을 제거할까요?", "Remove ‘\(account.alias)’ from AI Quota?"), isPresented: $confirmingRemoval, titleVisibility: .visible) {
            Button(model.text("계정 제거", "Remove account"), role: .destructive) { Task { await model.removeAccount(account.id) } }
        } message: {
            Text(model.text("이 Mac에 저장한 로그인 정보, 사용량과 알림 설정을 지웁니다. 제공자 서비스의 계정은 유지됩니다. 위젯의 기존 선택은 다른 계정으로 바뀌지 않으며, 다시 추가하면 새 계정으로 연결됩니다.", "Removes this Mac's saved sign-in, usage and notification settings. Your account with the provider remains. Existing widget selections will not switch to another account. Adding it again creates a new connection."))
        }
    }
}
