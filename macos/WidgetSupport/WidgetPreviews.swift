#if DEBUG
import AIQuotaCore
import SwiftUI

#Preview("Account usage") {
    let now = Date(timeIntervalSince1970: 1_800_000_000)
    let id = UUID(uuidString: "00000000-0000-0000-0000-000000000001")!
    let metric = try! UsageMetric(id: "session", label: "Session", period: "5h", remainingFraction: 0.836, resetsAt: now.addingTimeInterval(7200))
    let account = DisplayAccount(id: id, provider: .claude, alias: "Claude 개인 테스트 계정", isHidden: false,
                                 state: .connected, plan: nil, fetchedAt: now, metrics: [metric])
    let snapshot = WidgetSnapshot(revision: 1, writtenAt: now, accounts: [account])
    let presentation = try! WidgetPresentation(kind: .provider, size: .small, selectedIDs: [id.uuidString], snapshot: snapshot)
    QuotaWidgetContent(presentation: presentation, date: now).padding(16).frame(width: 170, height: 170)
}

#Preview("Unavailable shared data") {
    QuotaWidgetContent(presentation: nil, date: .now).padding(16).frame(width: 170, height: 170)
}

#Preview("Selection exceeds widget capacity") {
    QuotaWidgetContent(presentation: nil, date: .now, configurationError: true).padding(16).frame(width: 360, height: 170)
}
#endif
