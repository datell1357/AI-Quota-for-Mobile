import SwiftUI

struct AntigravityLoginSheet: View {
    @Environment(\.dismiss) private var dismiss
    @State private var flow: AntigravityLoginFlow
    private let model: DesktopModel
    init(accountID: UUID, model: DesktopModel) {
        self.model = model
        _flow = State(initialValue: AntigravityLoginFlow(accountID: accountID, model: model))
    }
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            Text(model.text("Antigravity 연결", "Connect Antigravity")).font(.title2.bold())
            if flow.configured {
                Text(model.text("브라우저에서 Google 계정으로 승인하세요. Google 계정 정보와 Cloud Platform 접근 권한을 요청하며, 계정·프로젝트·사용량 확인에 사용합니다. 확인을 마치면 이 Mac의 키체인에 연결 정보를 저장합니다.", "Authorize your Google account in the browser. The app requests Google account information and Cloud Platform access to verify your account, project and usage. After verification, the connection is saved in this Mac’s Keychain."))
                    .foregroundStyle(.secondary).fixedSize(horizontal: false, vertical: true)
            } else {
                Text(model.text("이 앱 버전에서는 Antigravity 로그인을 아직 준비 중입니다. 기존 계정 정보는 유지됩니다.", "Antigravity sign-in is not ready in this app version. Your existing account information is preserved."))
                    .foregroundStyle(.secondary).fixedSize(horizontal: false, vertical: true)
            }
            if flow.busy {
                HStack {
                    ProgressView().controlSize(.small)
                    Text(flow.phase == .waitingForBrowser
                         ? model.text("브라우저에서 Google 승인을 마쳐 주세요. 5분 동안 기다립니다.", "Finish authorizing in your browser. This request stays open for five minutes.")
                         : flow.phase == .openingBrowser ? model.text("브라우저를 여는 중…", "Opening the browser…")
                         : model.text("계정과 사용량을 확인하는 중…", "Verifying the account and usage…"))
                }.font(.caption).fixedSize(horizontal: false, vertical: true)
            }
            if let error = flow.errorMessage {
                Label(error, systemImage: "exclamationmark.triangle").foregroundStyle(.orange).fixedSize(horizontal: false, vertical: true)
            }
            HStack {
                Button(model.text("취소", "Cancel")) { Task { if await flow.cancel() { dismiss() } } }.keyboardShortcut(.cancelAction)
                Spacer()
                Button(model.text("Google에서 로그인", "Sign in with Google")) { flow.start() }
                    .disabled(!flow.mayStart).buttonStyle(.borderedProminent).accessibilityIdentifier("antigravity.start")
            }
        }.padding(24).frame(width: 560)
            .interactiveDismissDisabled(flow.busy)
            .onChange(of: flow.finished) { _, finished in if finished { dismiss() } }
            .onDisappear { Task { _ = await flow.cancel() } }
    }
}
