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

public protocol WebProfileRemoving: Sendable {
    func removeProfile(_ id: UUID) async throws
}

/// A fresh reference/profile per attempt preserves the old session until both verification and saving succeed.
public actor LoginCoordinator {
    private enum Phase { case authenticating, saving, committing }
    private struct Pending { let attempt: LoginAttempt; var phase: Phase }
    private let repository: AccountRepository
    private let vault: any CredentialVault
    private let profiles: (any WebProfileRemoving)?
    private var pending: [UUID: Pending] = [:]
    private var writesInFlight = Set<UUID>()
    private var recovering = false
    private var cleaning = false
    public init(repository: AccountRepository, vault: any CredentialVault, profiles: (any WebProfileRemoving)? = nil) {
        self.repository = repository; self.vault = vault; self.profiles = profiles
    }
    public func begin(_ id: UUID) async throws -> LoginAttempt {
        guard pending[id] == nil, !recovering else { throw AuthenticationError.loginInProgress }
        let account = try await repository.account(id)
        guard pending[id] == nil, !recovering else { throw AuthenticationError.loginInProgress }
        let attempt = LoginAttempt(id: UUID(), accountID: id, provider: account.provider, generation: account.generation,
                                   sessionRevision: account.sessionRevision, credentialReference: UUID(), webProfileID: UUID())
        pending[id] = Pending(attempt: attempt, phase: .authenticating)
        do {
            try await repository.reserveCredential(attempt.credentialReference, accountID: id, expectedGeneration: account.generation,
                                                   expectedSessionRevision: account.sessionRevision)
            try Task.checkCancellation()
            return attempt
        } catch {
            pending[id] = nil
            try? await repository.retirePreparedCredential(attempt.credentialReference)
            throw error
        }
    }
    /// Returns false after the final DB commit has started; the caller must await its outcome.
    @discardableResult public func cancel(_ attempt: LoginAttempt) async -> Bool {
        guard let current = pending[attempt.accountID], current.attempt == attempt else { return true }
        guard current.phase != .committing else { return false }
        pending[attempt.accountID] = nil
        try? await repository.retirePreparedCredential(attempt.credentialReference)
        _ = try? await retryCleanup()
        return true
    }
    public func prepareWebProfile(_ attempt: LoginAttempt) async throws {
        try await validateLogin(attempt)
        try await repository.prepareWebProfile(attempt.webProfileID, reference: attempt.credentialReference)
        try await validateLogin(attempt)
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
        do {
            let old = try await repository.account(attempt.accountID)
            guard old.generation == attempt.generation, old.sessionRevision == attempt.sessionRevision else { throw CoreError.staleAttempt }
            if let identity = old.identity, identity != record.identity { throw CoreError.identityMismatch }
            try Task.checkCancellation()
            guard pending[attempt.accountID]?.attempt == attempt else { throw AuthenticationError.cancelled }
            if let profile = record.webProfileID {
                try await repository.prepareWebProfile(profile, reference: attempt.credentialReference)
                guard pending[attempt.accountID]?.attempt == attempt else { throw AuthenticationError.cancelled }
            }
            writesInFlight.insert(attempt.credentialReference)
            try await vault.create(record, reference: attempt.credentialReference)
            writesInFlight.remove(attempt.credentialReference)
            try Task.checkCancellation()
            guard pending[attempt.accountID]?.attempt == attempt else { throw AuthenticationError.cancelled }
            pending[attempt.accountID]?.phase = .committing
            try await repository.connect(attempt.accountID, expectedGeneration: attempt.generation,
                                         expectedSessionRevision: attempt.sessionRevision, identity: record.identity,
                                         method: record.authenticationMethod, owner: record.owner,
                                         credentialReference: attempt.credentialReference, now: now)
            pending[attempt.accountID] = nil
            _ = try? await retryCleanup()
            let remaining = try? await repository.credentialsNeedingCleanup()
            let retired = old.credentialReference.flatMap { old in remaining?.contains(where: { $0.id == old }) == true ? old : nil }
            return LoginOutcome(retiredCredentialNeedingCleanup: retired)
        } catch {
            writesInFlight.remove(attempt.credentialReference)
            if pending[attempt.accountID]?.attempt == attempt { pending[attempt.accountID] = nil }
            // The journal also covers a failed cleanup or process exit after a Keychain write.
            try? await repository.retirePreparedCredential(attempt.credentialReference)
            _ = try? await retryCleanup()
            throw error
        }
    }

    /// Run before the host exposes login actions. Active references are preserved by the repository.
    public func recoverAbandonedLogins() async throws {
        guard pending.isEmpty, writesInFlight.isEmpty, !recovering else { throw AuthenticationError.loginInProgress }
        recovering = true
        defer { recovering = false }
        try await repository.recoverAbandonedCredentials()
    }

    public func disconnect(_ id: UUID, now: Date = .now) async throws {
        try await retireAccount(id, removing: false, now: now)
    }
    public func removeAccount(_ id: UUID) async throws {
        try await retireAccount(id, removing: true, now: .now)
    }
    private func retireAccount(_ id: UUID, removing: Bool, now: Date) async throws {
        if let current = pending[id] {
            guard current.phase != .committing else { throw AuthenticationError.loginInProgress }
            pending[id] = nil
        }
        if removing { try await repository.remove(id) }
        else { try await repository.disconnect(id, now: now) }
        _ = try? await retryCleanup()
    }

    /// Retries only journaled, retired AI Quota resources. External credential files are never touched.
    @discardableResult public func retryCleanup() async throws -> Int {
        guard !cleaning else { return try await repository.credentialsNeedingCleanup().count }
        cleaning = true
        defer { cleaning = false }
        for var resource in try await repository.credentialsNeedingCleanup() {
            if Task.isCancelled { break }
            guard !writesInFlight.contains(resource.id) else { continue }
            do {
                if resource.needsInspection {
                    let profile: UUID?
                    do {
                        let record = try await vault.read(resource.id)
                        try record.validate()
                        guard record.accountID == resource.accountID else { throw CoreError.identityMismatch }
                        profile = record.webProfileID
                    } catch AuthenticationError.missingCredential { profile = nil }
                    try await repository.resolveCredentialCleanup(resource.id, webProfileID: profile)
                    resource = try await repository.credentialsNeedingCleanup().first { $0.id == resource.id } ?? resource
                }
                if let profile = resource.webProfileID {
                    guard let profiles else { throw AuthenticationError.invalidCredential }
                    try await profiles.removeProfile(profile)
                }
                try await vault.remove(resource.id)
                try await repository.finishCredentialCleanup(resource.id)
            } catch {
                // Keep the durable row; a locked Keychain or live web view must not block other accounts.
                continue
            }
        }
        return try await repository.credentialsNeedingCleanup().count
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
