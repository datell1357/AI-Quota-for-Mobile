import AIQuotaCore
import SwiftUI

struct ProviderSelectionGrid: View {
    @Environment(DesktopModel.self) private var model
    @Binding var selected: Set<ProviderID>
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            HStack {
                Button(model.text("모두 선택", "Select all")) { selected = Set(ProviderID.allCases) }
                    .accessibilityIdentifier("providers.selectAll")
                Button(model.text("모두 선택 취소", "Deselect all")) { selected.removeAll() }
                    .accessibilityIdentifier("providers.deselectAll")
                Spacer()
                Text(model.text("\(selected.count)개 선택", "\(selected.count) selected")).foregroundStyle(.secondary)
            }
            LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], spacing: 10) {
                ForEach(ProviderID.allCases, id: \.self) { provider in
                    Toggle(isOn: Binding(get: { selected.contains(provider) }, set: { enabled in
                        if enabled { selected.insert(provider) } else { selected.remove(provider) }
                    })) {
                        HStack { ProviderMark(provider: provider); Text(provider.displayName); Spacer() }
                    }
                    .toggleStyle(.checkbox).padding(10)
                    .background(.quaternary.opacity(0.3), in: RoundedRectangle(cornerRadius: 10))
                    .accessibilityIdentifier("provider.\(provider.rawValue)")
                }
            }
        }
    }
}

struct ProviderChooser: View {
    @Environment(DesktopModel.self) private var model
    @Environment(\.dismiss) private var dismiss
    @State private var selected: Set<ProviderID> = []
    @State private var saving = false
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            Text(model.text("제공자 추가", "Add providers")).font(.title2.bold())
            Text(model.text("사용하는 서비스를 골라 주세요. Claude와 Codex는 계정을 여러 개 추가할 수 있습니다.", "Choose the services you use. Claude and Codex support multiple accounts."))
                .foregroundStyle(.secondary)
            ProviderSelectionGrid(selected: $selected)
            HStack {
                Button(model.text("취소", "Cancel")) { dismiss() }.keyboardShortcut(.cancelAction)
                Spacer()
                Button(model.text("추가", "Add")) {
                    saving = true
                    Task { let success = await model.addProviders(selected); saving = false; if success { dismiss() } }
                }.buttonStyle(.borderedProminent).keyboardShortcut(.defaultAction)
                    .disabled(saving || selected.isEmpty).accessibilityIdentifier("providers.add")
            }
        }.padding(24).frame(width: 540).disabled(saving)
    }
}
