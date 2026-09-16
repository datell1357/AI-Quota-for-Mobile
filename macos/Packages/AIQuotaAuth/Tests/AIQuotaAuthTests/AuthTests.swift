import AIQuotaCore
import Foundation
import Testing
@testable import AIQuotaAuth

private actor MemoryVault: CredentialVault {
    private(set) var values: [UUID: CredentialRecord] = [:]
    private var failWrites = false
    private var blockWrites = false
    private var writeGate: CheckedContinuation<Void, Never>?
    private var started: CheckedContinuation<Void, Never>?
    private var didStart = false
    func configure(failWrites: Bool = false, blockWrites: Bool = false) {
        self.failWrites = failWrites; self.blockWrites = blockWrites
    }
    func create(_ record: CredentialRecord, reference: UUID) async throws {
        if failWrites { throw AuthenticationError.storage(-1) }
        if blockWrites {
            await withCheckedContinuation { continuation in
                writeGate = continuation; didStart = true; started?.resume(); started = nil
            }
        }
        guard values[reference] == nil else { throw AuthenticationError.duplicateCredential }
        values[reference] = record
    }
    func waitForWrite() async {
        if didStart { return }
        await withCheckedContinuation { started = $0 }
    }
    func releaseWrite() { blockWrites = false; writeGate?.resume(); writeGate = nil }
    func read(_ reference: UUID) throws -> CredentialRecord {
        guard let record = values[reference] else { throw AuthenticationError.missingCredential }
        return record
    }
    func remove(_ reference: UUID) { values[reference] = nil }
}
private func authRepository() throws -> AccountRepository {
    try AccountRepository(url: FileManager.default.temporaryDirectory.appendingPathComponent("AIQuotaAuth-\(UUID())/accounts.sqlite"))
}
private func credential(_ account: Account, secret: String = "synthetic-old", workspace: String = "workspace-a") throws -> CredentialRecord {
    try CredentialRecord(accountID: account.id, provider: account.provider,
                         identity: RemoteIdentity(subject: "user-a", workspace: workspace, product: "codex-subscription"),
                         kind: .oauth, secret: secret, refreshToken: "synthetic-refresh")
}
private func connected() async throws -> (AccountRepository, MemoryVault, LoginCoordinator, Account) {
    let repository = try authRepository(); let vault = MemoryVault()
    let coordinator = LoginCoordinator(repository: repository, vault: vault)
    let account = try await repository.add(provider: .codex, alias: "Primary")
    let attempt = try await coordinator.begin(account.id)
    _ = try await coordinator.complete(attempt, verified: credential(account))
    return (repository, vault, coordinator, try await repository.account(account.id))
}

@Test func failedCredentialSavePreservesTheExistingSession() async throws {
    let (repository, vault, coordinator, old) = try await connected()
    let attempt = try await coordinator.begin(old.id)
    await vault.configure(failWrites: true)
    await #expect(throws: AuthenticationError.storage(-1)) {
        try await coordinator.complete(attempt, verified: credential(old, secret: "synthetic-new"))
    }
    #expect(try await repository.account(old.id).credentialReference == old.credentialReference)
    #expect(try await coordinator.activeCredential(old.id).secret == "synthetic-old")
    #expect(await vault.values.count == 1)
}

@Test(.timeLimit(.minutes(1))) func cancellationDuringCredentialSavePreservesOldSessionAndRemovesOnlyTheDraft() async throws {
    let (repository, vault, coordinator, old) = try await connected()
    let attempt = try await coordinator.begin(old.id)
    await vault.configure(blockWrites: true)
    let completion = Task { try await coordinator.complete(attempt, verified: credential(old, secret: "synthetic-new")) }
    await vault.waitForWrite()
    #expect(await coordinator.cancel(attempt))
    await vault.releaseWrite()
    await #expect(throws: AuthenticationError.cancelled) { try await completion.value }
    #expect(try await repository.account(old.id).sessionRevision == old.sessionRevision)
    #expect(try await coordinator.activeCredential(old.id).secret == "synthetic-old")
    #expect(await vault.values.count == 1)
}

@Test func mismatchedWorkspaceAndStaleGenerationCannotReplaceCredentials() async throws {
    let (repository, vault, coordinator, old) = try await connected()
    let wrong = try await coordinator.begin(old.id)
    await #expect(throws: CoreError.identityMismatch) {
        try await coordinator.complete(wrong, verified: credential(old, workspace: "workspace-b"))
    }
    let stale = try await coordinator.begin(old.id)
    try await repository.disconnect(old.id)
    await #expect(throws: CoreError.staleAttempt) { try await coordinator.complete(stale, verified: credential(old)) }
    // Disconnect now journals and removes its old credential, not only the failed draft.
    #expect(await vault.values.isEmpty)
    #expect(try await repository.credentialsNeedingCleanup().isEmpty)
    #expect(try await repository.account(old.id).state == .disconnected)
}

@Test func successfulReplacementPublishesOnlyAfterSavingAndRetiresTheOldSecret() async throws {
    let (repository, vault, coordinator, old) = try await connected()
    let attempt = try await coordinator.begin(old.id)
    let outcome = try await coordinator.complete(attempt, verified: credential(old, secret: "synthetic-new"))
    #expect(outcome.retiredCredentialNeedingCleanup == nil)
    #expect(try await coordinator.activeCredential(old.id).secret == "synthetic-new")
    #expect(try await repository.account(old.id).sessionRevision == old.sessionRevision + 1)
    #expect(await vault.values.count == 1)
    #expect(await vault.values[old.credentialReference!] == nil)
}

@Test func externalCredentialsDoNotStoreOrRotateTheOwnersRefreshToken() throws {
    let account = try Account(provider: .codex, alias: "External")
    let identity = try RemoteIdentity(subject: "user-a", product: "codex-subscription")
    #expect(throws: AuthenticationError.invalidCredential) {
        try CredentialRecord(accountID: account.id, provider: .codex, identity: identity, kind: .externalApplication,
                             owner: .codexCLI, secret: "copied-access", refreshToken: "copied-refresh", externalLocator: "/explicit/cli/auth.json")
    }
    let reference = try CredentialRecord(accountID: account.id, provider: .codex, identity: identity,
                                         kind: .externalApplication, owner: .codexCLI, externalLocator: "/explicit/cli/auth.json")
    #expect(reference.secret == nil && reference.refreshToken == nil)
    #expect(!reference.owner.mayRefreshInAIQuota)
    #expect(String(reflecting: try credential(account)).contains("synthetic") == false)
}

private actor ControlledRefresher: OwnedOAuthRefresher {
    private(set) var calls = 0
    private var gate: CheckedContinuation<Void, Never>?
    private var started: CheckedContinuation<Void, Never>?
    func refresh(_ old: CredentialRecord) async throws -> CredentialRecord {
        await withCheckedContinuation { continuation in gate = continuation; calls += 1; started?.resume(); started = nil }
        return try CredentialRecord(accountID: old.accountID, provider: old.provider, identity: old.identity,
                                    kind: .oauth, secret: "synthetic-rotated", refreshToken: "synthetic-refresh-rotated")
    }
    func waitForCall() async { if calls == 0 { await withCheckedContinuation { started = $0 } } }
    func release() { gate?.resume(); gate = nil }
}
@Test(.timeLimit(.minutes(1))) func concurrentOAuthRefreshRequestsShareOneRotation() async throws {
    let (_, _, login, account) = try await connected()
    let joined = JoinSignal()
    let refresher = ControlledRefresher()
    let coordinator = OAuthRefreshCoordinator(login: login, refresher: refresher, didCoalesce: { _ in await joined.signal() })
    let first = Task { try await coordinator.refresh(account.id) }
    await refresher.waitForCall()
    let second = Task { try await coordinator.refresh(account.id) }
    // Wait for both callers to enter the actor without relying on a sleep or scheduling delay.
    await joined.wait()
    await refresher.release()
    _ = try await (first.value, second.value)
    #expect(await refresher.calls == 1)
    #expect(try await login.activeCredential(account.id).secret == "synthetic-rotated")
}

private actor JoinSignal {
    var signaled = false
    var waiter: CheckedContinuation<Void, Never>?
    func signal() { signaled = true; waiter?.resume(); waiter = nil }
    func wait() async { if !signaled { await withCheckedContinuation { waiter = $0 } } }
}

@Test func externallyOwnedCredentialNeverInvokesAnOAuthRefresher() async throws {
    let repository = try authRepository(); let vault = MemoryVault()
    let login = LoginCoordinator(repository: repository, vault: vault)
    let account = try await repository.add(provider: .codex, alias: "External")
    let attempt = try await login.begin(account.id)
    let identity = try RemoteIdentity(subject: "external-user", product: "codex-subscription")
    let record = try CredentialRecord(accountID: account.id, provider: .codex, identity: identity,
                                      kind: .externalApplication, owner: .codexCLI, externalLocator: "/explicit/cli/auth.json")
    _ = try await login.complete(attempt, verified: record)
    let refresher = ControlledRefresher()
    let coordinator = OAuthRefreshCoordinator(login: login, refresher: refresher)
    await #expect(throws: AuthenticationError.externalOwner) { try await coordinator.refresh(account.id) }
    #expect(await refresher.calls == 0)
}

@Test func newSessionCannotBeReadWithAnOlderCollectionLease() async throws {
    let (repository, _, login, old) = try await connected()
    let lease = try await repository.beginCollection(old.id)
    let attempt = try await login.begin(old.id)
    _ = try await login.complete(attempt, verified: credential(old, secret: "synthetic-replacement"))
    await #expect(throws: CoreError.staleAttempt) {
        try await login.activeCredential(old.id, expectedGeneration: lease.generation, expectedSessionRevision: lease.sessionRevision)
    }
}
