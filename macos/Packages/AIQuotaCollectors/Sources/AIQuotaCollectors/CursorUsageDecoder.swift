import AIQuotaCore
import CoreFoundation
import Foundation

/// Cursor's explicit percent fields are 0–100, including fractional values below one.
/// Only individual usage is adopted; an unidentified shared team pool is never a personal quota.
public enum CursorUsageDecoder {
    private typealias Object = [String: Any]
    public static func decode(_ summary: Data, requestUsage: Data? = nil, identity: RemoteIdentity, fetchedAt: Date) throws -> UsageReport {
        guard identity.product == "cursor-subscription", identity.workspace == nil else { throw CoreError.identityMismatch }
        do {
            let root = try object(summary)
            let reset = try date(root, keys: ["billingCycleEnd", "resetAt", "resetsAt", "resetTime"])
            let start = try date(root, keys: ["billingCycleStart"])
            var rows: [UsageMetric] = []
            func add(_ item: Object?, id: String, label: String, cents: Bool = false) throws {
                guard let item, let row = try metric(item, id: id, label: label, reset: reset, start: start, cents: cents) else { return }
                rows.append(row)
            }
            let usage = try child(root, "usage")
            let plan = try child(root, "planUsage") ?? usage.flatMap { try child($0, "planUsage") }
                ?? (root["totalPercentUsed"] != nil || root["totalSpend"] != nil ? root : nil)
            let individual = try child(root, "individualUsage")
            let individualPlan = try individual.flatMap { try child($0, "plan") }
            for (item, cents) in [(plan, false), (individualPlan, true)] {
                try add(item, id: "cursor:total", label: "Total usage", cents: cents)
                if let item { rows += try breakdown(item, reset: reset, start: start, cents: cents) }
            }
            if let individual {
                try add(child(individual, "onDemand"), id: "cursor:on_demand", label: "On-demand usage", cents: true)
                try add(child(individual, "overall"), id: "cursor:individual_cap", label: "Individual cap", cents: true)
            }
            if let raw = root["limits"], !(raw is NSNull) {
                guard let limits = raw as? [Object] else { throw CollectorError.invalidResponse }
                for item in limits {
                    guard let label = (item["title"] ?? item["label"]) as? String, !label.trimmingCharacters(in: .whitespaces).isEmpty else {
                        throw CollectorError.invalidResponse
                    }
                    let known = definition(label)
                    try add(item, id: known?.0 ?? "cursor:limit:" + Data(label.utf8).base64EncodedString(), label: known?.1 ?? label)
                }
            }
            let requestRoot = try child(root, "requestUsage") ?? usage ?? root
            if let requests = try requests(requestRoot, reset: reset, start: start) { rows.append(requests) }
            else if let requestUsage {
                let legacy = try object(requestUsage)
                // A legacy calendar/request period need not match the modern billing cycle.
                let legacyReset = try date(legacy, keys: ["billingCycleEnd", "resetAt", "resetsAt"])
                let legacyStart = try date(legacy, keys: ["startOfMonth", "billingCycleStart"])
                if let requests = try requests(legacy, reset: legacyReset, start: legacyStart) { rows.append(requests) }
            }
            if try boolean(root, "isUnlimited") == true, !rows.contains(where: { $0.id == "cursor:total" && $0.status != .unknown }) {
                rows.append(try UsageMetric(id: "cursor:total", label: "Total usage", period: "month", status: .unlimited,
                                            resetsAt: reset, startsAt: start, source: .webAPI))
            }
            // Android can report the same lane twice; preserve its most conservative remaining value.
            var unique: [String: UsageMetric] = [:]
            for row in rows {
                if let old = unique[row.id] {
                    guard old.resetsAt == row.resetsAt else { throw CollectorError.invalidResponse }
                    if old.status == .unknown || (row.remainingFraction.map { $0 < (old.remainingFraction ?? 1.1) } ?? false) { unique[row.id] = row }
                } else { unique[row.id] = row }
            }
            let order = ["cursor:total", "cursor:requests", "cursor:auto", "cursor:api", "cursor:on_demand", "cursor:individual_cap"]
            let metrics = unique.values.sorted {
                let a = order.firstIndex(of: $0.id) ?? 100; let b = order.firstIndex(of: $1.id) ?? 100
                return a == b ? $0.id < $1.id : a < b
            }
            guard metrics.contains(where: { $0.status == .limited || $0.status == .unlimited }) else { throw CollectorError.invalidResponse }
            let name = ["membershipType", "plan", "planName", "planType", "tier"].compactMap { root[$0] as? String }.first
            return UsageReport(identity: identity, fetchedAt: fetchedAt, plan: name, metrics: metrics)
        } catch let error as CollectorError { throw error }
        catch { throw CollectorError.invalidResponse }
    }

    private static func breakdown(_ item: Object, reset: Date?, start: Date?, cents: Bool) throws -> [UsageMetric] {
        let reset = try date(item, keys: ["billingCycleEnd", "resetAt", "resetsAt", "resetTime"]) ?? reset
        var rows: [UsageMetric] = []
        for (keys, id, label) in [(["autoPercentUsed", "auto_percent_used", "autoUsagePercent", "auto_usage_percent"], "cursor:auto", "Auto usage"),
                                  (["apiPercentUsed", "api_percent_used", "apiUsagePercent", "api_usage_percent"], "cursor:api", "API usage")] {
            if let value = try number(item, keys) {
                if let row = try metric(["usedPercent": value], id: id, label: label, reset: reset, start: start) { rows.append(row) }
            }
        }
        for key in ["breakdown", "usageBreakdown"] {
            guard let raw = item[key], !(raw is NSNull) else { continue }
            let entries: [(String, Any)]
            if let dictionary = raw as? Object { entries = dictionary.sorted { $0.key < $1.key }.map { ($0.key, $0.value) } }
            else if let array = raw as? [Object] {
                entries = try array.map { value in
                    guard let label = ["label", "name", "title", "type", "category"].compactMap({ value[$0] as? String }).first else {
                        throw CollectorError.invalidResponse
                    }
                    return (label, value)
                }
            } else { throw CollectorError.invalidResponse }
            for (name, raw) in entries {
                guard let (id, label) = definition(name), id != "cursor:total" else { continue }
                let value = (raw as? Object) ?? ["usedPercent": raw]
                if let row = try metric(value, id: id, label: label, reset: reset, start: start, cents: raw is Object && cents) { rows.append(row) }
            }
        }
        for key in ["onDemand", "onDemandUsage", "spendLimitUsage"] {
            if let value = try child(item, key), let row = try metric(value, id: "cursor:on_demand", label: "On-demand usage", reset: reset, start: start, cents: cents) {
                rows.append(row)
            }
        }
        return rows
    }
    private static func definition(_ name: String) -> (String, String)? {
        let key = name.lowercased().filter { $0.isLetter || $0.isNumber }
        switch key {
        case "total", "totalusage": return ("cursor:total", "Total usage")
        case "auto", "autousage": return ("cursor:auto", "Auto usage")
        case "api", "apiusage": return ("cursor:api", "API usage")
        case "ondemand", "ondemandusage", "payasyougo", "usagebased": return ("cursor:on_demand", "On-demand usage")
        default: return nil
        }
    }
    private static func metric(_ item: Object, id: String, label: String, reset: Date?, start: Date?, cents: Bool = false) throws -> UsageMetric? {
        if try boolean(item, "enabled") == false { return nil }
        let reset = try date(item, keys: ["billingCycleEnd", "resetAt", "resetsAt", "resetTime"]) ?? reset
        let usedPercent = try number(item, ["usedPercent", "used_percent", "totalPercentUsed", "total_percent_used"])
        let remainingPercent = try number(item, ["remainingPercent", "remaining_percent"])
        let fraction = try number(item, ["remainingFraction", "remaining_fraction"])
        if let fraction, fraction > 1 { throw CollectorError.invalidResponse }
        if let remainingPercent, remainingPercent > 100 { throw CollectorError.invalidResponse }
        let limit = try number(item, ["limit", "monthlyLimit", "totalLimit", "limitAmount", "individualLimit", "onDemandLimit"])
        let used = try number(item, ["totalSpend", "totalUsage", "spend", "used", "usage", "individualUsed", "onDemandUsed"])
        let remaining = try number(item, ["remaining", "totalRemaining", "balance", "individualRemaining", "onDemandRemaining"])
        let ratio: Double?
        if let usedPercent { ratio = max(0, 1 - usedPercent / 100) }
        else if let remainingPercent { ratio = remainingPercent / 100 }
        else if let fraction { ratio = fraction }
        else if let limit, limit > 0, let used { ratio = max(0, 1 - used / limit) }
        else if let limit, limit > 0, let remaining { ratio = min(1, remaining / limit) }
        else { ratio = nil }
        let unit = cents ? "USD" : ((item["unit"] as? String) ?? "percent")
        if let ratio {
            // API percentages take precedence, including zero-amount summaries. Preserve decimal precision.
            let divisor = cents ? 100.0 : 1
            let amountLimit = limit.flatMap { $0 > 0 ? $0 / divisor : nil }
            return try UsageMetric(id: id, label: label, period: "month", unit: unit, remainingFraction: ratio,
                                   used: amountLimit != nil ? used.map { $0 / divisor } : nil,
                                   remaining: amountLimit != nil ? remaining.map { $0 / divisor } : nil, limit: amountLimit,
                                   resetsAt: reset, startsAt: start, source: .webAPI)
        }
        if try boolean(item, "isUnlimited") == true {
            return try UsageMetric(id: id, label: label, period: "month", unit: unit, status: .unlimited,
                                   used: used.map { cents ? $0 / 100 : $0 }, resetsAt: reset, startsAt: start, source: .webAPI)
        }
        // Enabled on-demand without a cap is unknown; absence does not establish unlimited usage.
        if try boolean(item, "enabled") == true {
            return try UsageMetric(id: id, label: label, period: "month", unit: unit, status: .unknown,
                                   resetsAt: reset, startsAt: start, source: .webAPI, accuracy: .unknown)
        }
        return nil
    }
    private static func requests(_ root: Object, reset: Date?, start: Date?) throws -> UsageMetric? {
        let countKeys = ["numRequestsTotal", "numRequests", "requestUsage", "currentRequestUsage", "requests", "used", "usage"]
        let limitKeys = ["maxRequestUsage", "maxRequests", "requestLimit", "limit", "limitAmount"]
        let excluded = Set(["planUsage", "individualUsage", "teamUsage", "breakdown", "usageBreakdown", "onDemand", "onDemandUsage", "spendLimitUsage", "limits"])
        var buckets: [(Double, Double)] = []
        func visit(_ item: Object, depth: Int) throws {
            guard depth <= 3 else { return }
            if countKeys.contains(where: { item[$0] != nil && !(item[$0] is Object) }), limitKeys.contains(where: { item[$0] != nil }) {
                guard let count = try number(item, countKeys), let limit = try number(item, limitKeys), limit > 0 else { return }
                buckets.append((count, limit)); return
            }
            for key in item.keys.sorted() where !excluded.contains(key) {
                if let child = item[key] as? Object { try visit(child, depth: depth + 1) }
            }
        }
        try visit(root, depth: 0)
        guard !buckets.isEmpty else { return nil }
        let used = buckets.reduce(0) { $0 + $1.0 }; let limit = buckets.reduce(0) { $0 + $1.1 }
        guard used.isFinite, limit.isFinite else { throw CollectorError.invalidResponse }
        return try UsageMetric(id: "cursor:requests", label: "Requests", period: "month", unit: "requests",
                               remainingFraction: max(0, 1 - used / limit), used: used, remaining: max(0, limit - used), limit: limit,
                               resetsAt: reset, startsAt: start, source: .webAPI)
    }
    private static func object(_ data: Data) throws -> Object {
        guard let value = try JSONSerialization.jsonObject(with: data) as? Object else { throw CollectorError.invalidResponse }
        return value
    }
    private static func child(_ root: Object, _ key: String) throws -> Object? {
        guard let value = root[key], !(value is NSNull) else { return nil }
        guard let value = value as? Object else { throw CollectorError.invalidResponse }
        return value
    }
    private static func number(_ root: Object, _ keys: [String]) throws -> Double? {
        for key in keys {
            guard let value = root[key], !(value is NSNull) else { continue }
            let result: Double?
            if let n = value as? NSNumber, CFGetTypeID(n) != CFBooleanGetTypeID() { result = n.doubleValue }
            else if let string = value as? String { result = Double(string) }
            else { throw CollectorError.invalidResponse }
            guard let result, result.isFinite, result >= 0 else { throw CollectorError.invalidResponse }
            return result
        }
        return nil
    }
    private static func boolean(_ root: Object, _ key: String) throws -> Bool? {
        guard let value = root[key], !(value is NSNull) else { return nil }
        guard let number = value as? NSNumber, CFGetTypeID(number) == CFBooleanGetTypeID() else { throw CollectorError.invalidResponse }
        return number.boolValue
    }
    private static func date(_ root: Object, keys: [String]) throws -> Date? {
        for key in keys {
            guard let raw = root[key], !(raw is NSNull) else { continue }
            if let string = raw as? String, Double(string) == nil {
                let formatter = ISO8601DateFormatter(); formatter.formatOptions = [.withInternetDateTime, .withFractionalSeconds]
                if let date = formatter.date(from: string) { return date }
                formatter.formatOptions = [.withInternetDateTime]
                guard let date = formatter.date(from: string) else { throw CollectorError.invalidResponse }
                return date
            }
            guard let timestamp = try number(root, [key]) else { throw CollectorError.invalidResponse }
            let seconds = timestamp >= 100_000_000_000 ? timestamp / 1000 : timestamp
            guard (0...253_402_300_799).contains(seconds) else { throw CollectorError.invalidResponse }
            return Date(timeIntervalSince1970: seconds)
        }
        return nil
    }
}
