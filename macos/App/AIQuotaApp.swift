import SwiftUI

@main
struct AIQuotaApp: App {
    @NSApplicationDelegateAdaptor(DesktopAppDelegate.self) private var appDelegate
    @State private var model = DesktopModel()
    var body: some Scene {
        Window("AI Quota", id: "dashboard") {
            DesktopRoot(presentsSheets: true) {
                if model.loading || model.startupError != nil || model.preferences.onboardingComplete { DashboardView() }
                else { OnboardingView() }
            }.environment(model)
        }.defaultSize(width: 1040, height: 720)
        Settings { DesktopRoot { PreferencesView() }.environment(model) }
        MenuBarExtra(model.menuBarTitle, systemImage: "chart.pie.fill") {
            DesktopRoot { MenuBarView() }.environment(model)
        }.menuBarExtraStyle(.window)
    }
}

private struct DesktopRoot<Content: View>: View {
    @Environment(DesktopModel.self) private var model
    @Environment(\.openWindow) private var openWindow
    @Environment(\.scenePhase) private var scenePhase
    var presentsSheets = false
    @ViewBuilder let content: () -> Content
    var body: some View {
        @Bindable var model = model
        content()
            .preferredColorScheme(model.preferences.colorScheme)
            .environment(\.locale, Locale(identifier: model.preferences.usesKorean ? "ko_KR" : "en_US"))
            .task { await model.start() }
            .onOpenURL { url in
                if let id = AccountDeepLink.accountID(url) { model.selectedAccountID = id }
                else if DashboardDeepLink.matches(url) { model.selectedAccountID = nil }
                else { return }
                openWindow(id: "dashboard"); NSApp.activate(ignoringOtherApps: true)
            }
            .onChange(of: scenePhase) { _, phase in
                if phase == .active { Task { await model.updatePermissionStatus(); await model.retryCredentialCleanup() } }
            }
            .sheet(item: Binding(get: { presentsSheets ? model.sheet : nil },
                                 set: { if presentsSheets { model.sheet = $0 } }), onDismiss: {
                // WebKit may reject profile removal while the sheet still retains its web view.
                model.cleanupAfterSheetDismissal()
            }) { sheet in
                Group {
                    switch sheet {
                    case .providers: ProviderChooser()
                    case .edit(let account): AccountEditor(selection: account)
                    case .connect(let account): WebLoginSheet(accountID: account.id, model: model)
                    case .glmAPIKey(let account): GLMAPIKeySheet(accountID: account.id, model: model)
                    case .copilot(let account): CopilotLoginSheet(accountID: account.id, model: model)
                    case .antigravity(let account): AntigravityLoginSheet(accountID: account.id, model: model)
                    case .codexCLI(let account): CodexCLILoginSheet(accountID: account.id, model: model)
                    case .claudeCode(let account): ClaudeCodeLoginSheet(accountID: account.id, model: model)
                    case .widgets: WidgetHelpView()
                    }
                }.environment(model).preferredColorScheme(model.preferences.colorScheme)
                    .environment(\.locale, Locale(identifier: model.preferences.usesKorean ? "ko_KR" : "en_US"))
            }
            .alert(model.text("작업을 완료하지 못했습니다", "Unable to complete operation"), isPresented: Binding(
                get: { presentsSheets && model.errorMessage != nil }, set: { if !$0 { model.errorMessage = nil } })) {
                    Button(model.text("확인", "OK")) { model.errorMessage = nil }
                } message: { Text(model.errorMessage ?? "") }
    }
}

struct WidgetHelpView: View {
    @Environment(DesktopModel.self) private var model
    @Environment(\.dismiss) private var dismiss
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            Text(model.text("데스크톱 위젯", "Desktop widgets")).font(.title2.bold())
            Text(model.text("데스크톱을 Control-클릭하고 ‘위젯 편집’을 선택하세요. AI Quota를 추가한 뒤 위젯을 편집해 표시할 계정을 고릅니다.", "Control-click the desktop and choose Edit Widgets. Add AI Quota, then edit the widget to choose its accounts."))
            Text(model.text("위젯은 마지막 수집값을 표시합니다. 갱신 시점은 macOS가 결정합니다.", "Widgets show the last collected reading. macOS controls their refresh schedule."))
                .foregroundStyle(.secondary)
            Text(model.text("계정 위젯은 1개, 대시보드는 4·6개, 배터리는 2·4·6개 계정을 표시합니다. 각 위젯을 편집해 계정과 순서를 따로 정할 수 있습니다.", "Account widgets show one account, dashboards up to four or six, and batteries up to two, four or six. Edit each widget to set its own accounts and order."))
            if !model.widgetSharingAvailable {
                Text(model.text("현재 위젯 공유 데이터를 사용할 수 없습니다. 위젯에 계정이 나타나지 않으면 앱의 연결 상태와 설치 버전을 확인해주세요.", "Shared widget data is currently unavailable. If accounts do not appear, check the app's connection status and installed version."))
                    .font(.caption).foregroundStyle(.orange)
            }
            Button(model.text("닫기", "Close")) { dismiss() }.keyboardShortcut(.defaultAction)
        }.padding(28).frame(width: 440)
    }
}
