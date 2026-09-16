import AIQuotaCore
import SwiftUI

struct AccountEditor: View {
    @Environment(DesktopModel.self) private var model
    @Environment(\.dismiss) private var dismiss
    let selection: AccountSelection
    @State private var account: Account?
    @State private var alias = ""
    @State private var hidden = false
    @State private var resetEnabled = false
    @State private var thresholdEnabled = false
    @State private var threshold = 20
    @State private var saving = false
    @State private var loadFailed = false
    var body: some View {
        VStack(alignment: .leading, spacing: 18) {
            Text(model.text("계정 설정", "Account settings")).font(.title2.bold())
            if let account {
                Form {
                    Section(account.provider.displayName) {
                        TextField(model.text("계정 이름", "Account name"), text: $alias)
                            .accessibilityIdentifier("account.alias")
                        Toggle(model.text("전체 화면과 메뉴 막대에서 숨기기", "Hide from overview and menu bar"), isOn: $hidden)
                            .accessibilityIdentifier("account.hidden")
                        LabeledContent(model.text("상태", "Status"), value: model.statusText(account.state))
                    }
                    Section(model.text("사용량 알림", "Usage notifications")) {
                        Toggle(model.text("관찰 중인 기간이 리셋되면 알림", "Notify when an observed period resets"), isOn: $resetEnabled)
                        Toggle(model.text("남은 사용량이 기준 이하일 때 알림", "Notify when remaining usage crosses a threshold"), isOn: $thresholdEnabled)
                        if thresholdEnabled {
                            Stepper(value: $threshold, in: 0...100, step: 5) {
                                Text(model.text("남은 사용량 \(threshold)% 이하", "\(threshold)% remaining or less"))
                            }
                        }
                        Text(model.text("처음 확인한 값에는 알리지 않으며, 충분히 회복한 뒤 다시 기준을 넘을 때 알립니다.", "The first reading is silent. A new alert requires recovery before crossing the threshold again."))
                            .font(.caption).foregroundStyle(.secondary)
                    }
                    Section(model.text("표시 순서 · 즉시 적용", "Display order · applied immediately")) {
                        HStack {
                            Button(model.text("위로", "Move up")) { Task { await model.reorder(account.id, offset: -1) } }
                                .disabled(model.snapshot.accounts.first?.id == account.id)
                            Button(model.text("아래로", "Move down")) { Task { await model.reorder(account.id, offset: 1) } }
                                .disabled(model.snapshot.accounts.last?.id == account.id)
                        }
                    }
                }.formStyle(.grouped)
            } else if loadFailed {
                Text(model.text("계정 정보를 불러오지 못했습니다.", "The account could not be loaded.")).foregroundStyle(.secondary)
            } else {
                ProgressView().frame(maxWidth: .infinity, minHeight: 200)
            }
            HStack {
                Button(model.text("취소", "Cancel")) { dismiss() }.keyboardShortcut(.cancelAction)
                Spacer()
                Button(model.text("저장", "Save")) {
                    guard let account else { return }
                    saving = true
                    Task {
                        let success = await model.updateAccount(account, alias: alias, hidden: hidden, reset: resetEnabled,
                                                                threshold: thresholdEnabled ? threshold : nil)
                        saving = false
                        if success { dismiss() }
                    }
                }.buttonStyle(.borderedProminent).keyboardShortcut(.defaultAction)
                    .disabled(account == nil || saving || alias.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty)
                    .accessibilityIdentifier("account.save")
            }
        }.padding(24).frame(width: 560, height: 540).disabled(saving)
            .task(id: selection.id) {
                do {
                    guard let repository = model.repository else { throw CoreError.accountNotFound }
                    let value = try await repository.account(selection.id)
                    guard !Task.isCancelled else { return }
                    account = value; alias = value.alias; hidden = value.isHidden
                    resetEnabled = value.notifications.resetEnabled
                    thresholdEnabled = value.notifications.thresholdPercent != nil
                    threshold = value.notifications.thresholdPercent ?? 20
                } catch { if !Task.isCancelled { loadFailed = true } }
            }
    }
}
