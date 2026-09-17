import SwiftUI

struct CursorAppLoginSheet: View {
    @Environment(\.dismiss) private var dismiss
    @State private var flow: CursorAppLoginFlow
    private let model: DesktopModel
    init(accountID: UUID, model: DesktopModel) {
        self.model = model; _flow = State(initialValue: CursorAppLoginFlow(accountID: accountID, model: model))
    }
    var body: some View {
        VStack(alignment: .leading, spacing: 18) {
            Text(model.text("Cursor 앱 연결", "Connect Cursor app")).font(.title2.bold())
            Text(model.text("Cursor 앱에서 로그인한 뒤 해당 환경의 state.vscdb를 선택하세요. 서버에서 계정과 구독 사용량을 확인한 후 연결합니다. 브라우저의 다른 계정으로 자동 전환하지 않습니다.", "Sign in to Cursor, then select that environment’s state.vscdb. The server verifies the account and subscription usage before connecting. This will not switch automatically to another browser account."))
                .foregroundStyle(.secondary).fixedSize(horizontal: false, vertical: true)
            Text(model.text("Cursor가 인증 정보를 관리합니다. AI Quota는 선택한 DB의 인증 항목만 읽으며 토큰을 복사 저장하거나 갱신하지 않습니다. 앱에서 계정이 바뀌면 기존 계정에 다른 사용량을 표시하지 않습니다.", "Cursor manages its credentials. AI Quota reads only the authentication entry in the selected database, without saving a token copy or refreshing it. An app account switch will not replace this account’s usage."))
                .font(.callout).fixedSize(horizontal: false, vertical: true)
            Button(model.text("state.vscdb 선택…", "Choose state.vscdb…")) { flow.chooseFile() }
                .disabled(flow.busy).accessibilityIdentifier("cursorApp.chooseFile")
            if let path = flow.path { Text(path).font(.caption.monospaced()).textSelection(.enabled).fixedSize(horizontal: false, vertical: true) }
            Text(model.text("기본 위치는 ~/Library/Application Support/Cursor/User/globalStorage/state.vscdb입니다. 다른 사용자 데이터 폴더를 쓰면 그 환경의 파일을 선택하세요. 세션이 만료되면 같은 Cursor 환경에서 다시 로그인하세요.", "The default location is ~/Library/Application Support/Cursor/User/globalStorage/state.vscdb. For another user-data directory, select its file. If the session expires, sign in again in the same Cursor environment."))
                .font(.caption).foregroundStyle(.secondary).fixedSize(horizontal: false, vertical: true)
            if let error = flow.errorMessage { Label(error, systemImage: "exclamationmark.triangle").foregroundStyle(.orange).fixedSize(horizontal: false, vertical: true) }
            HStack {
                Button(model.text("취소", "Cancel")) { Task { if await flow.cancel() { dismiss() } } }.keyboardShortcut(.cancelAction)
                Spacer()
                if flow.busy { ProgressView().controlSize(.small) }
                Button(model.text("확인 후 연결", "Verify and connect")) { flow.connect() }
                    .disabled(!flow.maySubmit).buttonStyle(.borderedProminent).accessibilityIdentifier("cursorApp.connect")
            }
        }.padding(24).frame(width: 570).interactiveDismissDisabled(flow.busy)
            .onChange(of: flow.finished) { _, done in if done { dismiss() } }
            .onDisappear { Task { _ = await flow.cancel() } }
    }
}
