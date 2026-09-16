import AIQuotaCore
import SwiftUI
import WidgetKit

@main struct AIQuotaWidgets: WidgetBundle {
    var body: some Widget {
        QuotaWidget<ProviderWidgetIntent>()
        QuotaWidget<DashboardFourIntent>()
        QuotaWidget<DashboardSixIntent>()
        QuotaWidget<BatteryTwoIntent>()
        QuotaWidget<BatteryFourIntent>()
        QuotaWidget<BatterySixIntent>()
    }
}

struct QuotaWidget<Intent: AccountWidgetIntent>: Widget {
    var body: some WidgetConfiguration {
        AppIntentConfiguration(kind: Intent.kind.rawValue, intent: Intent.self, provider: QuotaTimelineProvider<Intent>()) { entry in
            QuotaWidgetContent(presentation: entry.presentation, date: entry.date, configurationError: entry.issue == .editConfiguration)
                .containerBackground(.background, for: .widget)
        }
        .configurationDisplayName(Text(Intent.title))
        .description("Choose accounts. Shows the last collected usage.")
        .supportedFamilies(Intent.kind.sizes.map {
            switch $0 { case .small: .systemSmall; case .medium: .systemMedium; case .large: .systemLarge }
        })
    }
}
