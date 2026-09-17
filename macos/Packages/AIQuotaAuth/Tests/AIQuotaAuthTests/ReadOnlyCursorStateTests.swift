import Darwin
import Foundation
import SQLite3
import Testing
@testable import AIQuotaAuth

private let cursorTransient = unsafeBitCast(-1, to: sqlite3_destructor_type.self)
private func cursorStateDirectory() throws -> URL {
    let url = FileManager.default.temporaryDirectory.resolvingSymlinksInPath().appendingPathComponent("AIQuotaCursorState-\(UUID())")
    try FileManager.default.createDirectory(at: url, withIntermediateDirectories: true); return url
}
private func cursorDatabase(_ file: URL, wal: Bool = false, unique: Bool = true) throws -> OpaquePointer {
    var db: OpaquePointer?
    let directory = try #require(realpath(file.deletingLastPathComponent().path, nil))
    let path = String(cString: directory) + "/" + file.lastPathComponent
    free(directory)
    guard sqlite3_open(path, &db) == SQLITE_OK, let db else { throw AuthenticationError.invalidCredential }
    guard sqlite3_exec(db, "CREATE TABLE ItemTable(key TEXT \(unique ? "PRIMARY KEY" : ""), value BLOB);", nil, nil, nil) == SQLITE_OK else { throw AuthenticationError.invalidCredential }
    if wal { #expect(sqlite3_exec(db, "PRAGMA journal_mode=WAL; PRAGMA wal_autocheckpoint=0;", nil, nil, nil) == SQLITE_OK) }
    return db
}
private func cursorInsert(_ db: OpaquePointer, _ data: Data, text: Bool = false, key: String = "cursorAuth/accessToken") throws {
    var statement: OpaquePointer?
    guard sqlite3_prepare_v2(db, "INSERT OR REPLACE INTO ItemTable(key,value) VALUES(?,?)", -1, &statement, nil) == SQLITE_OK else { throw AuthenticationError.invalidCredential }
    defer { sqlite3_finalize(statement) }
    sqlite3_bind_text(statement, 1, key, -1, cursorTransient)
    data.withUnsafeBytes { bytes in
        if text { _ = sqlite3_bind_text(statement, 2, bytes.baseAddress?.assumingMemoryBound(to: CChar.self), Int32(data.count), cursorTransient) }
        else { _ = sqlite3_bind_blob(statement, 2, bytes.baseAddress, Int32(data.count), cursorTransient) }
    }
    #expect(sqlite3_step(statement) == SQLITE_DONE)
}

@Test(arguments: [false, true])
func cursorStateReadsOnlyTheSelectedKeyAndPreservesClosedDatabase(_ textValue: Bool) async throws {
    let file = try cursorStateDirectory().appendingPathComponent("state.vscdb"), db = try cursorDatabase(file)
    let token = Data("synthetic-cursor-token".utf8)
    try cursorInsert(db, token, text: textValue)
    try cursorInsert(db, Data("unrelated-refresh-token-preserve".utf8), key: "cursorAuth/refreshToken")
    try cursorInsert(db, Data("project-settings-preserve".utf8), key: "unrelated-project-state")
    #expect(sqlite3_close(db) == SQLITE_OK)
    let before = try Data(contentsOf: file), attributes = try FileManager.default.attributesOfItem(atPath: file.path)
    #expect(try await ReadOnlyCursorState().accessToken(path: file.path) == token)
    #expect(try Data(contentsOf: file) == before)
    let after = try FileManager.default.attributesOfItem(atPath: file.path)
    #expect(attributes[.modificationDate] as? Date == after[.modificationDate] as? Date)
    for suffix in ["-wal", "-shm", "-journal"] { #expect(!FileManager.default.fileExists(atPath: file.path + suffix)) }
}

@Test(arguments: [Int32(0), Int32(1)])
func cursorStateReadsUncheckpointedWALAndThenClosedWALWithoutLosingTheLatestToken(_ persistent: Int32) async throws {
    let file = try cursorStateDirectory().appendingPathComponent("state.vscdb"), db = try cursorDatabase(file, wal: true)
    try cursorInsert(db, Data("synthetic-old-token".utf8))
    #expect(sqlite3_wal_checkpoint_v2(db, nil, SQLITE_CHECKPOINT_TRUNCATE, nil, nil) == SQLITE_OK)
    // Apple SQLite may default to persistent WAL. Exercise both writer policies explicitly.
    var persist = persistent
    #expect(sqlite3_file_control(db, nil, SQLITE_FCNTL_PERSIST_WAL, &persist) == SQLITE_OK)
    let latest = Data("synthetic-new-token".utf8); try cursorInsert(db, latest)
    let before = try Data(contentsOf: file), wal = try Data(contentsOf: URL(fileURLWithPath: file.path + "-wal"))
    #expect(!wal.isEmpty)
    #expect(try await ReadOnlyCursorState().accessToken(path: file.path) == latest)
    persist = -1
    #expect(sqlite3_file_control(db, nil, SQLITE_FCNTL_PERSIST_WAL, &persist) == SQLITE_OK && persist == persistent)
    #expect(try Data(contentsOf: file) == before)
    #expect(try Data(contentsOf: URL(fileURLWithPath: file.path + "-wal")) == wal)
    #expect(sqlite3_close(db) == SQLITE_OK)
    for suffix in ["-wal", "-shm"] { #expect(FileManager.default.fileExists(atPath: file.path + suffix) == (persistent == 1)) }
    let closed = try Data(contentsOf: file)
    #expect(try await ReadOnlyCursorState().accessToken(path: file.path) == latest)
    #expect(try Data(contentsOf: file) == closed)
    for suffix in ["-wal", "-shm"] { #expect(FileManager.default.fileExists(atPath: file.path + suffix) == (persistent == 1)) }
}

@Test func cursorStateRejectsMissingMalformedDuplicateAndOversizedValues() async throws {
    let reader = ReadOnlyCursorState()
    for mode in ["missing", "corrupt", "empty", "oversized", "duplicate", "integer", "view"] {
        let file = try cursorStateDirectory().appendingPathComponent("state.vscdb")
        if mode == "corrupt" { try Data("not a database".utf8).write(to: file) }
        else {
            let db = try cursorDatabase(file, unique: mode != "duplicate")
            switch mode {
            case "empty": try cursorInsert(db, Data())
            case "oversized": try cursorInsert(db, Data(repeating: 65, count: 131_073))
            case "duplicate": try cursorInsert(db, Data("first".utf8)); try cursorInsert(db, Data("second".utf8))
            case "integer": #expect(sqlite3_exec(db, "INSERT INTO ItemTable VALUES('cursorAuth/accessToken',123)", nil, nil, nil) == SQLITE_OK)
            case "view": #expect(sqlite3_exec(db, "ALTER TABLE ItemTable RENAME TO PreservedTable; CREATE VIEW ItemTable AS SELECT * FROM PreservedTable", nil, nil, nil) == SQLITE_OK)
            default: break
            }
            #expect(sqlite3_close(db) == SQLITE_OK)
        }
        let before = try Data(contentsOf: file)
        await #expect(throws: AuthenticationError.self) { try await reader.accessToken(path: file.path) }
        #expect(try Data(contentsOf: file) == before)
    }
}

@Test func cursorStateRejectsUnsafePathsAndIncompleteSidecarsWithoutCreatingOrFollowingFiles() async throws {
    let root = try cursorStateDirectory(), file = root.appendingPathComponent("state.vscdb"), db = try cursorDatabase(file), reader = ReadOnlyCursorState()
    try cursorInsert(db, Data("synthetic".utf8)); #expect(sqlite3_close(db) == SQLITE_OK)
    let other = root.appendingPathComponent("other"); try FileManager.default.createDirectory(at: other, withIntermediateDirectories: true)
    let link = other.appendingPathComponent("state.vscdb"); try FileManager.default.createSymbolicLink(at: link, withDestinationURL: file)
    for path in [link.path, "relative/state.vscdb", root.path, file.path + "\n"] {
        await #expect(throws: AuthenticationError.invalidCredential) { try await reader.accessToken(path: path) }
    }
    let wal = URL(fileURLWithPath: file.path + "-wal"); try Data("synthetic-incomplete-sidecar".utf8).write(to: wal)
    await #expect(throws: AuthenticationError.invalidCredential) { try await reader.accessToken(path: file.path) }
    #expect(!FileManager.default.fileExists(atPath: file.path + "-shm"))
    #expect(try Data(contentsOf: wal) == Data("synthetic-incomplete-sidecar".utf8))
    let another = try cursorStateDirectory().appendingPathComponent("state.vscdb"), anotherDB = try cursorDatabase(another)
    try cursorInsert(anotherDB, Data("preserve".utf8)); sqlite3_close(anotherDB)
    try FileManager.default.setAttributes([.posixPermissions: 0o622], ofItemAtPath: another.path)
    await #expect(throws: AuthenticationError.invalidCredential) { try await reader.accessToken(path: another.path) }
}
