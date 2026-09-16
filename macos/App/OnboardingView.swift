import AIQuotaCore
import SwiftUI

struct OnboardingView: View {
    @Environment(DesktopModel.self) private var model
    @State private var step = 0
    @State private var selected: Set<ProviderID> = []
    @State private var saving = false
    var body: some View {
        VStack(alignment: .leading, spacing: 24) {
            HStack {
                Label("AI Quota", systemImage: "chart.pie.fill").font(.title2.bold())
                Spacer()
                Text("\(step + 1) / 4").monospacedDigit().foregroundStyle(.secondary)
            }
            Group {
                switch step {
                case 0:
                    VStack(alignment: .leading, spacing: 18) {
                        Text(model.text("AI 사용량을, 한눈에.", "Your AI usage, in one place.")).font(.system(size: 34, weight: .bold, design: .rounded))
                        Text(model.text("사용하는 서비스와 계정을 선택하고, 메뉴 막대에서 남은 사용량을 확인하세요.", "Choose your services and accounts, then check remaining usage from your menu bar."))
                            .font(.title3).foregroundStyle(.secondary)
                        Label(model.text("계정마다 별도의 사용량", "Separate readings for each account"), systemImage: "person.2")
                        Label(model.text("마지막 수집 시각을 함께 표시", "Always see when data was fetched"), systemImage: "clock")
                        Label(model.text("필요할 때만 알림 권한 요청", "Notification permission when you enable alerts"), systemImage: "bell")
                    }.padding(.vertical, 24)
                case 1:
                    Text(model.text("어떤 서비스를 사용하시나요?", "Which services do you use?")).font(.title.bold())
                    ProviderSelectionGrid(selected: $selected)
                case 2:
                    Text(model.text("계정 설정", "Set up your accounts")).font(.title.bold())
                    Text(model.text("계정 이름과 알림을 정해 주세요. 연결하기 전에는 사용량이 표시되지 않습니다.", "Choose account names and alerts. Usage appears only after an account is connected."))
                        .foregroundStyle(.secondary)
                    ScrollView {
                        VStack(spacing: 10) {
                            ForEach(model.snapshot.accounts) { account in
                                HStack {
                                    ProviderMark(provider: account.provider)
                                    VStack(alignment: .leading) { Text(account.alias); Text(model.statusText(account.state)).font(.caption).foregroundStyle(.secondary) }
                                    Spacer()
                                    Button(model.text("설정", "Configure")) { model.sheet = .edit(AccountSelection(id: account.id)) }
                                }.padding(8)
                            }
                        }
                    }
                default:
                    Text(model.text("메뉴 막대에서 빠르게 확인", "A quick look from your menu bar")).font(.title.bold())
                    Text(model.text("대표 계정과 고정할 계정은 설정에서 바꿀 수 있습니다. 계정을 여러 개 써도 같은 사용량 데이터를 공유합니다.", "Choose a representative account and pin accounts for quick access. Every view uses the same readings."))
                        .foregroundStyle(.secondary)
                    Label(model.text("메뉴 막대: 최대 6개 계정 고정", "Menu bar: pin up to six accounts"), systemImage: "menubar.rectangle")
                    Label(model.text("데스크톱 위젯: 위젯 갤러리에서 추가", "Desktop widgets: add from the widget gallery"), systemImage: "rectangle.3.group")
                    Text(model.text("시스템 위젯의 갱신 시점은 macOS가 결정합니다.", "macOS controls when system widgets update."))
                        .font(.caption).foregroundStyle(.secondary)
                }
            }.frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
            HStack {
                if step > 0 { Button(model.text("이전", "Back")) { step -= 1 } }
                Spacer()
                Button(step == 3 ? model.text("시작하기", "Get started") : model.text("계속", "Continue")) {
                    if step == 1 {
                        saving = true
                        Task { if await model.addProviders(selected) { step += 1 }; saving = false }
                    } else if step == 3 { model.updatePreferences { $0.onboardingComplete = true } }
                    else { step += 1 }
                }.buttonStyle(.borderedProminent).keyboardShortcut(.defaultAction)
                    .disabled(saving || (step == 1 && selected.isEmpty)).accessibilityIdentifier("onboarding.continue")
            }
        }.padding(36).frame(minWidth: 740, idealWidth: 820, minHeight: 560, idealHeight: 620)
    }
}
