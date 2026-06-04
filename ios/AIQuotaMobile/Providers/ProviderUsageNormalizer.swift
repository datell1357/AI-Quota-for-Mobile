import Foundation

enum ProviderPayloadSource: String {
    case providerApi = "PROVIDER_API"
    case networkResponse = "NETWORK_RESPONSE"
    case appState = "APP_STATE"
    case visibleDom = "VISIBLE_DOM"
    case structuredScript = "STRUCTURED_SCRIPT"
    case domText = "DOM_TEXT"

    var label: String {
        switch self {
        case .providerApi: return "provider-api"
        case .networkResponse: return "webview-network"
        case .appState: return "app-state"
        case .visibleDom: return "visible-dom"
        case .structuredScript: return "structured-script"
        case .domText: return "dom-text"
        }
    }

    var confidence: Float {
        switch self {
        case .providerApi: return 0.99
        case .networkResponse: return 0.96
        case .appState: return 0.92
        case .visibleDom: return 0.94
        case .structuredScript: return 0.90
        case .domText: return 0.40
        }
    }
}

enum ProviderUsageNormalizer {
    private typealias JSONObject = [String: Any]

    static func normalize(
        providerId: ProviderId,
        rawPayload: String,
        source: ProviderPayloadSource,
        fetchedAt: String = ISO8601DateFormatter().string(from: Date())
    ) -> ProviderUsageSnapshot? {
        guard source != .domText else { return nil }
        guard let data = rawPayload.data(using: .utf8),
              let root = (try? JSONSerialization.jsonObject(with: data)) as? JSONObject else {
            return nil
        }

        let result: NormalizedProviderPayload?
        switch providerId {
        case .claude:
            result = normalizeClaude(root, source: source)
        case .codex:
            result = normalizeCodex(root, source: source)
        case .gemini:
            result = normalizeGemini(root, source: source)
        case .copilot:
            result = normalizeCopilot(root, source: source)
        case .cursor:
            result = normalizeCursor(root, source: source)
        case .antigravity:
            result = normalizeAntigravity(root, source: source)
        }

        guard let result, !result.lines.isEmpty else { return nil }
        return ProviderUsageSnapshot(
            providerId: providerId,
            connectionState: .connected,
            refreshState: .idle,
            planLabel: result.planLabel,
            account: result.account,
            updatedAt: fetchedAt,
            lines: result.lines
        )
    }

    private static func normalizeClaude(_ root: JSONObject, source: ProviderPayloadSource) -> NormalizedProviderPayload {
        let usage = object(root, "usage") ?? root
        let account = accountString(root)
        let plan = string(root, "plan") ?? string(object(root, "account"), "p")
        let mappings: [(String, String)] = [
            ("five_hour", "Claude Session"),
            ("session", "Claude Session"),
            ("seven_day", "Claude Weekly"),
            ("weekly", "Claude Weekly"),
            ("opus", "Claude Opus"),
            ("sonnet", "Claude Sonnet"),
            ("cowork", "Claude Cowork"),
            ("seven_day_omelette", "Claude Design"),
            ("design", "Claude Design")
        ]
        var lines: [ProviderUsageLine] = []
        for (key, label) in mappings {
            guard let bucket = object(usage, key),
                  let line = line(label: label, bucket: bucket, source: source) else {
                continue
            }
            lines.append(line)
        }
        return NormalizedProviderPayload(planLabel: plan, account: account, lines: dedupe(lines))
    }

    private static func normalizeCodex(_ root: JSONObject, source: ProviderPayloadSource) -> NormalizedProviderPayload {
        let account = accountString(root)
        let plan = codexPlanLabel(string(root, "plan_type") ?? string(root, "plan"))
        var lines: [ProviderUsageLine] = []

        if let compactRows = array(object(root, "usage"), "x") {
            for item in compactRows.compactMap({ $0 as? JSONObject }) {
                guard let label = codexLineLabel(string(item, "l")),
                      let line = line(label: label, bucket: item, source: source) else {
                    continue
                }
                lines.append(line)
            }
        }

        if let rateLimits = object(root, "rate_limits") ?? object(root, "rate_limit") ?? objectAt(root, ["usage", "rate_limit"]) {
            let mappings: [(String, String)] = [
                ("primary_window", "Codex Session"),
                ("secondary_window", "Codex Weekly"),
                ("code_review", "Codex Code Review"),
                ("spark", "Codex Spark"),
                ("spark_rate_limits", "Codex Spark")
            ]
            for (key, label) in mappings {
                guard let bucket = object(rateLimits, key),
                      let line = line(label: label, bucket: bucket, source: source) else {
                    continue
                }
                lines.append(line)
            }
        }

        if let spark = objectAt(root, ["usage", "spark_rate_limits"]),
           let line = line(label: "Codex Spark", bucket: spark, source: source) {
            lines.append(line)
        }

        return NormalizedProviderPayload(planLabel: plan, account: account, lines: dedupe(lines))
    }

    private static func normalizeGemini(_ root: JSONObject, source: ProviderPayloadSource) -> NormalizedProviderPayload {
        let account = accountString(root)
        let plan = geminiPlanLabel(string(root, "plan") ?? string(object(root, "account"), "p"))
        let buckets = array(root, "limits")
            ?? array(root, "buckets")
            ?? array(object(root, "usage"), "limits")
            ?? array(object(root, "usage"), "buckets")
        var lines: [ProviderUsageLine] = []

        for item in buckets?.compactMap({ $0 as? JSONObject }) ?? [] {
            guard let modelId = string(item, "modelId") ?? string(item, "model_id") else { continue }
            let label = geminiModelLabel(modelId)
            guard let line = line(label: label, bucket: item, source: source) else { continue }
            lines.append(line)
        }

        return NormalizedProviderPayload(planLabel: plan, account: account, lines: lines)
    }

    private static func normalizeCopilot(_ root: JSONObject, source: ProviderPayloadSource) -> NormalizedProviderPayload {
        let plan = copilotPlanLabel(string(root, "plan") ?? string(root, "sku") ?? string(root, "copilot_plan"))
        let snapshots = object(root, "quota_snapshots") ?? objectAt(root, ["quotas", "quota_snapshots"])
        var lines: [ProviderUsageLine] = []
        let mappings: [(String, String)] = [
            ("chat", "Chat"),
            ("completions", "Inline suggestions"),
            ("premium_interactions", "Premium requests"),
            ("premiumInteractions", "Premium requests")
        ]

        for (key, label) in mappings {
            guard let bucket = object(snapshots, key),
                  let remainingPercent = remainingPercent(bucket) else {
                continue
            }
            lines.append(
                usageLine(
                    label: label,
                    remainingPercent: remainingPercent,
                    resetText: resetText(bucket),
                    resetsAt: resetsAt(bucket) ?? string(root, "quota_reset_date"),
                    unit: "percent",
                    source: source
                )
            )
        }

        if lines.isEmpty, let quotas = object(root, "quotas") {
            for (key, label) in [("premium_requests", "Premium requests"), ("chat", "Chat"), ("completions", "Inline suggestions")] {
                guard let bucket = object(quotas, key),
                      let line = line(label: label, bucket: bucket, source: source) else {
                    continue
                }
                lines.append(line)
            }
        }

        return NormalizedProviderPayload(planLabel: plan, account: accountString(root), lines: dedupe(lines))
    }

    private static func normalizeCursor(_ root: JSONObject, source: ProviderPayloadSource) -> NormalizedProviderPayload {
        let account = accountString(root)
        let plan = string(root, "membershipType") ?? string(root, "plan")
        let reset = string(root, "billingCycleEnd") ?? string(root, "resetAt")
        var lines: [ProviderUsageLine] = []

        if let planUsage = object(root, "planUsage"),
           let remaining = remainingPercent(planUsage, preferredUsedKeys: ["totalPercentUsed"]) {
            lines.append(
                usageLine(
                    label: "Total usage",
                    remainingPercent: remaining,
                    resetsAt: resetsAt(planUsage) ?? reset,
                    unit: "percent",
                    source: source
                )
            )
        }

        if let requestUsage = object(root, "requestUsage") {
            var used = 0.0
            var limit = 0.0
            for value in requestUsage.values {
                guard let bucket = value as? JSONObject else { continue }
                used += double(bucket, "numRequests") ?? double(bucket, "used") ?? 0
                limit += double(bucket, "maxRequestUsage") ?? double(bucket, "limit") ?? 0
            }
            if limit > 0 {
                lines.append(
                    usageLine(
                        label: "Requests",
                        remainingPercent: clampFloat((limit - used) / limit),
                        resetsAt: reset,
                        usedAmount: used,
                        limitAmount: limit,
                        unit: "requests",
                        source: source
                    )
                )
            }
        }

        return NormalizedProviderPayload(planLabel: plan, account: account, lines: lines)
    }

    private static func normalizeAntigravity(_ root: JSONObject, source: ProviderPayloadSource) -> NormalizedProviderPayload {
        let account = accountString(root)
        let plan = antigravityPlanLabel(
            string(root, "plan")
                ?? string(object(root, "subscription"), "displayName")
                ?? string(object(root, "account"), "p")
        )
        var lines: [ProviderUsageLine] = []

        if let compactRows = array(object(root, "usage"), "x") {
            for item in compactRows.compactMap({ $0 as? JSONObject }) {
                guard let label = string(item, "l"),
                      let line = line(label: label, bucket: item, source: source) else {
                    continue
                }
                lines.append(line)
            }
        }

        let windows = array(object(root, "quota"), "windows")
            ?? array(root, "windows")
            ?? array(root, "limits")
        for item in windows?.compactMap({ $0 as? JSONObject }) ?? [] {
            let label = string(item, "displayName")
                ?? string(object(item, "metric"), "displayName")
                ?? string(item, "label")
                ?? string(item, "metric")
            guard let label,
                  let line = line(
                    label: label,
                    bucket: item,
                    source: source,
                    includeAmounts: true,
                    unit: string(item, "unit")
                  ) else {
                continue
            }
            lines.append(line)
        }

        return NormalizedProviderPayload(planLabel: plan, account: account, lines: dedupe(lines))
    }

    private static func line(
        label: String,
        bucket: JSONObject,
        source: ProviderPayloadSource,
        includeAmounts: Bool = false,
        unit: String? = nil
    ) -> ProviderUsageLine? {
        guard let remaining = remainingPercent(bucket) else { return nil }
        return usageLine(
            label: label,
            remainingPercent: remaining,
            resetText: resetText(bucket),
            resetsAt: resetsAt(bucket),
            usedAmount: includeAmounts ? double(bucket, "used") : nil,
            limitAmount: includeAmounts ? double(bucket, "limit") : nil,
            remainingAmount: includeAmounts ? double(bucket, "remaining") : nil,
            unit: unit ?? string(bucket, "unit") ?? "percent",
            source: source
        )
    }

    private static func usageLine(
        label: String,
        remainingPercent: Float?,
        resetText: String? = nil,
        resetsAt: String? = nil,
        usedAmount: Double? = nil,
        limitAmount: Double? = nil,
        remainingAmount: Double? = nil,
        unit: String,
        source: ProviderPayloadSource
    ) -> ProviderUsageLine {
        ProviderUsageLine(
            label: label,
            remainingPercent: remainingPercent,
            resetText: resetText,
            severity: severity(remainingPercent),
            usedAmount: usedAmount,
            limitAmount: limitAmount,
            remainingAmount: remainingAmount,
            unit: unit,
            resetsAt: resetsAt,
            sourceLabel: source.label,
            confidence: source.confidence
        )
    }

    private static func remainingPercent(
        _ object: JSONObject,
        preferredUsedKeys: [String] = []
    ) -> Float? {
        for key in ["remainingPercent", "remaining_percent", "remainingFraction", "remaining_fraction"] {
            if let value = double(object, key) {
                return normalizeFractionValue(value)
            }
        }
        for key in ["percent_remaining", "remaining_pct"] {
            if let value = double(object, key) {
                return roundFloat(clampFloat(value / 100), places: 2)
            }
        }
        for key in preferredUsedKeys + ["used_percent", "usedPercent"] {
            if let value = double(object, key) {
                return clampFloat(1 - normalizeFractionValue(value))
            }
        }
        if let value = double(object, "u") {
            return clampFloat(1 - normalizeFractionValue(value))
        }
        if let remaining = double(object, "remaining"),
           let limit = firstPositiveDouble(object, ["limit", "entitlement", "max", "total"]) {
            return clampFloat(remaining / limit)
        }
        if let used = double(object, "used"),
           let limit = firstPositiveDouble(object, ["limit", "entitlement", "max", "total"]) {
            return clampFloat((limit - used) / limit)
        }
        return nil
    }

    private static func resetText(_ object: JSONObject) -> String? {
        if let value = string(object, "resetText") ?? string(object, "reset_text") ?? string(object, "t") {
            return value
        }
        guard let seconds = double(object, "reset_after_seconds") else { return nil }
        return resetTextFrom(seconds: seconds)
    }

    private static func resetsAt(_ object: JSONObject) -> String? {
        string(object, "resetsAt")
            ?? string(object, "resetAt")
            ?? string(object, "reset_at")
            ?? string(object, "resetTime")
            ?? string(object, "reset_time")
            ?? string(object, "resetDate")
            ?? string(object, "reset_date")
            ?? string(object, "r")
    }

    private static func resetTextFrom(seconds: Double) -> String {
        let rounded = max(Int(seconds.rounded()), 0)
        let hours = rounded / 3600
        let minutes = (rounded % 3600) / 60
        if hours > 0, minutes > 0 {
            return "Resets in \(hours)h \(minutes)m"
        }
        if hours > 0 {
            return "Resets in \(hours)h"
        }
        return "Resets in \(minutes)m"
    }

    private static func severity(_ remainingPercent: Float?) -> UsageSeverity {
        guard let remainingPercent else { return .unknown }
        if remainingPercent <= 0.10 { return .danger }
        if remainingPercent <= 0.25 { return .warning }
        return .normal
    }

    private static func normalizeFractionValue(_ value: Double) -> Float {
        clampFloat(value > 1 ? value / 100 : value)
    }

    private static func clampFloat(_ value: Double) -> Float {
        Float(min(max(value, 0), 1))
    }

    private static func roundFloat(_ value: Float, places: Int) -> Float {
        let factor = pow(10.0, Double(places))
        return Float((Double(value) * factor).rounded() / factor)
    }

    private static func firstPositiveDouble(_ object: JSONObject, _ keys: [String]) -> Double? {
        for key in keys {
            guard let value = double(object, key), value > 0 else { continue }
            return value
        }
        return nil
    }

    private static func accountString(_ root: JSONObject) -> String? {
        string(root, "account")
            ?? string(root, "email")
            ?? string(object(root, "account"), "e")
            ?? string(root, "user")
    }

    private static func codexPlanLabel(_ value: String?) -> String? {
        switch value?.lowercased() {
        case "prolite": return "Pro 5x"
        case "pro20x", "pro_20x", "pro-20x": return "Pro 20x"
        case "pro": return "Pro"
        case let value?: return value
        case nil: return nil
        }
    }

    private static func geminiPlanLabel(_ value: String?) -> String? {
        switch value?.lowercased() {
        case "standard-tier", "paid": return "Paid"
        case "gemini_pro", "pro": return "Pro"
        case "gemini_free", "free-tier", "free": return "Free"
        case "gemini_ultra", "ultra": return "Ultra"
        case let value?: return value
        case nil: return nil
        }
    }

    private static func copilotPlanLabel(_ value: String?) -> String? {
        switch value?.lowercased() {
        case "copilot_pro": return "Copilot Pro"
        case let value?: return value
        case nil: return nil
        }
    }

    private static func antigravityPlanLabel(_ value: String?) -> String? {
        switch value?.uppercased() {
        case "ANTIGRAVITY_PLUS": return "Antigravity Plus"
        case "ANTIGRAVITY_PRO": return "Antigravity Pro"
        case let value?: return value
        case nil: return nil
        }
    }

    private static func codexLineLabel(_ value: String?) -> String? {
        guard let value else { return nil }
        let lowercased = value.lowercased()
        if lowercased.contains("weekly") || lowercased.contains("주간") {
            return "Codex Weekly"
        }
        if lowercased.contains("spark") {
            return "Codex Spark"
        }
        if lowercased.contains("review") {
            return "Codex Code Review"
        }
        if lowercased.contains("session") || lowercased.contains("5시간") {
            return "Codex Session"
        }
        return value
    }

    private static func geminiModelLabel(_ modelId: String) -> String {
        modelId
            .replacingOccurrences(of: "gemini-", with: "")
            .replacingOccurrences(of: "-preview", with: "-pre")
            .replacingOccurrences(of: "-", with: " ")
    }

    private static func dedupe(_ lines: [ProviderUsageLine]) -> [ProviderUsageLine] {
        var seen: Set<String> = []
        var result: [ProviderUsageLine] = []
        for line in lines {
            guard !seen.contains(line.key) else { continue }
            seen.insert(line.key)
            result.append(line)
        }
        return result
    }

    private static func object(_ object: JSONObject?, _ key: String) -> JSONObject? {
        object?[key] as? JSONObject
    }

    private static func objectAt(_ object: JSONObject, _ path: [String]) -> JSONObject? {
        var current: JSONObject? = object
        for key in path {
            current = current?[key] as? JSONObject
        }
        return current
    }

    private static func array(_ object: JSONObject?, _ key: String) -> [Any]? {
        object?[key] as? [Any]
    }

    private static func string(_ object: JSONObject?, _ key: String) -> String? {
        guard let value = object?[key] else { return nil }
        if let string = value as? String {
            let trimmed = string.trimmingCharacters(in: .whitespacesAndNewlines)
            return trimmed.isEmpty ? nil : trimmed
        }
        if let number = value as? NSNumber {
            let double = number.doubleValue
            if double.rounded() == double {
                return String(format: "%.0f", double)
            }
            return String(double)
        }
        return nil
    }

    private static func double(_ object: JSONObject?, _ key: String) -> Double? {
        guard let value = object?[key] else { return nil }
        if let number = value as? NSNumber {
            return number.doubleValue
        }
        if let string = value as? String {
            return Double(string)
        }
        return nil
    }
}

private struct NormalizedProviderPayload {
    let planLabel: String?
    let account: String?
    let lines: [ProviderUsageLine]
}
