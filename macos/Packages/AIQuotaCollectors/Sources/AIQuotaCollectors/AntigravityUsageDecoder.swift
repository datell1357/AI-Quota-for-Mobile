import AIQuotaCore
import Foundation

/// Model availability alone cannot prove a full allowance. A successful quota
/// response is authoritative, including rows whose fraction is absent.
public enum AntigravityUsageDecoder {
    public static func decode(models data: Data?, verifiedQuota: Data?, identity: RemoteIdentity,
                              plan: String?, fetchedAt: Date) throws -> UsageReport {
        guard identity.product == "antigravity-subscription", identity.workspace != nil else { throw CoreError.identityMismatch }
        do {
            let models = try data.map { try parse(Models.self, $0).models } ?? [:]
            guard models.count <= 200 else { throw CollectorError.invalidResponse }
            var quotas: [String: Quota] = [:]
            if let verifiedQuota {
                let buckets = try parse(Buckets.self, verifiedQuota).buckets
                guard buckets.count <= 1_000 else { throw CollectorError.invalidResponse }
                for bucket in buckets {
                    try identifier(bucket.modelId)
                    let quota = try checked(bucket.quota)
                    // The wire shape has no stable bucket/period identifier. Do
                    // not silently collapse distinct windows into one percentage.
                    if let prior = quotas[bucket.modelId], prior != quota { throw CollectorError.invalidResponse }
                    quotas[bucket.modelId] = quota
                }
            }
            let ids = Set(models.keys).union(quotas.keys).sorted()
            guard ids.count <= 200 else { throw CollectorError.invalidResponse }
            var metrics: [UsageMetric] = []
            for id in ids {
                try identifier(id)
                let model = models[id]
                if model?.isInternal == true { continue }
                // Models without quotaInfo are availability-only and do not
                // become quota rows unless retrieveUserQuota identifies them.
                guard model?.quotaInfo != nil || quotas[id] != nil else { continue }
                let label = try text(model?.displayName ?? model?.label ?? id)
                let available = try model?.quotaInfo.map(checked)
                let quota: Quota?
                if verifiedQuota != nil {
                    quota = quotas[id]
                } else {
                    // Partial depletion is evidence from the Android quotaInfo
                    // contract. Full availability still needs independent proof.
                    quota = available?.remainingFraction == 1 ? nil : available
                }
                let fraction = quota?.remainingFraction
                metrics.append(try UsageMetric(id: "antigravity:" + id, label: label, period: "model",
                                               status: fraction == nil ? .unknown : .limited,
                                               remainingFraction: fraction, resetsAt: try date(quota?.resetTime),
                                               source: .oauthAPI, accuracy: fraction == nil ? .unknown : .measured))
            }
            guard metrics.contains(where: { $0.remainingFraction != nil }) else { throw CollectorError.unsupported }
            metrics.sort { (priority($0.label), $0.id) < (priority($1.label), $1.id) }
            return UsageReport(identity: identity, fetchedAt: fetchedAt, plan: try plan.flatMap(planLabel), metrics: metrics)
        } catch let error as CollectorError { throw error }
        catch { throw CollectorError.invalidResponse }
    }

    static func parse<T: Decodable>(_ type: T.Type, _ data: Data) throws -> T {
        guard !data.isEmpty, data.count <= 1_048_576 else { throw CollectorError.invalidResponse }
        do { return try JSONDecoder().decode(type, from: data) }
        catch { throw CollectorError.invalidResponse }
    }
    static func identifier(_ value: String) throws {
        guard !value.unicodeScalars.contains(where: { CharacterSet.controlCharacters.contains($0) }),
              value.range(of: #"^[A-Za-z0-9][A-Za-z0-9._:-]{0,199}$"#, options: .regularExpression) != nil else { throw CollectorError.invalidResponse }
    }
    static func text(_ value: String) throws -> String {
        guard !value.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty, value.utf8.count <= 256,
              !value.unicodeScalars.contains(where: { CharacterSet.controlCharacters.contains($0) }) else { throw CollectorError.invalidResponse }
        return value
    }
    private static func planLabel(_ value: String) throws -> String? {
        let value = try text(value).trimmingCharacters(in: .whitespacesAndNewlines)
        let key = value.lowercased().replacingOccurrences(of: #"[^a-z0-9]"#, with: "", options: .regularExpression)
        if ["unknown", "antigravityunknown", "googleaiunknown"].contains(key) { return nil }
        return value.replacingOccurrences(of: #"^Google\s+AI\s+"#, with: "AI ", options: [.regularExpression, .caseInsensitive])
            .replacingOccurrences(of: #"^Antigravity\s+"#, with: "", options: [.regularExpression, .caseInsensitive])
    }
    private static func priority(_ label: String) -> Int {
        let key = label.lowercased().replacingOccurrences(of: #"[^a-z0-9]"#, with: "", options: .regularExpression)
        return modelOrder.firstIndex(of: key) ?? modelOrder.count
    }
    private static let modelOrder = ["gemini35flashhigh", "gemini35flashmedium", "gemini35flashlow", "gemini31prohigh",
                                     "gemini31prolow", "gemini3flash", "gemini31flashimage", "gemini31flashlite",
                                     "claudesonnet46thinking", "claudeopus46thinking", "gptoss120bmedium"]
    private static func checked(_ value: Quota) throws -> Quota {
        if let fraction = value.remainingFraction {
            guard fraction.isFinite, (0...1).contains(fraction) else { throw CollectorError.invalidResponse }
        }
        _ = try date(value.resetTime)
        return value
    }
    private static func date(_ value: String?) throws -> Date? {
        guard let value else { return nil }
        guard value.utf8.count <= 40, !value.unicodeScalars.contains(where: { CharacterSet.controlCharacters.contains($0) }),
              value.range(of: #"^\d{4}-\d{2}-\d{2}T(?:[01]\d|2[0-3]):[0-5]\d:[0-5]\d(?:\.\d{1,9})?(?:Z|[+-](?:[01]\d|2[0-3]):[0-5]\d)$"#, options: .regularExpression) != nil else { throw CollectorError.invalidResponse }
        let day = DateFormatter(); day.calendar = Calendar(identifier: .gregorian)
        day.locale = Locale(identifier: "en_US_POSIX"); day.timeZone = TimeZone(secondsFromGMT: 0)
        day.dateFormat = "yyyy-MM-dd"; day.isLenient = false
        let prefix = String(value.prefix(10))
        guard let parsedDay = day.date(from: prefix), day.string(from: parsedDay) == prefix else { throw CollectorError.invalidResponse }
        let format = ISO8601DateFormatter(); format.formatOptions = [.withInternetDateTime, .withFractionalSeconds]
        if let date = format.date(from: value) { return date }
        format.formatOptions = [.withInternetDateTime]
        guard let date = format.date(from: value) else { throw CollectorError.invalidResponse }; return date
    }
    private struct Models: Decodable { let models: [String: Model] }
    private struct Model: Decodable {
        let displayName: String?, label: String?, isInternal: Bool?, quotaInfo: Quota?
    }
    private struct Quota: Decodable, Equatable { let remainingFraction: Double?, resetTime: String? }
    private struct Buckets: Decodable { let buckets: [Bucket] }
    private struct Bucket: Decodable {
        let modelId: String, remainingFraction: Double?, resetTime: String?
        var quota: Quota { Quota(remainingFraction: remainingFraction, resetTime: resetTime) }
    }
}
