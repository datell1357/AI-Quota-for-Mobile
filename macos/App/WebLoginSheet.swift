import SwiftUI
import WebKit

struct WebLoginSheet: View {
    @Environment(\.dismiss) private var dismiss
    @State private var flow: WebLoginFlow
    private let model: DesktopModel
    init(accountID: UUID, model: DesktopModel) {
        self.model = model
        _flow = State(initialValue: WebLoginFlow(accountID: accountID, model: model))
    }
    var body: some View {
        VStack(alignment: .leading, spacing: 14) {
            HStack {
                Text(model.text("\(flow.service?.provider.displayName ?? "") 계정 연결", "Connect \(flow.service?.provider.displayName ?? "") account")).font(.title2.bold())
                Spacer()
                Button { flow.reloadPage() } label: { Image(systemName: "arrow.clockwise") }.disabled(flow.busy)
                    .help(model.text("페이지 새로고침", "Reload page"))
                Text(flow.currentHost).font(.caption.monospaced()).foregroundStyle(.secondary)
            }
            Text(flow.service == .grok
                 ? model.text("Google 또는 X 등을 통해 로그인을 마친 뒤 ‘계정 확인’을 누르세요. 메시지를 보낼 필요 없이 개인 계정의 사용량을 확인해 연결합니다.", "After signing in with Google, X or another method, choose Check account. Your personal account's usage is verified without sending a message.")
                 : model.text("로그인을 마친 뒤 ‘계정 확인’을 누르세요. 선택한 워크스페이스의 사용량을 확인해야 연결됩니다.", "After signing in, choose Check account. The selected workspace's usage must be verified before connecting."))
                .foregroundStyle(.secondary)
            if let error = flow.errorMessage {
                Label(error, systemImage: "exclamationmark.triangle").foregroundStyle(.orange).fixedSize(horizontal: false, vertical: true)
            }
            if let webView = flow.webView {
                LoginWebView(webView: webView).frame(maxWidth: .infinity, maxHeight: .infinity)
                    .overlay { if flow.busy { Color.black.opacity(0.12); ProgressView().controlSize(.large) } }
            } else { ProgressView().frame(maxWidth: .infinity, maxHeight: .infinity) }
            if let discovery = flow.discovery {
                HStack {
                    Text(discovery.email ?? model.text("로그인한 계정", "Signed-in account")).lineLimit(2)
                    Spacer()
                    if flow.service?.requiresWorkspace == true {
                        Picker(model.text("워크스페이스", "Workspace"), selection: $flow.selectedWorkspace) {
                            Text(model.text("워크스페이스를 선택하세요", "Choose a workspace")).tag(nil as String?)
                            ForEach(discovery.choices) { choice in Text(choice.name).tag(Optional(choice.id)) }
                        }.frame(maxWidth: 380).disabled(flow.busy)
                    }
                }
            }
            HStack {
                Button(model.text("취소", "Cancel")) { Task { if await flow.cancel() { dismiss() } } }
                    .disabled(!flow.canCancel).keyboardShortcut(.cancelAction)
                Spacer()
                if flow.canRestart {
                    Button(model.text("로그인 다시 시작", "Restart sign-in")) { Task { await flow.start() } }
                } else if flow.discovery == nil {
                    Button(model.text("계정 확인", "Check account")) { flow.checkAccount() }
                        .disabled(!flow.maySubmit).buttonStyle(.borderedProminent).accessibilityIdentifier("login.check")
                } else {
                    Button(model.text("계정 다시 확인", "Check again")) { flow.checkAccount() }.disabled(!flow.maySubmit)
                    Button(model.text("연결", "Connect")) { flow.connect() }
                        .disabled(!flow.maySubmit || !flow.hasRequiredScope).buttonStyle(.borderedProminent)
                        .accessibilityIdentifier("login.connect")
                }
            }
        }.padding(22).frame(width: 840, height: 640)
            .interactiveDismissDisabled(!flow.canCancel)
            .task { await flow.start() }
            .onChange(of: flow.phase) { _, phase in if phase == .finished { dismiss() } }
            .onDisappear { Task { _ = await flow.cancel() } }
    }
}

private struct LoginWebView: NSViewRepresentable {
    let webView: WKWebView
    func makeNSView(context: Context) -> WKWebView { webView }
    func updateNSView(_ nsView: WKWebView, context: Context) {}
}
