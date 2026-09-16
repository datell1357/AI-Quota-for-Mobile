import AIQuotaCore
import SwiftUI

struct ProviderMark: View {
    let provider: ProviderID
    var body: some View {
        Text(String(provider.displayName.prefix(1)))
            .font(.system(.headline, design: .rounded).weight(.bold))
            .frame(width: 32, height: 32)
            .background(Color.accentColor.opacity(0.12), in: RoundedRectangle(cornerRadius: 9))
            .accessibilityHidden(true)
    }
}

struct UsageMetricView: View {
    @Environment(DesktopModel.self) private var model
    let metric: UsageMetric
    var compact = false
    var body: some View {
        VStack(alignment: .leading, spacing: 6) {
            HStack(alignment: .firstTextBaseline) {
                Text(metric.label).font(.subheadline)
                Spacer(minLength: 12)
                Text(value).font(.system(compact ? .headline : .title3, design: .rounded).weight(.semibold)).monospacedDigit()
            }
            if metric.status == .limited, let fraction = metric.remainingFraction {
                ProgressView(value: fraction).tint(fraction <= 0.2 ? .orange : .accentColor)
                    .accessibilityLabel(model.text("남은 사용량", "Remaining usage"))
                    .accessibilityValue(fraction.formatted(.percent))
            }
            if !compact {
                HStack {
                    Text(metric.period)
                    Spacer()
                    if metric.accuracy == .estimated { Text(model.text("추정값", "Estimated")) }
                }.font(.caption).foregroundStyle(.secondary)
                if let used = metric.used {
                    Text(model.text("사용: ", "Used: ") + number(used) + (metric.limit.map { " / " + number($0) } ?? "") + " " + metric.unit)
                        .font(.caption).foregroundStyle(.secondary)
                }
                if metric.status == .unknown, metric.used != nil {
                    Text(model.text("잔여 한도 확인 불가", "Remaining limit unavailable")).font(.caption).foregroundStyle(.secondary)
                }
                if let reset = metric.resetsAt {
                    Text(model.text("리셋 예정: ", "Resets: ") + reset.formatted(date: .abbreviated, time: .shortened))
                        .font(.caption).foregroundStyle(.secondary)
                }
                if let expiry = metric.expiresAt {
                    Text(model.text("만료: ", "Expires: ") + expiry.formatted(date: .abbreviated, time: .shortened))
                        .font(.caption).foregroundStyle(.secondary)
                }
            }
        }.accessibilityElement(children: .combine)
    }
    private func number(_ value: Double) -> String { value.formatted(.number.precision(.fractionLength(0...2))) }
    private var value: String {
        switch metric.status {
        case .limited:
            metric.remainingFraction.map { $0.formatted(.percent.precision(.fractionLength(0...1))) + model.text(" 남음", " left") } ?? "—"
        case .unlimited: model.text("무제한", "Unlimited")
        case .balance: metric.remaining.map { number($0) + " " + metric.unit } ?? "—"
        case .unknown: metric.used.map { number($0) + " " + metric.unit + model.text(" 사용", " used") } ?? model.text("확인 불가", "Unknown")
        case .unsupported: model.text("제공되지 않음", "Not provided")
        }
    }
}

struct AccountUsageCard: View {
    @Environment(DesktopModel.self) private var model
    let account: DisplayAccount
    var compact = false
    var showsSettingsButton = true
    var body: some View {
        VStack(alignment: .leading, spacing: compact ? 12 : 18) {
            HStack(spacing: 10) {
                ProviderMark(provider: account.provider)
                VStack(alignment: .leading, spacing: 3) {
                    Text(account.alias).font(.headline).fixedSize(horizontal: false, vertical: true)
                    Text(account.plan ?? account.provider.displayName).font(.caption).foregroundStyle(.secondary)
                }
                Spacer(minLength: 4)
                if !compact && showsSettingsButton {
                    Button { model.sheet = .edit(AccountSelection(id: account.id)) } label: { Image(systemName: "ellipsis") }
                        .buttonStyle(.borderless).help(model.text("계정 설정", "Account settings"))
                        .accessibilityLabel(account.alias + " " + model.text("설정", "settings"))
                }
            }
            if account.metrics.isEmpty {
                VStack(alignment: .leading, spacing: 5) {
                    Text("—").font(.system(.largeTitle, design: .rounded)).foregroundStyle(.secondary)
                    if !compact {
                        Text(model.text("계정을 연결하면 사용량을 확인할 수 있습니다.", "Connect this account to see its usage."))
                            .font(.caption).foregroundStyle(.secondary)
                    }
                }.frame(maxWidth: .infinity, alignment: .leading)
            } else {
                ForEach(compact ? Array(account.metrics.prefix(1)) : account.metrics) { metric in
                    UsageMetricView(metric: metric, compact: compact)
                }
            }
            HStack(alignment: .top) {
                Text(model.statusText(account.state))
                    .foregroundStyle(account.state == .connected ? Color.secondary : Color.orange)
                Spacer()
                if let fetched = account.fetchedAt {
                    Text(model.text("수집 ", "Fetched ") + fetched.formatted(date: .omitted, time: .shortened))
                        .help(fetched.formatted(date: .complete, time: .standard))
                }
            }.font(.caption)
        }
        .padding(compact ? 14 : 20)
        .frame(maxWidth: .infinity, alignment: .topLeading)
        .background(Color(nsColor: .controlBackgroundColor), in: RoundedRectangle(cornerRadius: radius))
        .overlay(RoundedRectangle(cornerRadius: radius).strokeBorder(.primary.opacity(0.08)))
    }
    private var radius: CGFloat { model.preferences.cardStyle == .macOS ? 16 : 4 }
}

struct DesktopErrorMessage: View {
    @Environment(DesktopModel.self) private var model
    var body: some View {
        if let message = model.errorMessage {
            HStack(alignment: .top) {
                Label(message, systemImage: "exclamationmark.triangle").foregroundStyle(.orange)
                Spacer()
                Button(model.text("닫기", "Dismiss")) { model.errorMessage = nil }
            }.font(.caption)
        }
    }
}
