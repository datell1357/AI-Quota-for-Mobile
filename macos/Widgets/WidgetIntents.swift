import AIQuotaCore
import AppIntents

protocol AccountWidgetIntent: WidgetConfigurationIntent {
    static var kind: WidgetKind { get }
    var selectedIDs: [String] { get }
}

struct ProviderWidgetIntent: AccountWidgetIntent {
    static let title: LocalizedStringResource = "Account usage"
    static let kind = WidgetKind.provider
    @Parameter(title: "Account") var account: WidgetAccountEntity?
    var selectedIDs: [String] { account.map { [$0.id] } ?? [] }
}
struct DashboardFourIntent: AccountWidgetIntent {
    static let title: LocalizedStringResource = "Dashboard · 4"
    static let kind = WidgetKind.dashboardFour
    @Parameter(title: "Select up to 4 accounts.", size: .init(min: 0, max: 4)) var accounts: [WidgetAccountEntity]?
    var selectedIDs: [String] { accounts?.map(\.id) ?? [] }
}
struct DashboardSixIntent: AccountWidgetIntent {
    static let title: LocalizedStringResource = "Dashboard · 6"
    static let kind = WidgetKind.dashboardSix
    @Parameter(title: "Select up to 6 accounts.", size: .init(min: 0, max: 6)) var accounts: [WidgetAccountEntity]?
    var selectedIDs: [String] { accounts?.map(\.id) ?? [] }
}
struct BatteryTwoIntent: AccountWidgetIntent {
    static let title: LocalizedStringResource = "Battery · 2"
    static let kind = WidgetKind.batteryTwo
    @Parameter(title: "Select up to 2 accounts.", size: .init(min: 0, max: 2)) var accounts: [WidgetAccountEntity]?
    var selectedIDs: [String] { accounts?.map(\.id) ?? [] }
}
struct BatteryFourIntent: AccountWidgetIntent {
    static let title: LocalizedStringResource = "Battery · 4"
    static let kind = WidgetKind.batteryFour
    @Parameter(title: "Select up to 4 accounts.", size: .init(min: 0, max: 4)) var accounts: [WidgetAccountEntity]?
    var selectedIDs: [String] { accounts?.map(\.id) ?? [] }
}
struct BatterySixIntent: AccountWidgetIntent {
    static let title: LocalizedStringResource = "Battery · 6"
    static let kind = WidgetKind.batterySix
    @Parameter(title: "Select up to 6 accounts.", size: .init(min: 0, max: 6)) var accounts: [WidgetAccountEntity]?
    var selectedIDs: [String] { accounts?.map(\.id) ?? [] }
}
