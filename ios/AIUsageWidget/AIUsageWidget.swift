import WidgetKit
import SwiftUI

struct AIUsageEntry: TimelineEntry {
    let date: Date
    let providers: [ProviderUsage]
}

struct AIUsageProvider: TimelineProvider {
    func placeholder(in context: Context) -> AIUsageEntry {
        AIUsageEntry(date: Date(), providers: [])
    }

    func getSnapshot(in context: Context, completion: @escaping (AIUsageEntry) -> Void) {
        completion(loadEntry())
    }

    func getTimeline(in context: Context, completion: @escaping (Timeline<AIUsageEntry>) -> Void) {
        let entry = loadEntry()
        completion(Timeline(entries: [entry], policy: .after(Date().addingTimeInterval(15 * 60))))
    }

    private func loadEntry() -> AIUsageEntry {
        let snapshot = try? SnapshotCache.shared.load()
        return AIUsageEntry(date: Date(), providers: Array(snapshot?.providers.prefix(4) ?? []))
    }
}

struct AIUsageWidgetView: View {
    let entry: AIUsageEntry

    var body: some View {
        VStack(alignment: .leading, spacing: 6) {
            Text("AI Usage")
                .font(.headline)
            ForEach(entry.providers) { provider in
                HStack {
                    Text(provider.displayName)
                    Spacer()
                    Text(provider.status.rawValue)
                }
                .font(.caption)
            }
        }
        .padding()
    }
}

@main
struct AIUsageWidget: Widget {
    let kind = "AIUsageWidget"

    var body: some WidgetConfiguration {
        StaticConfiguration(kind: kind, provider: AIUsageProvider()) { entry in
            AIUsageWidgetView(entry: entry)
        }
        .configurationDisplayName("AI Usage")
        .description("Shows cached AI usage snapshot data.")
        .supportedFamilies([.systemSmall, .systemMedium])
    }
}

