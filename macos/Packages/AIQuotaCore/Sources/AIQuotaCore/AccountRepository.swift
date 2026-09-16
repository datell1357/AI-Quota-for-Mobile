import Foundation

public enum CollectionFailure: Sendable { case network, rateLimited, unauthorized, malformedResponse, credentialUnavailable, cancelled }

public actor AccountRepository {
    private let database: SQLiteConnection
    private let encoder = JSONEncoder()
    private let decoder = JSONDecoder()

    public init(url: URL) throws {
        try FileManager.default.createDirectory(at: url.deletingLastPathComponent(), withIntermediateDirectories: true)
        database = try SQLiteConnection(url: url)
    }

    public func accounts() throws -> [Account] {
        try database.query("SELECT payload FROM accounts").map { try decode(Account.self, $0[0]) }
            .sorted { ($0.order, $0.id.uuidString) < ($1.order, $1.id.uuidString) }
    }

    public func account(_ id: UUID) throws -> Account {
        guard let json = try database.scalar("SELECT payload FROM accounts WHERE id = ?", [.text(id.uuidString)])
        else { throw CoreError.accountNotFound }
        return try decode(Account.self, json)
    }

    @discardableResult
    public func add(provider: ProviderID, alias: String, now: Date = .now) throws -> Account {
        try database.transaction {
            let existing = try accounts()
            guard provider.supportsMultipleAccounts || !existing.contains(where: { $0.provider == provider })
            else { throw CoreError.singleAccountOnly }
            let lastOrder = existing.map(\.order).max() ?? -1
            guard lastOrder < Int.max else { throw CoreError.invalidOrder }
            let account = try Account(provider: provider, alias: alias, order: lastOrder + 1, now: now)
            try database.execute("INSERT INTO accounts (id,payload) VALUES (?,?)", [.text(account.id.uuidString), .text(try encode(account))])
            try bumpRevision()
            return account
        }
    }

    /// Call after the login coordinator verifies the remote identity and commits credentials.
    /// Rejected login attempts leave the previously active session intact.
    public func connect(_ id: UUID, expectedGeneration: UUID, expectedSessionRevision: UInt64,
                        identity: RemoteIdentity, method: AuthenticationMethod, owner: CredentialOwner,
                        credentialReference: UUID, now: Date = .now) throws {
        try database.transaction {
            var account = try account(id)
            guard account.generation == expectedGeneration, account.sessionRevision == expectedSessionRevision
            else { throw CoreError.staleAttempt }
            if let old = account.identity, old != identity { throw CoreError.identityMismatch }
            guard !(try accounts()).contains(where: { $0.id != id && $0.provider == account.provider && $0.identity == identity })
            else { throw CoreError.duplicateRemoteIdentity }
            try activateCredential(credentialReference, for: account)
            if let old = account.credentialReference, old != credentialReference { try retireCredential(old, for: account) }
            account.identity = identity; account.authenticationMethod = method
            account.credentialOwner = owner; account.credentialReference = credentialReference
            account.sessionRevision += 1; account.state = .connected; account.statusChangedAt = now
            try save(account); try bumpRevision()
        }
    }

    public func disconnect(_ id: UUID, now: Date = .now) throws {
        try database.transaction {
            var account = try account(id)
            try retireCredentials(for: account)
            account.generation = UUID(); account.sessionRevision += 1
            account.credentialReference = nil; account.state = .disconnected; account.statusChangedAt = now
            try save(account)
            try database.execute("DELETE FROM usage WHERE account_id = ?", [.text(id.uuidString)])
            // Retain alert watermarks for this identity, preventing duplicate historical alerts on reconnect.
            try database.execute("UPDATE notification_events SET delivered=1 WHERE account_id=?", [.text(id.uuidString)])
            try bumpRevision()
        }
    }

    /// Removes only the explicit local account. Widget selections retain the now-missing ID.
    public func remove(_ id: UUID) throws {
        try database.transaction {
            try retireCredentials(for: account(id))
            try database.execute("DELETE FROM accounts WHERE id = ?", [.text(id.uuidString)])
            try bumpRevision()
        }
    }

    /// Record the new reference before any Keychain write or WebKit store creation.
    public func reserveCredential(_ reference: UUID, accountID: UUID, expectedGeneration: UUID,
                                  expectedSessionRevision: UInt64) throws {
        try database.transaction {
            let account = try account(accountID)
            guard account.generation == expectedGeneration, account.sessionRevision == expectedSessionRevision,
                  try credentialResource(reference) == nil,
                  !(try accounts()).contains(where: { $0.credentialReference == reference }) else { throw CoreError.staleAttempt }
            try saveResource(CredentialResource(id: reference, accountID: accountID, state: .prepared, needsInspection: false))
        }
    }

    public func prepareWebProfile(_ profileID: UUID, reference: UUID) throws {
        try database.transaction {
            guard var resource = try credentialResource(reference), resource.state == .prepared,
                  resource.webProfileID == nil || resource.webProfileID == profileID else { throw CoreError.staleAttempt }
            guard !(try credentialResources()).contains(where: { $0.id != reference && $0.webProfileID == profileID })
            else { throw CoreError.identityMismatch }
            resource.webProfileID = profileID
            try saveResource(resource)
        }
    }

    public func retirePreparedCredential(_ reference: UUID) throws {
        try database.transaction {
            guard var resource = try credentialResource(reference) else { return }
            guard resource.state != .active,
                  !(try accounts()).contains(where: { $0.credentialReference == reference }) else { throw CoreError.staleAttempt }
            resource.state = .retired; try saveResource(resource)
        }
    }

    /// Call once before accepting new login attempts in the host process.
    public func recoverAbandonedCredentials() throws {
        try database.transaction {
            let active = Set(try accounts().compactMap(\.credentialReference))
            for var resource in try credentialResources() {
                let state: CredentialResource.State = active.contains(resource.id) ? .active : .retired
                if resource.state != state { resource.state = state; try saveResource(resource) }
            }
        }
    }

    public func credentialsNeedingCleanup() throws -> [CredentialResource] {
        let active = Set(try accounts().compactMap(\.credentialReference))
        return try credentialResources().filter { $0.state == .retired && !active.contains($0.id) }
    }

    public func resolveCredentialCleanup(_ reference: UUID, webProfileID: UUID?) throws {
        try database.transaction {
            guard var resource = try cleanupResource(reference) else { throw CoreError.staleAttempt }
            if let webProfileID {
                guard !(try credentialResources()).contains(where: { $0.id != reference && $0.webProfileID == webProfileID })
                else { throw CoreError.identityMismatch }
            }
            resource.webProfileID = webProfileID; resource.needsInspection = false
            try saveResource(resource)
        }
    }

    public func finishCredentialCleanup(_ reference: UUID) throws {
        try database.transaction {
            guard let resource = try cleanupResource(reference), !resource.needsInspection else { throw CoreError.staleAttempt }
            try database.execute("DELETE FROM credential_resources WHERE reference=?", [.text(reference.uuidString)])
        }
    }

    private func cleanupResource(_ reference: UUID) throws -> CredentialResource? {
        try credentialsNeedingCleanup().first { $0.id == reference }
    }
    private func credentialResources() throws -> [CredentialResource] {
        try database.query("SELECT payload FROM credential_resources ORDER BY reference").map { try decode(CredentialResource.self, $0[0]) }
    }
    private func credentialResource(_ reference: UUID) throws -> CredentialResource? {
        guard let json = try database.scalar("SELECT payload FROM credential_resources WHERE reference=?", [.text(reference.uuidString)]) else { return nil }
        return try decode(CredentialResource.self, json)
    }
    private func saveResource(_ resource: CredentialResource) throws {
        try database.execute("INSERT INTO credential_resources VALUES (?,?) ON CONFLICT(reference) DO UPDATE SET payload=excluded.payload",
                             [.text(resource.id.uuidString), .text(try encode(resource))])
    }
    private func activateCredential(_ reference: UUID, for account: Account) throws {
        var resource = try credentialResource(reference) ?? CredentialResource(id: reference, accountID: account.id, state: .prepared, needsInspection: true)
        guard resource.accountID == account.id, resource.state != .retired,
              !(try accounts()).contains(where: { $0.id != account.id && $0.credentialReference == reference }) else { throw CoreError.staleAttempt }
        resource.state = .active; try saveResource(resource)
    }
    private func retireCredential(_ reference: UUID, for account: Account) throws {
        var resource = try credentialResource(reference) ?? CredentialResource(id: reference, accountID: account.id, state: .active, needsInspection: true)
        guard resource.accountID == account.id else { throw CoreError.identityMismatch }
        resource.state = .retired; try saveResource(resource)
    }
    private func retireCredentials(for account: Account) throws {
        if let reference = account.credentialReference { try retireCredential(reference, for: account) }
        for resource in try credentialResources() where resource.accountID == account.id && resource.state != .retired {
            try retireCredential(resource.id, for: account)
        }
    }

    public func updatePresentation(_ id: UUID, alias: String, isHidden: Bool) throws {
        let trimmed = alias.trimmingCharacters(in: .whitespacesAndNewlines)
        guard !trimmed.isEmpty else { throw CoreError.invalidAlias }
        try database.transaction {
            var account = try account(id)
            guard account.alias != trimmed || account.isHidden != isHidden else { return }
            account.alias = trimmed; account.isHidden = isHidden
            try save(account); try bumpRevision()
        }
    }

    public func reorder(_ ids: [UUID]) throws {
        try database.transaction {
            let existing = try accounts()
            guard Set(ids).count == ids.count, Set(ids) == Set(existing.map(\.id)) else { throw CoreError.invalidOrder }
            for (order, id) in ids.enumerated() {
                var account = try account(id); account.order = order
                try save(account)
            }
            try bumpRevision()
        }
    }

    public func setNotificationPreferences(_ id: UUID, _ preferences: NotificationPreferences, now: Date = .now) throws {
        try database.transaction {
            var account = try account(id)
            let thresholdChanged = account.notifications.thresholdPercent != preferences.thresholdPercent
            let resetChanged = account.notifications.resetEnabled != preferences.resetEnabled
            guard thresholdChanged || resetChanged else { return }
            account.notifications = preferences
            try save(account)
            // Editing one policy must not discard a pending event from the other policy.
            for event in try pendingNotifications() where event.accountID == id {
                if (thresholdChanged && event.kind == .lowRemaining) || (resetChanged && event.kind == .resetBoundary) {
                    try markNotificationDelivered(event.id)
                }
            }
            if let report = try usage(id) {
                for metric in report.metrics {
                    var state = try notificationState(id, metric)
                    if thresholdChanged {
                        state.thresholdPercent = preferences.thresholdPercent
                        if let threshold = preferences.thresholdPercent, let fraction = metric.remainingFraction,
                           metric.status == .limited, metric.accuracy == .measured {
                            state.lowArmed = fraction > Double(threshold) / 100
                        } else { state.lowArmed = nil }
                    }
                    if resetChanged {
                        state.resetEnabled = preferences.resetEnabled
                        state.watchedReset = preferences.resetEnabled
                            ? metric.resetsAt.map { Int64($0.timeIntervalSince1970.rounded(.down)) } : nil
                        if let reset = state.watchedReset, Double(reset) <= now.timeIntervalSince1970 {
                            state.lastNotifiedReset = max(state.lastNotifiedReset ?? Int64.min, reset)
                        }
                    }
                    try saveNotificationState(id, metric, state)
                }
            }
            try bumpRevision()
        }
    }

    public func beginCollection(_ id: UUID, now: Date = .now) throws -> CollectionLease {
        try database.transaction {
            let account = try account(id)
            guard let identity = account.identity, account.credentialReference != nil,
                  account.state != .disconnected, account.state != .connecting else { throw CoreError.unavailableAccount }
            try database.execute("UPDATE accounts SET sequence = sequence + 1 WHERE id = ?", [.text(id.uuidString)])
            let sequence = try integer("SELECT sequence FROM accounts WHERE id=?", [.text(id.uuidString)])
            return CollectionLease(accountID: id, provider: account.provider, generation: account.generation,
                                   sessionRevision: account.sessionRevision, sequence: sequence, identity: identity, startedAt: now)
        }
    }

    // Return a matching credential reference and lease without an intervening actor suspension.
    public func collectionContext(_ id: UUID, now: Date = .now) throws -> (Account, CollectionLease) {
        let lease = try beginCollection(id, now: now)
        return (try account(id), lease)
    }

    public func usage(_ id: UUID) throws -> UsageReport? {
        guard let json = try database.scalar("SELECT payload FROM usage WHERE account_id=?", [.text(id.uuidString)]) else { return nil }
        return try decode(UsageReport.self, json)
    }

    @discardableResult
    public func accept(_ report: UsageReport, for lease: CollectionLease, now: Date = .now) throws -> [UsageNotification] {
        try database.transaction {
            var account = try validate(lease)
            guard report.identity == lease.identity else { throw CoreError.identityMismatch }
            guard report.fetchedAt.timeIntervalSince1970.isFinite,
                  report.fetchedAt <= now.addingTimeInterval(30), report.fetchedAt >= lease.startedAt,
                  try usage(lease.accountID).map({ report.fetchedAt >= $0.fetchedAt }) ?? true
            else { throw CoreError.invalidTimestamp }
            let metricKeys = report.metrics.map { [$0.id, $0.period] }
            guard Set(metricKeys).count == metricKeys.count else { throw CoreError.invalidMetric }
            // Empty successful reports express unavailable usage, never a full quota.
            account.state = report.metrics.isEmpty ? .unavailable : .connected
            account.statusChangedAt = now
            try save(account)
            try database.execute("INSERT INTO usage VALUES (?,?) ON CONFLICT(account_id) DO UPDATE SET payload=excluded.payload",
                                 [.text(account.id.uuidString), .text(try encode(report))])
            let events = try evaluateNotifications(account, report, now: now)
            try complete(lease); try bumpRevision()
            return events
        }
    }

    public func fail(_ lease: CollectionLease, reason: CollectionFailure, now: Date = .now) throws {
        try database.transaction {
            var account = try validate(lease)
            if case .cancelled = reason { try complete(lease); return }
            if case .unauthorized = reason { account.state = .authenticationRequired }
            else { account.state = try usage(account.id) == nil ? .unavailable : .stale }
            account.statusChangedAt = now
            // Usage values and their actual fetchedAt remain unchanged on any failure.
            try save(account); try complete(lease); try bumpRevision()
        }
    }

    public func evaluateResetBoundaries(now: Date = .now) throws -> [UsageNotification] {
        try database.transaction {
            var events: [UsageNotification] = []
            for account in try accounts() where account.state == .connected || account.state == .stale {
                if let report = try usage(account.id) { events += try evaluateNotifications(account, report, now: now) }
            }
            return events
        }
    }

    public func pendingNotifications() throws -> [UsageNotification] {
        try database.query("SELECT payload FROM notification_events WHERE delivered=0 ORDER BY rowid")
            .map { try decode(UsageNotification.self, $0[0]) }
    }

    public func markNotificationDelivered(_ id: String) throws {
        try database.execute("UPDATE notification_events SET delivered=1 WHERE id=?", [.text(id)])
    }

    public func displaySnapshot(now: Date = .now) throws -> WidgetSnapshot {
        try database.transaction {
            let revision = try integer("SELECT value FROM metadata WHERE key='revision'")
            let display = try accounts().map { account in
                let report = try usage(account.id)
                return DisplayAccount(id: account.id, provider: account.provider, alias: account.alias,
                                      isHidden: account.isHidden, state: account.state,
                                      plan: report?.plan, fetchedAt: report?.fetchedAt, metrics: report?.metrics ?? [])
            }
            return WidgetSnapshot(revision: revision, writtenAt: now, accounts: display)
        }
    }

    /// Allows session side effects only while this exact collection is current and unfinished.
    public func validateCollectionLease(_ lease: CollectionLease) throws { _ = try validate(lease) }

    private func validate(_ lease: CollectionLease) throws -> Account {
        let account = try account(lease.accountID)
        let rows = try database.query("SELECT sequence,completed FROM accounts WHERE id=?", [.text(account.id.uuidString)])
        guard account.provider == lease.provider, account.generation == lease.generation,
              account.sessionRevision == lease.sessionRevision, account.identity == lease.identity,
              account.credentialReference != nil,
              rows.first?[0] == String(lease.sequence),
              let completed = Int64(rows.first?[1] ?? ""), completed < lease.sequence
        else { throw CoreError.staleAttempt }
        return account
    }

    private func integer(_ sql: String, _ values: [SQLValue] = []) throws -> Int64 {
        guard let raw = try database.scalar(sql, values), let value = Int64(raw) else {
            throw StorageError(code: 20, operation: "invalid integer")
        }
        return value
    }
    private func complete(_ lease: CollectionLease) throws {
        try database.execute("UPDATE accounts SET completed=? WHERE id=?", [.integer(lease.sequence), .text(lease.accountID.uuidString)])
    }
    private func bumpRevision() throws { try database.execute("UPDATE metadata SET value=value+1 WHERE key='revision'") }
    private func save(_ account: Account) throws {
        try database.execute("UPDATE accounts SET payload=? WHERE id=?", [.text(try encode(account)), .text(account.id.uuidString)])
    }
    private func notificationState(_ id: UUID, _ metric: UsageMetric) throws -> MetricNotificationState {
        guard let json = try database.scalar("SELECT payload FROM notification_states WHERE account_id=? AND metric_id=? AND period=?",
                                             [.text(id.uuidString), .text(metric.id), .text(metric.period)]) else { return MetricNotificationState() }
        return try decode(MetricNotificationState.self, json)
    }
    private func saveNotificationState(_ id: UUID, _ metric: UsageMetric, _ state: MetricNotificationState) throws {
        try database.execute("INSERT INTO notification_states VALUES (?,?,?,?) ON CONFLICT(account_id,metric_id,period) DO UPDATE SET payload=excluded.payload",
                             [.text(id.uuidString), .text(metric.id), .text(metric.period), .text(try encode(state))])
    }
    private func evaluateNotifications(_ account: Account, _ report: UsageReport, now: Date) throws -> [UsageNotification] {
        var events: [UsageNotification] = []
        for metric in report.metrics {
            let previous = try notificationState(account.id, metric)
            let result = NotificationPolicy.evaluate(accountID: account.id, metric: metric, preferences: account.notifications,
                                                     previous: previous, now: now)
            if result.state != previous { try saveNotificationState(account.id, metric, result.state) }
            for event in result.events {
                try database.execute("INSERT OR IGNORE INTO notification_events (id,account_id,payload) VALUES (?,?,?)",
                                     [.text(event.id), .text(account.id.uuidString), .text(try encode(event))])
            }
            events += result.events
        }
        return events
    }
    private func encode<T: Encodable>(_ value: T) throws -> String { String(decoding: try encoder.encode(value), as: UTF8.self) }
    private func decode<T: Decodable>(_ type: T.Type, _ json: String?) throws -> T {
        guard let json else { throw StorageError(code: 20, operation: "missing payload") }
        return try decoder.decode(type, from: Data(json.utf8))
    }
}
