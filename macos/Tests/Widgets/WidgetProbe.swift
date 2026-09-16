import AIQuotaCore
import AppIntents
import AppKit
import Foundation
import SwiftUI
import WidgetKit

private enum ProbeError: Error { case failed(String) }
private func check(_ value: @autoclosure () -> Bool, _ message: String) throws {
    guard value() else { throw ProbeError.failed(message) }
}

@main @MainActor struct WidgetProbe {
    static func main() async throws {
        _ = NSApplication.shared
        let root = URL(fileURLWithPath: CommandLine.arguments[1], isDirectory: true)
        try FileManager.default.createDirectory(at: root, withIntermediateDirectories: true)
        let now = Date(timeIntervalSince1970: 1_800_000_000)
        let repository = try AccountRepository(url: root.appendingPathComponent("accounts.sqlite"))
        let providers: [ProviderID] = [.claude, .claude, .codex, .codex, .grok, .glm]
        let aliases = ["Claude 개인 테스트 계정", "Claude 회사 프로젝트 계정", "Codex 개인 연구개발 계정", "Codex 팀 공동 작업 계정", "Grok 월간 크레딧", "GLM 글로벌 계정"]
        for (index, provider) in providers.enumerated() {
            let a = try await repository.add(provider: provider, alias: aliases[index], now: now)
            let identity = try RemoteIdentity(subject: "synthetic-\(index)", product: "fixture")
            try await repository.connect(a.id, expectedGeneration: a.generation, expectedSessionRevision: 0,
                                         identity: identity, method: .webSession, owner: .aiQuota, credentialReference: UUID(), now: now)
            let fractions = [0.836, 0.07, 0.5, 1, 0.68, 0.25]
            var metrics = try [UsageMetric(id: "session", label: "Session", period: "5h", remainingFraction: fractions[index], resetsAt: now.addingTimeInterval(7200)),
                               UsageMetric(id: "week", label: "Weekly", period: "week", remainingFraction: 0.72, resetsAt: now.addingTimeInterval(86400)),
                               UsageMetric(id: "month", label: "Monthly", period: "month", remainingFraction: 0.31)]
            if index == 5 { metrics = try [UsageMetric(id: "balance", label: "Balance", period: "balance", unit: "USD", status: .balance, remaining: 45.5)] }
            let lease = try await repository.beginCollection(a.id, now: now)
            let report = UsageReport(identity: identity, fetchedAt: now, metrics: metrics)
            _ = try await repository.accept(report, for: lease, now: now)
            if index == 1 {
                let failure = try await repository.beginCollection(a.id, now: now)
                try await repository.fail(failure, reason: .unauthorized, now: now)
            }
            if index == 3 { try await repository.disconnect(a.id, now: now) }
        }
        let file = root.appendingPathComponent("snapshot.json")
        try await SnapshotFileStore(url: file, repository: repository).publish(now: now)
        let snapshot = try SnapshotFileStore.read(from: file)
        let raw = try String(contentsOf: file, encoding: .utf8)
        for forbidden in ["credentialReference", "sessionRevision", "synthetic-", "authenticationMethod"] {
            try check(!raw.contains(forbidden), "Display file must omit credentials and identity")
        }
        let query = WidgetAccountQuery(snapshot: snapshot)
        let entities = try await query.suggestedEntities()
        try check(entities.count == 6, "All six account choices")
        let missing = UUID().uuidString
        let resolved = try await query.entities(for: [entities[3].id, missing, entities[0].id])
        try check(resolved.map(\.id) == [entities[3].id, missing, entities[0].id], "Query preserves order and missing IDs")
        let invalidSnapshotQuery = WidgetAccountQuery(snapshot: WidgetSnapshot(revision: -1, writtenAt: now, accounts: []))
        let retained = try await invalidSnapshotQuery.entities(for: [entities[0].id, missing])
        try check(retained.map(\.id) == [entities[0].id, missing], "Read failure preserves saved identifiers")
        let claudeMatches = try await query.entities(matching: "Claude")
        try check(claudeMatches.count == 2, "Both Claude accounts are searchable")
        let four = DashboardFourIntent(); four.accounts = [entities[3], entities[1], entities[2], entities[0]]
        let otherFour = DashboardFourIntent(); otherFour.accounts = [entities[4]]
        try check(four.selectedIDs == [entities[3], entities[1], entities[2], entities[0]].map(\.id), "Independent intent instances")
        try check(DashboardFourIntent().selectedIDs.isEmpty, "No automatic account substitution")
        let six = DashboardSixIntent(); six.accounts = entities
        let two = BatteryTwoIntent(); two.accounts = Array(entities.prefix(2))
        let batteryFour = BatteryFourIntent(); batteryFour.accounts = Array(entities.prefix(4))
        let batterySix = BatterySixIntent(); batterySix.accounts = entities
        let provider = ProviderWidgetIntent(); provider.account = entities[0]
        let cases = [
            makeCase("provider-small", provider, .systemSmall, now, snapshot),
            makeCase("provider-medium", provider, .systemMedium, now, snapshot),
            makeCase("provider-large", provider, .systemLarge, now, snapshot),
            makeCase("dashboard-four", four, .systemMedium, now, snapshot),
            makeCase("dashboard-six", six, .systemLarge, now, snapshot),
            makeCase("battery-two", two, .systemSmall, now, snapshot),
            makeCase("battery-four", batteryFour, .systemMedium, now, snapshot),
            makeCase("battery-six", batterySix, .systemLarge, now, snapshot)
        ]
        for item in cases { try check(item.presentation != nil, "Valid config \(item.id) resolves") }
        let timelineProvider = QuotaTimelineProvider<ProviderWidgetIntent>()
        let almostStale = timelineProvider.makeEntry(configuration: provider, family: .systemSmall, date: now.addingTimeInterval(299), snapshot: snapshot)
        let ageTimeline = timelineProvider.makeTimeline(entry: almostStale)
        try check(ageTimeline.entries.map(\.date) == [now.addingTimeInterval(299), now.addingTimeInterval(300)], "Stale entry uses real fetch time even when the system reads late")
        try check(ageTimeline.entries.last?.presentation?.slots.first?.account?.fetchedAt == now, "Timeline must not change collection time")
        let alreadyStale = timelineProvider.makeEntry(configuration: provider, family: .systemSmall, date: now.addingTimeInterval(301), snapshot: snapshot)
        try check(timelineProvider.makeTimeline(entry: alreadyStale).entries.count == 1, "Already stale readings do not schedule a misleading fresh interval")
        let badSize = QuotaTimelineProvider<BatteryFourIntent>().makeEntry(configuration: batteryFour, family: .systemSmall, date: now, snapshot: snapshot)
        try check(badSize.issue == .editConfiguration && batteryFour.selectedIDs.count == 4, "Unsupported resize preserves four IDs")
        batterySix.accounts = entities + [entities[0]]
        let over = QuotaTimelineProvider<BatterySixIntent>().makeEntry(configuration: batterySix, family: .systemLarge, date: now, snapshot: snapshot)
        try check(over.issue == .editConfiguration && batterySix.selectedIDs.count == 7, "Overflow rejected without truncation")
        let invalid = BatteryTwoIntent(); invalid.accounts = [WidgetAccountEntity(missingID: "malformed")]
        let invalidEntry = QuotaTimelineProvider<BatteryTwoIntent>().makeEntry(configuration: invalid, family: .systemSmall, date: now, snapshot: snapshot)
        try check(invalidEntry.issue == .editConfiguration, "Malformed ID rejected")
        let missingIntent = ProviderWidgetIntent(); missingIntent.account = WidgetAccountEntity(missingID: missing)
        let absent = makeCase("missing-account", missingIntent, .systemSmall, now, snapshot)
        let unavailable = makeCase("missing-snapshot", provider, .systemSmall, now, nil)
        let empty = makeCase("empty", ProviderWidgetIntent(), .systemSmall, now, snapshot)
        let exact = WidgetUsageText(korean: false).value(snapshot.accounts[0].metrics.first)
        try check(exact == "83.6%", "Dashboard and battery use the same remaining precision")
        let localizedDate = WidgetUsageText(korean: false).fetched(now)
        try check(!localizedDate.contains("오전") && !localizedDate.contains("오후"), "English dates do not inherit Korean system locale")
        for locale in ["ko_KR", "en_US"] {
            for item in cases + [absent, unavailable, empty] {
                try render(WidgetPreviewTile(item: item, date: now, locale: locale), to: root.appendingPathComponent("\(item.id)-\(locale).png"))
            }
            let board = WidgetPreviewBoard(items: cases, date: now, locale: locale)
            try render(board, to: root.appendingPathComponent("board-\(locale).png"))
        }
        try render(WidgetPreviewBoard(items: cases, date: now.addingTimeInterval(900), locale: "ko_KR").environment(\.colorScheme, .dark),
                   to: root.appendingPathComponent("board-stale-dark.png"))
        let summary: [String: Any] = ["nativeIntentChecks": "passed", "accounts": 6, "widgetKinds": 6,
                                      "layouts": 8, "locales": ["ko_KR", "en_US"], "producer": "SQLite -> SnapshotFileStore -> AccountQuery -> TimelineProvider -> SwiftUI",
                                      "runtimeBoundary": "Standalone native render host; not WidgetKit gallery or signed App Group"]
        try JSONSerialization.data(withJSONObject: summary, options: [.prettyPrinted, .sortedKeys]).write(to: root.appendingPathComponent("verification.json"))
        print("PASS: producer/consumer, six intent kinds, per-instance order, missing IDs, overflow, unsupported resize, and 25 rendered PNGs")
        print(root.path)
    }
    private static func makeCase<I: AccountWidgetIntent>(_ name: String, _ intent: I, _ family: WidgetFamily, _ now: Date, _ snapshot: WidgetSnapshot?) -> WidgetRenderCase {
        let entry = QuotaTimelineProvider<I>().makeEntry(configuration: intent, family: family, date: now, snapshot: snapshot)
        return WidgetRenderCase(id: name, presentation: entry.presentation,
                                size: family == .systemSmall ? .small : family == .systemMedium ? .medium : .large)
    }
    static func render<V: View>(_ view: V, to url: URL) throws {
        let renderer = ImageRenderer(content: view)
        renderer.scale = 2
        guard let image = renderer.nsImage, let tiff = image.tiffRepresentation,
              let bitmap = NSBitmapImageRep(data: tiff), let png = bitmap.representation(using: .png, properties: [:])
        else { throw ProbeError.failed("SwiftUI rendering failed") }
        try png.write(to: url)
    }
}

private struct WidgetRenderCase: Identifiable {
    let id: String
    let presentation: WidgetPresentation?
    let size: WidgetSize
    var width: CGFloat { size == .small ? 170 : 360 }
    var height: CGFloat { size == .large ? 382 : 170 }
}
private struct WidgetPreviewTile: View {
    let item: WidgetRenderCase
    let date: Date
    let locale: String
    var body: some View {
        QuotaWidgetContent(presentation: item.presentation, date: date)
            .padding(16).frame(width: item.width, height: item.height)
            .background(Color(nsColor: .windowBackgroundColor), in: RoundedRectangle(cornerRadius: 22))
            .environment(\.locale, Locale(identifier: locale))
    }
}
private struct WidgetPreviewBoard: View {
    let items: [WidgetRenderCase]
    let date: Date
    let locale: String
    var body: some View {
        VStack(spacing: 18) {
            ForEach(0..<((items.count + 1) / 2), id: \.self) { row in
                HStack(alignment: .top, spacing: 20) {
                    ForEach(0..<2, id: \.self) { column in
                        let item = items[row * 2 + column]
                        VStack {
                            Text(item.id).font(.caption)
                            WidgetPreviewTile(item: item, date: date, locale: locale)
                        }.frame(width: 360)
                    }
                }
            }
        }.padding(20).background(Color(nsColor: .underPageBackgroundColor))
    }
}
