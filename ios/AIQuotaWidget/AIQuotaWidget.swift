import SwiftUI
import WidgetKit

struct AIQuotaWidgetEntry: TimelineEntry {
    let date: Date
    let envelope: WidgetCacheEnvelope

    var providers: [WidgetProviderSnapshot] {
        envelope.providers
    }
}

struct WidgetCacheEnvelope: Decodable {
    let schemaVersion: Int
    let generatedAt: String
    let providers: [WidgetProviderSnapshot]
}

struct WidgetProviderSnapshot: Decodable, Identifiable {
    var id: String { providerId }

    let providerId: String
    let displayName: String
    let connectionState: String
    let refreshState: String
    let planLabel: String?
    let accountDisplay: String?
    let updatedAt: String
    let message: String?
    let lines: [WidgetUsageLine]
}

struct WidgetUsageLine: Decodable, Identifiable {
    var id: String { key }

    let label: String
    let remainingPercent: Float?
    let remainingText: String
    let resetText: String?
    let severity: String
    let key: String
}

struct AIQuotaWidgetCacheReader {
    private static let appGroupIdentifier = "group.com.aiquota.mobile"
    private static let fileName = "provider-widget-cache.json"

    func loadEntry(date: Date = Date()) -> AIQuotaWidgetEntry {
        AIQuotaWidgetEntry(date: date, envelope: loadEnvelope())
    }

    private func loadEnvelope() -> WidgetCacheEnvelope {
        guard let container = FileManager.default.containerURL(
            forSecurityApplicationGroupIdentifier: Self.appGroupIdentifier
        ) else {
            return .empty
        }
        let url = container.appendingPathComponent(Self.fileName, isDirectory: false)
        guard let data = try? Data(contentsOf: url),
              let envelope = try? JSONDecoder().decode(WidgetCacheEnvelope.self, from: data) else {
            return .empty
        }
        return envelope
    }
}

struct DashboardWidgetProvider: TimelineProvider {
    private let reader = AIQuotaWidgetCacheReader()

    func placeholder(in context: Context) -> AIQuotaWidgetEntry {
        AIQuotaWidgetPreviewFixtures.connected
    }

    func getSnapshot(in context: Context, completion: @escaping (AIQuotaWidgetEntry) -> Void) {
        completion(context.isPreview ? AIQuotaWidgetPreviewFixtures.connected : reader.loadEntry())
    }

    func getTimeline(in context: Context, completion: @escaping (Timeline<AIQuotaWidgetEntry>) -> Void) {
        let entry = reader.loadEntry()
        completion(Timeline(entries: [entry], policy: .after(Date().addingTimeInterval(15 * 60))))
    }
}

struct ProviderFocusedWidgetProvider: TimelineProvider {
    private let reader = AIQuotaWidgetCacheReader()

    func placeholder(in context: Context) -> AIQuotaWidgetEntry {
        AIQuotaWidgetPreviewFixtures.stale
    }

    func getSnapshot(in context: Context, completion: @escaping (AIQuotaWidgetEntry) -> Void) {
        completion(context.isPreview ? AIQuotaWidgetPreviewFixtures.stale : reader.loadEntry())
    }

    func getTimeline(in context: Context, completion: @escaping (Timeline<AIQuotaWidgetEntry>) -> Void) {
        let entry = reader.loadEntry()
        completion(Timeline(entries: [entry], policy: .after(Date().addingTimeInterval(15 * 60))))
    }
}

struct DashboardWidgetView: View {
    let entry: AIQuotaWidgetEntry
    @Environment(\.widgetFamily) private var widgetFamily

    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            header("AI Quota")
            if dashboardVisibleProviders.isEmpty {
                emptyState
            } else {
                ForEach(dashboardVisibleProviders) { provider in
                    ProviderRow(provider: provider, compact: widgetFamily == .systemSmall)
                }
            }
        }
        .padding(12)
        .containerBackground(.background, for: .widget)
    }

    private var dashboardVisibleProviders: [WidgetProviderSnapshot] {
        Array(entry.providers.prefix(providerLimit))
    }

    private var providerLimit: Int {
        switch widgetFamily {
        case .systemSmall:
            return 1
        case .systemMedium:
            return 3
        default:
            return 6
        }
    }

    private var emptyState: some View {
        VStack(alignment: .leading, spacing: 4) {
            Text("No usage yet")
                .font(.headline)
            Text("Open AI Quota to connect providers.")
                .font(.caption)
                .foregroundStyle(.secondary)
        }
    }
}

struct ProviderFocusedWidgetView: View {
    let entry: AIQuotaWidgetEntry
    @Environment(\.widgetFamily) private var widgetFamily

    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            if let providerFocusedSnapshot {
                header(providerFocusedSnapshot.displayName)
                ProviderGauge(provider: providerFocusedSnapshot, expanded: widgetFamily != .systemSmall)
            } else {
                header("AI Quota")
                Text("No provider selected")
                    .font(.caption)
                    .foregroundStyle(.secondary)
            }
        }
        .padding(12)
        .containerBackground(.background, for: .widget)
    }

    private var providerFocusedSnapshot: WidgetProviderSnapshot? {
        entry.providers.sorted(by: WidgetProviderSnapshot.isHigherPriority).first
    }
}

struct ProviderRow: View {
    let provider: WidgetProviderSnapshot
    let compact: Bool

    var body: some View {
        VStack(alignment: .leading, spacing: 4) {
            HStack {
                Text(provider.displayName)
                    .font(.caption.weight(.semibold))
                    .lineLimit(1)
                Spacer()
                Text(provider.stateLabel)
                    .font(.caption2)
                    .foregroundStyle(provider.stateColor)
            }
            if !compact {
                Text(provider.primaryLineText)
                    .font(.caption2)
                    .foregroundStyle(.secondary)
                    .lineLimit(1)
            }
        }
    }
}

struct ProviderGauge: View {
    let provider: WidgetProviderSnapshot
    let expanded: Bool

    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text(provider.planLabel ?? provider.stateLabel)
                .font(.caption)
                .foregroundStyle(.secondary)
            Gauge(value: Double(provider.primaryRemainingPercent ?? 0), in: 0...1) {
                Text(provider.primaryLineText)
            } currentValueLabel: {
                Text(provider.primaryRemainingText)
            }
            .gaugeStyle(.accessoryLinearCapacity)
            if expanded {
                ForEach(provider.lines.prefix(3)) { line in
                    HStack {
                        Text(line.label)
                        Spacer()
                        Text(line.remainingText)
                    }
                    .font(.caption2)
                }
            }
        }
    }
}

private func header(_ title: String) -> some View {
    HStack {
        Text(title)
            .font(.headline)
            .lineLimit(1)
        Spacer()
    }
}

struct AIQuotaDashboardWidget: Widget {
    let kind = "AIQuotaDashboardWidget"

    var body: some WidgetConfiguration {
        StaticConfiguration(kind: kind, provider: DashboardWidgetProvider()) { entry in
            DashboardWidgetView(entry: entry)
        }
        .configurationDisplayName(String(localized: "app_name"))
        .description(String(localized: "widget_description"))
        .supportedFamilies([.systemSmall, .systemMedium, .systemLarge])
    }
}

struct AIQuotaProviderWidget: Widget {
    let kind = "AIQuotaProviderWidget"

    var body: some WidgetConfiguration {
        StaticConfiguration(kind: kind, provider: ProviderFocusedWidgetProvider()) { entry in
            ProviderFocusedWidgetView(entry: entry)
        }
        .configurationDisplayName(String(localized: "app_name"))
        .description(String(localized: "widget_description"))
        .supportedFamilies([.systemSmall, .systemMedium, .systemLarge])
    }
}

@main
struct AIQuotaWidgets: WidgetBundle {
    var body: some Widget {
        AIQuotaDashboardWidget()
        AIQuotaProviderWidget()
    }
}

enum AIQuotaWidgetPreviewFixtures {
    static let empty = AIQuotaWidgetEntry(date: Date(), envelope: .empty)
    static let connected = AIQuotaWidgetEntry(date: Date(), envelope: .fixture([.connected]))
    static let stale = AIQuotaWidgetEntry(date: Date(), envelope: .fixture([.stale]))
    static let error = AIQuotaWidgetEntry(date: Date(), envelope: .fixture([.error]))
}

private extension WidgetCacheEnvelope {
    static let empty = WidgetCacheEnvelope(schemaVersion: 1, generatedAt: "2026-06-04T00:00:00Z", providers: [])

    static func fixture(_ providers: [WidgetProviderSnapshot]) -> WidgetCacheEnvelope {
        WidgetCacheEnvelope(schemaVersion: 1, generatedAt: "2026-06-04T00:00:00Z", providers: providers)
    }
}

private extension WidgetProviderSnapshot {
    static let connected = WidgetProviderSnapshot(
        providerId: "gemini",
        displayName: "Gemini",
        connectionState: "CONNECTED",
        refreshState: "IDLE",
        planLabel: "Pro",
        accountDisplay: "user@example.com",
        updatedAt: "2026-06-04T00:00:00Z",
        message: nil,
        lines: [.init(label: "2.5 pro", remainingPercent: 0.92, remainingText: "92% left", resetText: nil, severity: "NORMAL", key: "gemini-pro")]
    )

    static let stale = WidgetProviderSnapshot(
        providerId: "cursor",
        displayName: "Cursor",
        connectionState: "STALE",
        refreshState: "IDLE",
        planLabel: "Pro",
        accountDisplay: nil,
        updatedAt: "2026-06-04T00:00:00Z",
        message: "Previous usage shown",
        lines: [.init(label: "Requests", remainingPercent: 0.22, remainingText: "22% left", resetText: nil, severity: "WARNING", key: "cursor-requests")]
    )

    static let error = WidgetProviderSnapshot(
        providerId: "antigravity",
        displayName: "Antigravity",
        connectionState: "ERROR",
        refreshState: "IDLE",
        planLabel: nil,
        accountDisplay: nil,
        updatedAt: "2026-06-04T00:00:00Z",
        message: "Connection needs attention",
        lines: []
    )

    var stateLabel: String {
        switch connectionState {
        case "CONNECTED":
            return "Connected"
        case "STALE":
            return "Stale"
        case "ERROR":
            return "Error"
        default:
            return "Connect"
        }
    }

    var stateColor: Color {
        switch connectionState {
        case "CONNECTED":
            return .green
        case "STALE":
            return .orange
        case "ERROR":
            return .red
        default:
            return .secondary
        }
    }

    var primaryRemainingPercent: Float? {
        lines.compactMap(\.remainingPercent).min()
    }

    var primaryRemainingText: String {
        if let line = lines.min(by: { ($0.remainingPercent ?? 1) < ($1.remainingPercent ?? 1) }) {
            return line.remainingText
        }
        return message ?? stateLabel
    }

    var primaryLineText: String {
        if let line = lines.min(by: { ($0.remainingPercent ?? 1) < ($1.remainingPercent ?? 1) }) {
            return "\(line.label) \(line.remainingText)"
        }
        return message ?? stateLabel
    }

    static func isHigherPriority(_ lhs: WidgetProviderSnapshot, _ rhs: WidgetProviderSnapshot) -> Bool {
        if lhs.priorityRank != rhs.priorityRank {
            return lhs.priorityRank < rhs.priorityRank
        }
        return (lhs.primaryRemainingPercent ?? 1) < (rhs.primaryRemainingPercent ?? 1)
    }

    private var priorityRank: Int {
        switch connectionState {
        case "ERROR":
            return 0
        case "STALE":
            return 1
        case "CONNECTED":
            return 2
        default:
            return 3
        }
    }
}

#Preview("Dashboard Empty") {
    DashboardWidgetView(entry: AIQuotaWidgetPreviewFixtures.empty)
}

#Preview("Dashboard Connected") {
    DashboardWidgetView(entry: AIQuotaWidgetPreviewFixtures.connected)
}

#Preview("Provider Stale") {
    ProviderFocusedWidgetView(entry: AIQuotaWidgetPreviewFixtures.stale)
}

#Preview("Provider Error") {
    ProviderFocusedWidgetView(entry: AIQuotaWidgetPreviewFixtures.error)
}
