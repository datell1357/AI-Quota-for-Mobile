import AIQuotaCore
import Foundation
import WidgetKit

struct QuotaWidgetEntry: TimelineEntry {
    let date: Date
    let presentation: WidgetPresentation?
    let issue: WidgetIssue?
    enum WidgetIssue { case editConfiguration, dataUnavailable }
}

struct QuotaTimelineProvider<Intent: AccountWidgetIntent>: AppIntentTimelineProvider {
    func placeholder(in context: Context) -> QuotaWidgetEntry {
        makeEntry(configuration: Intent(), family: context.family, date: .now, snapshot: nil)
    }
    func snapshot(for configuration: Intent, in context: Context) async -> QuotaWidgetEntry {
        load(configuration: configuration, family: context.family, date: .now)
    }
    func timeline(for configuration: Intent, in context: Context) async -> Timeline<QuotaWidgetEntry> {
        let now = Date()
        let entry = load(configuration: configuration, family: context.family, date: now)
        return makeTimeline(entry: entry)
    }
    func makeTimeline(entry: QuotaWidgetEntry) -> Timeline<QuotaWidgetEntry> {
        // Age each reading from its real fetch time, not from when WidgetKit happens to read it.
        let expirations = Set((entry.presentation?.slots ?? []).compactMap { slot -> Date? in
            guard let fetched = slot.account?.fetchedAt else { return nil }
            let expiry = fetched.addingTimeInterval(300)
            return expiry > entry.date ? expiry : nil
        }).sorted()
        let aged = expirations.map { QuotaWidgetEntry(date: $0, presentation: entry.presentation, issue: entry.issue) }
        return Timeline(entries: [entry] + aged, policy: .after(entry.date.addingTimeInterval(900)))
    }
    private func load(configuration: Intent, family: WidgetFamily, date: Date) -> QuotaWidgetEntry {
        do { return makeEntry(configuration: configuration, family: family, date: date, snapshot: try WidgetSnapshotReader.read()) }
        catch { return QuotaWidgetEntry(date: date, presentation: nil, issue: .dataUnavailable) }
    }
    func makeEntry(configuration: Intent, family: WidgetFamily, date: Date, snapshot: WidgetSnapshot?) -> QuotaWidgetEntry {
        let size: WidgetSize
        switch family {
        case .systemSmall: size = .small
        case .systemMedium: size = .medium
        case .systemLarge: size = .large
        default: return QuotaWidgetEntry(date: date, presentation: nil, issue: .editConfiguration)
        }
        do {
            let value = try WidgetPresentation(kind: Intent.kind, size: size, selectedIDs: configuration.selectedIDs, snapshot: snapshot)
            return QuotaWidgetEntry(date: date, presentation: value, issue: nil)
        } catch { return QuotaWidgetEntry(date: date, presentation: nil, issue: .editConfiguration) }
    }
}
