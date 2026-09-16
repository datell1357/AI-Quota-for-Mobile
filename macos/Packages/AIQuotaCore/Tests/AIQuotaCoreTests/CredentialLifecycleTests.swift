import Foundation
import Testing
@testable import AIQuotaCore

private func lifecycleURL() -> URL {
    FileManager.default.temporaryDirectory.appendingPathComponent("AIQuotaLifecycle-\(UUID())/accounts.sqlite")
}

@Test func addingAfterDeletionAppendsWithoutReorderingSurvivingAccounts() async throws {
    let repository = try AccountRepository(url: lifecycleURL())
    let first = try await repository.add(provider: .claude, alias: "First")
    let second = try await repository.add(provider: .claude, alias: "Second")
    let third = try await repository.add(provider: .claude, alias: "Third")
    try await repository.remove(first.id)
    let added = try await repository.add(provider: .claude, alias: "Last")
    #expect(try await repository.accounts().map(\.id) == [second.id, third.id, added.id])
    #expect(added.order > third.order)
    #expect(try await repository.account(second.id).order == second.order)
}

@Test func retiredResourcesSurviveAccountDeletionAndDatabaseReopen() async throws {
    let url = lifecycleURL(); let repository = try AccountRepository(url: url)
    let account = try await repository.add(provider: .glm, alias: "First key")
    let reference = UUID(); let profile = UUID()
    try await repository.reserveCredential(reference, accountID: account.id, expectedGeneration: account.generation, expectedSessionRevision: 0)
    try await repository.prepareWebProfile(profile, reference: reference)
    let identity = try RemoteIdentity(subject: "credential-binding", product: "synthetic-glm")
    try await repository.connect(account.id, expectedGeneration: account.generation, expectedSessionRevision: 0,
                                 identity: identity, method: .webSession, owner: .aiQuota, credentialReference: reference)
    #expect(try await repository.credentialsNeedingCleanup().isEmpty)
    try await repository.remove(account.id)
    let reopened = try AccountRepository(url: url)
    let retired = try #require(await reopened.credentialsNeedingCleanup().first)
    #expect(retired.id == reference && retired.webProfileID == profile && retired.accountID == account.id)
    let replacement = try await reopened.add(provider: .glm, alias: "New key")
    #expect(replacement.id != account.id)
    let selection = try WidgetSelection(kind: .dashboardFour, accountIDs: [account.id, replacement.id])
    let slots = try await selection.resolve(in: reopened.displaySnapshot())
    #expect(slots[0] == nil && slots[1]?.id == replacement.id)
    try await reopened.finishCredentialCleanup(reference)
    #expect(try await reopened.credentialsNeedingCleanup().isEmpty)
}

@Test func recoveryRetiresAbandonedDraftsButPreservesCurrentCredentialsAndScope() async throws {
    let repository = try AccountRepository(url: lifecycleURL())
    let account = try await repository.add(provider: .claude, alias: "Account")
    let active = UUID(); let draft = UUID()
    try await repository.reserveCredential(active, accountID: account.id, expectedGeneration: account.generation, expectedSessionRevision: 0)
    let identity = try RemoteIdentity(subject: "user", workspace: "org", product: "claude")
    try await repository.connect(account.id, expectedGeneration: account.generation, expectedSessionRevision: 0,
                                 identity: identity, method: .oauth, owner: .aiQuota, credentialReference: active)
    try await repository.reserveCredential(draft, accountID: account.id, expectedGeneration: account.generation, expectedSessionRevision: 1)
    try await repository.recoverAbandonedCredentials()
    #expect(try await repository.credentialsNeedingCleanup().map(\.id) == [draft])
    #expect(try await repository.account(account.id).credentialReference == active)
    await #expect(throws: CoreError.staleAttempt) { try await repository.finishCredentialCleanup(active) }
    await #expect(throws: CoreError.staleAttempt) {
        try await repository.connect(account.id, expectedGeneration: account.generation, expectedSessionRevision: 1,
                                     identity: identity, method: .oauth, owner: .aiQuota, credentialReference: draft)
    }
    #expect(try await repository.account(account.id).sessionRevision == 1)
}

@Test func disconnectAtomicallyRetiresActiveAndPreparedReferencesWithoutTouchingAnotherAccount() async throws {
    let repository = try AccountRepository(url: lifecycleURL())
    let a = try await repository.add(provider: .codex, alias: "A")
    let b = try await repository.add(provider: .codex, alias: "B")
    let first = UUID(); let second = UUID(); let draft = UUID()
    for (account, reference) in [(a, first), (b, second)] {
        try await repository.connect(account.id, expectedGeneration: account.generation, expectedSessionRevision: 0,
                                     identity: RemoteIdentity(subject: account.alias, product: "codex"), method: .oauth,
                                     owner: .aiQuota, credentialReference: reference)
    }
    try await repository.reserveCredential(draft, accountID: a.id, expectedGeneration: a.generation, expectedSessionRevision: 1)
    let before = try await repository.account(a.id)
    try await repository.disconnect(a.id)
    #expect(try await Set(repository.credentialsNeedingCleanup().map(\.id)) == [first, draft])
    let after = try await repository.account(a.id)
    #expect(after.identity == before.identity && after.alias == before.alias && after.notifications == before.notifications)
    #expect(after.generation != before.generation && after.credentialReference == nil)
    #expect(try await repository.account(b.id).credentialReference == second)
}

@Test func schemaOneBackupCanBeRestoredWithTheOriginalAccountData() async throws {
    let url = lifecycleURL()
    let repository = try AccountRepository(url: url)
    let account = try await repository.add(provider: .codex, alias: "Preserved account")
    let raw = try SQLiteConnection(url: url)
    // This disposable fixture reproduces the previous schema exactly, without touching user stores.
    try raw.execute("DROP TABLE credential_resources")
    try raw.execute("PRAGMA user_version = 1")
    let migrated = try AccountRepository(url: url)
    #expect(try await migrated.account(account.id) == account)
    let backup = try #require(FileManager.default.contentsOfDirectory(at: url.deletingLastPathComponent(), includingPropertiesForKeys: nil)
        .first { $0.lastPathComponent.contains("before-v2-") })
    let restoredURL = url.deletingLastPathComponent().appendingPathComponent("restored.sqlite")
    try FileManager.default.copyItem(at: backup, to: restoredURL)
    let restored = try AccountRepository(url: restoredURL)
    #expect(try await restored.account(account.id) == account)
    #expect(try await restored.credentialsNeedingCleanup().isEmpty)
    #expect(try raw.scalar("PRAGMA user_version") == "2")
}
