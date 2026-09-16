import Foundation
import CryptoKit

public struct MetricNotificationState: Codable, Equatable, Sendable {
    public var thresholdPercent: Int?
    public var lowArmed: Bool?
    public var lowCycle: UInt64 = 0
    public var resetEnabled = false
    public var watchedReset: Int64?
    public var lastNotifiedReset: Int64?
    public init() {}
}

public enum UsageNotificationKind: String, Codable, Sendable { case lowRemaining, resetBoundary }
public struct UsageNotification: Codable, Equatable, Identifiable, Sendable {
    public let id: String
    public let accountID: UUID
    public let metricID: String
    public let period: String
    public let kind: UsageNotificationKind
    public let createdAt: Date
    public let thresholdPercent: Int?
    public let resetAt: Date?
}

public enum NotificationPolicy {
    public struct Evaluation: Sendable {
        public let state: MetricNotificationState
        public let events: [UsageNotification]
    }

    public static func evaluate(accountID: UUID, metric: UsageMetric, preferences: NotificationPreferences,
                                previous: MetricNotificationState, now: Date) -> Evaluation {
        var state = previous
        var events: [UsageNotification] = []
        if state.thresholdPercent != preferences.thresholdPercent {
            state.thresholdPercent = preferences.thresholdPercent
            state.lowArmed = nil
        }
        if let threshold = preferences.thresholdPercent,
           metric.status == .limited, metric.accuracy == .measured,
           let fraction = metric.remainingFraction {
            let isLow = fraction <= Double(threshold) / 100
            let recovered = fraction >= Double(min(threshold + 3, 100)) / 100
            if state.lowArmed == nil {
                state.lowArmed = !isLow // Suppress an initially low observation.
            } else if isLow && state.lowArmed == true {
                state.lowCycle += 1
                state.lowArmed = false
                events.append(event(accountID, metric, .lowRemaining, "\(state.lowCycle)", now,
                                    threshold: threshold, resetAt: nil))
            } else if recovered && !isLow {
                state.lowArmed = true
            }
        }
        if !preferences.resetEnabled {
            state.resetEnabled = false
            state.watchedReset = nil
        } else {
            let nowSecond = Int64(now.timeIntervalSince1970.rounded(.down))
            let observed = metric.resetsAt.map { Int64($0.timeIntervalSince1970.rounded(.down)) }
            if !state.resetEnabled {
                state.resetEnabled = true
                state.watchedReset = nil
            }
            if state.watchedReset == nil {
                state.watchedReset = observed
                if let observed, observed <= nowSecond {
                    state.lastNotifiedReset = max(state.lastNotifiedReset ?? Int64.min, observed)
                }
            } else if let watched = state.watchedReset, nowSecond >= watched,
                      watched > (state.lastNotifiedReset ?? Int64.min) {
                events.append(event(accountID, metric, .resetBoundary, "\(watched)", now,
                                    threshold: nil, resetAt: Date(timeIntervalSince1970: Double(watched))))
                state.lastNotifiedReset = watched
            }
            if let observed, observed > nowSecond, observed > (state.lastNotifiedReset ?? Int64.min) {
                state.watchedReset = observed
            }
        }
        return Evaluation(state: state, events: events)
    }

    private static func event(_ accountID: UUID, _ metric: UsageMetric, _ kind: UsageNotificationKind,
                              _ boundary: String, _ now: Date, threshold: Int?, resetAt: Date?) -> UsageNotification {
        // Length-prefixed components avoid collisions from provider-defined ':' or '|' characters.
        let key = [accountID.uuidString, metric.id, metric.period, kind.rawValue, boundary]
            .map { "\($0.utf8.count):\($0)" }.joined()
        let id = SHA256.hash(data: Data(key.utf8)).map { String(format: "%02x", $0) }.joined()
        return UsageNotification(id: id, accountID: accountID, metricID: metric.id, period: metric.period,
                                 kind: kind, createdAt: now, thresholdPercent: threshold, resetAt: resetAt)
    }
}
