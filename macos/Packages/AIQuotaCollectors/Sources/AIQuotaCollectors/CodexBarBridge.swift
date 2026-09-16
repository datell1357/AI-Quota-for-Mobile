import AIQuotaCore
import CodexBarCore
import Foundation

/// Only consumes provider-scoped values. Identity must come from the same authenticated session;
/// email, a card alias, or a CodexBar global active-account setting cannot supply it.
public enum CodexBarBridge {
    public static let pinnedRevision = "928166f899471bbdcb72210641cdec91324d0154"

    public static func metric(_ window: RateWindow, id: String, label: String, period: String,
                              usageKnown: Bool = true, source: MetricSource = .webAPI) throws -> UsageMetric? {
        guard !window.isSyntheticPlaceholder else { return nil }
        guard window.usedPercent.isFinite, window.usedPercent >= 0 else { throw CollectorError.invalidResponse }
        return try UsageMetric(id: id, label: label, period: period, status: usageKnown ? .limited : .unknown,
                               remainingFraction: usageKnown ? max(0, 1 - window.usedPercent / 100) : nil,
                               resetsAt: window.resetsAt, source: source, accuracy: usageKnown ? .measured : .unknown)
    }

    public static func codex(_ response: CodexUsageResponse, identity: RemoteIdentity, fetchedAt: Date,
                             source: MetricSource = .oauthAPI) throws -> UsageReport {
        guard identity.product == "codex-subscription" else { throw CoreError.identityMismatch }
        if let accountID = response.accountId, accountID != (identity.workspace ?? identity.subject) {
            throw CoreError.identityMismatch
        }
        var metrics: [UsageMetric] = []
        func append(_ window: CodexUsageResponse.WindowSnapshot?, id: String, label: String) throws {
            guard let window else { return }
            guard window.limitWindowSeconds > 0, window.resetAt > 0 else { throw CollectorError.invalidResponse }
            let rate = RateWindow(usedPercent: Double(window.usedPercent), windowMinutes: nil,
                                  resetsAt: Date(timeIntervalSince1970: Double(window.resetAt)), resetDescription: nil)
            if let metric = try metric(rate, id: id, label: label, period: "\(window.limitWindowSeconds)s", source: source) {
                metrics.append(metric)
            }
        }
        try append(response.rateLimit?.primaryWindow, id: "codex:primary_window", label: "Codex usage")
        try append(response.rateLimit?.secondaryWindow, id: "codex:secondary_window", label: "Codex weekly")
        for additional in response.additionalRateLimits ?? [] {
            guard let key = additional.meteredFeature ?? additional.limitName, !key.isEmpty else { continue }
            let label = additional.limitName ?? key
            try append(additional.rateLimit?.primaryWindow, id: "codex:additional:\(key):primary", label: label)
            try append(additional.rateLimit?.secondaryWindow, id: "codex:additional:\(key):secondary", label: label)
        }
        if let spend = response.resolvedIndividualLimit {
            let fraction: Double?
            if let percent = spend.remainingPercent { fraction = try remainingPercent(percent) }
            else if let limit = spend.limit, limit > 0, let used = spend.used {
                guard used.isFinite, used >= 0, limit.isFinite else { throw CollectorError.invalidResponse }
                fraction = max(0, 1 - used / limit)
            } else { fraction = nil }
            metrics.append(try UsageMetric(id: "codex:monthly_credits", label: "Monthly credits", period: "month",
                                           unit: "credits", status: fraction == nil ? .unknown : .limited,
                                           remainingFraction: fraction, used: spend.used, limit: spend.limit,
                                           resetsAt: spend.resetsAt.map { Date(timeIntervalSince1970: Double($0)) }, source: source))
        }
        if let credits = response.credits, credits.unlimited || credits.balance != nil {
            metrics.append(try UsageMetric(id: "codex:credits", label: "Codex credits", period: "balance", unit: "credits",
                                           status: credits.unlimited ? .unlimited : .balance,
                                           remaining: credits.balance, source: source))
        }
        guard !metrics.isEmpty, Set(metrics.map { [$0.id, $0.period] }).count == metrics.count else {
            throw CollectorError.invalidResponse
        }
        return UsageReport(identity: identity, fetchedAt: fetchedAt, plan: response.planType?.rawValue, metrics: metrics)
    }

    static func remainingPercent(_ value: Double) throws -> Double {
        guard value.isFinite, value >= 0, value <= 100 else { throw CollectorError.invalidResponse }
        return value / 100
    }
}
