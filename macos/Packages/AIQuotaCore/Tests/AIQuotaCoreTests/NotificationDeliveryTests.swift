import Foundation
import Testing
@testable import AIQuotaCore

private actor DeliveryGate {
    private var entered = false
    private var released = false
    private var entryWaiters: [CheckedContinuation<Void, Never>] = []
    private var releaseWaiters: [CheckedContinuation<Void, Never>] = []
    func stop() async {
        entered = true
        for waiter in entryWaiters { waiter.resume() }
        entryWaiters = []
        if !released { await withCheckedContinuation { releaseWaiters.append($0) } }
    }
    func waitForEntry() async {
        if !entered { await withCheckedContinuation { entryWaiters.append($0) } }
    }
    func release() {
        released = true
        for waiter in releaseWaiters { waiter.resume() }
        releaseWaiters = []
    }
}

private enum DeliveryFailure: Error { case rejected }
private actor ProbeNotificationSender: UsageNotificationSending {
    let allowed: Bool
    let authorizationGate: DeliveryGate?
    let submissionGate: DeliveryGate?
    let retractionGate: DeliveryGate?
    let blockedAccount: UUID?
    let fails: Bool
    private(set) var submissions: [(id: String, accountID: UUID, alias: String)] = []
    private(set) var visible = Set<String>()
    private(set) var retracted: [String] = []
    init(allowed: Bool = true, authorizationGate: DeliveryGate? = nil, submissionGate: DeliveryGate? = nil,
         retractionGate: DeliveryGate? = nil, blockedAccount: UUID? = nil, fails: Bool = false) {
        self.allowed = allowed; self.authorizationGate = authorizationGate; self.submissionGate = submissionGate
        self.retractionGate = retractionGate; self.blockedAccount = blockedAccount; self.fails = fails
    }
    func authorizationAllowsDelivery() async -> Bool {
        await authorizationGate?.stop()
        return allowed
    }
    func send(_ event: UsageNotification, account: Account) async throws {
        submissions.append((event.id, account.id, account.alias))
        if blockedAccount == account.id { await submissionGate?.stop() }
        visible.insert(event.id)
        if fails { throw DeliveryFailure.rejected }
    }
    func retract(_ id: String) async {
        await retractionGate?.stop()
        retracted.append(id); visible.remove(id)
    }
}

private let notificationStart = Date(timeIntervalSince1970: 1_800_000_000)
private func notificationRepository(url: URL = FileManager.default.temporaryDirectory.appendingPathComponent("AIQuotaDelivery-\(UUID())/accounts.sqlite")) throws -> AccountRepository {
    try AccountRepository(url: url)
}
private func notificationAccount(_ repository: AccountRepository, alias: String = "Test") async throws -> (Account, UsageNotification) {
    let account = try await repository.add(provider: .codex, alias: alias, now: notificationStart)
    let identity = try RemoteIdentity(subject: account.id.uuidString, product: "synthetic-notifications")
    try await repository.connect(account.id, expectedGeneration: account.generation, expectedSessionRevision: 0,
                                 identity: identity, method: .oauth, owner: .aiQuota, credentialReference: UUID(), now: notificationStart)
    try await repository.setNotificationPreferences(account.id, NotificationPreferences(thresholdPercent: 20), now: notificationStart)
    var events: [UsageNotification] = []
    for fraction in [0.5, 0.1] {
        let lease = try await repository.beginCollection(account.id, now: notificationStart)
        let metric = try UsageMetric(id: "session", label: "Session", period: "5h", remainingFraction: fraction)
        events = try await repository.accept(UsageReport(identity: identity, fetchedAt: notificationStart, metrics: [metric]),
                                            for: lease, now: notificationStart)
    }
    return (try await repository.account(account.id), try #require(events.first))
}

@Test(arguments: ["disconnect", "remove", "preferences", "unauthorized"])
func staleNotificationListIsRevalidatedAfterAuthorizationWait(change: String) async throws {
    let repository = try notificationRepository(); let (account, _) = try await notificationAccount(repository)
    let gate = DeliveryGate(); let sender = ProbeNotificationSender(authorizationGate: gate)
    let dispatcher = NotificationDispatcher()
    let delivery = Task { try await dispatcher.deliver(repository: repository, sender: sender) }
    await gate.waitForEntry()
    switch change {
    case "disconnect": try await repository.disconnect(account.id)
    case "remove": try await repository.remove(account.id)
    case "preferences": try await repository.setNotificationPreferences(account.id, NotificationPreferences())
    default:
        let lease = try await repository.beginCollection(account.id, now: notificationStart)
        try await repository.fail(lease, reason: .unauthorized, now: notificationStart)
    }
    await gate.release(); try await delivery.value
    #expect(await sender.submissions.isEmpty)
    #expect(try await repository.pendingNotifications().isEmpty)
}

@Test func notificationTitleUsesCurrentAccountInsteadOfAnOldDisplaySnapshot() async throws {
    let repository = try notificationRepository(); let (account, _) = try await notificationAccount(repository)
    let gate = DeliveryGate(); let sender = ProbeNotificationSender(authorizationGate: gate)
    let dispatcher = NotificationDispatcher()
    let delivery = Task { try await dispatcher.deliver(repository: repository, sender: sender) }
    await gate.waitForEntry()
    try await repository.updatePresentation(account.id, alias: "Renamed", isHidden: false)
    await gate.release(); try await delivery.value
    #expect(await sender.submissions.map(\.alias) == ["Renamed"])
}

@Test func concurrentNotificationClaimsConsumeExactlyOnce() async throws {
    let url = FileManager.default.temporaryDirectory.appendingPathComponent("AIQuotaDelivery-\(UUID())/accounts.sqlite")
    let repository = try notificationRepository(url: url); let (_, event) = try await notificationAccount(repository)
    let secondConnection = try notificationRepository(url: url)
    let claims = try await withThrowingTaskGroup(of: Int.self) { group in
        for index in 0..<20 {
            let connection = index.isMultiple(of: 2) ? repository : secondConnection
            group.addTask { try await connection.claimNotification(event.id) == nil ? 0 : 1 }
        }
        var count = 0
        for try await claim in group { count += claim }
        return count
    }
    #expect(claims == 1)
    let reopened = try notificationRepository(url: url)
    #expect(try await reopened.claimNotification(event.id) == nil)
    #expect(try await reopened.pendingNotifications().isEmpty)
}

@Test func accountRemovalDrainsAndRetractsOnlyItsOverlappingSubmission() async throws {
    let repository = try notificationRepository()
    let (first, firstEvent) = try await notificationAccount(repository, alias: "First")
    let (second, secondEvent) = try await notificationAccount(repository, alias: "Second")
    let submission = DeliveryGate(); let retraction = DeliveryGate()
    let sender = ProbeNotificationSender(submissionGate: submission, retractionGate: retraction, blockedAccount: first.id)
    let dispatcher = NotificationDispatcher()
    let delivery = Task { try await dispatcher.deliver(repository: repository, sender: sender) }
    await submission.waitForEntry()
    await dispatcher.beginAccountChange(first.id)
    let removal = Task {
        await dispatcher.drainAccount(first.id)
        try await repository.remove(first.id)
        await dispatcher.endAccountChange(first.id)
    }
    await submission.release(); await retraction.waitForEntry()
    // Removal cannot cross the in-flight retraction barrier.
    #expect(try await repository.account(first.id).id == first.id)
    await retraction.release()
    try await removal.value; try await delivery.value
    #expect(await sender.retracted == [firstEvent.id])
    #expect(await sender.visible == [secondEvent.id])
    #expect(try await repository.accounts().map(\.id) == [second.id])
    try await dispatcher.deliver(repository: repository, sender: sender)
    #expect(await sender.submissions.count == 2)
}

@Test func failedSubmissionReleasesRemovalBarrierAndDoesNotReplay() async throws {
    let repository = try notificationRepository(); let (account, event) = try await notificationAccount(repository)
    let submission = DeliveryGate()
    let sender = ProbeNotificationSender(submissionGate: submission, blockedAccount: account.id, fails: true)
    let dispatcher = NotificationDispatcher()
    let delivery = Task { try await dispatcher.deliver(repository: repository, sender: sender) }
    await submission.waitForEntry(); await dispatcher.beginAccountChange(account.id)
    let removal = Task {
        await dispatcher.drainAccount(account.id)
        try await repository.disconnect(account.id)
        await dispatcher.endAccountChange(account.id)
    }
    await submission.release()
    await #expect(throws: DeliveryFailure.rejected) { try await delivery.value }
    try await removal.value
    #expect(await sender.retracted == [event.id])
    #expect(await sender.visible.isEmpty)
    let resumed = NotificationDispatcher(); let allowed = ProbeNotificationSender()
    try await resumed.deliver(repository: repository, sender: allowed)
    #expect(await allowed.submissions.isEmpty)
}

@Test func deniedNotificationsAreConsumedWithoutLaterReplaying() async throws {
    let repository = try notificationRepository(); _ = try await notificationAccount(repository)
    let denied = ProbeNotificationSender(allowed: false); let allowed = ProbeNotificationSender()
    try await NotificationDispatcher().deliver(repository: repository, sender: denied)
    try await NotificationDispatcher().deliver(repository: repository, sender: allowed)
    #expect(await denied.submissions.isEmpty)
    #expect(await allowed.submissions.isEmpty)
    #expect(try await repository.pendingNotifications().isEmpty)
}

@Test func nestedAccountChangesStayPausedUntilBothFinishWithoutConsumingPendingEvents() async throws {
    let repository = try notificationRepository(); let (account, _) = try await notificationAccount(repository)
    let dispatcher = NotificationDispatcher(); let sender = ProbeNotificationSender()
    await dispatcher.beginAccountChange(account.id); await dispatcher.beginAccountChange(account.id)
    await dispatcher.endAccountChange(account.id)
    try await dispatcher.deliver(repository: repository, sender: sender)
    #expect(await sender.submissions.isEmpty)
    #expect(try await repository.pendingNotifications().count == 1)
    await dispatcher.endAccountChange(account.id)
    try await dispatcher.deliver(repository: repository, sender: sender)
    #expect(await sender.submissions.count == 1)
}
