import AIQuotaCore
import SwiftUI
import WidgetKit

struct QuotaWidgetContent: View {
    @Environment(\.locale) private var locale
    let presentation: WidgetPresentation?
    let date: Date
    var configurationError = false
    private var korean: Bool { locale.language.languageCode?.identifier == "ko" }
    private func text(_ ko: String, _ en: String) -> String { korean ? ko : en }

    var body: some View {
        VStack(alignment: .leading, spacing: 7) {
            HStack {
                Label("AI Quota", systemImage: "chart.pie.fill").font(.system(size: 11, weight: .semibold)).fixedSize()
                Spacer(minLength: 4)
                if let p = presentation, !p.slots.isEmpty {
                    Text((p.slots.contains(where: { $0.metrics.contains { $0.status == .unknown && $0.used != nil } })
                          ? text("사용량", "Usage") : p.size == .small ? text("잔여", "Left") : text("잔여량", "Remaining")) + (p.kind == .provider ? "" : " · \(p.slots.count)"))
                        .font(.system(size: 10)).foregroundStyle(.secondary).lineLimit(1).minimumScaleFactor(0.8)
                }
            }
            if configurationError {
                message("slider.horizontal.3", text("위젯을 편집해주세요", "Edit this widget"),
                        text("크기에 맞게 계정을 다시 선택해주세요. 기존 선택은 보존됩니다.", "Choose accounts for this size. Your selection is preserved."))
            } else if let p = presentation {
                if p.slots.isEmpty {
                    message("plus.circle", text("계정을 선택해주세요", "Choose accounts"),
                            text("위젯을 편집해 표시할 계정을 고르세요.", "Edit this widget to select its accounts."))
                } else if !p.snapshotAvailable {
                    message("clock", text("표시 데이터 대기 중", "Waiting for data"),
                            text("AI Quota를 열어 계정을 확인해주세요.", "Open AI Quota to check your accounts."))
                } else if p.kind == .provider, let slot = p.slots.first {
                    ProviderWidgetDetail(slot: slot, size: p.size, date: date, korean: korean)
                } else {
                    grid(p)
                }
            } else {
                message("exclamationmark.triangle", text("데이터를 읽을 수 없습니다", "Data unavailable"),
                        text("AI Quota를 열어 확인해주세요.", "Open AI Quota to check its status."))
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
        .widgetURL(presentation?.kind == .provider ? presentation?.slots.first.map { AccountDeepLink.url($0.id) } : nil)
    }
    private func message(_ icon: String, _ title: String, _ detail: String) -> some View {
        VStack(alignment: .leading, spacing: 7) {
            Image(systemName: icon).font(.title3).foregroundStyle(.secondary)
            Text(title).font(.callout.weight(.semibold))
            Text(detail).font(.caption).foregroundStyle(.secondary)
        }.frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
    }
    private func grid(_ p: WidgetPresentation) -> some View {
        VStack(spacing: p.size == .large ? 10 : 6) {
            ForEach(0..<((p.slots.count + 1) / 2), id: \.self) { row in
                HStack(alignment: .top, spacing: 10) {
                    ForEach(0..<2, id: \.self) { column in
                        let index = row * 2 + column
                        if p.slots.indices.contains(index) {
                            let slot = p.slots[index]
                            Link(destination: AccountDeepLink.url(slot.id)) {
                                WidgetAccountSummary(slot: slot, size: p.size, battery: p.kind.isBattery, date: date, korean: korean)
                            }.buttonStyle(.plain).frame(maxWidth: .infinity, maxHeight: .infinity)
                        } else { Color.clear.frame(maxWidth: .infinity) }
                    }
                }.frame(maxHeight: .infinity, alignment: .top)
            }
        }.frame(maxHeight: .infinity)
    }
}

private struct WidgetAccountName: View {
    let name: String
    let height: CGFloat
    var body: some View {
        ViewThatFits(in: .vertical) {
            title(12)
            title(10)
            title(8)
        }.frame(maxWidth: .infinity, minHeight: height, maxHeight: height, alignment: .topLeading)
            .accessibilityLabel(name)
    }
    private func title(_ size: CGFloat) -> some View {
        Text(name).font(.system(size: size, weight: .semibold)).fixedSize(horizontal: false, vertical: true)
            .frame(maxWidth: .infinity, alignment: .leading)
    }
}

private struct WidgetAccountSummary: View {
    let slot: WidgetAccountSlot
    let size: WidgetSize
    let battery: Bool
    let date: Date
    let korean: Bool
    private var copy: WidgetUsageText { WidgetUsageText(korean: korean) }
    var body: some View {
        Group {
            if battery && size == .small {
                VStack(alignment: .leading, spacing: 4) {
                    WidgetAccountName(name: copy.alias(slot), height: 30)
                    WidgetRemainingRing(metric: slot.representative, korean: korean).frame(width: 45, height: 45)
                        .frame(maxWidth: .infinity)
                    timestamp
                    if slot.isStale(at: date) { status }
                }
            } else if battery {
                HStack(spacing: 8) {
                    WidgetRemainingRing(metric: slot.representative, korean: korean).frame(width: 43, height: 43)
                    VStack(alignment: .leading, spacing: 3) {
                        WidgetAccountName(name: copy.alias(slot), height: size == .large ? 40 : 25)
                        timestamp
                        if slot.isStale(at: date) { status }
                    }
                }
            } else {
                VStack(alignment: .leading, spacing: 3) {
                    WidgetAccountName(name: copy.alias(slot), height: size == .large ? 40 : 25)
                    HStack(alignment: .firstTextBaseline, spacing: 3) {
                        Text(copy.value(slot.representative)).font(.system(size: size == .large ? 21 : 15, weight: .semibold, design: .rounded))
                            .minimumScaleFactor(0.7).lineLimit(1).monospacedDigit()
                        Spacer(minLength: 0)
                        if size == .medium { timestamp }
                    }
                    if size == .large { timestamp }
                    if slot.isStale(at: date) { status }
                }
            }
        }.frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
            .accessibilityElement(children: .combine)
            .accessibilityLabel(copy.accessibility(slot, at: date))
    }
    private var timestamp: some View {
        Text(copy.fetched(slot.account?.fetchedAt)).font(.system(size: 9)).foregroundStyle(.secondary)
            .fixedSize(horizontal: false, vertical: true)
    }
    private var status: some View {
        Text(copy.status(slot, at: date)).font(.system(size: 9)).foregroundStyle(.orange)
            .fixedSize(horizontal: false, vertical: true)
    }
}

private struct ProviderWidgetDetail: View {
    let slot: WidgetAccountSlot
    let size: WidgetSize
    let date: Date
    let korean: Bool
    private var copy: WidgetUsageText { WidgetUsageText(korean: korean) }
    private var limit: Int { size == .small ? 1 : size == .medium ? 2 : 4 }
    var body: some View {
        VStack(alignment: .leading, spacing: 6) {
            WidgetAccountName(name: copy.alias(slot), height: size == .small ? 28 : 20)
            if slot.metrics.isEmpty {
                Text("—").font(.largeTitle)
                Text(copy.status(slot, at: date)).font(.caption).foregroundStyle(.secondary)
            } else if size == .medium {
                HStack(alignment: .top, spacing: 16) {
                    ForEach(Array(slot.metrics.prefix(limit))) { metric in metricRow(metric) }
                }
            } else {
                ForEach(Array(slot.metrics.prefix(limit))) { metric in metricRow(metric) }
            }
            Spacer(minLength: 0)
            if slot.metrics.count > limit {
                Text(korean ? "+\(slot.metrics.count - limit)개 지표 · 상세 보기" : "+\(slot.metrics.count - limit) metrics · Open details")
                    .font(.system(size: 9)).foregroundStyle(.secondary)
            }
            HStack(alignment: .top, spacing: 4) {
                Text(copy.fetched(slot.account?.fetchedAt)).font(.system(size: 9)).foregroundStyle(.secondary)
                Spacer(minLength: 0)
                if slot.isStale(at: date), !slot.metrics.isEmpty {
                    Text(copy.status(slot, at: date)).font(.system(size: 9)).foregroundStyle(.orange)
                }
            }
        }.frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
    }
    private func metricRow(_ metric: UsageMetric) -> some View {
        VStack(alignment: .leading, spacing: 3) {
            if size == .small, metric.status == .unknown, metric.used != nil {
                Text(copy.label(metric)).font(.system(size: 10)).foregroundStyle(.secondary)
                    .lineLimit(1).minimumScaleFactor(0.7)
                Text(copy.value(metric)).font(.system(size: 22, weight: .semibold, design: .rounded))
                    .monospacedDigit().lineLimit(1).minimumScaleFactor(0.5)
                    .frame(maxWidth: .infinity, alignment: .leading)
            } else {
              HStack(alignment: .firstTextBaseline, spacing: 4) {
                Text(copy.label(metric)).font(.system(size: 10)).foregroundStyle(.secondary)
                    .lineLimit(2).minimumScaleFactor(0.7)
                Spacer(minLength: 0)
                Text(copy.value(metric)).font(.system(size: size == .small ? 22 : 18, weight: .semibold, design: .rounded))
                    .monospacedDigit().lineLimit(1).minimumScaleFactor(0.65)
              }
            }
            if let fraction = metric.remainingFraction, metric.status == .limited {
                GeometryReader { geometry in
                    Capsule().fill(Color.primary.opacity(0.08))
                        .overlay(alignment: .leading) { Capsule().fill(fraction <= 0.2 ? Color.orange : .accentColor).frame(width: geometry.size.width * fraction) }
                }.frame(height: 4).accessibilityHidden(true)
            }
            if metric.status == .unknown, metric.used != nil {
                Text(korean ? "잔여 한도 미확인" : "Remaining limit unknown").font(.system(size: 9)).foregroundStyle(.secondary)
            }
            if let expiry = metric.expiresAt {
                Text((korean ? "만료 " : "Expires ") + expiry.formatted(.dateTime.month(.twoDigits).day(.twoDigits).hour().minute().locale(copy.locale)))
                    .font(.system(size: 9)).foregroundStyle(.secondary).fixedSize(horizontal: false, vertical: true)
            } else if let reset = metric.resetsAt {
                Text((korean ? "리셋 " : "Resets ") + reset.formatted(.dateTime.month(.twoDigits).day(.twoDigits).hour().minute().locale(copy.locale)))
                    .font(.system(size: 9)).foregroundStyle(.secondary).fixedSize(horizontal: false, vertical: true)
            } else { Text(copy.period(metric.period)).font(.system(size: 9)).foregroundStyle(.secondary) }
            if metric.accuracy == .estimated { Text(korean ? "추정값" : "Estimated").font(.system(size: 9)).foregroundStyle(.secondary) }
        }.frame(maxWidth: .infinity, alignment: .leading).accessibilityElement(children: .combine)
    }
}

private struct WidgetRemainingRing: View {
    let metric: UsageMetric?
    let korean: Bool
    private var fraction: Double? { metric?.status == .limited ? metric?.remainingFraction : nil }
    var body: some View {
        ZStack {
            Circle().stroke(Color.primary.opacity(0.1), lineWidth: 4)
            if let fraction {
                Circle().trim(from: 0, to: fraction).stroke(fraction <= 0.2 ? Color.orange : .accentColor,
                                                           style: StrokeStyle(lineWidth: 4, lineCap: .round)).rotationEffect(.degrees(-90))
            }
            Text(metric?.status == .unlimited ? "∞" : WidgetUsageText(korean: korean).value(metric))
                .font(.system(size: 11, weight: .semibold, design: .rounded)).minimumScaleFactor(0.65).lineLimit(2).multilineTextAlignment(.center)
        }.padding(3).accessibilityHidden(true)
    }
}

struct WidgetUsageText {
    let korean: Bool
    var locale: Locale { Locale(identifier: korean ? "ko_KR" : "en_US") }
    func label(_ metric: UsageMetric) -> String {
        guard korean else { return metric.label }
        return ["Session": "세션", "Weekly": "주간", "Monthly": "월간", "Balance": "잔액"][metric.label] ?? metric.label
    }
    func period(_ value: String) -> String {
        guard korean else { return value }
        return ["5h": "5시간", "week": "주간", "month": "월간", "balance": "잔액"][value] ?? value
    }
    func alias(_ slot: WidgetAccountSlot) -> String { slot.account?.alias ?? (korean ? "계정 없음" : "Unavailable account") }
    func value(_ metric: UsageMetric?) -> String {
        guard let metric else { return "—" }
        switch metric.status {
        case .limited: return metric.remainingFraction.map { $0.formatted(.percent.precision(.fractionLength(0...1)).locale(locale)) } ?? "—"
        case .balance: return metric.remaining.map { $0.formatted(.number.precision(.fractionLength(0...2)).locale(locale)) + " " + metric.unit } ?? "—"
        case .unlimited: return korean ? "무제한" : "Unlimited"
        case .unknown: return metric.used.map {
            $0.formatted(.number.precision(.fractionLength(0...2)).locale(locale)) + " " + metric.unit + (korean ? " 사용" : " used")
        } ?? (korean ? "미확인" : "Unknown")
        case .unsupported: return korean ? "미제공" : "Not provided"
        }
    }
    func fetched(_ date: Date?) -> String {
        guard let date else { return korean ? "수집 기록 없음" : "Not collected" }
        let formatter = DateFormatter()
        formatter.locale = Locale(identifier: "en_US_POSIX")
        formatter.dateFormat = "MM/dd HH:mm"
        return (korean ? "수집 " : "Fetched ") + formatter.string(from: date)
    }
    func status(_ slot: WidgetAccountSlot, at date: Date) -> String {
        guard let account = slot.account else { return korean ? "다시 선택해주세요" : "Choose another account" }
        switch account.state {
        case .disconnected: return korean ? "연결 필요" : "Connect account"
        case .connecting: return korean ? "연결 중" : "Connecting"
        case .authenticationRequired: return korean ? "로그인 필요" : "Sign in again"
        case .unavailable: return korean ? "확인 불가" : "Unavailable"
        case .error: return korean ? "수집 오류" : "Collection error"
        case .stale: return korean ? "이전 수집값" : "Previous reading"
        case .connected: return slot.isStale(at: date) ? (korean ? "이전 수집값" : "Previous reading") : ""
        }
    }
    func accessibility(_ slot: WidgetAccountSlot, at date: Date) -> String {
        [alias(slot), slot.account?.provider.displayName ?? "", value(slot.representative),
         slot.representative?.status == .unknown && slot.representative?.used != nil
             ? (korean ? "잔여 한도 미확인" : "remaining limit unknown") : (korean ? "남은 사용량" : "remaining"),
         slot.account?.fetchedAt?.formatted(date: .complete, time: .standard) ?? fetched(nil), status(slot, at: date)]
            .filter { !$0.isEmpty }.joined(separator: ", ")
    }
}
