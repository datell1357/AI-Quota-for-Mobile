import AIQuotaCore
import Foundation

/// Claude's native /usage endpoint uses percent utilization, including values below one.
/// Structured Android bridge payloads have separate units and must not be passed to this decoder.
public enum ClaudeUsageDecoder {
    private struct Window: Decodable { let utilization: Double?; let resets_at: String? }
    private struct ScopedLimit: Decodable {
        struct Scope: Decodable {
            struct Model: Decodable { let id: String?; let display_name: String? }
            let model: Model?
        }
        let kind: String?
        let group: String?
        let percent: Double?
        let resets_at: String?
        let scope: Scope?
    }
    private struct Extra: Decodable {
        let is_enabled: Bool?
        let used_credits: Double?
        let monthly_limit: Double?
        let monthly_credit_limit: Double?
        let utilization: Double?
    }
    public static func decode(_ data: Data, identity: RemoteIdentity, fetchedAt: Date, plan: String? = nil) throws -> UsageReport {
        guard identity.product == "claude-subscription", identity.workspace != nil else { throw CoreError.identityMismatch }
        do {
            guard let json = try JSONSerialization.jsonObject(with: data) as? [String: Any] else { throw CollectorError.invalidResponse }
            let keys = json.keys.filter { $0 == "five_hour" || $0 == "seven_day" || $0.hasPrefix("seven_day_") }
                .sorted { priority($0) == priority($1) ? $0 < $1 : priority($0) < priority($1) }
            var metrics: [UsageMetric] = []
            for key in keys {
                guard let raw = json[key], !(raw is NSNull) else { continue }
                let window = try JSONDecoder().decode(Window.self, from: JSONSerialization.data(withJSONObject: raw))
                let reset = try window.resets_at.map(parseDate)
                let definition = definition(key)
                if let used = window.utilization {
                    guard used.isFinite, used >= 0 else { throw CollectorError.invalidResponse }
                    metrics.append(try UsageMetric(id: definition.id, label: definition.label, period: key == "five_hour" ? "5h" : "7d",
                                                   remainingFraction: max(0, 1 - used / 100), used: used, limit: 100,
                                                   resetsAt: reset, source: .webAPI))
                } else {
                    metrics.append(try UsageMetric(id: definition.id, label: definition.label, period: key == "five_hour" ? "5h" : "7d",
                                                   status: .unknown, resetsAt: reset, source: .webAPI, accuracy: .unknown))
                }
            }
            if let raw = json["limits"], !(raw is NSNull) {
                let limits = try JSONDecoder().decode([ScopedLimit].self, from: JSONSerialization.data(withJSONObject: raw))
                for item in limits where item.kind == "weekly_scoped" && item.group == "weekly" {
                    guard let model = item.scope?.model,
                          let name = model.display_name?.trimmingCharacters(in: .whitespacesAndNewlines), !name.isEmpty else {
                        throw CollectorError.invalidResponse
                    }
                    let sourceID = model.id?.isEmpty == false ? "id:" + model.id! : "name:" + name
                    let id = "claude:weekly_scoped:" + Data(sourceID.utf8).base64EncodedString()
                    let reset = try item.resets_at.map(parseDate)
                    if let used = item.percent {
                        guard used.isFinite, used >= 0 else { throw CollectorError.invalidResponse }
                        metrics.append(try UsageMetric(id: id, label: name, period: "7d", remainingFraction: max(0, 1 - used / 100),
                                                       used: used, limit: 100, resetsAt: reset, source: .webAPI))
                    } else {
                        metrics.append(try UsageMetric(id: id, label: name, period: "7d", status: .unknown,
                                                       resetsAt: reset, source: .webAPI, accuracy: .unknown))
                    }
                }
            }
            if let raw = json["extra_usage"], !(raw is NSNull) {
                let extra = try JSONDecoder().decode(Extra.self, from: JSONSerialization.data(withJSONObject: raw))
                if extra.is_enabled == true {
                    if let limit = extra.monthly_limit ?? extra.monthly_credit_limit, let used = extra.used_credits, limit > 0 {
                        guard limit.isFinite, used.isFinite, used >= 0 else { throw CollectorError.invalidResponse }
                        metrics.append(try UsageMetric(id: "claude:extra_usage", label: "Claude Extra usage", period: "month", unit: "credits",
                                                       remainingFraction: max(0, 1 - used / limit), used: used, limit: limit, source: .webAPI))
                    } else if let used = extra.utilization {
                        guard used.isFinite, used >= 0 else { throw CollectorError.invalidResponse }
                        metrics.append(try UsageMetric(id: "claude:extra_usage", label: "Claude Extra usage", period: "month",
                                                       remainingFraction: max(0, 1 - used / 100), used: used, limit: 100, source: .webAPI))
                    } else {
                        metrics.append(try UsageMetric(id: "claude:extra_usage", label: "Claude Extra usage", period: "month",
                                                       status: .unknown, source: .webAPI, accuracy: .unknown))
                    }
                }
            }
            guard !metrics.isEmpty, Set(metrics.map(\.id)).count == metrics.count else { throw CollectorError.invalidResponse }
            return UsageReport(identity: identity, fetchedAt: fetchedAt, plan: plan, metrics: metrics)
        } catch let error as CollectorError { throw error }
        catch { throw CollectorError.invalidResponse }
    }
    private static func parseDate(_ value: String) throws -> Date {
        let formatter = ISO8601DateFormatter()
        formatter.formatOptions = [.withInternetDateTime, .withFractionalSeconds]
        if let date = formatter.date(from: value) { return date }
        formatter.formatOptions = [.withInternetDateTime]
        guard let date = formatter.date(from: value) else { throw CollectorError.invalidResponse }
        return date
    }
    private static func priority(_ key: String) -> Int { key == "five_hour" ? 0 : key == "seven_day" ? 1 : 2 }
    private static func definition(_ key: String) -> (id: String, label: String) {
        switch key {
        case "five_hour": ("claude:session", "Claude Session")
        case "seven_day": ("claude:weekly", "Claude Weekly")
        case "seven_day_opus": ("claude:opus", "Claude Opus")
        case "seven_day_sonnet": ("claude:sonnet", "Claude Sonnet")
        case "seven_day_cowork": ("claude:cowork", "Claude Cowork")
        case "seven_day_omelette": ("claude:design", "Claude Design")
        default: ("claude:window:\(key)", "Claude " + key.replacingOccurrences(of: "seven_day_", with: "").replacingOccurrences(of: "_", with: " "))
        }
    }
}
