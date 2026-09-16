import Foundation
import Testing
@testable import AIQuotaCore

private final class TestClock: @unchecked Sendable {
    private let lock = NSLock()
    private var value = Date(timeIntervalSince1970: 1_800_000_000)
    func read() -> Date { lock.withLock { value } }
    func advance(_ seconds: TimeInterval) { lock.withLock { value = value.addingTimeInterval(seconds) } }
}
private func schedulerRepository(count: Int = 3) async throws -> (AccountRepository, [Account]) {
    let url = FileManager.default.temporaryDirectory.appendingPathComponent("AIQuotaScheduler-\(UUID().uuidString)/accounts.sqlite")
    let repository = try AccountRepository(url: url)
    var accounts: [Account] = []
    for number in 0..<count {
        let account = try await repository.add(provider: .claude, alias: "Account \(number)")
        try await repository.connect(account.id, expectedGeneration: account.generation, expectedSessionRevision: 0,
                                     identity: RemoteIdentity(subject: "subject-\(number)", product: "web-quota"),
                                     method: .webSession, owner: .aiQuota, credentialReference: UUID())
        accounts.append(try await repository.account(account.id))
    }
    return (repository, accounts)
}
private actor ControlledCollector: UsageCollector {
    private var pending: [UUID: CheckedContinuation<Void, Never>] = [:]
    private var startedWaiters: [(Int, CheckedContinuation<Void, Never>)] = []
    private(set) var started: [UUID] = []
    private(set) var peakConcurrent = 0
    let clock: TestClock
    init(clock: TestClock) { self.clock = clock }
    func collect(account: Account, lease: CollectionLease) async throws -> CollectionOutput {
        // Intentionally ignores cancellation until released, modelling a slow legacy transport.
        await withCheckedContinuation { continuation in
            pending[account.id] = continuation
            started.append(account.id); peakConcurrent = max(peakConcurrent, pending.count)
            let ready = startedWaiters.filter { started.count >= $0.0 }
            startedWaiters.removeAll { started.count >= $0.0 }
            for waiter in ready { waiter.1.resume() }
        }
        return try CollectionOutput(report: UsageReport(identity: lease.identity, fetchedAt: clock.read(),
                                                       metrics: [UsageMetric(id: "session", label: "Session", period: "5h", remainingFraction: 0.5)]),
                                    transferredBytes: 128)
    }
    func waitForStarts(_ count: Int) async {
        if started.count >= count { return }
        await withCheckedContinuation { startedWaiters.append((count, $0)) }
    }
    func release(_ id: UUID) { pending.removeValue(forKey: id)?.resume() }
    func releaseAll() {
        let continuations = Array(pending.values); pending.removeAll()
        for continuation in continuations { continuation.resume() }
    }
}
private actor ImmediateCollector: UsageCollector {
    private(set) var calls: [UUID: Int] = [:]
    var blockedID: UUID?
    let clock: TestClock
    init(clock: TestClock, blockedID: UUID? = nil) { self.clock = clock; self.blockedID = blockedID }
    func collect(account: Account, lease: CollectionLease) async throws -> CollectionOutput {
        calls[account.id, default: 0] += 1
        if account.id == blockedID, calls[account.id] == 1 {
            throw CollectorError.rateLimited(until: clock.read().addingTimeInterval(120))
        }
        return try CollectionOutput(report: UsageReport(identity: lease.identity, fetchedAt: clock.read(),
                                                       metrics: [UsageMetric(id: "weekly", label: "Weekly", period: "week", remainingFraction: 0.6)]),
                                    transferredBytes: 256)
    }
}

@Test(.timeLimit(.minutes(1))) func simultaneousSurfaceRequestsCoalesceAndNeverExceedTwoCollectors() async throws {
    let (repository, accounts) = try await schedulerRepository()
    let clock = TestClock(); let collector = ControlledCollector(clock: clock)
    let coordinator = RefreshCoordinator(repository: repository, collector: collector, now: { clock.read() })
    try await coordinator.request()
    await collector.waitForStarts(2)
    for _ in 0..<10 { try await coordinator.request() }
    #expect(await collector.started.count == 2)
    #expect(await coordinator.state().queuedAccounts.count == 1)
    await collector.release(accounts[0].id)
    await collector.waitForStarts(3)
    await collector.releaseAll()
    await coordinator.waitUntilIdle()
    #expect(await collector.peakConcurrent == 2)
    #expect(await collector.started.count == 3)
    #expect(await coordinator.state().measurements.values.allSatisfy { $0.attempts == 1 && $0.successfulAttempts == 1 })
}

@Test(.timeLimit(.minutes(1))) func automaticCollectionMaintainsSixtySecondsAndSkipsMissedCycles() async throws {
    let (repository, accounts) = try await schedulerRepository(count: 1)
    let clock = TestClock(); let collector = ImmediateCollector(clock: clock)
    let coordinator = RefreshCoordinator(repository: repository, collector: collector, now: { clock.read() })
    try await coordinator.request(reason: .automatic); await coordinator.waitUntilIdle()
    clock.advance(59)
    try await coordinator.request(reason: .automatic); await coordinator.waitUntilIdle()
    #expect(await collector.calls[accounts[0].id] == 1)
    clock.advance(1)
    try await coordinator.request(reason: .automatic); await coordinator.waitUntilIdle()
    #expect(await collector.calls[accounts[0].id] == 2)
    clock.advance(60 * 500)
    try await coordinator.request(reason: .automatic); await coordinator.waitUntilIdle()
    #expect(await collector.calls[accounts[0].id] == 3)
    #expect(RefreshCoordinator.interval == 60)
}

@Test(.timeLimit(.minutes(1))) func retryAfterIsPerAccountAndManualRefreshCannotBypassIt() async throws {
    let (repository, accounts) = try await schedulerRepository(count: 2)
    let clock = TestClock(); let collector = ImmediateCollector(clock: clock, blockedID: accounts[0].id)
    let coordinator = RefreshCoordinator(repository: repository, collector: collector, now: { clock.read() })
    try await coordinator.request(); await coordinator.waitUntilIdle()
    try await coordinator.request(); await coordinator.waitUntilIdle()
    #expect(await collector.calls[accounts[0].id] == 1)
    #expect(await collector.calls[accounts[1].id] == 2)
    clock.advance(60)
    try await coordinator.request(reason: .automatic); await coordinator.waitUntilIdle()
    #expect(await collector.calls[accounts[0].id] == 1)
    #expect(await collector.calls[accounts[1].id] == 3)
    clock.advance(60)
    try await coordinator.request(reason: .automatic); await coordinator.waitUntilIdle()
    #expect(await collector.calls[accounts[0].id] == 2)
    #expect(await collector.calls[accounts[1].id] == 4)
    #expect(await coordinator.state().retryAfter[accounts[0].id] == nil)
}

@Test(.timeLimit(.minutes(1))) func recoveryWaitsForCancelledTransportThenCollectsOnce() async throws {
    let (repository, accounts) = try await schedulerRepository(count: 1)
    let clock = TestClock(); let collector = ControlledCollector(clock: clock)
    let coordinator = RefreshCoordinator(repository: repository, collector: collector, now: { clock.read() })
    try await coordinator.request()
    await collector.waitForStarts(1)
    try await coordinator.setEnvironment(online: false, awake: true)
    try await coordinator.request()
    #expect(await collector.started.count == 1)
    try await coordinator.setEnvironment(online: true, awake: true)
    #expect(await coordinator.state().activeAccounts.count == 1)
    await collector.releaseAll()
    await collector.waitForStarts(2)
    #expect(try await repository.usage(accounts[0].id) == nil) // cancelled transport did not publish
    await collector.releaseAll(); await coordinator.waitUntilIdle()
    #expect(await collector.peakConcurrent == 1)
    #expect(await collector.started.count == 2)
    #expect(try await repository.usage(accounts[0].id)?.metrics.first?.remainingFraction == 0.5)
}

@Test(.timeLimit(.minutes(1))) func disablingAutomaticCollectionStillAllowsManualRefresh() async throws {
    let (repository, accounts) = try await schedulerRepository(count: 1)
    let clock = TestClock(); let collector = ImmediateCollector(clock: clock)
    let coordinator = RefreshCoordinator(repository: repository, collector: collector, now: { clock.read() })
    await coordinator.setAutomaticEnabled(false)
    try await coordinator.request(reason: .automatic)
    #expect(await collector.calls.isEmpty)
    try await coordinator.request(); await coordinator.waitUntilIdle()
    #expect(await collector.calls[accounts[0].id] == 1)
    await coordinator.stop()
    try await coordinator.request(); await coordinator.waitUntilIdle()
    #expect(await collector.calls[accounts[0].id] == 1)
}

@Test(.timeLimit(.minutes(1))) func manualRequestKeepsQueuedAccountWhenAutomaticCollectionIsDisabled() async throws {
    let (repository, accounts) = try await schedulerRepository(count: 2)
    let clock = TestClock(); let collector = ControlledCollector(clock: clock)
    let coordinator = RefreshCoordinator(repository: repository, collector: collector, maximumConcurrent: 1, now: { clock.read() })
    try await coordinator.request(reason: .automatic)
    await collector.waitForStarts(1)
    try await coordinator.request(accountIDs: [accounts[1].id])
    await coordinator.setAutomaticEnabled(false)
    #expect(await coordinator.state().queuedAccounts == [accounts[1].id])
    await collector.release(accounts[0].id)
    await collector.waitForStarts(2)
    await collector.releaseAll(); await coordinator.waitUntilIdle()
    #expect(await collector.started == accounts.map(\.id))
}
