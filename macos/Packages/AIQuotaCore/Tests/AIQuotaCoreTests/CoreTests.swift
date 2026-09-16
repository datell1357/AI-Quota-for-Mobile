import Foundation
import Testing
@testable import AIQuotaCore

private let start = Date(timeIntervalSince1970: 1_800_000_000)
private func temporaryURL(_ name: String = "accounts.sqlite") throws -> URL {
    let directory = FileManager.default.temporaryDirectory.appendingPathComponent("AIQuotaTests-\(UUID().uuidString)")
    try FileManager.default.createDirectory(at: directory, withIntermediateDirectories: true)
    return directory.appendingPathComponent(name)
}
private func identity(_ subject: String = "test-subject", workspace: String? = "workspace-one") throws -> RemoteIdentity {
    try RemoteIdentity(subject: subject, workspace: workspace, product: "subscription-quota")
}
private func metric(_ fraction: Double = 0.5, id: String = "session", reset: Date? = nil) throws -> UsageMetric {
    try UsageMetric(id: id, label: id, period: "5h", remainingFraction: fraction, resetsAt: reset)
}
private func connect(_ repository: AccountRepository, provider: ProviderID = .claude, alias: String = "Personal",
                     subject: String = "test-subject", workspace: String? = "workspace-one") async throws -> Account {
    let account = try await repository.add(provider: provider, alias: alias, now: start)
    try await repository.connect(account.id, expectedGeneration: account.generation, expectedSessionRevision: 0,
                                 identity: identity(subject, workspace: workspace), method: .webSession,
                                 owner: .aiQuota, credentialReference: UUID(), now: start)
    return try await repository.account(account.id)
}
private func collect(_ repository: AccountRepository, _ account: Account, fraction: Double,
                     at: Date = start, reset: Date? = nil) async throws -> [UsageNotification] {
    let lease = try await repository.beginCollection(account.id, now: at)
    return try await repository.accept(UsageReport(identity: lease.identity, fetchedAt: at,
                                                   metrics: [metric(fraction, reset: reset)]), for: lease, now: at)
}

@Test func invalidUnitsCannotBecomeFullQuota() throws {
    for invalid in [Double.nan, Double.infinity, -0.1, 100] {
        #expect(throws: CoreError.invalidMetric) { try metric(invalid) }
    }
    #expect(throws: CoreError.invalidMetric) {
        try metric(reset: Date(timeIntervalSince1970: Double.greatestFiniteMagnitude))
    }
    #expect(try metric(0).remainingFraction == 0)
    #expect(try metric(1).remainingFraction == 1)
    #expect(throws: CoreError.invalidMetric) {
        try UsageMetric(id: "x", label: "x", period: "monthly", status: .unlimited, remainingFraction: 1)
    }
    let unlimited = try UsageMetric(id: "x", label: "x", period: "monthly", status: .unlimited, used: 320)
    #expect(unlimited.remainingFraction == nil)
    var json = try #require(JSONSerialization.jsonObject(with: JSONEncoder().encode(metric())) as? [String: Any])
    json["remainingFraction"] = 73
    let data = try JSONSerialization.data(withJSONObject: json)
    #expect(throws: CoreError.invalidMetric) { try JSONDecoder().decode(UsageMetric.self, from: data) }
}

@Test func staleSequenceSessionAndDisconnectedResponsesAreRejected() async throws {
    let repository = try AccountRepository(url: temporaryURL())
    let account = try await connect(repository)
    let older = try await repository.beginCollection(account.id, now: start)
    let latest = try await repository.beginCollection(account.id, now: start)
    let report = try UsageReport(identity: identity(), fetchedAt: start, metrics: [metric(0.25)])
    _ = try await repository.accept(report, for: latest, now: start)
    await #expect(throws: CoreError.staleAttempt) { try await repository.accept(report, for: older, now: start) }
    await #expect(throws: CoreError.staleAttempt) { try await repository.accept(report, for: latest, now: start) }
    let preLogin = try await repository.beginCollection(account.id, now: start)
    try await repository.connect(account.id, expectedGeneration: account.generation,
                                 expectedSessionRevision: account.sessionRevision, identity: identity(),
                                 method: .oauth, owner: .aiQuota, credentialReference: UUID(), now: start)
    await #expect(throws: CoreError.staleAttempt) { try await repository.accept(report, for: preLogin, now: start) }
    let preDisconnect = try await repository.beginCollection(account.id, now: start)
    try await repository.disconnect(account.id, now: start)
    await #expect(throws: CoreError.staleAttempt) { try await repository.accept(report, for: preDisconnect, now: start) }
    #expect(try await repository.usage(account.id) == nil)
}

@Test func accountWorkspaceAndPresentationStayIndependent() async throws {
    let repository = try AccountRepository(url: temporaryURL())
    let one = try await connect(repository, subject: "one")
    let two = try await connect(repository, alias: "Work", subject: "two")
    _ = try await collect(repository, one, fraction: 0.2)
    _ = try await collect(repository, two, fraction: 0.8)
    let lease = try await repository.beginCollection(one.id, now: start)
    let wrong = try UsageReport(identity: identity("one", workspace: "wrong-workspace"), fetchedAt: start, metrics: [metric(1)])
    let revision = try await repository.displaySnapshot(now: start).revision
    await #expect(throws: CoreError.identityMismatch) { try await repository.accept(wrong, for: lease, now: start) }
    #expect(try await repository.displaySnapshot(now: start).revision == revision)
    try await repository.updatePresentation(one.id, alias: "Renamed", isHidden: true)
    try await repository.reorder([two.id, one.id])
    #expect(try await repository.accounts().map(\.id) == [two.id, one.id])
    #expect(try await repository.usage(one.id)?.metrics.first?.remainingFraction == 0.2)
    #expect(try await repository.usage(two.id)?.metrics.first?.remainingFraction == 0.8)
    #expect(try await repository.account(one.id).identity == one.identity)
    #expect(try await repository.account(two.id).credentialReference == two.credentialReference)
    await #expect(throws: CoreError.invalidOrder) { try await repository.reorder([one.id, one.id]) }
}

@Test func duplicateIdentityRejectedAndOnlyClaudeCodexAllowMultipleCards() async throws {
    let repository = try AccountRepository(url: temporaryURL())
    _ = try await connect(repository, provider: .codex)
    let candidate = try await repository.add(provider: .codex, alias: "Second")
    await #expect(throws: CoreError.duplicateRemoteIdentity) {
        try await repository.connect(candidate.id, expectedGeneration: candidate.generation, expectedSessionRevision: 0,
                                     identity: identity(), method: .oauth, owner: .aiQuota, credentialReference: UUID())
    }
    #expect(try await repository.account(candidate.id).state == .disconnected)
    _ = try await repository.add(provider: .cursor, alias: "Cursor")
    await #expect(throws: CoreError.singleAccountOnly) { try await repository.add(provider: .cursor, alias: "Second") }
    #expect(!CredentialOwner.codexCLI.mayRefreshInAIQuota)
    #expect(!CredentialOwner.claudeCode.mayRefreshInAIQuota)
    #expect(CredentialOwner.aiQuota.mayRefreshInAIQuota)
}

@Test func failuresRetainFetchedAtAndCredentialsWithoutInventingUsage() async throws {
    let repository = try AccountRepository(url: temporaryURL())
    let account = try await connect(repository)
    _ = try await collect(repository, account, fraction: 0.42)
    for reason in [CollectionFailure.network, .rateLimited, .malformedResponse, .unauthorized] {
        let lease = try await repository.beginCollection(account.id, now: start.addingTimeInterval(60))
        try await repository.fail(lease, reason: reason, now: start.addingTimeInterval(60))
        #expect(try await repository.usage(account.id)?.fetchedAt == start)
        #expect(try await repository.usage(account.id)?.metrics.first?.remainingFraction == 0.42)
        #expect(try await repository.account(account.id).credentialReference == account.credentialReference)
    }
    #expect(try await repository.account(account.id).state == .authenticationRequired)
}

@Test func outboxAndThresholdHysteresisSurviveDatabaseReopen() async throws {
    let url = try temporaryURL()
    let repository = try AccountRepository(url: url)
    let account = try await connect(repository)
    try await repository.setNotificationPreferences(account.id, NotificationPreferences(thresholdPercent: 5))
    #expect(try await collect(repository, account, fraction: 0.04).isEmpty)
    #expect(try await collect(repository, account, fraction: 0.07).isEmpty)
    #expect(try await collect(repository, account, fraction: 0.05).isEmpty)
    #expect(try await collect(repository, account, fraction: 0.08).isEmpty)
    let events = try await collect(repository, account, fraction: 0.05)
    #expect(events.count == 1)
    let reopened = try AccountRepository(url: url)
    #expect(try await reopened.pendingNotifications().map(\.id) == events.map(\.id))
    try await reopened.markNotificationDelivered(events[0].id)
    for _ in 0..<60 { #expect(try await collect(reopened, account, fraction: 0.04).isEmpty) }
    #expect(try await reopened.pendingNotifications().isEmpty)
    _ = try await collect(reopened, account, fraction: 0.1)
    let next = try await collect(reopened, account, fraction: 0.03)
    #expect(next.count == 1)
    #expect(next.first?.id != events.first?.id)
}

@Test func resetBoundarySuppressesInitialPastAndFractionalJitter() throws {
    let id = UUID()
    let preferences = try NotificationPreferences(resetEnabled: true)
    let initial = try NotificationPolicy.evaluate(accountID: id, metric: metric(reset: start.addingTimeInterval(-5)),
                                              preferences: preferences, previous: MetricNotificationState(), now: start)
    #expect(initial.events.isEmpty)
    let future = try NotificationPolicy.evaluate(accountID: id, metric: metric(reset: start.addingTimeInterval(60.1)),
                                             preferences: preferences, previous: initial.state, now: start)
    let fired = try NotificationPolicy.evaluate(accountID: id, metric: metric(reset: start.addingTimeInterval(60.9)),
                                            preferences: preferences, previous: future.state, now: start.addingTimeInterval(61))
    #expect(fired.events.count == 1)
    #expect(fired.events.first?.kind == .resetBoundary)
    let again = try NotificationPolicy.evaluate(accountID: id, metric: metric(reset: start.addingTimeInterval(60.2)),
                                            preferences: preferences, previous: fired.state, now: start.addingTimeInterval(120))
    #expect(again.events.isEmpty)
}

@Test func resetPersistenceUsesObservedBoundaryAndDoesNotClaimQuotaRecovery() async throws {
    let url = try temporaryURL()
    let repository = try AccountRepository(url: url)
    let account = try await connect(repository)
    try await repository.setNotificationPreferences(account.id, NotificationPreferences(resetEnabled: true))
    _ = try await collect(repository, account, fraction: 0, reset: start.addingTimeInterval(60))
    let reopened = try AccountRepository(url: url)
    let events = try await reopened.evaluateResetBoundaries(now: start.addingTimeInterval(61))
    #expect(events.count == 1)
    #expect(try await reopened.usage(account.id)?.metrics.first?.remainingFraction == 0)
    #expect(try await reopened.usage(account.id)?.fetchedAt == start)
    #expect(try await repository.evaluateResetBoundaries(now: start.addingTimeInterval(120)).isEmpty)
}

@Test func widgetSelectionsAreIndependentAndNeverSubstituteMissingAccounts() async throws {
    let repository = try AccountRepository(url: temporaryURL())
    let one = try await connect(repository, subject: "one")
    let two = try await connect(repository, subject: "two")
    let first = try WidgetSelection(kind: .batteryFour, accountIDs: [two.id, one.id])
    let second = try WidgetSelection(kind: .provider, accountIDs: [one.id])
    try await repository.remove(two.id)
    let snapshot = try await repository.displaySnapshot(now: start)
    let resolved = try first.resolve(in: snapshot)
    #expect(resolved.count == 2)
    #expect(resolved[0] == nil)
    #expect(resolved[1]?.id == one.id)
    #expect(try second.resolve(in: snapshot).first??.id == one.id)
    #expect(first.instanceID != second.instanceID)
    #expect(throws: CoreError.widgetCapacity(2)) {
        try WidgetSelection(kind: .batteryTwo, accountIDs: [UUID(), UUID(), UUID()])
    }
    #expect(throws: CoreError.duplicateSelection) { try WidgetSelection(kind: .batteryFour, accountIDs: [one.id, one.id]) }
}

@Test func actualSnapshotFileRoundTripOmitsCredentialsAndRejectsOldRevisions() async throws {
    let repository = try AccountRepository(url: temporaryURL())
    let account = try await connect(repository)
    _ = try await collect(repository, account, fraction: 0.7)
    let old = try await repository.displaySnapshot(now: start)
    let url = try temporaryURL("widget.json")
    let writer = SnapshotFileStore(url: url)
    #expect(try await writer.write(old))
    #expect(try SnapshotFileStore.read(from: url) == old)
    let contents = try String(contentsOf: url, encoding: .utf8)
    for forbidden in ["credentialReference", "sessionRevision", "test-subject", "workspace-one", "authenticationMethod"] {
        #expect(!contents.contains(forbidden))
    }
    #expect(try await writer.write(old) == false)
    try await repository.updatePresentation(account.id, alias: "한국어 계정", isHidden: false)
    let next = try await repository.displaySnapshot(now: start)
    #expect(try await writer.write(next))
    await #expect(throws: CoreError.staleAttempt) { try await writer.write(old) }
    #expect(try SnapshotFileStore.read(from: url).accounts.first?.alias == "한국어 계정")
}

@Test func futureDatabaseSchemaIsRejectedWithoutDowngrading() throws {
    let url = try temporaryURL()
    let connection = try SQLiteConnection(url: url)
    try connection.execute("PRAGMA user_version = 99")
    #expect(throws: CoreError.unsupportedSchema(99)) { try AccountRepository(url: url) }
    #expect(try connection.scalar("PRAGMA user_version") == "99")
}

@Test func unversionedDatabaseIsBackedUpBeforeMigration() throws {
    let url = try temporaryURL()
    let connection = try SQLiteConnection(url: url)
    try connection.execute("CREATE TABLE legacy (value TEXT)")
    try connection.execute("INSERT INTO legacy VALUES ('keep')")
    try connection.execute("PRAGMA user_version = 0")
    _ = try AccountRepository(url: url)
    let files = try FileManager.default.contentsOfDirectory(at: url.deletingLastPathComponent(), includingPropertiesForKeys: nil)
    #expect(files.contains(where: { $0.lastPathComponent.contains("before-v1-") }))
    #expect(try connection.scalar("SELECT value FROM legacy") == "keep")
}

@Test func editingThresholdDoesNotDiscardAnAlreadyQueuedReset() async throws {
    let repository = try AccountRepository(url: temporaryURL())
    let account = try await connect(repository)
    try await repository.setNotificationPreferences(account.id, NotificationPreferences(resetEnabled: true), now: start)
    _ = try await collect(repository, account, fraction: 0.04, reset: start.addingTimeInterval(60))
    let events = try await repository.evaluateResetBoundaries(now: start.addingTimeInterval(61))
    #expect(events.count == 1)
    try await repository.setNotificationPreferences(account.id,
        NotificationPreferences(resetEnabled: true, thresholdPercent: 5), now: start.addingTimeInterval(62))
    #expect(try await repository.pendingNotifications().map(\.id) == events.map(\.id))
    #expect(try await collect(repository, account, fraction: 0.04, at: start.addingTimeInterval(63)).isEmpty)
    try await repository.setNotificationPreferences(account.id, NotificationPreferences(), now: start.addingTimeInterval(64))
    #expect(try await repository.pendingNotifications().isEmpty)
}
