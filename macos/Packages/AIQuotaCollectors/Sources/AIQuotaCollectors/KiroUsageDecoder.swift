import AIQuotaCore
import CoreFoundation
import CryptoKit
import Foundation

public enum KiroUsageDecoder {
    typealias Object = [String: Any]
    public static func decode(_ data: Data, identity: RemoteIdentity, fetchedAt: Date) throws -> UsageReport {
        guard identity.product == "kiro-web-subscription", identity.workspace == nil else { throw CoreError.identityMismatch }
        let root = try KiroCBOR.object(data)
        guard let user = root["userInfo"] as? Object, let subject = try text(user, "userId") else { throw CollectorError.invalidResponse }
        guard subject == identity.subject else { throw CoreError.identityMismatch }
        do {
            guard let rows = try objects(root, "usageBreakdownList"), !rows.isEmpty, rows.count <= 32 else { throw CollectorError.invalidResponse }
            let fallbackReset = try date(root, "nextDateReset")
            let configuration = try object(root, "overageConfiguration")
            let enabled = try configuration.flatMap { try boolean($0, "overageEnabled") }
            var metrics: [UsageMetric] = []
            for row in rows {
                guard let resource = try text(row, "resourceType"),
                      resource.range(of: #"^[A-Z][A-Z0-9_]{0,63}$"#, options: .regularExpression) != nil else { throw CollectorError.invalidResponse }
                let id = "kiro:" + resource.lowercased()
                let label = try text(row, "displayNamePlural") ?? text(row, "displayName") ?? resource
                guard let unit = resource == "CREDIT" ? "credits" : try text(row, "unit") else { throw CollectorError.invalidResponse }
                let reset = try date(row, "nextDateReset") ?? fallbackReset
                guard let used = try precise(row, "currentUsage") else { throw CollectorError.invalidResponse }
                // The deployed web portal renders this field directly. Its CLI endpoint has a
                // different accounting contract; do not subtract overage/bonuses or add them here.
                metrics.append(try quota(id: id, label: label, period: "month", unit: unit, used: used,
                                         limit: precise(row, "usageLimit"), reset: reset, sentinel: resource == "CREDIT"))
                if let trial = try object(row, "freeTrialInfo") {
                    guard let status = try text(trial, "freeTrialStatus") else { throw CollectorError.invalidResponse }
                    if status == "ACTIVE" {
                        guard let usage = try precise(trial, "currentUsage") else { throw CollectorError.invalidResponse }
                        metrics.append(try quota(id: id + ":trial", label: label + " · Trial", period: "trial", unit: unit, used: usage,
                                                 limit: precise(trial, "usageLimit"), expiry: date(trial, "freeTrialExpiry"), now: fetchedAt, sentinel: false))
                    }
                }
                for bonus in try objects(row, "bonuses") ?? [] {
                    guard let status = try text(bonus, "status") else { throw CollectorError.invalidResponse }
                    guard status == "ACTIVE" else { continue }
                    guard let code = try text(bonus, "bonusCode"), let usage = try number(bonus, "currentUsage") else {
                        throw CollectorError.invalidResponse
                    }
                    let redeemed = try date(bonus, "redeemedAt")
                    let key = code + "|" + (redeemed.map { String($0.timeIntervalSince1970) } ?? "")
                    let digest = SHA256.hash(data: Data(key.utf8)).map { String(format: "%02x", $0) }.joined()
                    metrics.append(try quota(id: id + ":bonus:" + digest, label: text(bonus, "displayName") ?? label + " · Bonus",
                                             period: "bonus", unit: unit, used: usage, limit: number(bonus, "usageLimit"),
                                             expiry: date(bonus, "expiresAt"), now: fetchedAt, sentinel: false))
                }
                // Credit packs have no server ID. Aggregate only packs sharing the same expiry,
                // so order changes cannot move an account's saved metric identity.
                var packs: [String: (used: Double, limit: Double, expiry: Date?)] = [:]
                for pack in try objects(row, "overageCredits") ?? [] {
                    guard let usage = try number(pack, "currentUsage"), let limit = try number(pack, "usageLimit"), limit > 0, usage <= limit else {
                        throw CollectorError.invalidResponse
                    }
                    let expiry = try date(pack, "expiresAt"), key = expiry.map { String($0.timeIntervalSince1970) } ?? "none"
                    let previous = packs[key]
                    let sumUsed = (previous?.used ?? 0) + usage, sumLimit = (previous?.limit ?? 0) + limit
                    guard sumUsed.isFinite, sumLimit.isFinite else { throw CollectorError.invalidResponse }
                    packs[key] = (sumUsed, sumLimit, expiry)
                }
                for key in packs.keys.sorted() {
                    let pack = packs[key]!
                    metrics.append(try quota(id: id + ":prepaid:" + key, label: label + " · Prepaid", period: "prepaid", unit: unit,
                                             used: pack.used, limit: pack.limit, expiry: pack.expiry, now: fetchedAt, sentinel: false))
                }
                let overage = try precise(row, "currentOverages"), charge = try number(row, "overageCharges")
                if enabled == true || (overage ?? 0) > 0 {
                    // An enabled switch alone cannot establish an unused allowance.
                    guard let overage else { throw CollectorError.invalidResponse }
                    metrics.append(try quota(id: id + ":overage", label: label + " · Overage", period: "month", unit: unit,
                                             used: overage, limit: enabled == true ? precise(row, "overageCap") : nil, reset: reset,
                                             sentinel: resource == "CREDIT"))
                }
                if let charge, charge > 0 || enabled == true {
                    guard let currency = try text(row, "currency"),
                          currency.range(of: #"^[A-Z]{3}$"#, options: .regularExpression) != nil else { throw CollectorError.invalidResponse }
                    // maxOverageAmount / rate are not assumed to be a per-resource charge limit.
                    metrics.append(try quota(id: id + ":overage-charge", label: label + " · Overage charge", period: "month",
                                             unit: currency, used: charge, limit: nil, reset: reset))
                }
            }
            guard Set(metrics.map(\.id)).count == metrics.count else { throw CollectorError.invalidResponse }
            let subscription = try object(root, "subscriptionInfo")
            return UsageReport(identity: identity, fetchedAt: fetchedAt, plan: try subscription.flatMap { try text($0, "subscriptionTitle") }, metrics: metrics)
        } catch let error as CollectorError { throw error }
        catch { throw CollectorError.invalidResponse }
    }
    private static func quota(id: String, label: String, period: String, unit: String, used: Double, limit: Double?,
                              reset: Date? = nil, expiry: Date? = nil, now: Date = .distantPast, sentinel: Bool = true) throws -> UsageMetric {
        guard let limit, limit > 0, !sentinel || limit < 999_999 else {
            return try UsageMetric(id: id, label: label, period: period, unit: unit, status: .unknown, used: used,
                                   resetsAt: reset, expiresAt: expiry)
        }
        let remaining = expiry.map { $0 <= now } == true ? 0 : max(0, limit - used)
        return try UsageMetric(id: id, label: label, period: period, unit: unit, remainingFraction: remaining / limit,
                               used: used, remaining: remaining, limit: limit, resetsAt: reset, expiresAt: expiry)
    }
    static func text(_ object: Object, _ key: String) throws -> String? {
        guard let raw = object[key], !(raw is NSNull) else { return nil }
        guard let value = raw as? String, !value.isEmpty, value.utf8.count <= 512,
              value == value.trimmingCharacters(in: .whitespacesAndNewlines),
              !value.unicodeScalars.contains(where: { CharacterSet.controlCharacters.contains($0) }) else { throw CollectorError.invalidResponse }
        return value
    }
    private static func number(_ object: Object, _ key: String) throws -> Double? {
        guard let raw = object[key], !(raw is NSNull) else { return nil }
        guard let n = raw as? NSNumber, CFGetTypeID(n) != CFBooleanGetTypeID(), n.doubleValue.isFinite, n.doubleValue >= 0 else {
            throw CollectorError.invalidResponse
        }
        return n.doubleValue
    }
    private static func precise(_ object: Object, _ key: String) throws -> Double? {
        try number(object, key + "WithPrecision") ?? number(object, key)
    }
    private static func date(_ object: Object, _ key: String) throws -> Date? {
        guard let seconds = try number(object, key) else { return nil }
        guard (946_684_800...4_102_444_800).contains(seconds) else { throw CollectorError.invalidResponse }
        return Date(timeIntervalSince1970: seconds)
    }
    private static func boolean(_ object: Object, _ key: String) throws -> Bool? {
        guard let raw = object[key], !(raw is NSNull) else { return nil }
        guard let n = raw as? NSNumber, CFGetTypeID(n) == CFBooleanGetTypeID() else { throw CollectorError.invalidResponse }
        return n.boolValue
    }
    private static func object(_ object: Object, _ key: String) throws -> Object? {
        guard let raw = object[key], !(raw is NSNull) else { return nil }
        guard let value = raw as? Object else { throw CollectorError.invalidResponse }; return value
    }
    private static func objects(_ object: Object, _ key: String) throws -> [Object]? {
        guard let raw = object[key], !(raw is NSNull) else { return nil }
        guard let values = raw as? [Object], values.count <= 128 else { throw CollectorError.invalidResponse }; return values
    }
}
