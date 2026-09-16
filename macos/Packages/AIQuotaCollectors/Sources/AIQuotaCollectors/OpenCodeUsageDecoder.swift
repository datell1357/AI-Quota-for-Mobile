import AIQuotaCore
import CoreFoundation
import Foundation

public enum OpenCodeUsageDecoder {
    private typealias Object = [String: Any]
    private static let windows = [("rollingUsage", "go_5_hour_limit", "Go 5-hour limit", "5h"),
                                  ("weeklyUsage", "go_weekly_limit", "Go weekly limit", "week"),
                                  ("monthlyUsage", "go_monthly_limit", "Go monthly limit", "month")]
    public static func decode(go: Data, billing: Data, identity: RemoteIdentity, fetchedAt: Date,
                              goInstance: String? = nil, billingInstance: String? = nil, goReceivedAt: Date? = nil) throws -> UsageReport {
        try validate(identity)
        do {
            let subscription = try OpenCodeServerPayload.decode(go, instance: goInstance)
            let billingValue = try OpenCodeServerPayload.decode(billing, instance: billingInstance)
            var metrics: [UsageMetric] = []
            var hasGo = false
            if !(subscription is NSNull) {
                guard let subscription = subscription as? Object, let mine = try boolean(subscription, "mine") else { throw CollectorError.invalidResponse }
                if mine {
                    hasGo = true
                    for (key, id, label, period) in windows {
                        guard let item = subscription[key] as? Object,
                              let percent = try number(item, "usagePercent"),
                              let seconds = try number(item, "resetInSec"), seconds <= 31_622_400 else { throw CollectorError.invalidResponse }
                        let reset = (goReceivedAt ?? fetchedAt).addingTimeInterval(seconds)
                        let used = try number(item, "usage").map { $0 / 100_000_000 }
                        let limit = try number(item, "limit").flatMap { $0 > 0 ? $0 / 100_000_000 : nil }
                        metrics.append(try UsageMetric(id: "opencode:" + id, label: label, period: period,
                                                       unit: limit == nil ? "percent" : "USD", remainingFraction: max(0, 1 - percent / 100),
                                                       used: limit == nil ? nil : used, limit: limit, resetsAt: reset))
                    }
                } else {
                    // The workspace's Go subscription can belong to a different member.
                    metrics.append(try UsageMetric(id: "opencode:go_other_member", label: "Go (another workspace member)",
                                                   period: "subscription", status: .unsupported, accuracy: .unknown))
                }
            }
            guard let billing = billingValue as? Object else { throw CollectorError.invalidResponse }
            let goMetricCount = metrics.count
            if let balance = try number(billing, "balance", signed: true) {
                metrics.append(try UsageMetric(id: "opencode:zen_credits", label: "Zen balance", period: "balance",
                                               unit: "USD", status: .balance, remaining: balance / 100_000_000))
            }
            if let used = try number(billing, "monthlyUsage") {
                // The console uses a UTC calendar month and displays zero when the last usage
                // update belongs to another month. Raw monthlyUsage can still hold that old value.
                let month = try currentMonth(billing, fetchedAt: fetchedAt)
                let dollars = month.containsUsage ? used / 100_000_000 : 0
                let limit = try number(billing, "monthlyLimit")
                if let limit, limit > 0 {
                    metrics.append(try UsageMetric(id: "opencode:zen_monthly_spend", label: "Zen monthly spend", period: "month",
                                                   unit: "USD", remainingFraction: max(0, 1 - dollars / limit), used: dollars,
                                                   remaining: max(0, limit - dollars), limit: limit,
                                                   resetsAt: month.end, startsAt: month.start))
                } else if billing.keys.contains("monthlyLimit") {
                    metrics.append(try UsageMetric(id: "opencode:zen_monthly_spend", label: "Zen monthly spend", period: "month",
                                                   unit: "USD", status: .unlimited, used: dollars,
                                                   resetsAt: month.end, startsAt: month.start))
                }
            }
            // A changed/empty billing payload must not erase the previous Zen values merely
            // because Go succeeded. Both requested sources must supply a valid result.
            guard metrics.count > goMetricCount else { throw CollectorError.invalidResponse }
            return UsageReport(identity: identity, fetchedAt: fetchedAt, plan: hasGo ? "Go + Zen" : "Zen", metrics: metrics)
        } catch let error as CollectorError { throw error }
        catch { throw CollectorError.invalidResponse }
    }

    /// Adapter for the preserved Android dashboard contract; its values have different units
    /// from the raw console billing query. A verified identity must come from the session, never email.
    public static func decodeDashboard(_ data: Data, identity: RemoteIdentity, fetchedAt: Date) throws -> UsageReport {
        try validate(identity)
        do {
            guard let root = try OpenCodeServerPayload.decode(data) as? Object,
                  let body = (root["data"] ?? root) as? Object else { throw CollectorError.invalidResponse }
            var metrics: [UsageMetric] = []
            if let limits = body["limits"] as? [Object] {
                for item in limits {
                    guard let label = item["label"] as? String else { throw CollectorError.invalidResponse }
                    let compact = label.lowercased().filter { $0.isLetter || $0.isNumber }
                    let definition: (String, String, String)
                    if compact.contains("5hour") { definition = ("go_5_hour_limit", "Go 5-hour limit", "5h") }
                    else if compact.contains("week") { definition = ("go_weekly_limit", "Go weekly limit", "week") }
                    else if compact.contains("month") { definition = ("go_monthly_limit", "Go monthly limit", "month") }
                    else { throw CollectorError.invalidResponse }
                    let limit = try number(item, "limit"), used = try number(item, "used"), remaining = try number(item, "remaining")
                    let ratio: Double
                    if let value = try number(item, "remainingFraction") { ratio = value }
                    else if let value = try number(item, "remaining_percent") { ratio = value / 100 }
                    else if let value = try number(item, "used_percent") { ratio = max(0, 1 - value / 100) }
                    else if let limit, limit > 0, let remaining { ratio = min(1, remaining / limit) }
                    else if let limit, limit > 0, let used { ratio = max(0, 1 - used / limit) }
                    else { throw CollectorError.invalidResponse }
                    let seconds = try number(item, "reset_seconds")
                    // Localized reset_text alone cannot establish an absolute reset instant.
                    metrics.append(try UsageMetric(id: "opencode:" + definition.0, label: definition.1, period: definition.2,
                                                   unit: (item["unit"] as? String) ?? "percent", remainingFraction: ratio,
                                                   used: used, remaining: remaining, limit: limit,
                                                   resetsAt: seconds.map { fetchedAt.addingTimeInterval($0) }, source: .webPage))
                }
            }
            if let credits = body["credits"] as? Object, let balance = try number(credits, "balance", signed: true) {
                metrics.append(try UsageMetric(id: "opencode:zen_credits", label: "Zen credits", period: "balance",
                                               unit: (credits["unit"] as? String) ?? "credits", status: .balance, remaining: balance, source: .webPage))
            }
            guard !metrics.isEmpty, Set(metrics.map(\.id)).count == metrics.count else { throw CollectorError.invalidResponse }
            return UsageReport(identity: identity, fetchedAt: fetchedAt, plan: body["plan"] as? String, metrics: metrics)
        } catch let error as CollectorError { throw error }
        catch { throw CollectorError.invalidResponse }
    }
    private static func validate(_ identity: RemoteIdentity) throws {
        guard identity.product == "opencode-workspace", let workspace = identity.workspace,
              OpenCodeWebClient.validWorkspace(workspace) else { throw CoreError.identityMismatch }
    }
    private static func currentMonth(_ billing: Object, fetchedAt: Date) throws -> (containsUsage: Bool, start: Date, end: Date) {
        var calendar = Calendar(identifier: .gregorian); calendar.timeZone = TimeZone(secondsFromGMT: 0)!
        guard let interval = calendar.dateInterval(of: .month, for: fetchedAt),
              let raw = billing["timeMonthlyUsageUpdated"] else { throw CollectorError.invalidResponse }
        if raw is NSNull { return (false, interval.start, interval.end) }
        guard let text = raw as? String else { throw CollectorError.invalidResponse }
        let formatter = ISO8601DateFormatter(); formatter.formatOptions = [.withInternetDateTime, .withFractionalSeconds]
        var updated = formatter.date(from: text)
        if updated == nil { formatter.formatOptions = [.withInternetDateTime]; updated = formatter.date(from: text) }
        guard let updated, updated < interval.end else { throw CollectorError.invalidResponse }
        return (updated >= interval.start, interval.start, interval.end)
    }
    private static func number(_ object: Object, _ key: String, signed: Bool = false) throws -> Double? {
        guard let raw = object[key], !(raw is NSNull) else { return nil }
        guard let n = raw as? NSNumber, CFGetTypeID(n) != CFBooleanGetTypeID(), n.doubleValue.isFinite,
              signed || n.doubleValue >= 0 else { throw CollectorError.invalidResponse }
        return n.doubleValue
    }
    private static func boolean(_ object: Object, _ key: String) throws -> Bool? {
        guard let raw = object[key] else { return nil }
        guard let n = raw as? NSNumber, CFGetTypeID(n) == CFBooleanGetTypeID() else { throw CollectorError.invalidResponse }
        return n.boolValue
    }
}
