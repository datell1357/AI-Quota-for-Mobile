import AIQuotaCore
import Foundation

/// Explicit Copilot fields only. Completions, legacy premium requests and AI Credits
/// have different identities/units; unfamiliar quota keys never inherit their labels.
public enum CopilotUsageDecoder {
    public static func decode(_ data: Data, identity: RemoteIdentity, fetchedAt: Date) throws -> UsageReport {
        guard identity.product == "copilot-subscription", identity.workspace == nil else { throw CoreError.identityMismatch }
        guard data.count <= 1_048_576 else { throw CollectorError.invalidResponse }
        do {
            let value = try JSONDecoder().decode(Response.self, from: data)
            let reset = try date(value.quota_reset_date_utc ?? value.quota_reset_date ?? value.limited_user_reset_date)
            let creditBilling = value.token_based_billing == true
            var metrics: [UsageMetric] = []
            for (key, snapshot) in [("premium_interactions", value.quota_snapshots?.premium_interactions),
                                    ("chat", value.quota_snapshots?.chat), ("completions", value.quota_snapshots?.completions)] {
                let credits = creditBilling && key != "completions"
                let id = key == "premium_interactions" ? (credits ? "copilot:ai-credits" : "copilot:premium_requests")
                    : "copilot:" + key + (credits ? "-credits" : "")
                let label = key == "premium_interactions" ? (credits ? "AI Credits" : "Premium requests")
                    : key == "chat" ? (credits ? "Chat credits" : "Chat") : "Inline suggestions"
                let unit = credits ? "credits" : "requests"
                if let snapshot {
                    metrics.append(try metric(snapshot, id: id, label: label, unit: unit, credits: credits,
                                              completions: key == "completions", fallbackReset: reset))
                } else if key != "premium_interactions", !credits {
                    let total = key == "chat" ? value.monthly_quotas?.chat : value.monthly_quotas?.completions
                    let remaining = key == "chat" ? value.limited_user_quotas?.chat : value.limited_user_quotas?.completions
                    // A missing side is unknown, not zero. Never create an absent completion row.
                    if let total, let remaining {
                        guard total.value > 0, remaining.value >= 0, remaining.value <= total.value else { throw CollectorError.invalidResponse }
                        metrics.append(try UsageMetric(id: id, label: label, period: "month", unit: unit,
                                                       remainingFraction: remaining.value / total.value,
                                                       used: total.value - remaining.value, remaining: remaining.value,
                                                       limit: total.value, resetsAt: reset, source: .oauthAPI))
                    }
                }
            }
            if let premium = value.quota_snapshots?.premium_interactions,
               premium.overage_permitted == true || (premium.overage_count?.value ?? 0) > 0 {
                guard let used = premium.overage_count?.value, used >= 0 else { throw CollectorError.invalidResponse }
                let limit = premium.overage_entitlement?.value
                guard limit == nil || limit! >= 0 else { throw CollectorError.invalidResponse }
                let metered = limit.map { $0 > 0 } == true
                metrics.append(try UsageMetric(id: creditBilling ? "copilot:ai-credits:overage" : "copilot:premium_requests:overage",
                                               label: creditBilling ? "Additional credits" : "Additional premium requests",
                                               period: "month", unit: creditBilling ? "credits" : "requests",
                                               status: metered ? .limited : .unknown,
                                               remainingFraction: metered ? max(0, 1 - used / limit!) : nil, used: used,
                                               remaining: metered ? max(0, limit! - used) : nil, limit: metered ? limit : nil,
                                               resetsAt: try timestamp(premium.quota_reset_at) ?? reset, source: .oauthAPI))
            }
            guard !metrics.isEmpty else { throw CollectorError.invalidResponse }
            let plans = ["free":"Copilot Free", "pro":"Copilot Pro", "individual":"Copilot Pro", "individual_pro":"Copilot Pro+",
                         "pro_plus":"Copilot Pro+", "business":"Copilot Business", "enterprise":"Copilot Enterprise",
                         "individual_edu":"Copilot Student", "individual_max":"Copilot Max"]
            let plan = try value.copilot_plan.map { raw -> String in
                guard !raw.isEmpty, raw.utf8.count <= 128, !raw.unicodeScalars.contains(where: { CharacterSet.controlCharacters.contains($0) }) else { throw CollectorError.invalidResponse }
                return plans[raw] ?? raw
            }
            let skuPlan = ["free_limited_copilot":"Copilot Free", "free_educational_quota":"Copilot Student"][value.access_type_sku ?? ""]
            return UsageReport(identity: identity, fetchedAt: fetchedAt, plan: skuPlan ?? plan, metrics: metrics)
        } catch let error as CollectorError { throw error }
        catch { throw CollectorError.invalidResponse }
    }

    private static func metric(_ q: Snapshot, id: String, label: String, unit: String, credits: Bool,
                               completions: Bool, fallbackReset: Date?) throws -> UsageMetric {
        let reset = try timestamp(q.quota_reset_at) ?? fallbackReset
        let total = q.entitlement?.value, counter = q.credits_used?.value
        guard total == nil || total! >= 0, counter == nil || counter! >= 0 else { throw CollectorError.invalidResponse }
        if q.unlimited == true {
            // For chat/premium, this can mean an organization pool without a per-user
            // denominator. credits_used must never be divided by entitlement.
            let actuallyUnlimited = completions && !credits && counter == nil
            return try UsageMetric(id: counter != nil ? id + ":consumed-credits" : id,
                                   label: counter != nil ? label + " · Consumed credits" : label, period: "month", unit: counter != nil ? "credits" : unit,
                                   status: actuallyUnlimited ? .unlimited : .unknown,
                                   used: q.has_quota == false ? nil : counter, resetsAt: reset, source: .oauthAPI,
                                   accuracy: (counter != nil && q.has_quota != false) || actuallyUnlimited ? .measured : .unknown)
        }
        if total == 0 {
            // A zero-entitlement placeholder, including percent_remaining=100, is
            // not evidence that a user has a full allowance or unlimited usage.
            return try UsageMetric(id: counter != nil ? id + ":consumed-credits" : id,
                                   label: counter != nil ? label + " · Consumed credits" : label, period: "month", unit: counter != nil ? "credits" : unit,
                                   status: .unknown, used: counter, resetsAt: reset, source: .oauthAPI,
                                   accuracy: counter == nil ? .unknown : .measured)
        }
        let remaining = credits ? q.quota_remaining?.value : q.remaining?.value
        let percent = q.percent_remaining?.value ?? {
            guard let total, total > 0, let remaining else { return nil }
            return remaining / total * 100
        }()
        guard let percent, percent <= 100, percent.isFinite else { throw CollectorError.invalidResponse }
        // A negative server percentage records overage; the gauge stops at zero,
        // while used retains the amount above the allowance.
        let fraction = max(0, percent / 100)
        if let total {
            guard remaining == nil || remaining! <= total else { throw CollectorError.invalidResponse }
            let available = remaining ?? total * percent / 100
            return try UsageMetric(id: id, label: label, period: "month", unit: unit, remainingFraction: fraction,
                                   used: max(0, total - available), remaining: max(0, available), limit: total,
                                   resetsAt: reset, source: .oauthAPI)
        }
        // No denominator means percentages only, not a fabricated count of requests/credits.
        return try UsageMetric(id: id, label: label, period: "month", unit: "percent", remainingFraction: fraction,
                               used: 100 - percent, remaining: max(0, percent), limit: 100, resetsAt: reset, source: .oauthAPI)
    }
    private static func timestamp(_ number: Number?) throws -> Date? {
        guard let seconds = number?.value else { return nil }
        guard (946_684_800...4_102_444_800).contains(seconds) else { throw CollectorError.invalidResponse }
        return Date(timeIntervalSince1970: seconds)
    }
    private static func date(_ value: String?) throws -> Date? {
        guard let value else { return nil }
        guard value.utf8.count <= 40 else { throw CollectorError.invalidResponse }
        if value.range(of: #"^\d{4}-\d{2}-\d{2}$"#, options: .regularExpression) != nil {
            let formatter = DateFormatter(); formatter.calendar = Calendar(identifier: .gregorian)
            formatter.locale = Locale(identifier: "en_US_POSIX"); formatter.timeZone = TimeZone(secondsFromGMT: 0)
            formatter.dateFormat = "yyyy-MM-dd"; formatter.isLenient = false
            guard let date = formatter.date(from: value), formatter.string(from: date) == value else { throw CollectorError.invalidResponse }
            return date
        }
        guard value.range(of: #"^\d{4}-\d{2}-\d{2}T\d{2}:\d{2}:\d{2}(?:\.\d{1,9})?(?:Z|[+-]\d{2}:\d{2})$"#, options: .regularExpression) != nil else { throw CollectorError.invalidResponse }
        _ = try date(String(value.prefix(10)))
        let formatter = ISO8601DateFormatter(); formatter.formatOptions = [.withInternetDateTime, .withFractionalSeconds]
        if let date = formatter.date(from: value) { return date }
        formatter.formatOptions = [.withInternetDateTime]
        guard let date = formatter.date(from: value) else { throw CollectorError.invalidResponse }; return date
    }
    private struct Number: Decodable {
        let value: Double
        init(from decoder: any Decoder) throws {
            let container = try decoder.singleValueContainer()
            if let number = try? container.decode(Double.self) { value = number }
            else {
                let string = try container.decode(String.self)
                guard string.utf8.count <= 48, string.range(of: #"^-?(?:0|[1-9]\d*)(?:\.\d+)?(?:[eE][+-]?\d+)?$"#, options: .regularExpression) != nil,
                      let number = Double(string) else { throw CollectorError.invalidResponse }
                value = number
            }
            guard value.isFinite, abs(value) <= 1e15 else { throw CollectorError.invalidResponse }
        }
    }
    private struct Counts: Decodable { let chat: Number?; let completions: Number? }
    private struct Snapshots: Decodable { let chat: Snapshot?; let completions: Snapshot?; let premium_interactions: Snapshot? }
    private struct Snapshot: Decodable {
        let entitlement: Number?, remaining: Number?, quota_remaining: Number?, percent_remaining: Number?, credits_used: Number?
        let unlimited: Bool?, has_quota: Bool?, quota_reset_at: Number?
        let overage_permitted: Bool?, overage_count: Number?, overage_entitlement: Number?
    }
    private struct Response: Decodable {
        let copilot_plan: String?, access_type_sku: String?, token_based_billing: Bool?
        let quota_reset_date_utc: String?, quota_reset_date: String?, limited_user_reset_date: String?
        let quota_snapshots: Snapshots?, monthly_quotas: Counts?, limited_user_quotas: Counts?
    }
}
