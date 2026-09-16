import Foundation

public struct CollectionOutput: Sendable {
    public let report: UsageReport
    public let transferredBytes: Int
    public init(report: UsageReport, transferredBytes: Int) {
        self.report = report; self.transferredBytes = max(0, transferredBytes)
    }
}

public protocol UsageCollector: Sendable {
    func collect(account: Account, lease: CollectionLease) async throws -> CollectionOutput
}

public enum CollectorError: Error, Equatable, Sendable {
    case authenticationRequired, credentialsUnavailable, rateLimited(until: Date), invalidResponse, network, unsupported
}
public enum RefreshReason: Sendable { case manual, automatic, recovery }
public enum RefreshProblem: String, Sendable { case storage, authentication, credentials, rateLimited, invalidResponse, network, unsupported, discarded }
public struct CollectionMeasurements: Sendable {
    public internal(set) var attempts = 0
    public internal(set) var successfulAttempts = 0
    public internal(set) var responseBytes = 0
    public internal(set) var lastDuration: TimeInterval = 0
    public internal(set) var lastProblem: RefreshProblem?
}
public struct RefreshCoordinatorState: Sendable {
    public let activeAccounts: Set<UUID>
    public let queuedAccounts: [UUID]
    public let retryAfter: [UUID: Date]
    public let automaticEnabled: Bool
    public let online: Bool
    public let awake: Bool
    public let measurements: [UUID: CollectionMeasurements]
}

/// One host-owned coordinator. Views and widgets request work here; they never own a polling timer.
public actor RefreshCoordinator {
    public static let interval: TimeInterval = 60
    private let repository: AccountRepository
    private let collector: any UsageCollector
    private let maximumConcurrent: Int
    private let now: @Sendable () -> Date
    private let didUpdate: @Sendable (UUID) async -> Void
    private var automaticEnabled = true
    private var online = true
    private var awake = true
    private var stopped = false
    private var timer: Task<Void, Never>?
    private var timerGeneration = UUID()
    private var tasks: [UUID: Task<Void, Never>] = [:]
    private var active: Set<UUID> = []
    private var cancelledReservations: Set<UUID> = []
    private var queue: [UUID] = []
    private var queuedReasons: [UUID: RefreshReason] = [:]
    private var followUps: [UUID: RefreshReason] = [:]
    private var retryAfter: [UUID: Date] = [:]
    private var nextAutomatic: [UUID: Date] = [:]
    private var measurements: [UUID: CollectionMeasurements] = [:]
    private var idleWaiters: [CheckedContinuation<Void, Never>] = []

    public init(repository: AccountRepository, collector: any UsageCollector, maximumConcurrent: Int = 2,
                now: @escaping @Sendable () -> Date = { .now },
                didUpdate: @escaping @Sendable (UUID) async -> Void = { _ in }) {
        self.repository = repository; self.collector = collector
        self.maximumConcurrent = max(1, maximumConcurrent); self.now = now; self.didUpdate = didUpdate
    }

    public func state() -> RefreshCoordinatorState {
        RefreshCoordinatorState(activeAccounts: active, queuedAccounts: queue, retryAfter: retryAfter,
                                automaticEnabled: automaticEnabled, online: online, awake: awake, measurements: measurements)
    }

    public func start() {
        stopped = false
        guard timer == nil, automaticEnabled else { return }
        let generation = UUID(); timerGeneration = generation
        timer = Task { [weak self] in
            while !Task.isCancelled {
                guard let self, await self.timerGeneration == generation else { return }
                await self.timerTick()
                do { try await Task.sleep(for: .seconds(Self.interval)) }
                catch { return }
            }
        }
    }

    public func stop() {
        stopped = true; stopTimer(); cancelOutstanding()
    }

    public func setAutomaticEnabled(_ enabled: Bool) {
        automaticEnabled = enabled
        if enabled && !stopped { start() }
        else {
            stopTimer()
            let automatic = queue.filter { queuedReasons[$0] != .manual }
            queue.removeAll { automatic.contains($0) }
            for id in automatic { queuedReasons[id] = nil }
            resumeIdleWaitersIfNeeded()
        }
    }

    public func setEnvironment(online: Bool, awake: Bool) async throws {
        let recovered = (!self.online || !self.awake) && online && awake
        self.online = online; self.awake = awake
        if !online || !awake { cancelOutstanding() }
        else if recovered && automaticEnabled && !stopped { try await request(reason: .recovery) }
    }

    /// Repeated manual/menu/widget requests join in-flight work rather than create another request.
    /// Server Retry-After applies to manual work too.
    public func request(accountIDs: [UUID]? = nil, reason: RefreshReason = .manual) async throws {
        guard !stopped, online, awake, reason == .manual || automaticEnabled else { return }
        let accounts = try await repository.accounts()
        catalogProblem = nil
        guard !stopped, online, awake, reason == .manual || automaticEnabled else { return }
        let selected = accountIDs.map(Set.init)
        for account in accounts {
            guard selected == nil || selected!.contains(account.id), account.identity != nil,
                  account.credentialReference != nil, account.state != .disconnected,
                  reason == .manual || account.state != .authenticationRequired else { continue }
            if active.contains(account.id) {
                if cancelledReservations.contains(account.id) || tasks[account.id]?.isCancelled == true {
                    followUps[account.id] = reason
                }
                continue
            }
            if queuedReasons[account.id] != nil {
                if reason == .manual { queuedReasons[account.id] = .manual }
                continue
            }
            let time = now()
            guard retryAfter[account.id].map({ $0 > time }) != true else { continue }
            if reason == .automatic, nextAutomatic[account.id].map({ $0 > time }) == true { continue }
            queue.append(account.id); queuedReasons[account.id] = reason
        }
        await pump()
    }

    public func cancelAccount(_ id: UUID) {
        if active.contains(id) { cancelledReservations.insert(id) }
        tasks[id]?.cancel()
        queue.removeAll { $0 == id }; queuedReasons[id] = nil; followUps[id] = nil
        nextAutomatic[id] = nil; retryAfter[id] = nil
        resumeIdleWaitersIfNeeded()
    }

    /// Useful for explicit refresh completion and deterministic integration tests; not a polling loop.
    public func waitUntilIdle() async {
        if active.isEmpty && queue.isEmpty { return }
        await withCheckedContinuation { idleWaiters.append($0) }
    }

    private func timerTick() async {
        do {
            try await request(reason: .automatic)
            let events = try await repository.evaluateResetBoundaries(now: now())
            for accountID in Set(events.map(\.accountID)) { await didUpdate(accountID) }
        } catch {
            // Errors from obtaining the account catalog cannot be attributed to a particular account.
            // A host can retrieve the failure through the throwing manual request path as well.
            catalogProblem = .storage
        }
    }

    public private(set) var catalogProblem: RefreshProblem?

    private func pump() async {
        while !stopped && online && awake && active.count < maximumConcurrent && !queue.isEmpty {
            let id = queue.removeFirst()
            guard let reason = queuedReasons.removeValue(forKey: id) else { continue }
            guard reason == .manual || automaticEnabled else { continue }
            // Reserve the slot BEFORE crossing an actor boundary, preventing reentrant duplicate starts.
            guard active.insert(id).inserted else { continue }
            do {
                let time = now()
                guard retryAfter[id].map({ $0 > time }) != true else { active.remove(id); continue }
                let (account, lease) = try await repository.collectionContext(id, now: time)
                guard !stopped, online, awake, !cancelledReservations.contains(id),
                      reason == .manual || automaticEnabled else {
                    try await repository.fail(lease, reason: .cancelled, now: now())
                    finishReservation(id); continue
                }
                nextAutomatic[id] = time.addingTimeInterval(Self.interval)
                retryAfter[id] = nil
                measurements[id, default: CollectionMeasurements()].attempts += 1
                tasks[id] = Task { await self.perform(account: account, lease: lease) }
            } catch {
                finishReservation(id)
                measurements[id, default: CollectionMeasurements()].lastProblem = .storage
            }
        }
        resumeIdleWaitersIfNeeded()
    }

    private func perform(account: Account, lease: CollectionLease) async {
        let began = ContinuousClock.now
        var problem: RefreshProblem?
        do {
            try Task.checkCancellation()
            let output = try await collector.collect(account: account, lease: lease)
            try Task.checkCancellation()
            measurements[account.id, default: CollectionMeasurements()].responseBytes += output.transferredBytes
            _ = try await repository.accept(output.report, for: lease, now: now())
            measurements[account.id, default: CollectionMeasurements()].successfulAttempts += 1
        } catch {
            let reason: CollectionFailure
            switch error {
            case is CancellationError: reason = .cancelled
            case CollectorError.authenticationRequired: reason = .unauthorized; problem = .authentication
            case CollectorError.credentialsUnavailable: reason = .credentialUnavailable; problem = .credentials
            case CollectorError.rateLimited(let until):
                retryAfter[account.id] = max(until, now().addingTimeInterval(1))
                reason = .rateLimited; problem = .rateLimited
            case CollectorError.invalidResponse: reason = .malformedResponse; problem = .invalidResponse
            case CollectorError.unsupported: reason = .malformedResponse; problem = .unsupported
            case CoreError.identityMismatch:
                // The current session belongs to someone else. Preserve its previous readings,
                // but require explicit sign-in instead of continuing to call them current.
                reason = .unauthorized; problem = .authentication
            case CoreError.staleAttempt, CoreError.accountNotFound:
                reason = .cancelled; problem = .discarded
            case let core as CoreError where core == .invalidMetric || core == .invalidTimestamp:
                reason = .malformedResponse; problem = .invalidResponse
            default: reason = .network; problem = .network
            }
            do { try await repository.fail(lease, reason: reason, now: now()) }
            catch CoreError.staleAttempt { problem = .discarded }
            catch CoreError.accountNotFound { problem = .discarded }
            catch { problem = .storage }
        }
        let elapsed = began.duration(to: .now).components
        measurements[account.id, default: CollectionMeasurements()].lastDuration = Double(elapsed.seconds) + Double(elapsed.attoseconds) / 1e18
        measurements[account.id, default: CollectionMeasurements()].lastProblem = problem
        finishReservation(account.id)
        await didUpdate(account.id)
        await pump()
    }

    private func finishReservation(_ id: UUID) {
        active.remove(id); tasks[id] = nil; cancelledReservations.remove(id)
        if let followUp = followUps.removeValue(forKey: id), !stopped, online, awake,
           followUp == .manual || automaticEnabled {
            if queuedReasons[id] == nil { queue.append(id) }
            queuedReasons[id] = followUp
        }
    }

    private func stopTimer() {
        timerGeneration = UUID(); timer?.cancel(); timer = nil
    }
    private func cancelOutstanding() {
        queue.removeAll(); queuedReasons.removeAll(); followUps.removeAll()
        // Retain active reservations until collectors actually finish, even if cancellation is slow.
        cancelledReservations.formUnion(active)
        for task in tasks.values { task.cancel() }
        resumeIdleWaitersIfNeeded()
    }
    private func resumeIdleWaitersIfNeeded() {
        guard active.isEmpty, queue.isEmpty else { return }
        let waiting = idleWaiters; idleWaiters.removeAll()
        for waiter in waiting { waiter.resume() }
    }
}
