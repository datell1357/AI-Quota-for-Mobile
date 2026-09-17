import SwiftUI

struct ClaudeCodeLoginSheet: View {
    @Environment(\.dismiss) private var dismiss
    @State private var flow: ClaudeCodeLoginFlow
    private let model: DesktopModel
    init(accountID: UUID, model: DesktopModel) {
        self.model = model; _flow = State(initialValue: ClaudeCodeLoginFlow(accountID: accountID, model: model))
    }
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text(model.text("Claude Code 연결", "Connect Claude Code")).font(.title2.bold())
            Text(model.text("Claude Code에 저장된 Claude 구독 로그인을 선택하세요. 서버에서 계정·조직과 사용량을 확인한 뒤 연결합니다. API 키 비용이나 로컬 토큰 통계와는 별개입니다.", "Choose the Claude subscription login stored by Claude Code. The server verifies the account, organization and usage before connecting. This is separate from API key costs or local token counts."))
                .foregroundStyle(.secondary).fixedSize(horizontal: false, vertical: true)
            Picker(model.text("인증 저장 위치", "Credential storage"), selection: $flow.useKeychain) {
                Text("Keychain").tag(true)
                Text(model.text("파일", "File")).tag(false)
            }.pickerStyle(.segmented).disabled(flow.busy).accessibilityIdentifier("claudeCode.source")
            if flow.useKeychain {
                TextField(model.text("서비스 이름", "Service name"), text: $flow.service).disabled(flow.busy).accessibilityIdentifier("claudeCode.service")
                TextField(model.text("Keychain 계정", "Keychain account"), text: $flow.keychainAccount).disabled(flow.busy).accessibilityIdentifier("claudeCode.keychainAccount")
                Text(model.text("기본 항목을 표시합니다. 다른 Claude Code 환경은 Keychain 접근 앱에 표시된 정확한 항목 이름과 계정을 입력하세요. 연결할 때 macOS가 접근 허용을 요청할 수 있습니다.", "The default item is shown. For another Claude Code environment, enter the exact item name and account shown in Keychain Access. macOS may ask for access when you connect."))
                    .font(.caption).foregroundStyle(.secondary).fixedSize(horizontal: false, vertical: true)
            } else {
                Button(model.text(".credentials.json 선택…", "Choose .credentials.json…")) { flow.chooseFile() }.disabled(flow.busy).accessibilityIdentifier("claudeCode.chooseFile")
                if let path = flow.path { Text(path).font(.caption.monospaced()).textSelection(.enabled).fixedSize(horizontal: false, vertical: true) }
                Text(model.text("파일 저장 환경에서는 보통 ~/.claude/.credentials.json에 있습니다. 다른 설정 폴더를 쓴다면 해당 파일을 직접 선택하세요.", "File-based storage usually uses ~/.claude/.credentials.json. If you use another configuration directory, select its file explicitly."))
                    .font(.caption).foregroundStyle(.secondary).fixedSize(horizontal: false, vertical: true)
            }
            Text(model.text("선택한 항목만 읽으며 토큰을 복사 저장하거나 갱신하지 않습니다. 계정이 바뀌면 다른 사용량을 표시하지 않습니다. 만료되면 같은 Claude Code 환경에서 다시 로그인하세요.", "Only the selected item is read; no token copy is saved or refreshed. An account switch will not replace this account’s usage. If it expires, sign in again in the same Claude Code environment."))
                .font(.callout).fixedSize(horizontal: false, vertical: true)
            if let error = flow.errorMessage { Label(error, systemImage: "exclamationmark.triangle").foregroundStyle(.orange).fixedSize(horizontal: false, vertical: true) }
            HStack {
                Button(model.text("취소", "Cancel")) { Task { if await flow.cancel() { dismiss() } } }.keyboardShortcut(.cancelAction)
                Spacer()
                if flow.busy { ProgressView().controlSize(.small) }
                Button(model.text("확인 후 연결", "Verify and connect")) { flow.connect() }
                    .disabled(!flow.maySubmit).buttonStyle(.borderedProminent).accessibilityIdentifier("claudeCode.connect")
            }
        }.padding(24).frame(width: 570).textFieldStyle(.roundedBorder)
            .interactiveDismissDisabled(flow.busy)
            .onChange(of: flow.finished) { _, done in if done { dismiss() } }
            .onDisappear { Task { _ = await flow.cancel() } }
    }
}
