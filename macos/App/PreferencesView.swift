import AIQuotaCore
import ServiceManagement
import SwiftUI
import UserNotifications

struct PreferencesView: View {
    @Environment(DesktopModel.self) private var model
    @State private var changingLoginItem = false
    @Environment(\.openWindow) private var openWindow
    var body: some View {
        Form {
            DesktopErrorMessage()
            Section(model.text("화면", "Appearance")) {
                Picker(model.text("언어", "Language"), selection: binding(\.language)) {
                    Text(model.text("시스템 설정", "System")).tag(DesktopPreferences.Language.system)
                    Text("한국어").tag(DesktopPreferences.Language.korean)
                    Text("English").tag(DesktopPreferences.Language.english)
                }.accessibilityIdentifier("preferences.language")
                Picker(model.text("테마", "Theme"), selection: binding(\.appearance)) {
                    Text(model.text("시스템 설정", "System")).tag(DesktopPreferences.Appearance.system)
                    Text(model.text("밝게", "Light")).tag(DesktopPreferences.Appearance.light)
                    Text(model.text("어둡게", "Dark")).tag(DesktopPreferences.Appearance.dark)
                }.accessibilityIdentifier("preferences.appearance")
                Picker(model.text("카드 스타일", "Card style"), selection: binding(\.cardStyle)) {
                    Text("macOS").tag(DesktopPreferences.CardStyle.macOS)
                    Text("Windows").tag(DesktopPreferences.CardStyle.windows)
                }
            }
            Section(model.text("수집과 메뉴 막대", "Refresh and menu bar")) {
                Toggle(model.text("60초마다 자동 수집", "Refresh automatically every 60 seconds"), isOn: Binding(
                    get: { model.preferences.automaticRefresh }, set: { value in Task { await model.setAutomaticRefresh(value) } }))
                    .accessibilityIdentifier("preferences.automaticRefresh")
                Text(model.text("잠자기·오프라인 중에는 쉬고, 복구되면 최신 사용량을 확인합니다.", "Collection pauses while asleep or offline and resumes with a fresh reading."))
                    .font(.caption).foregroundStyle(.secondary)
                Picker(model.text("대표 계정", "Representative account"), selection: binding(\.representativeAccountID)) {
                    Text(model.text("첫 번째 표시 계정", "First visible account")).tag(nil as UUID?)
                    ForEach(model.visibleAccounts) { account in Text(account.alias).tag(Optional(account.id)) }
                    if let id = model.preferences.representativeAccountID,
                       !model.visibleAccounts.contains(where: { $0.id == id }) {
                        Text(model.text("숨겨졌거나 사용할 수 없는 계정", "Hidden or unavailable account")).tag(Optional(id))
                    }
                }
                Text(model.text("계정 상세에서 최대 6개를 메뉴 막대에 고정할 수 있습니다.", "Pin up to six accounts from their detail pages."))
                    .font(.caption).foregroundStyle(.secondary)
            }
            Section(model.text("고정 데스크톱 패널", "Desktop panel")) {
                Toggle(model.text("패널 표시", "Show panel"), isOn: Binding(get: { model.preferences.panel?.visible == true }, set: { model.setPanelVisible($0) }))
                    .accessibilityIdentifier("preferences.panel")
                Toggle(model.text("항상 위", "Always on top"), isOn: binding(\.panelAlwaysOnTop))
                Text(model.text("앱의 60초 수집 결과를 공유합니다. 패널에서 계정·표시 방식을 선택하고 창 크기와 위치를 조정할 수 있습니다.", "Shares the app’s 60-second collection. Choose accounts and display style in the panel, then resize or move it."))
                    .font(.caption).foregroundStyle(.secondary)
            }
            Section(model.text("시스템", "System")) {
                Toggle(model.text("로그인 시 실행", "Launch at login"), isOn: Binding(
                    get: { model.loginItemStatus == .enabled || model.loginItemStatus == .requiresApproval },
                    set: { enabled in changingLoginItem = true; Task { await model.setLaunchAtLogin(enabled); changingLoginItem = false } }))
                    .disabled(changingLoginItem)
                if model.loginItemStatus == .requiresApproval {
                    Button(model.text("로그인 항목 설정 열기", "Open Login Items settings")) { SMAppService.openSystemSettingsLoginItems() }
                }
                HStack {
                    LabeledContent(model.text("알림 권한", "Notifications"), value: notificationLabel)
                    if model.notificationStatus == .notDetermined {
                        Button(model.text("알림 켜기", "Enable")) { Task { await model.requestNotificationPermission() } }
                    } else {
                        Button(model.text("시스템 설정", "System settings")) {
                            NSWorkspace.shared.open(URL(string: "x-apple.systempreferences:com.apple.Notifications-Settings.extension")!)
                        }
                    }
                }
            }
            Section(model.text("도움말", "Help")) {
                if model.credentialCleanupPending {
                    Text(model.text("연결 해제한 로그인 정보 일부가 이 Mac에 남아 있습니다. 잠금을 해제하고 열려 있는 로그인 화면을 닫은 뒤 다시 정리해 주세요.", "Some retired sign-in data remains on this Mac. Unlock your Mac and close open sign-in windows, then retry cleanup."))
                        .font(.caption).foregroundStyle(.secondary)
                    Button(model.text("로그인 정보 정리 다시 시도", "Retry sign-in cleanup")) { Task { await model.retryCredentialCleanup() } }
                        .disabled(model.cleaningCredentials).accessibilityIdentifier("preferences.retryCredentialCleanup")
                }
                Button(model.text("시작 안내 다시 보기", "Show onboarding")) { model.updatePreferences { $0.onboardingComplete = false }; openWindow(id: "dashboard"); NSApp.activate(ignoringOtherApps: true) }
                Link(model.text("버그 제보", "Report a bug"), destination: URL(string: "https://github.com/datell1357/AI-Quota-for-Mobile/issues/new")!)
                Button(model.text("오픈 소스 라이선스", "Open-source licenses")) {
                    if let url = Bundle.main.resourceURL?.appendingPathComponent("ThirdPartyLicenses") { NSWorkspace.shared.open(url) }
                }
            }
        }.formStyle(.grouped).frame(width: 620, height: 720)
            .task { await model.updatePermissionStatus() }
    }
    private func binding<T>(_ keyPath: WritableKeyPath<DesktopPreferences, T>) -> Binding<T> {
        Binding(get: { model.preferences[keyPath: keyPath] }, set: { value in model.updatePreferences { $0[keyPath: keyPath] = value } })
    }
    private var notificationLabel: String {
        switch model.notificationStatus {
        case .authorized, .provisional, .ephemeral: model.text("허용됨", "Allowed")
        case .denied: model.text("꺼짐", "Off")
        case .notDetermined: model.text("아직 요청하지 않음", "Not requested")
        @unknown default: model.text("확인 필요", "Unknown")
        }
    }
}
