import AIQuotaCore
import Foundation
import Testing
@testable import AIQuotaAuth

private actor CleanupVault: CredentialVault {
    private(set) var values: [UUID: CredentialRecord] = [:]
    var locked = false
    var blockWrite = false
    private var gate: CheckedContinuation<Void, Never>?
    private var observer: CheckedContinuation<Void, Never>?
    func setLocked(_ value: Bool) { locked = value }
    func pauseWrites() { blockWrite = true }
    func create(_ record: CredentialRecord, reference: UUID) async throws {
        if blockWrite { await withCheckedContinuation { gate = $0; observer?.resume(); observer = nil } }
        values[reference] = record
    }
    func waitForWrite() async { if gate == nil { await withCheckedContinuation { observer = $0 } } }
    func finishWrite() { blockWrite = false; gate?.resume(); gate = nil }
    func read(_ reference: UUID) throws -> CredentialRecord {
        if locked { throw AuthenticationError.interactionRequired }
        guard let record = values[reference] else { throw AuthenticationError.missingCredential }
        return record
    }
    func remove(_ reference: UUID) throws {
        if locked { throw AuthenticationError.interactionRequired }
        values[reference] = nil
    }
}
private actor CleanupProfiles: WebProfileRemoving {
    private(set) var removed = Set<UUID>()
    private var failures = Set<UUID>()
    func fail(_ id: UUID) { failures.insert(id) }
    func allow(_ id: UUID) { failures.remove(id) }
    func removeProfile(_ id: UUID) throws {
        if failures.contains(id) { throw AuthenticationError.storage(-1) }
        removed.insert(id)
    }
}
private func cleanupURL() -> URL {
    FileManager.default.temporaryDirectory.appendingPathComponent("AIQuotaCleanup-\(UUID())/accounts.sqlite")
}
private func cleanupRecord(_ account: Account, profile: UUID? = nil) throws -> CredentialRecord {
    try CredentialRecord(accountID: account.id, provider: account.provider,
                         identity: RemoteIdentity(subject: account.alias, product: "synthetic-product"),
                         kind: profile == nil ? .apiKey : .webSession, secret: profile == nil ? "synthetic-cleanup-key" : nil, webProfileID: profile)
}

@Test func failedRetirementIsRetriedAfterDatabaseAndCoordinatorReopen() async throws {
    let url = cleanupURL(); let repo = try AccountRepository(url: url); let vault = CleanupVault(); let profiles = CleanupProfiles()
    let login = LoginCoordinator(repository: repo, vault: vault, profiles: profiles)
    let a = try await repo.add(provider: .claude, alias: "A"); let b = try await repo.add(provider: .claude, alias: "B")
    let first = try await login.begin(a.id); let second = try await login.begin(b.id)
    _ = try await login.complete(first, verified: cleanupRecord(a, profile: first.webProfileID))
    _ = try await login.complete(second, verified: cleanupRecord(b, profile: second.webProfileID))
    await profiles.fail(first.webProfileID)
    try await login.removeAccount(a.id)
    #expect(try await repo.accounts().map(\.id) == [b.id])
    #expect(try await repo.credentialsNeedingCleanup().map(\.id) == [first.credentialReference])
    #expect(await vault.values.count == 2)
    let reopened = try AccountRepository(url: url)
    let restarted = LoginCoordinator(repository: reopened, vault: vault, profiles: profiles)
    try await restarted.recoverAbandonedLogins()
    await profiles.allow(first.webProfileID)
    #expect(try await restarted.retryCleanup() == 0)
    #expect(await profiles.removed == [first.webProfileID])
    let remaining = await vault.values
    #expect(remaining.count == 1 && remaining[second.credentialReference] != nil)
    #expect(try await restarted.activeCredential(b.id).webProfileID == second.webProfileID)
}

@Test func crashAfterDraftKeychainWriteIsRecoveredWithoutRemovingActiveCredentials() async throws {
    let url = cleanupURL(); let repo = try AccountRepository(url: url); let vault = CleanupVault()
    let login = LoginCoordinator(repository: repo, vault: vault)
    let account = try await repo.add(provider: .glm, alias: "Key")
    let first = try await login.begin(account.id)
    _ = try await login.complete(first, verified: cleanupRecord(account))
    let abandoned = try await login.begin(account.id)
    // A process exit between Keychain creation and repository.connect leaves this exact state.
    try await vault.create(cleanupRecord(account), reference: abandoned.credentialReference)
    let restarted = LoginCoordinator(repository: try AccountRepository(url: url), vault: vault)
    try await restarted.recoverAbandonedLogins()
    #expect(try await restarted.retryCleanup() == 0)
    let remaining = await vault.values
    #expect(remaining.count == 1 && remaining[first.credentialReference] != nil)
    #expect(try await restarted.activeCredential(account.id).secret == "synthetic-cleanup-key")
}

@Test func lockedKeychainRetirementStaysDurableUntilAnExplicitRetry() async throws {
    let repo = try AccountRepository(url: cleanupURL()); let vault = CleanupVault()
    let login = LoginCoordinator(repository: repo, vault: vault)
    let account = try await repo.add(provider: .glm, alias: "Key")
    let attempt = try await login.begin(account.id)
    _ = try await login.complete(attempt, verified: cleanupRecord(account))
    await vault.setLocked(true)
    try await login.disconnect(account.id)
    #expect(try await repo.account(account.id).state == .disconnected)
    #expect(try await login.retryCleanup() == 1)
    #expect(await vault.values.count == 1)
    await vault.setLocked(false)
    #expect(try await login.retryCleanup() == 0)
    #expect(await vault.values.isEmpty)
}

@Test func cancellationWhileVaultWriteIsSuspendedCannotLoseItsCleanupRecord() async throws {
    let repo = try AccountRepository(url: cleanupURL()); let vault = CleanupVault(); let login = LoginCoordinator(repository: repo, vault: vault)
    let account = try await repo.add(provider: .glm, alias: "Key"); let attempt = try await login.begin(account.id)
    await vault.pauseWrites()
    let completion = Task { try await login.complete(attempt, verified: cleanupRecord(account)) }
    await vault.waitForWrite(); await login.cancel(attempt)
    #expect(try await login.retryCleanup() == 1)
    await vault.finishWrite()
    await #expect(throws: AuthenticationError.cancelled) { try await completion.value }
    #expect(await vault.values.isEmpty)
    #expect(try await repo.credentialsNeedingCleanup().isEmpty)
}

@Test func removingAnAccountDuringCredentialWriteCannotResurrectIt() async throws {
    let repo = try AccountRepository(url: cleanupURL()); let vault = CleanupVault(); let login = LoginCoordinator(repository: repo, vault: vault)
    let account = try await repo.add(provider: .glm, alias: "Key"); let attempt = try await login.begin(account.id)
    await vault.pauseWrites()
    let completion = Task { try await login.complete(attempt, verified: cleanupRecord(account)) }
    await vault.waitForWrite(); try await login.removeAccount(account.id); await vault.finishWrite()
    await #expect(throws: AuthenticationError.cancelled) { try await completion.value }
    #expect(try await repo.accounts().isEmpty)
    #expect(await vault.values.isEmpty)
    #expect(try await repo.credentialsNeedingCleanup().isEmpty)
}

@Test func legacyWebCredentialProfileIsJournaledBeforeKeychainRemoval() async throws {
    let repo = try AccountRepository(url: cleanupURL()); let vault = CleanupVault(); let profiles = CleanupProfiles()
    let account = try await repo.add(provider: .codex, alias: "Legacy"); let reference = UUID(); let profile = UUID()
    let record = try cleanupRecord(account, profile: profile)
    try await vault.create(record, reference: reference)
    try await repo.connect(account.id, expectedGeneration: account.generation, expectedSessionRevision: 0,
                           identity: record.identity, method: .webSession, owner: .aiQuota, credentialReference: reference)
    let login = LoginCoordinator(repository: repo, vault: vault, profiles: profiles)
    await profiles.fail(profile)
    try await login.disconnect(account.id)
    let pending = try #require(await repo.credentialsNeedingCleanup().first)
    #expect(pending.webProfileID == profile && !pending.needsInspection)
    #expect(await vault.values[reference] != nil)
    await profiles.allow(profile)
    #expect(try await login.retryCleanup() == 0)
    #expect(await profiles.removed == [profile])
}

@Test func externalCredentialCleanupOnlyRemovesAIQuotasReference() async throws {
    let url = cleanupURL(); let repo = try AccountRepository(url: url); let vault = CleanupVault(); let login = LoginCoordinator(repository: repo, vault: vault)
    let external = url.deletingLastPathComponent().appendingPathComponent("external-fixture.json")
    let bytes = Data("synthetic-external-owner".utf8); try bytes.write(to: external)
    let account = try await repo.add(provider: .codex, alias: "External"); let attempt = try await login.begin(account.id)
    let record = try CredentialRecord(accountID: account.id, provider: .codex, identity: RemoteIdentity(subject: "external", product: "codex"),
                                      kind: .externalApplication, owner: .codexCLI, externalLocator: external.path)
    _ = try await login.complete(attempt, verified: record)
    try await login.removeAccount(account.id)
    #expect(await vault.values.isEmpty)
    #expect(try Data(contentsOf: external) == bytes)
}

@Test func cleanupRefusesALegacyProfileThatAnotherAccountStillUses() async throws {
    let repo = try AccountRepository(url: cleanupURL()); let vault = CleanupVault(); let profiles = CleanupProfiles()
    let login = LoginCoordinator(repository: repo, vault: vault, profiles: profiles)
    let active = try await repo.add(provider: .codex, alias: "Active")
    let obsolete = try await repo.add(provider: .codex, alias: "Legacy")
    let current = try await login.begin(active.id)
    _ = try await login.complete(current, verified: cleanupRecord(active, profile: current.webProfileID))
    let oldReference = UUID()
    let oldRecord = try cleanupRecord(obsolete, profile: current.webProfileID)
    try await vault.create(oldRecord, reference: oldReference)
    try await repo.connect(obsolete.id, expectedGeneration: obsolete.generation, expectedSessionRevision: 0,
                           identity: oldRecord.identity, method: .webSession, owner: .aiQuota, credentialReference: oldReference)
    try await login.removeAccount(obsolete.id)
    #expect(try await login.retryCleanup() == 1)
    #expect(await profiles.removed.isEmpty)
    #expect(try await login.activeCredential(active.id).webProfileID == current.webProfileID)
    #expect(await vault.values.count == 2)
}

@Test func startupRecoveryCannotRunOverALiveLoginAttempt() async throws {
    let repo = try AccountRepository(url: cleanupURL()); let vault = CleanupVault(); let login = LoginCoordinator(repository: repo, vault: vault)
    let account = try await repo.add(provider: .glm, alias: "Live")
    let attempt = try await login.begin(account.id)
    await #expect(throws: AuthenticationError.loginInProgress) { try await login.recoverAbandonedLogins() }
    try await login.validateLogin(attempt)
    await login.cancel(attempt)
    #expect(try await repo.credentialsNeedingCleanup().isEmpty)
}
