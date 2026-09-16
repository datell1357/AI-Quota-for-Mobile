import AIQuotaCore
import SwiftUI

struct DesktopPanelView: View {
    @Environment(DesktopModel.self) private var model
    @State private var selectingAccounts = false
    var body: some View {
        VStack(spacing: 10) {
            HStack {
                Picker(model.text("표시 방식", "Display style"), selection: Binding(
                    get: { model.preferences.panelStyle }, set: { style in model.updatePreferences { $0.panelStyle = style } })) {
                        Text(model.text("목록", "List")).tag("list")
                        Text(model.text("배터리", "Battery")).tag("battery")
                    }.pickerStyle(.segmented).frame(maxWidth: 200).accessibilityIdentifier("panel.style")
                Spacer(minLength: 4)
                Button { Task { await model.refresh(model.panelAccountIDs) } } label: { Image(systemName: "arrow.clockwise") }
                    .disabled(model.refreshing || !model.online || model.panelAccountIDs.isEmpty)
                    .help(model.text("표시 계정 새로고침", "Refresh displayed accounts")).accessibilityIdentifier("panel.refresh")
                Button { NSWorkspace.shared.open(DashboardDeepLink.url) } label: { Image(systemName: "square.grid.2x2") }
                    .help(model.text("대시보드", "Dashboard")).accessibilityIdentifier("panel.dashboard")
            }
            HStack {
                Toggle(model.text("항상 위", "Always on top"), isOn: Binding(get: { model.preferences.panelAlwaysOnTop },
                    set: { value in model.updatePreferences { $0.panelAlwaysOnTop = value } }))
                    .toggleStyle(.checkbox).accessibilityIdentifier("panel.alwaysOnTop")
                Spacer()
                Button(model.text("계정 선택", "Choose accounts")) { selectingAccounts = true }
                    .accessibilityIdentifier("panel.chooseAccounts")
                    .popover(isPresented: $selectingAccounts) {
                        PanelAccountPicker(initial: model.panelAccountIDs).environment(model)
                            .preferredColorScheme(model.preferences.colorScheme)
                    }
            }.font(.caption)
            Divider()
            TimelineView(.periodic(from: .now, by: 30)) { context in
                // This clock changes age labels only. Collection is owned by the single coordinator.
                ScrollView {
                    if let presentation = try? WidgetPresentation(kind: .batterySix, size: .large,
                        selectedIDs: model.panelAccountIDs.map(\.uuidString), snapshot: model.snapshot) {
                        if presentation.slots.isEmpty {
                            ContentUnavailableView(model.text("표시할 계정을 선택해주세요", "Choose accounts to display"), systemImage: "person.crop.rectangle.badge.plus")
                        } else {
                            let columns = model.preferences.panelStyle == "battery" ? 2 : 1
                            LazyVGrid(columns: Array(repeating: GridItem(.flexible(), alignment: .topLeading), count: columns), alignment: .leading, spacing: 10) {
                                ForEach(presentation.slots) { slot in
                                    Button { NSWorkspace.shared.open(AccountDeepLink.url(slot.id)) } label: {
                                        DesktopPanelAccount(slot: slot, date: context.date, battery: columns == 2,
                                                            korean: model.preferences.usesKorean, windowsStyle: model.preferences.cardStyle == .windows)
                                    }.buttonStyle(.plain).accessibilityIdentifier("panel.account.\(slot.id.uuidString)")
                                }
                            }
                        }
                    } else {
                        Text(model.text("계정 선택을 확인해주세요.", "Check the account selection.")).foregroundStyle(.orange)
                    }
                }
            }
            DesktopErrorMessage()
            HStack {
                Text(!model.online ? model.text("오프라인 · 마지막 수집값", "Offline · Last readings") :
                     model.preferences.automaticRefresh ? model.text("자동 수집 · 60초", "Automatic refresh · 60s") : model.text("자동 수집 꺼짐", "Automatic refresh off"))
                Spacer()
                if model.refreshing { ProgressView().controlSize(.small) }
            }.font(.caption2).foregroundStyle(.secondary)
        }.padding(14)
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .preferredColorScheme(model.preferences.colorScheme)
            .environment(\.locale, Locale(identifier: model.preferences.usesKorean ? "ko_KR" : "en_US"))
    }
}

private struct DesktopPanelAccount: View {
    let slot: WidgetAccountSlot
    let date: Date
    let battery: Bool
    let korean: Bool
    let windowsStyle: Bool
    private var copy: WidgetUsageText { WidgetUsageText(korean: korean) }
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text(copy.alias(slot)).font(.headline).fixedSize(horizontal: false, vertical: true)
            if let account = slot.account { Text(account.provider.displayName).font(.caption).foregroundStyle(.secondary) }
            HStack(spacing: 12) {
                if battery {
                    ZStack {
                        Circle().stroke(Color.primary.opacity(0.08), lineWidth: 5)
                        if let metric = slot.representative, metric.status == .limited, let fraction = metric.remainingFraction {
                            Circle().trim(from: 0, to: fraction).stroke(fraction <= 0.2 ? Color.orange : .accentColor,
                                style: StrokeStyle(lineWidth: 5, lineCap: .round)).rotationEffect(.degrees(-90))
                        }
                        Text(slot.representative?.status == .unlimited ? "∞" : copy.value(slot.representative))
                            .font(.system(.subheadline, design: .rounded).bold()).minimumScaleFactor(0.6).multilineTextAlignment(.center).lineLimit(2)
                    }.frame(width: 68, height: 68).padding(3).accessibilityHidden(true)
                } else {
                    Text(copy.value(slot.representative)).font(.system(.title2, design: .rounded).bold()).monospacedDigit()
                    if let metric = slot.representative { Text(copy.label(metric)).font(.caption).foregroundStyle(.secondary) }
                }
            }
            Text(copy.fetched(slot.account?.fetchedAt)).font(.caption).foregroundStyle(.secondary)
            if slot.isStale(at: date) { Text(copy.status(slot, at: date)).font(.caption).foregroundStyle(.orange) }
        }.padding(12).frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
            .background(Color(nsColor: .controlBackgroundColor), in: RoundedRectangle(cornerRadius: windowsStyle ? 4 : 14))
            .overlay(RoundedRectangle(cornerRadius: windowsStyle ? 4 : 14).strokeBorder(.primary.opacity(0.08)))
            .contentShape(Rectangle()).accessibilityElement(children: .ignore).accessibilityLabel(copy.accessibility(slot, at: date))
    }
}

private struct PanelAccountPicker: View {
    private struct OrderedAccount: Identifiable {
        let accountID: UUID
        var id: String { "ordered-" + accountID.uuidString }
    }
    @Environment(DesktopModel.self) private var model
    @Environment(\.dismiss) private var dismiss
    @State private var selection: [UUID]
    init(initial: [UUID]) { _selection = State(initialValue: initial) }
    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            Text(model.text("최대 6개를 선택해주세요.", "Select up to 6 accounts.")).font(.headline)
            ScrollView {
                VStack(alignment: .leading, spacing: 12) {
                if !selection.isEmpty {
                    VStack(alignment: .leading, spacing: 8) {
                        Text(model.text("표시 순서", "Display order")).font(.caption).foregroundStyle(.secondary)
                        ForEach(selection.map { OrderedAccount(accountID: $0) }) { ordered in
                            let id = ordered.accountID
                            HStack {
                                Text(model.snapshot.accounts.first { $0.id == id }?.alias ?? model.text("계정 없음", "Unavailable account"))
                                    .fixedSize(horizontal: false, vertical: true)
                                Spacer()
                                Button { move(id, by: -1) } label: { Image(systemName: "arrow.up") }
                                    .disabled(selection.first == id).help(model.text("앞으로", "Move earlier"))
                                    .accessibilityLabel(model.text("앞으로", "Move earlier")).accessibilityIdentifier("panel.earlier.\(id.uuidString)")
                                Button { move(id, by: 1) } label: { Image(systemName: "arrow.down") }
                                    .disabled(selection.last == id).help(model.text("뒤로", "Move later"))
                                    .accessibilityLabel(model.text("뒤로", "Move later")).accessibilityIdentifier("panel.later.\(id.uuidString)")
                                Button { selection.removeAll { $0 == id } } label: { Image(systemName: "minus.circle") }
                                    .help(model.text("선택 해제", "Deselect"))
                                    .accessibilityLabel(model.text("선택 해제", "Deselect"))
                            }.buttonStyle(.borderless).accessibilityElement(children: .contain)
                        }
                    }
                }
                VStack(alignment: .leading, spacing: 8) {
                    Text(model.text("계정", "Accounts")).font(.caption).foregroundStyle(.secondary)
                    ForEach(model.snapshot.accounts) { account in
                        Toggle(account.alias, isOn: Binding(get: { selection.contains(account.id) }, set: { checked in
                            if checked && selection.count < 6 { selection.append(account.id) }
                            if !checked { selection.removeAll { $0 == account.id } }
                        })).disabled(selection.count >= 6 && !selection.contains(account.id))
                    }
                }
                }.frame(maxWidth: .infinity, alignment: .leading)
            }.frame(maxHeight: .infinity)
            HStack {
                Button(model.text("모두 선택 취소", "Deselect all")) { selection = [] }
                Spacer()
                Button(model.text("취소", "Cancel")) { dismiss() }.keyboardShortcut(.cancelAction)
                Button(model.text("적용", "Apply")) { model.setPanelAccounts(selection); dismiss() }.keyboardShortcut(.defaultAction)
                    .accessibilityIdentifier("panel.selection.apply")
            }
        }.padding(16).frame(width: 440, height: 480)
    }
    private func move(_ id: UUID, by offset: Int) {
        guard let index = selection.firstIndex(of: id), selection.indices.contains(index + offset) else { return }
        selection.swapAt(index, index + offset)
    }
}
