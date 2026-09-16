import AIQuotaCollectors
import SwiftUI

struct GLMAPIKeySheet: View {
    @Environment(\.dismiss) private var dismiss
    @State private var flow: GLMAPIKeyFlow
    private let model: DesktopModel
    init(accountID: UUID, model: DesktopModel) {
        self.model = model
        _flow = State(initialValue: GLMAPIKeyFlow(accountID: accountID, model: model))
    }
    var body: some View {
        VStack(alignment: .leading, spacing: 18) {
            Text(model.text("GLM API 키 연결", "Connect GLM API key")).font(.title2.bold())
            Text(model.text("사용량을 확인한 뒤 API 키를 이 Mac의 키체인에 저장합니다. 키를 발급한 지역과 사용 범위를 선택하세요.", "After verifying usage, the API key is saved in this Mac's Keychain. Choose the region that issued the key and its usage scope."))
                .foregroundStyle(.secondary).fixedSize(horizontal: false, vertical: true)
            Form {
                Picker(model.text("지역", "Region"), selection: $flow.region) {
                    Text("Global · Z.ai").tag(GLMAPIConfiguration.Region.global)
                    Text("China · BigModel").tag(GLMAPIConfiguration.Region.china)
                }.accessibilityIdentifier("glm.region")
                Picker(model.text("범위", "Scope"), selection: $flow.scope) {
                    Text(model.text("개인", "Personal")).tag(GLMAPIConfiguration.Scope.personal)
                    Text(model.text("팀", "Team")).tag(GLMAPIConfiguration.Scope.team)
                }.accessibilityIdentifier("glm.scope")
                if flow.scope == .team {
                    TextField(model.text("조직 ID", "Organization ID"), text: $flow.organization).accessibilityIdentifier("glm.organization")
                    TextField(model.text("프로젝트 ID", "Project ID"), text: $flow.project).accessibilityIdentifier("glm.project")
                }
                SecureField("API key", text: $flow.apiKey).accessibilityIdentifier("glm.key")
            }.disabled(flow.busy || flow.loading)
            if flow.existingBinding != nil {
                Text(model.text("이 연결은 기존 API 키와 지역·범위에 연결되어 있습니다. 다시 연결할 때 같은 정보를 입력하세요.", "This connection is bound to its API key, region and scope. Enter the same details when reconnecting."))
                    .font(.caption).foregroundStyle(.secondary).fixedSize(horizontal: false, vertical: true)
            }
            if let error = flow.errorMessage {
                Label(error, systemImage: "exclamationmark.triangle").foregroundStyle(.orange).fixedSize(horizontal: false, vertical: true)
            }
            HStack {
                Button(model.text("취소", "Cancel")) { Task { if await flow.cancel() { dismiss() } } }.keyboardShortcut(.cancelAction)
                Spacer()
                if flow.busy { ProgressView().controlSize(.small) }
                Button(model.text("확인 후 연결", "Verify and connect")) { flow.connect() }
                    .disabled(!flow.maySubmit).buttonStyle(.borderedProminent).accessibilityIdentifier("glm.connect")
            }
        }.padding(24).frame(width: 540)
            .interactiveDismissDisabled(flow.busy)
            .task { await flow.start() }
            .onChange(of: flow.finished) { _, finished in if finished { dismiss() } }
            .onDisappear { Task { _ = await flow.cancel() } }
    }
}
