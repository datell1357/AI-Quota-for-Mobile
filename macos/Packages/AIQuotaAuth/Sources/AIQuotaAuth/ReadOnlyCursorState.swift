import Darwin
import Foundation
import SQLite3

public protocol CursorStateReading: Sendable {
    func accessToken(path: String) async throws -> Data
}

/// Reads one selected Cursor ItemTable key. No SQL writes, credential caches or profile discovery.
public struct ReadOnlyCursorState: CursorStateReading {
    public init() {}
    public func accessToken(path: String) throws -> Data {
        guard path.hasPrefix("/"), path.utf8.count <= 4096,
              !path.unicodeScalars.contains(where: { CharacterSet.controlCharacters.contains($0) }),
              URL(fileURLWithPath: path).lastPathComponent == "state.vscdb" else { throw AuthenticationError.invalidCredential }
        let url = URL(fileURLWithPath: path)
        guard url.standardizedFileURL.path == path, url.resolvingSymlinksInPath().path == path else { throw AuthenticationError.invalidCredential }
        let before = try inspect(path, required: true)
        let wal = try inspect(path + "-wal", required: false), shm = try inspect(path + "-shm", required: false)
        // Never ignore an active WAL or ask SQLite to reconstruct a missing shared-memory file.
        guard (wal == nil) == (shm == nil), try inspect(path + "-journal", required: false) == nil else { throw AuthenticationError.invalidCredential }
        let immutable = wal == nil
        // Foundation preserves the system /var alias on macOS. SQLite NOFOLLOW rejects
        // that alias too, so give it the POSIX canonical path after the explicit link checks.
        guard let resolved = realpath(path, nil) else { throw AuthenticationError.invalidCredential }
        let databasePath = String(cString: resolved)
        free(resolved)
        let name = immutable ? URL(fileURLWithPath: databasePath).absoluteString + "?immutable=1" : databasePath
        var db: OpaquePointer?
        let flags = SQLITE_OPEN_READONLY | SQLITE_OPEN_NOFOLLOW | (immutable ? SQLITE_OPEN_URI : 0)
        guard sqlite3_open_v2(name, &db, flags, nil) == SQLITE_OK else {
            if let db { sqlite3_close(db) }; throw AuthenticationError.invalidCredential
        }
        defer { sqlite3_close(db) }
        try Task.checkCancellation()
        sqlite3_busy_timeout(db, 250)
        sqlite3_limit(db, SQLITE_LIMIT_LENGTH, 262_144)
        sqlite3_limit(db, SQLITE_LIMIT_SQL_LENGTH, 4096)
        guard sqlite3_exec(db, "PRAGMA trusted_schema=OFF; PRAGMA query_only=ON; PRAGMA mmap_size=0;", nil, nil, nil) == SQLITE_OK else { throw AuthenticationError.invalidCredential }
        var budget: Int32 = 1000
        let data = try withUnsafeMutablePointer(to: &budget) { remaining -> Data in
            sqlite3_progress_handler(db, 1000, { raw in
                guard let raw else { return 1 }
                let remaining = raw.assumingMemoryBound(to: Int32.self)
                remaining.pointee -= 1
                return remaining.pointee <= 0 ? 1 : 0
            }, remaining)
            defer { sqlite3_progress_handler(db, 0, nil, nil) }
            var schema: OpaquePointer?
            guard sqlite3_prepare_v2(db, "SELECT type, sql FROM sqlite_schema WHERE name='ItemTable' LIMIT 2", -1, &schema, nil) == SQLITE_OK else { throw AuthenticationError.invalidCredential }
            defer { sqlite3_finalize(schema) }
            guard sqlite3_step(schema) == SQLITE_ROW, let type = sqlite3_column_text(schema, 0), String(cString: type) == "table",
                  let sql = sqlite3_column_text(schema, 1), !String(cString: sql).uppercased().contains("VIRTUAL"),
                  sqlite3_step(schema) == SQLITE_DONE else { throw AuthenticationError.invalidCredential }
            var statement: OpaquePointer?
            guard sqlite3_prepare_v2(db, "SELECT value FROM ItemTable WHERE key='cursorAuth/accessToken' LIMIT 2", -1, &statement, nil) == SQLITE_OK else { throw AuthenticationError.invalidCredential }
            defer { sqlite3_finalize(statement) }
            let result = sqlite3_step(statement)
            if result == SQLITE_DONE { throw AuthenticationError.missingCredential }
            guard result == SQLITE_ROW, [SQLITE_TEXT, SQLITE_BLOB].contains(sqlite3_column_type(statement, 0)) else { throw AuthenticationError.invalidCredential }
            let count = Int(sqlite3_column_bytes(statement, 0))
            guard count > 0, count <= 131_072, let bytes = sqlite3_column_blob(statement, 0) else { throw AuthenticationError.invalidCredential }
            let data = Data(bytes: bytes, count: count)
            guard sqlite3_step(statement) == SQLITE_DONE else { throw AuthenticationError.invalidCredential }
            return data
        }
        try Task.checkCancellation()
        let after = try inspect(path, required: true)
        guard before?.st_dev == after?.st_dev, before?.st_ino == after?.st_ino,
              before?.st_size == after?.st_size, before?.st_mtimespec.tv_sec == after?.st_mtimespec.tv_sec,
              before?.st_mtimespec.tv_nsec == after?.st_mtimespec.tv_nsec else { throw AuthenticationError.invalidCredential }
        if immutable {
            guard try inspect(path + "-wal", required: false) == nil,
                  try inspect(path + "-shm", required: false) == nil,
                  try inspect(path + "-journal", required: false) == nil else { throw AuthenticationError.invalidCredential }
        }
        return data
    }
    private func inspect(_ path: String, required: Bool) throws -> stat? {
        var value = stat()
        if lstat(path, &value) != 0 {
            if errno == ENOENT { if required { throw AuthenticationError.missingCredential }; return nil }
            throw AuthenticationError.invalidCredential
        }
        guard value.st_mode & S_IFMT == S_IFREG, value.st_uid == geteuid(), value.st_mode & 0o022 == 0,
              value.st_size >= 0, value.st_size <= 4 * 1_024 * 1_024 * 1_024 else { throw AuthenticationError.invalidCredential }
        return value
    }
}
