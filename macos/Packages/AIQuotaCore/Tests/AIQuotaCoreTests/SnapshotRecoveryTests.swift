import Foundation
import Testing
@testable import AIQuotaCore

private func recoveryDirectory() throws -> URL {
    let root = FileManager.default.temporaryDirectory.appendingPathComponent("AIQuotaSnapshotRecovery-\(UUID().uuidString)")
    try FileManager.default.createDirectory(at: root, withIntermediateDirectories: true)
    return root
}

private func recoveryBackups(_ root: URL) throws -> [URL] {
    try FileManager.default.contentsOfDirectory(at: root, includingPropertiesForKeys: nil)
        .filter { $0.lastPathComponent.contains(".before-rebuild-") }
}

@Test func newDatabaseReplacesAnOlderDatabasesHigherSnapshotRevision() async throws {
    let root = try recoveryDirectory()
    let oldRepository = try AccountRepository(url: root.appendingPathComponent("old.sqlite"))
    let oldAccount = try await oldRepository.add(provider: .claude, alias: "Previous installation")
    try await oldRepository.updatePresentation(oldAccount.id, alias: "Previous revision", isHidden: false)
    let snapshotURL = root.appendingPathComponent("snapshot.json")
    let oldWriter = SnapshotFileStore(url: snapshotURL, repository: oldRepository)
    #expect(try await oldWriter.publish())
    let oldData = try Data(contentsOf: snapshotURL)

    let newRepository = try AccountRepository(url: root.appendingPathComponent("new.sqlite"))
    let newAccount = try await newRepository.add(provider: .codex, alias: "새 설치 계정")
    let newWriter = SnapshotFileStore(url: snapshotURL, repository: newRepository)
    #expect(try await newWriter.publish())
    let restored = try SnapshotFileStore.read(from: snapshotURL)
    #expect(restored.revision == 1)
    #expect(restored.accounts.map(\.id) == [newAccount.id])
    let backups = try recoveryBackups(root)
    #expect(backups.count == 1)
    #expect(try Data(contentsOf: #require(backups.first)) == oldData)
    let selection = try WidgetSelection(kind: .batteryTwo, accountIDs: [oldAccount.id, newAccount.id])
    #expect(try selection.resolve(in: restored).map { $0?.id } == [nil, newAccount.id])
    #expect(try await oldRepository.account(oldAccount.id).alias == "Previous revision")
}

@Test func sameRevisionFromAnotherDatabaseDoesNotBlockPublication() async throws {
    let root = try recoveryDirectory()
    let oldRepository = try AccountRepository(url: root.appendingPathComponent("old.sqlite"))
    _ = try await oldRepository.add(provider: .claude, alias: "Previous installation")
    let snapshotURL = root.appendingPathComponent("snapshot.json")
    #expect(try await SnapshotFileStore(url: snapshotURL, repository: oldRepository).publish())
    let newRepository = try AccountRepository(url: root.appendingPathComponent("new.sqlite"))
    let account = try await newRepository.add(provider: .codex, alias: "New installation")
    #expect(try await SnapshotFileStore(url: snapshotURL, repository: newRepository).publish())
    #expect(try SnapshotFileStore.read(from: snapshotURL).accounts.map(\.id) == [account.id])
    #expect(try recoveryBackups(root).count == 1)
}

@Test func actualSQLiteBackupRestoresUsageWithoutTheNewerDisplayCacheWinning() async throws {
    let root = try recoveryDirectory()
    let databaseURL = root.appendingPathComponent("accounts.sqlite")
    let backupURL = root.appendingPathComponent("restored.sqlite")
    let repository = try AccountRepository(url: databaseURL)
    let created = try await repository.add(provider: .claude, alias: "백업 당시 계정")
    let identity = try RemoteIdentity(subject: "synthetic-subject", workspace: "workspace", product: "quota")
    try await repository.connect(created.id, expectedGeneration: created.generation, expectedSessionRevision: 0,
                                 identity: identity, method: .webSession, owner: .aiQuota, credentialReference: UUID())
    let fetchedAt = Date(timeIntervalSince1970: 1_800_000_000)
    let lease = try await repository.beginCollection(created.id, now: fetchedAt)
    let report = try UsageReport(identity: identity, fetchedAt: fetchedAt,
                                metrics: [UsageMetric(id: "session", label: "Session", period: "5h", remainingFraction: 0.6)])
    _ = try await repository.accept(report, for: lease, now: fetchedAt)
    let accountAtBackup = try await repository.account(created.id)
    // SQLite's backup output is a new database, including the committed WAL contents.
    let connection = try SQLiteConnection(url: databaseURL)
    try connection.execute("VACUUM INTO ?", [.text(backupURL.path)])
    let expected = try await repository.displaySnapshot(now: fetchedAt)
    try await repository.updatePresentation(created.id, alias: "백업 후 변경", isHidden: true)
    let snapshotURL = root.appendingPathComponent("snapshot.json")
    #expect(try await SnapshotFileStore(url: snapshotURL, repository: repository).publish())
    let newerData = try Data(contentsOf: snapshotURL)

    let restored = try AccountRepository(url: backupURL)
    let publisher = SnapshotFileStore(url: snapshotURL, repository: restored)
    #expect(try await publisher.publish(now: fetchedAt.addingTimeInterval(3600)))
    let actual = try SnapshotFileStore.read(from: snapshotURL)
    #expect(actual.revision == expected.revision)
    #expect(actual.accounts == expected.accounts)
    #expect(actual.accounts.first?.fetchedAt == fetchedAt)
    #expect(try await restored.account(created.id) == accountAtBackup)
    #expect(try await restored.usage(created.id) == report)
    #expect(try await repository.account(created.id).alias == "백업 후 변경")
    #expect(try Data(contentsOf: #require(recoveryBackups(root).first)) == newerData)
    let json = try String(contentsOf: snapshotURL, encoding: .utf8)
    for forbidden in ["credentialReference", "sessionRevision", "synthetic-subject", "workspace"] {
        #expect(!json.contains(forbidden))
    }
}

@Test func corruptDisplayFilesArePreservedBeforeRebuilding() async throws {
    let corruptions = [
        "{truncated", "null", "{\"schemaVersion\":1}",
        "{\"schemaVersion\":1,\"revision\":-1,\"writtenAt\":0,\"accounts\":[]}"
    ]
    for raw in corruptions {
        let root = try recoveryDirectory()
        let repository = try AccountRepository(url: root.appendingPathComponent("accounts.sqlite"))
        let account = try await repository.add(provider: .grok, alias: "보존된 계정")
        let snapshotURL = root.appendingPathComponent("snapshot.json")
        let bytes = Data(raw.utf8)
        try bytes.write(to: snapshotURL)
        #expect(throws: (any Error).self) { try SnapshotFileStore.read(from: snapshotURL) }
        #expect(try await SnapshotFileStore(url: snapshotURL, repository: repository).publish())
        #expect(try SnapshotFileStore.read(from: snapshotURL).accounts.map(\.id) == [account.id])
        let backups = try recoveryBackups(root)
        #expect(backups.count == 1)
        #expect(try Data(contentsOf: #require(backups.first)) == bytes)
    }
}

@Test func futureSnapshotSchemaIsNeverOverwrittenEvenWhenItsShapeHasChanged() async throws {
    let root = try recoveryDirectory()
    let repository = try AccountRepository(url: root.appendingPathComponent("accounts.sqlite"))
    _ = try await repository.add(provider: .claude, alias: "Local")
    let snapshotURL = root.appendingPathComponent("snapshot.json")
    let future = Data("{\"schemaVersion\":99,\"newField\":\"preserve\"}".utf8)
    try future.write(to: snapshotURL)
    let writer = SnapshotFileStore(url: snapshotURL, repository: repository)
    #expect(throws: CoreError.unsupportedSnapshot(99)) { try SnapshotFileStore.read(from: snapshotURL) }
    await #expect(throws: CoreError.unsupportedSnapshot(99)) { try await writer.publish() }
    #expect(try Data(contentsOf: snapshotURL) == future)
    #expect(try recoveryBackups(root).isEmpty)
}

@Test func unchangedSnapshotAcrossRestartDoesNotPretendToBeFreshOrRewriteTheFile() async throws {
    let root = try recoveryDirectory()
    let databaseURL = root.appendingPathComponent("accounts.sqlite")
    let repository = try AccountRepository(url: databaseURL)
    _ = try await repository.add(provider: .codex, alias: "Codex")
    let snapshotURL = root.appendingPathComponent("snapshot.json")
    let now = Date(timeIntervalSince1970: 1_800_000_000)
    #expect(try await SnapshotFileStore(url: snapshotURL, repository: repository).publish(now: now))
    let bytes = try Data(contentsOf: snapshotURL)
    let modified = try snapshotURL.resourceValues(forKeys: [.contentModificationDateKey]).contentModificationDate
    let reopened = try AccountRepository(url: databaseURL)
    let writer = SnapshotFileStore(url: snapshotURL, repository: reopened)
    #expect(try await writer.publish(now: now.addingTimeInterval(3600)) == false)
    #expect(try Data(contentsOf: snapshotURL) == bytes)
    #expect(try snapshotURL.resourceValues(forKeys: [.contentModificationDateKey]).contentModificationDate == modified)
    #expect(try recoveryBackups(root).isEmpty)
}

@Test func concurrentPublicationRequestsFinishWithTheCurrentDatabaseProjection() async throws {
    let root = try recoveryDirectory()
    let repository = try AccountRepository(url: root.appendingPathComponent("accounts.sqlite"))
    let account = try await repository.add(provider: .claude, alias: "Initial")
    let snapshotURL = root.appendingPathComponent("snapshot.json")
    let writer = SnapshotFileStore(url: snapshotURL, repository: repository)
    try await withThrowingTaskGroup(of: Void.self) { group in
        for index in 0..<50 {
            group.addTask {
                try await repository.updatePresentation(account.id, alias: "계정 \(index)", isHidden: index % 2 == 0)
                do { try await writer.publish() }
                catch CoreError.staleAttempt { /* A newer repository read already published. */ }
            }
        }
        try await group.waitForAll()
    }
    _ = try await writer.publish()
    let current = try await repository.displaySnapshot()
    let file = try SnapshotFileStore.read(from: snapshotURL)
    #expect(file.revision == current.revision)
    #expect(file.accounts == current.accounts)
    #expect(try recoveryBackups(root).isEmpty)
}

@Test func cancelledPublisherLeavesTheExistingFileUntouched() async throws {
    let root = try recoveryDirectory()
    let repository = try AccountRepository(url: root.appendingPathComponent("accounts.sqlite"))
    let snapshotURL = root.appendingPathComponent("snapshot.json")
    let original = Data("preserve this invalid cache until publication runs".utf8)
    try original.write(to: snapshotURL)
    let writer = SnapshotFileStore(url: snapshotURL, repository: repository)
    let task = Task {
        withUnsafeCurrentTask { $0?.cancel() }
        return try await writer.publish()
    }
    await #expect(throws: CancellationError.self) { try await task.value }
    #expect(try Data(contentsOf: snapshotURL) == original)
    #expect(try recoveryBackups(root).isEmpty)
}
