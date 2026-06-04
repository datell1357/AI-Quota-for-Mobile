import XCTest
@testable import AIQuotaMobile

final class ProviderRefreshOrchestratorTests: XCTestCase {
    func testManualRefreshCollectsProvidersAndStoresSnapshots() async {
        let collector = MockNativeProviderCollector(results: [
            .gemini: .success(.connectedFixture(.gemini, label: "2.5 pro")),
            .cursor: .failed(NativeProviderCollectorFailure(
                providerId: .cursor,
                errorKind: .tokenMissing,
                message: "Cursor native API credential was unavailable.",
                requiresWebViewFallback: true
            ))
        ])
        let writer = InMemoryRefreshSnapshotWriter()
        let scheduler = TestBackgroundRefreshScheduler()
        let orchestrator = ProviderRefreshOrchestrator(
            collector: collector,
            snapshotWriter: writer,
            backgroundScheduler: scheduler,
            now: { Date(timeIntervalSince1970: 100) }
        )

        await orchestrator.refreshNow(providerIds: [.gemini, .cursor], trigger: ProviderRefreshTrigger.manual)

        XCTAssertEqual(collector.calls.map(\.providerId), [.gemini, .cursor])
        XCTAssertEqual(writer.collectingMarks, [.gemini, .cursor])
        XCTAssertEqual(writer.appliedSnapshots.map(\.providerId), [.gemini])
        XCTAssertEqual(writer.appliedFailures.map(\.providerId), [.cursor])
        XCTAssertEqual(writer.appliedFailures.first?.requiresWebViewFallback, true)
        XCTAssertEqual(orchestrator.lastCompletedTrigger, .manual)
    }

    func testAppActiveRefreshIsThrottledUntilMinimumIntervalElapses() async {
        var now = Date(timeIntervalSince1970: 100)
        let collector = MockNativeProviderCollector(results: [
            .gemini: .success(.connectedFixture(.gemini, label: "2.5 pro"))
        ])
        let writer = InMemoryRefreshSnapshotWriter()
        let orchestrator = ProviderRefreshOrchestrator(
            collector: collector,
            snapshotWriter: writer,
            minimumAppActiveRefreshInterval: 60,
            now: { now }
        )

        await orchestrator.refreshOnAppActive(providerIds: [.gemini])
        await orchestrator.refreshOnAppActive(providerIds: [.gemini])
        now = Date(timeIntervalSince1970: 161)
        await orchestrator.refreshOnAppActive(providerIds: [.gemini])

        XCTAssertEqual(collector.calls.map(\.trigger), [ProviderRefreshTrigger.appActive, ProviderRefreshTrigger.appActive])
        XCTAssertEqual(writer.appliedSnapshots.count, 2)
    }

    func testBackgroundRefreshCompletesTestDoubleTaskAndSchedulesNextAttempt() async {
        let collector = MockNativeProviderCollector(results: [
            .antigravity: .success(.connectedFixture(.antigravity, label: "Gemini 3.5 Flash"))
        ])
        let writer = InMemoryRefreshSnapshotWriter()
        let scheduler = TestBackgroundRefreshScheduler()
        let task = TestBackgroundRefreshTask()
        let orchestrator = ProviderRefreshOrchestrator(
            collector: collector,
            snapshotWriter: writer,
            backgroundScheduler: scheduler,
            now: { Date(timeIntervalSince1970: 200) }
        )

        await orchestrator.handleBackgroundRefresh(task: task, providerIds: [.antigravity])

        XCTAssertEqual(collector.calls.map(\.trigger), [ProviderRefreshTrigger.backgroundAppRefresh])
        XCTAssertEqual(task.completed, true)
        XCTAssertEqual(task.success, true)
        XCTAssertEqual(scheduler.submittedIdentifiers, [ProviderBackgroundRefreshScheduler.providerRefreshTaskIdentifier])
    }
}

private final class MockNativeProviderCollector: NativeProviderCollecting {
    struct Call: Equatable {
        let providerId: ProviderId
        let trigger: ProviderRefreshTrigger
    }

    var results: [ProviderId: NativeProviderCollectionResult]
    private(set) var calls: [Call] = []

    init(results: [ProviderId: NativeProviderCollectionResult]) {
        self.results = results
    }

    func collect(providerId: ProviderId, trigger: ProviderRefreshTrigger, fetchedAt: String) async -> NativeProviderCollectionResult {
        calls.append(Call(providerId: providerId, trigger: trigger))
        return results[providerId] ?? .failed(NativeProviderCollectorFailure(
            providerId: providerId,
            errorKind: .unsupported,
            message: "Unsupported",
            requiresWebViewFallback: false
        ))
    }
}

private final class InMemoryRefreshSnapshotWriter: ProviderRefreshSnapshotWriting {
    private(set) var collectingMarks: [ProviderId] = []
    private(set) var appliedSnapshots: [ProviderUsageSnapshot] = []
    private(set) var appliedFailures: [NativeProviderCollectorFailure] = []

    func markProviderCollecting(_ providerId: ProviderId, updatedAt: String) {
        collectingMarks.append(providerId)
    }

    func applyProviderRefreshResult(_ result: NativeProviderCollectionResult, providerId: ProviderId, updatedAt: String) {
        if let snapshot = result.snapshot {
            appliedSnapshots.append(snapshot)
        }
        if let failure = result.failure {
            appliedFailures.append(failure)
        }
    }
}

private final class TestBackgroundRefreshScheduler: ProviderBackgroundRefreshScheduling {
    private(set) var submittedIdentifiers: [String] = []

    func submitBestEffortAppRefresh(identifier: String, earliestBeginDate: Date?) {
        submittedIdentifiers.append(identifier)
    }
}

private final class TestBackgroundRefreshTask: ProviderBackgroundRefreshCompleting {
    private(set) var completed = false
    private(set) var success = false

    func setTaskCompleted(success: Bool) {
        completed = true
        self.success = success
    }
}

private extension ProviderUsageSnapshot {
    static func connectedFixture(_ providerId: ProviderId, label: String) -> ProviderUsageSnapshot {
        ProviderUsageSnapshot(
            providerId: providerId,
            connectionState: .connected,
            planLabel: "Pro",
            updatedAt: "2026-06-04T00:00:00Z",
            lines: [
                ProviderUsageLine(label: label, remainingPercent: 0.98)
            ]
        )
    }
}
