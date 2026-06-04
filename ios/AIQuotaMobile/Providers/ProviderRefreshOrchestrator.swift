import BackgroundTasks
import Combine
import Foundation

enum ProviderRefreshTrigger: String, Equatable {
    case manual
    case appActive
    case backgroundAppRefresh
}

protocol NativeProviderCollecting: AnyObject {
    func collect(
        providerId: ProviderId,
        trigger: ProviderRefreshTrigger,
        fetchedAt: String
    ) async -> NativeProviderCollectionResult
}

extension NativeProviderCollector: NativeProviderCollecting {
    func collect(
        providerId: ProviderId,
        trigger: ProviderRefreshTrigger,
        fetchedAt: String
    ) async -> NativeProviderCollectionResult {
        await collect(providerId: providerId, fetchedAt: fetchedAt)
    }
}

@MainActor
protocol ProviderRefreshSnapshotWriting: AnyObject {
    func markProviderCollecting(_ providerId: ProviderId, updatedAt: String)
    func applyProviderRefreshResult(
        _ result: NativeProviderCollectionResult,
        providerId: ProviderId,
        updatedAt: String
    )
}

protocol ProviderBackgroundRefreshScheduling: AnyObject {
    func submitBestEffortAppRefresh(identifier: String, earliestBeginDate: Date?)
}

protocol ProviderBackgroundRefreshCompleting: AnyObject {
    func setTaskCompleted(success: Bool)
}

extension BGAppRefreshTask: ProviderBackgroundRefreshCompleting {}

final class ProviderBackgroundRefreshScheduler: ProviderBackgroundRefreshScheduling {
    static let providerRefreshTaskIdentifier = "com.aiquota.mobile.provider-refresh"

    func submitBestEffortAppRefresh(
        identifier: String = ProviderBackgroundRefreshScheduler.providerRefreshTaskIdentifier,
        earliestBeginDate: Date?
    ) {
        let request = BGAppRefreshTaskRequest(identifier: identifier)
        request.earliestBeginDate = earliestBeginDate
        try? BGTaskScheduler.shared.submit(request)
    }
}

@MainActor
final class ProviderRefreshOrchestrator: ObservableObject {
    @Published private(set) var activeProviderIds: Set<ProviderId> = []
    @Published private(set) var lastCompletedTrigger: ProviderRefreshTrigger?

    private let collector: NativeProviderCollecting
    private let snapshotWriter: ProviderRefreshSnapshotWriting
    private let backgroundScheduler: ProviderBackgroundRefreshScheduling
    private let minimumAppActiveRefreshInterval: TimeInterval
    private let now: () -> Date
    private var lastAppActiveRefreshAt: Date?

    init(
        collector: NativeProviderCollecting = NativeProviderCollector(),
        snapshotWriter: ProviderRefreshSnapshotWriting,
        backgroundScheduler: ProviderBackgroundRefreshScheduling = ProviderBackgroundRefreshScheduler(),
        minimumAppActiveRefreshInterval: TimeInterval = 300,
        now: @escaping () -> Date = Date.init
    ) {
        self.collector = collector
        self.snapshotWriter = snapshotWriter
        self.backgroundScheduler = backgroundScheduler
        self.minimumAppActiveRefreshInterval = minimumAppActiveRefreshInterval
        self.now = now
    }

    convenience init(snapshotStore: SnapshotStore) {
        self.init(snapshotWriter: snapshotStore)
    }

    func isRefreshing(_ providerId: ProviderId) -> Bool {
        activeProviderIds.contains(providerId)
    }

    static func collectingSnapshot(previous: ProviderUsageSnapshot) -> ProviderUsageSnapshot {
        ProviderUsageSnapshot.collecting(previous)
    }

    func refreshNow(
        providerIds: [ProviderId],
        trigger: ProviderRefreshTrigger = .manual
    ) async {
        let candidates = nativeRefreshCandidates(from: providerIds)
        guard !candidates.isEmpty else { return }
        let fetchedAt = ISO8601DateFormatter().string(from: now())

        for providerId in candidates {
            activeProviderIds.insert(providerId)
            snapshotWriter.markProviderCollecting(providerId, updatedAt: fetchedAt)
        }

        for providerId in candidates {
            let result = await collector.collect(
                providerId: providerId,
                trigger: trigger,
                fetchedAt: fetchedAt
            )
            snapshotWriter.applyProviderRefreshResult(
                result,
                providerId: providerId,
                updatedAt: fetchedAt
            )
            activeProviderIds.remove(providerId)
        }

        lastCompletedTrigger = trigger
    }

    func refreshOnAppActive(providerIds: [ProviderId]) async {
        let currentDate = now()
        if let lastAppActiveRefreshAt,
           currentDate.timeIntervalSince(lastAppActiveRefreshAt) < minimumAppActiveRefreshInterval {
            return
        }
        lastAppActiveRefreshAt = currentDate
        await refreshNow(providerIds: providerIds, trigger: .appActive)
    }

    func handleBackgroundRefresh(
        task: ProviderBackgroundRefreshCompleting,
        providerIds: [ProviderId]
    ) async {
        await refreshNow(providerIds: providerIds, trigger: .backgroundAppRefresh)
        task.setTaskCompleted(success: true)
        backgroundScheduler.submitBestEffortAppRefresh(
            identifier: ProviderBackgroundRefreshScheduler.providerRefreshTaskIdentifier,
            earliestBeginDate: now().addingTimeInterval(30 * 60)
        )
    }

    func scheduleNextBestEffortBackgroundRefresh() {
        backgroundScheduler.submitBestEffortAppRefresh(
            identifier: ProviderBackgroundRefreshScheduler.providerRefreshTaskIdentifier,
            earliestBeginDate: now().addingTimeInterval(30 * 60)
        )
    }

    private func nativeRefreshCandidates(from providerIds: [ProviderId]) -> [ProviderId] {
        normalizedProviderOrder(providerIds + ProviderId.defaultOrder)
            .filter { providerId in
                switch ProviderDefinitionRegistry.definition(for: providerId).collectionKind {
                case .nativeAPI, .nativeAPIWithWebViewFallback:
                    return true
                case .webviewCollector, .backendGateway:
                    return false
                }
            }
    }
}

extension SnapshotStore: ProviderRefreshSnapshotWriting {
    func markProviderCollecting(_ providerId: ProviderId, updatedAt: String) {
        let previous = providerUsageSnapshot(for: providerId) ?? ProviderUsageSnapshot.disconnected(providerId)
        applyProviderSnapshot(ProviderRefreshOrchestrator.collectingSnapshot(previous: previous).copy(updatedAt: updatedAt))
    }

    func applyProviderRefreshResult(
        _ result: NativeProviderCollectionResult,
        providerId: ProviderId,
        updatedAt: String
    ) {
        if let snapshot = result.snapshot {
            applyProviderSnapshot(snapshot.copy(updatedAt: updatedAt))
            return
        }
        let failure = result.failure
        let failed = ProviderUsageSnapshot.failedKeepingPrevious(
            providerId,
            previous: providerUsageSnapshot(for: providerId),
            message: failure?.message ?? "Provider refresh failed."
        ).copy(updatedAt: updatedAt)
        applyProviderSnapshot(failed)
    }

    private func providerUsageSnapshot(for providerId: ProviderId) -> ProviderUsageSnapshot? {
        providers.first { $0.providerId == providerId.storageId }?.providerUsageSnapshot(providerId: providerId)
    }

    private func applyProviderSnapshot(_ snapshot: ProviderUsageSnapshot) {
        let usage = ProviderUsage(snapshot: snapshot)
        if let index = providers.firstIndex(where: { $0.providerId == snapshot.providerId.storageId }) {
            providers[index] = usage
        } else {
            providers.append(usage)
        }
    }
}

private extension ProviderUsage {
    init(snapshot: ProviderUsageSnapshot) {
        self.init(
            providerId: snapshot.providerId.storageId,
            displayName: snapshot.displayName,
            plan: snapshot.planLabel,
            status: ProviderStatus(snapshot.connectionState),
            fetchedAt: Date.fromProviderTimestamp(snapshot.updatedAt) ?? Date(),
            errorCode: snapshot.connectionState == .error ? snapshot.message : nil,
            errorMessage: snapshot.message,
            lines: snapshot.lines.map(UsageLine.init(snapshotLine:))
        )
    }

    func providerUsageSnapshot(providerId: ProviderId) -> ProviderUsageSnapshot {
        ProviderUsageSnapshot(
            providerId: providerId,
            displayName: displayName,
            connectionState: ProviderConnectionState(status),
            refreshState: .idle,
            planLabel: plan,
            updatedAt: ISO8601DateFormatter().string(from: fetchedAt),
            message: errorMessage,
            lines: lines.map(ProviderUsageLine.init(usageLine:))
        )
    }
}

private extension UsageLine {
    init(snapshotLine: ProviderUsageLine) {
        let remainingPercent = snapshotLine.remainingPercent.map(Double.init)
        let used = snapshotLine.usedAmount ?? remainingPercent.map { (1 - $0) * 100 }
        let limit = snapshotLine.limitAmount ?? (remainingPercent == nil ? nil : 100)
        self.init(
            type: snapshotLine.category ?? "progress",
            label: snapshotLine.label,
            used: used,
            limit: limit,
            remaining: snapshotLine.remainingAmount,
            format: UsageFormat(kind: snapshotLine.unit ?? "percent"),
            resetsAt: snapshotLine.resetsAt.flatMap(Date.fromProviderTimestamp)
        )
    }
}

private extension ProviderUsageLine {
    init(usageLine: UsageLine) {
        let remainingPercent: Float?
        if let remaining = usageLine.remaining, let limit = usageLine.limit, limit > 0 {
            remainingPercent = Float(min(max(remaining / limit, 0), 1))
        } else if let used = usageLine.used, let limit = usageLine.limit, limit > 0 {
            remainingPercent = Float(min(max((limit - used) / limit, 0), 1))
        } else {
            remainingPercent = nil
        }
        self.init(
            label: usageLine.label,
            remainingPercent: remainingPercent,
            usedAmount: usageLine.used,
            limitAmount: usageLine.limit,
            remainingAmount: usageLine.remaining,
            unit: usageLine.format.kind,
            resetsAt: usageLine.resetsAt.map { ISO8601DateFormatter().string(from: $0) }
        )
    }
}

private extension ProviderStatus {
    init(_ connectionState: ProviderConnectionState) {
        switch connectionState {
        case .connected, .collecting, .stale:
            self = .ok
        case .error, .interactiveAuthRequired, .unavailable:
            self = .error
        case .disconnected, .notConnected, .connecting:
            self = .unknown
        }
    }
}

private extension ProviderConnectionState {
    init(_ status: ProviderStatus) {
        switch status {
        case .ok:
            self = .connected
        case .error:
            self = .error
        case .unknown:
            self = .disconnected
        }
    }
}

private extension Date {
    static func fromProviderTimestamp(_ value: String) -> Date? {
        if let milliseconds = Double(value), milliseconds > 1_000_000_000_000 {
            return Date(timeIntervalSince1970: milliseconds / 1000)
        }
        return ISO8601DateFormatter().date(from: value)
    }
}
