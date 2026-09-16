import Foundation

public protocol UsageNotificationSending: Sendable {
    func authorizationAllowsDelivery() async -> Bool
    func send(_ event: UsageNotification, account: Account) async throws
    /// Request removal of only this in-flight request if an account change overlapped submission.
    func retract(_ id: String) async
}

/// One host dispatcher owns submission and the account-change barrier.
public actor NotificationDispatcher {
    private var delivering = false
    private var pauses: [UUID: Int] = [:]
    private var inFlight = Set<UUID>()
    private var waiters: [UUID: [CheckedContinuation<Void, Never>]] = [:]

    public init() {}

    /// Begin before disconnect/removal, then await drainAccount before mutating the account.
    public func beginAccountChange(_ id: UUID) { pauses[id, default: 0] += 1 }
    public func drainAccount(_ id: UUID) async {
        if inFlight.contains(id) { await withCheckedContinuation { waiters[id, default: []].append($0) } }
    }
    /// Balance every begin call, including failed account changes.
    public func endAccountChange(_ id: UUID) {
        guard let count = pauses[id] else { return }
        if count > 1 { pauses[id] = count - 1 } else { pauses[id] = nil }
    }

    public func deliver(repository: AccountRepository, sender: any UsageNotificationSending) async throws {
        guard !delivering else { return }
        delivering = true
        defer { delivering = false }
        let pending = try await repository.pendingNotifications()
        guard !pending.isEmpty else { return }
        let allowed = await sender.authorizationAllowsDelivery()
        for event in pending {
            try Task.checkCancellation()
            guard pauses[event.accountID] == nil else { continue }
            inFlight.insert(event.accountID)
            defer { finish(event.accountID) }
            guard let claimed = try await repository.claimNotification(event.id), allowed,
                  pauses[event.accountID] == nil else { continue }
            do { try await sender.send(claimed.event, account: claimed.account) }
            catch {
                if pauses[event.accountID] != nil { await sender.retract(event.id) }
                throw error
            }
            if pauses[event.accountID] != nil { await sender.retract(event.id) }
        }
    }

    private func finish(_ id: UUID) {
        inFlight.remove(id)
        for waiter in waiters.removeValue(forKey: id) ?? [] { waiter.resume() }
    }
}
