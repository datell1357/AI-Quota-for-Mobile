import AIQuotaCore
import SwiftUI

struct MenuBarView: View {
    @Environment(DesktopModel.self) private var model
    @Environment(\.openWindow) private var openWindow
    @State private var showAllAccounts = false
    private var summaries: [DisplayAccount] {
        model.preferences.pinnedAccountIDs.isEmpty ? Array(model.visibleAccounts.prefix(6)) : model.pinnedAccounts
    }
    var body: some View {
        VStack(spacing: 12) {
            HStack {
                Text("AI Quota").font(.headline)
                Spacer()
                Button { Task { await model.refresh() } } label: { Image(systemName: "arrow.clockwise") }
                    .disabled(model.refreshing || model.loading || !model.online)
                    .help(model.text("전체 새로고침", "Refresh all"))
            }
            if model.loading { ProgressView().padding() }
            else {
                ScrollView {
                    if showAllAccounts {
                        LazyVStack(spacing: 10) {
                            ForEach(model.visibleAccounts) { account in
                                VStack(alignment: .trailing, spacing: 6) {
                                    accountButton(account, compact: false)
                                    Button(model.text("이 계정 새로고침", "Refresh account")) { Task { await model.refresh([account.id]) } }
                                        .disabled(model.refreshing || !model.online || account.state == .disconnected)
                                }
                            }
                        }
                    } else {
                        LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], alignment: .leading, spacing: 10) {
                            ForEach(summaries) { account in accountButton(account, compact: true) }
                        }
                    }
                    if (showAllAccounts ? model.visibleAccounts : summaries).isEmpty {
                        Text(model.text("표시할 계정이 없습니다.", "No accounts to display.")).foregroundStyle(.secondary).padding()
                    }
                }.frame(maxHeight: 540)
                Button(showAllAccounts ? model.text("고정 계정 요약", "Pinned summaries") : model.text("전체 계정 보기 (\(model.visibleAccounts.count))", "All accounts (\(model.visibleAccounts.count))")) {
                    showAllAccounts.toggle()
                }.buttonStyle(.link)
            }
            DesktopErrorMessage()
            Divider()
            Toggle(model.text("자동 수집", "Automatic refresh"), isOn: Binding(
                get: { model.preferences.automaticRefresh }, set: { enabled in Task { await model.setAutomaticRefresh(enabled) } }))
                .toggleStyle(.switch).controlSize(.small)
            HStack {
                Button(model.text("대시보드", "Dashboard")) { model.selectedAccountID = nil; showDashboard() }
                Button(model.text("고정 패널", "Desktop panel")) { model.setPanelVisible(true) }
                SettingsLink { Image(systemName: "gearshape") }.help(model.text("설정", "Settings"))
                Spacer()
                Button(model.text("종료", "Quit")) { NSApp.terminate(nil) }
            }
        }.padding(16).frame(width: 460)
    }
    private func accountButton(_ account: DisplayAccount, compact: Bool) -> some View {
        Button { model.selectedAccountID = account.id; showDashboard() } label: {
            AccountUsageCard(account: account, compact: compact, showsSettingsButton: false).contentShape(Rectangle())
        }.buttonStyle(.plain)
            .contextMenu {
                Button(model.text("새로고침", "Refresh")) { Task { await model.refresh([account.id]) } }
                    .disabled(model.refreshing || !model.online || account.state == .disconnected)
                Button(model.text("상세 보기", "View details")) { model.selectedAccountID = account.id; showDashboard() }
            }
    }
    private func showDashboard() { openWindow(id: "dashboard"); NSApp.activate(ignoringOtherApps: true) }
}
