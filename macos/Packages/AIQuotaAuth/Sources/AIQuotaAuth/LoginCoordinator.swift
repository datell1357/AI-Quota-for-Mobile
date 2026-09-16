import AIQuotaCore
import Foundation

public struct LoginAttempt: Sendable, Equatable {
    public let id: UUID
    public let accountID: UUID
    public let provider: ProviderID
    public let generation: UUID
    public let sessionRevision: UInt64
    public let credentialReference: UUID
    public let webProfileID: UUID
}
public struct LoginOutcome: Sendable {
    /// The new session is committed even when cleanup of the replaced secret needs a retry.
    public let retiredCredentialNeedingCleanup: UUID?
}

/// A fresh reference/profile per attempt preserves the old session until both verification and saving succeed.
public actor LoginCoordinator {
    private enum Phase { case authenticating, saving, committing }
    private struct Pending { let attempt: LoginAttempt; var phase: Phase }
    private let repository: AccountRepository
    private let vault: any CredentialVault
    private var pending: [UUID: Pending] = [:]
    public init(repository: AccountRepository, vault: any CredentialVault) {
        self.repository = repository; self.vault = vault
    }
    public func begin(_ id: UUID) async throws -> LoginAttempt {
        guard pending[id] == nil else { throw AuthenticationError.loginInProgress }
        let account = try await repository.account(id)
        guard pending[id] == nil else { throw AuthenticationError.loginInProgress }
        let attempt = LoginAttempt(id: UUID(), accountID: id, provider: account.provider, generation: account.generation,
                                   sessionRevision: account.sessionRevision, credentialReference: UUID(), webProfileID: UUID())
        pending[id] = Pending(attempt: attempt, phase: .authenticating)
        return attempt
    }
    /// Returns false after the final DB commit has started; the caller must await its outcome.
    @discardableResult public func cancel(_ attempt: LoginAttempt) -> Bool {
        guard let current = pending[attempt.accountID], current.attempt == attempt else { return true }
        guard current.phase != .committing else { return false }
        pending[attempt.accountID] = nil
        return true
    }
    public func validateLogin(_ attempt: LoginAttempt) async throws {
        let account = try await repository.account(attempt.accountID)
        guard let current = pending[attempt.accountID], current.attempt == attempt, current.phase == .authenticating,
              account.generation == attempt.generation, account.sessionRevision == attempt.sessionRevision
        else { throw CoreError.staleAttempt }
    }
    public func validateCollection(_ lease: CollectionLease) async throws {
        try await repository.validateCollectionLease(lease)
    }
    /// The provider verifier must supply the identity obtained using this attempt's credentials/profile.
    public func complete(_ attempt: LoginAttempt, verified record: CredentialRecord, now: Date = .now) async throws -> LoginOutcome {
        guard let current = pending[attempt.accountID], current.attempt == attempt else { throw AuthenticationError.cancelled }
        guard current.phase == .authenticating else { throw AuthenticationError.loginInProgress }
        try record.validate()
        guard record.accountID == attempt.accountID, record.provider == attempt.provider,
              record.webProfileID == nil || record.webProfileID == attempt.webProfileID else { throw CoreError.identityMismatch }
        pending[attempt.accountID]?.phase = .saving
        var saved = false
        do {
            let old = try await repository.account(attempt.accountID)
            guard old.generation == attempt.generation, old.sessionRevision == attempt.sessionRevision else { throw CoreError.staleAttempt }
            if let identity = old.identity, identity != record.identity { throw CoreError.identityMismatch }
            try Task.checkCancellation()
            guard pending[attempt.accountID]?.attempt == attempt else { throw AuthenticationError.cancelled }
            try await vault.create(record, reference: attempt.credentialReference)
            saved = true
            try Task.checkCancellation()
            guard pending[attempt.accountID]?.attempt == attempt else { throw AuthenticationError.cancelled }
            pending[attempt.accountID]?.phase = .committing
            try await repository.connect(attempt.accountID, expectedGeneration: attempt.generation,
                                         expectedSessionRevision: attempt.sessionRevision, identity: record.identity,
                                         method: record.authenticationMethod, owner: record.owner,
                                         credentialReference: attempt.credentialReference, now: now)
            pending[attempt.accountID] = nil
            var retired: UUID?
            if let oldReference = old.credentialReference {
                do { try await vault.remove(oldReference) }
                catch { retired = oldReference }
            }
            return LoginOutcome(retiredCredentialNeedingCleanup: retired)
        } catch {
            if pending[attempt.accountID]?.attempt == attempt { pending[attempt.accountID] = nil }
            // Only this attempt's newly written secret is removed; an active old secret is never touched.
            if saved { try await vault.remove(attempt.credentialReference) }
            throw error
        }
    }
    public func activeCredential(_ id: UUID, expectedGeneration: UUID? = nil,
                                 expectedSessionRevision: UInt64? = nil) async throws -> CredentialRecord {
        let account = try await repository.account(id)
        guard let reference = account.credentialReference else { throw AuthenticationError.missingCredential }
        let record = try await vault.read(reference)
        try record.validate()
        let latest = try await repository.account(id)
        guard latest.generation == account.generation, latest.sessionRevision == account.sessionRevision,
              latest.credentialReference == reference else { throw CoreError.staleAttempt }
        guard expectedGeneration == nil || latest.generation == expectedGeneration,
              expectedSessionRevision == nil || latest.sessionRevision == expectedSessionRevision else { throw CoreError.staleAttempt }
        guard record.accountID == id, record.provider == account.provider, record.identity == account.identity,
              record.owner == account.credentialOwner else { throw CoreError.identityMismatch }
        return record
    }
}
