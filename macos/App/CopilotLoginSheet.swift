import SwiftUI

struct CopilotLoginSheet: View {
    @Environment(\.dismiss) private var dismiss
    @State private var flow: CopilotLoginFlow
    private let model: DesktopModel
    init(accountID: UUID, model: DesktopModel) {
        self.model = model
        _flow = State(initialValue: CopilotLoginFlow(accountID: accountID, model: model))
    }
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            Text(model.text("GitHub Copilot 연결", "Connect GitHub Copilot")).font(.title2.bold())
            if !flow.configured {
                Text(model.text("이 앱 버전에서는 GitHub 로그인을 아직 준비 중입니다. 기존 계정 정보는 유지됩니다.", "GitHub sign-in is not ready in this app version. Your existing account information is preserved."))
                    .foregroundStyle(.secondary).fixedSize(horizontal: false, vertical: true)
            } else {
                Text(model.text("인증 코드를 받은 뒤 브라우저에서 GitHub 계정으로 승인하세요. 계정과 Copilot 사용량을 확인한 후 이 Mac의 키체인에 연결 정보를 저장합니다.", "Get a code, then authorize your GitHub account in the browser. After verifying your account and Copilot usage, the connection is saved in this Mac’s Keychain."))
                    .foregroundStyle(.secondary).fixedSize(horizontal: false, vertical: true)
            }
            if let grant = flow.grant {
                Text(grant.userCode).font(.system(.largeTitle, design: .monospaced).bold()).textSelection(.enabled)
                    .accessibilityLabel(model.text("인증 코드 ", "Verification code ") + grant.userCode)
                Text("github.com/login/device").textSelection(.enabled)
                Text(model.text("코드 만료: ", "Code expires: ") + grant.expiresAt.formatted(date: .omitted, time: .shortened))
                    .font(.caption).foregroundStyle(.secondary)
                Button(model.text("GitHub에서 승인", "Authorize on GitHub")) { flow.openGitHub() }
                    .buttonStyle(.borderedProminent).accessibilityIdentifier("copilot.openGitHub")
                Label(model.text("브라우저의 승인을 기다리고 있습니다…", "Waiting for authorization in your browser…"), systemImage: "clock")
                    .font(.caption)
            }
            if let error = flow.errorMessage {
                Label(error, systemImage: "exclamationmark.triangle").foregroundStyle(.orange).fixedSize(horizontal: false, vertical: true)
            }
            HStack {
                Button(model.text("취소", "Cancel")) { Task { if await flow.cancel() { dismiss() } } }.keyboardShortcut(.cancelAction)
                Spacer()
                if flow.busy { ProgressView().controlSize(.small) }
                Button(model.text("인증 코드 받기", "Get verification code")) { flow.start() }
                    .disabled(!flow.mayStart).accessibilityIdentifier("copilot.start")
            }
        }.padding(24).frame(width: 540)
            .interactiveDismissDisabled(flow.busy)
            .onChange(of: flow.finished) { _, finished in if finished { dismiss() } }
            .onDisappear { Task { _ = await flow.cancel() } }
    }
}
