import SwiftUI

struct CodexCLILoginSheet: View {
    @Environment(\.dismiss) private var dismiss
    @State private var flow: CodexCLILoginFlow
    private let model: DesktopModel
    init(accountID: UUID, model: DesktopModel) {
        self.model = model; _flow = State(initialValue: CodexCLILoginFlow(accountID: accountID, model: model))
    }
    var body: some View {
        VStack(alignment: .leading, spacing: 18) {
            Text(model.text("Codex CLI 연결", "Connect Codex CLI")).font(.title2.bold())
            Text(model.text("Codex CLI에서 ChatGPT로 로그인한 뒤 해당 환경의 auth.json을 선택하세요. 선택한 계정의 구독 사용량을 확인하며 API 키 비용과는 별개입니다.", "Sign in to ChatGPT in Codex CLI, then choose that environment’s auth.json. This checks the selected account’s subscription usage, separately from API key costs."))
                .foregroundStyle(.secondary).fixedSize(horizontal: false, vertical: true)
            Text(model.text("연결 후에도 CLI가 인증 정보를 관리합니다. AI Quota는 파일을 읽기만 하고 토큰을 복사하거나 갱신하지 않습니다. CLI에서 계정이 바뀌면 기존 계정에 다른 사용량을 표시하지 않습니다.", "Codex CLI continues to manage its credentials. AI Quota only reads the file and does not save a token copy or refresh it. Switching CLI accounts will not replace this account’s usage."))
                .font(.callout).fixedSize(horizontal: false, vertical: true)
            Button(model.text("auth.json 선택…", "Choose auth.json…")) { flow.chooseFile() }
                .disabled(flow.busy).accessibilityIdentifier("codexCLI.chooseFile")
            if let path = flow.path { Text(path).font(.caption.monospaced()).textSelection(.enabled).fixedSize(horizontal: false, vertical: true) }
            Text(model.text("보통 ~/.codex/auth.json에 있습니다. 다른 CODEX_HOME을 사용한다면 그 폴더의 파일을 고르세요. 파일이 없는 키체인·메모리 전용 환경은 웹 계정 연결을 이용할 수 있습니다. 세션이 만료되면 같은 CLI 환경에서 다시 로그인하세요.", "The usual location is ~/.codex/auth.json. If you use another CODEX_HOME, choose its file. For Keychain or memory-only environments without this file, use the web account connection. If the session expires, sign in again in the same CLI environment."))
                .font(.caption).foregroundStyle(.secondary).fixedSize(horizontal: false, vertical: true)
            if let error = flow.errorMessage { Label(error, systemImage: "exclamationmark.triangle").foregroundStyle(.orange).fixedSize(horizontal: false, vertical: true) }
            HStack {
                Button(model.text("취소", "Cancel")) { Task { if await flow.cancel() { dismiss() } } }.keyboardShortcut(.cancelAction)
                Spacer()
                if flow.busy { ProgressView().controlSize(.small) }
                Button(model.text("확인 후 연결", "Verify and connect")) { flow.connect() }
                    .disabled(!flow.maySubmit).buttonStyle(.borderedProminent).accessibilityIdentifier("codexCLI.connect")
            }
        }.padding(24).frame(width: 570).interactiveDismissDisabled(flow.busy)
            .onChange(of: flow.finished) { _, done in if done { dismiss() } }
            .onDisappear { Task { _ = await flow.cancel() } }
    }
}
