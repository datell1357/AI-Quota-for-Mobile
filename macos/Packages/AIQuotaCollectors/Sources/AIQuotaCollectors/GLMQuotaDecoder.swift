import AIQuotaCore
import Foundation

/// Matches the pinned CodexBar zai.js quota semantics, retaining every returned window.
/// No synthetic 0%-used window is created for missing or unrecognized limits.
public enum GLMQuotaDecoder {
    public struct Quota: Sendable {
        public let metrics: [UsageMetric]
        public let plan: String?
        public let hasPlanQuota: Bool
    }
    private struct Envelope: Decodable {
        let code: Int
        let success: Bool?
        let data: Payload?
    }
    private struct Payload: Decodable {
        let limits: [Limit]
        let planName: String?
        let plan: String?
        let plan_type: String?
        let packageName: String?
        let level: String?
        enum CodingKeys: CodingKey { case limits, planName, plan, plan_type, packageName, level }
        init(from decoder: any Decoder) throws {
            let values = try decoder.container(keyedBy: CodingKeys.self)
            limits = try values.decode([Limit].self, forKey: .limits)
            // Plan metadata may be absent or use a different shape. Keep valid quota windows.
            planName = try? values.decode(String.self, forKey: .planName)
            plan = try? values.decode(String.self, forKey: .plan)
            plan_type = try? values.decode(String.self, forKey: .plan_type)
            packageName = try? values.decode(String.self, forKey: .packageName)
            level = try? values.decode(String.self, forKey: .level)
        }
    }
    private struct Limit: Decodable {
        let type: String
        let unit: Int?
        let number: Int?
        let percentage: Double?
        let usage: Double?
        let currentValue: Double?
        let remaining: Double?
        let nextResetTime: Double?
    }
    public static func decode(_ data: Data, fetchedAt: Date) throws -> Quota {
        // Read error metadata before decoding success-only payloads.
        struct Status: Decodable { let code: Int; let msg: String?; let message: String? }
        let status: Status
        do { status = try JSONDecoder().decode(Status.self, from: data) }
        catch { throw CollectorError.invalidResponse }
        if [401, 403, 1001, 1002].contains(status.code) { throw CollectorError.authenticationRequired }
        let message = (status.msg ?? status.message ?? "").trimmingCharacters(in: .whitespacesAndNewlines).lowercased()
        if status.code == 200 && message == "you don't have any subscription" { throw GLMAPIError.noSubscription }
        let root: Envelope
        do { root = try JSONDecoder().decode(Envelope.self, from: data) }
        catch { throw CollectorError.invalidResponse }
        guard root.code == 200, root.success != false, let payload = root.data, !payload.limits.isEmpty,
              payload.limits.count <= 64 else { throw CollectorError.invalidResponse }
        var metrics: [(minutes: Int, metric: UsageMetric)] = []
        var identifiers = Set<String>()
        var hasPlanQuota = false
        for limit in payload.limits {
            guard ["TOKENS_LIMIT", "CREDIT_LIMIT", "TIME_LIMIT"].contains(limit.type) else { continue }
            guard let unit = limit.unit, let number = limit.number, number > 0, number <= 525_600,
                  let multiplier = [1: 1440, 3: 60, 5: 1, 6: 10080][unit],
                  [limit.percentage, limit.usage, limit.currentValue, limit.remaining, limit.nextResetTime]
                    .compactMap({ $0 }).allSatisfy({ $0.isFinite && $0 >= 0 })
            else { throw CollectorError.invalidResponse }
            let isMCP = limit.type == "TIME_LIMIT"
            let monthly = isMCP && unit == 5 && number == 1
            let minutes = monthly ? 43_200 : number * multiplier
            let period: String
            switch minutes {
            case 300: period = "5-hour"
            case 10080: period = "Weekly"
            case 43200 where monthly: period = "Monthly"
            default: period = "\(number) \([1: "day", 3: "hour", 5: "minute", 6: "week"][unit]!)"
            }
            let id = "glm-\(limit.type.lowercased())-\(unit)-\(number)"
            guard identifiers.insert(id).inserted else { throw CollectorError.invalidResponse }
            let label = "\(isMCP ? "MCP" : limit.type == "CREDIT_LIMIT" ? "Credits" : "Tokens") · \(period)"
            var reset: Date?
            if let ms = limit.nextResetTime, ms > 0, ms / 1000 <= 253_402_300_799,
               isMCP || minutes != 300 || ms / 1000 <= fetchedAt.timeIntervalSince1970 + 18_060 {
                reset = Date(timeIntervalSince1970: ms / 1000)
            }
            let metric: UsageMetric
            if limit.usage == 0 {
                metric = try UsageMetric(id: id, label: label, period: period, status: .unknown,
                                         resetsAt: reset, accuracy: .unknown)
            } else {
                var used: Double?
                var remaining: Double?
                let fraction: Double
                if let total = limit.usage, total > 0, limit.remaining != nil || limit.currentValue != nil {
                    let observed = max(limit.currentValue ?? 0, limit.remaining.map { total - $0 } ?? 0)
                    used = min(total, observed); remaining = total - used!
                    fraction = remaining! / total
                } else if let percentage = limit.percentage, (0...100).contains(percentage) {
                    fraction = 1 - percentage / 100
                } else { throw CollectorError.invalidResponse }
                metric = try UsageMetric(id: id, label: label, period: period, unit: used == nil ? "percent" : isMCP ? "requests" : limit.type == "CREDIT_LIMIT" ? "credits" : "tokens",
                                         remainingFraction: fraction, used: used, remaining: remaining,
                                         limit: used == nil ? nil : limit.usage, resetsAt: reset)
            }
            metrics.append((isMCP ? Int.max : minutes, metric))
            if !isMCP { hasPlanQuota = true }
        }
        guard !metrics.isEmpty else { throw CollectorError.invalidResponse }
        let plan = [payload.planName, payload.plan, payload.plan_type, payload.packageName, payload.level]
            .compactMap { $0?.trimmingCharacters(in: .whitespacesAndNewlines) }
            .first { !$0.isEmpty && $0.count <= 120 && !$0.unicodeScalars.contains(where: CharacterSet.controlCharacters.contains) }
        return Quota(metrics: metrics.sorted { $0.minutes == $1.minutes ? $0.metric.id < $1.metric.id : $0.minutes < $1.minutes }.map(\.metric),
                     plan: plan, hasPlanQuota: hasPlanQuota)
    }
}
