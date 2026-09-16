import Foundation
import CSQLite

struct StorageError: Error, Sendable {
    let code: Int32
    // Error text deliberately excludes SQL parameters, account identities and credential references.
    let operation: String
}

enum SQLValue {
    case text(String), integer(Int64), real(Double), null
}

/// Access is confined to AccountRepository's actor, including statement lifetimes.
final class SQLiteConnection: @unchecked Sendable {
    private var database: OpaquePointer?
    private let transient = unsafeBitCast(-1, to: sqlite3_destructor_type.self)

    init(url: URL) throws {
        let result = sqlite3_open_v2(url.path, &database, SQLITE_OPEN_READWRITE | SQLITE_OPEN_CREATE | SQLITE_OPEN_FULLMUTEX, nil)
        guard result == SQLITE_OK else {
            sqlite3_close(database); database = nil
            throw StorageError(code: result, operation: "open")
        }
        sqlite3_busy_timeout(database, 5000)
        do {
            let version = Int(try scalar("PRAGMA user_version") ?? "0") ?? 0
            guard version <= 1 else { throw CoreError.unsupportedSchema(version) }
            try execute("PRAGMA foreign_keys = ON")
            if version == 0 {
                // Existing unversioned data is preserved before introducing the schema.
                if !(try query("SELECT name FROM sqlite_master WHERE type='table'")).isEmpty {
                    try backup(to: url.appendingPathExtension("before-v1-\(UUID().uuidString).sqlite"))
                }
                try transaction {
                    try execute("CREATE TABLE IF NOT EXISTS accounts (id TEXT PRIMARY KEY, payload TEXT NOT NULL, sequence INTEGER NOT NULL DEFAULT 0, completed INTEGER NOT NULL DEFAULT 0)")
                    try execute("CREATE TABLE IF NOT EXISTS usage (account_id TEXT PRIMARY KEY REFERENCES accounts(id) ON DELETE CASCADE, payload TEXT NOT NULL)")
                    try execute("CREATE TABLE IF NOT EXISTS notification_states (account_id TEXT NOT NULL REFERENCES accounts(id) ON DELETE CASCADE, metric_id TEXT NOT NULL, period TEXT NOT NULL, payload TEXT NOT NULL, PRIMARY KEY(account_id, metric_id, period))")
                    try execute("CREATE TABLE IF NOT EXISTS notification_events (id TEXT PRIMARY KEY, account_id TEXT NOT NULL REFERENCES accounts(id) ON DELETE CASCADE, payload TEXT NOT NULL, delivered INTEGER NOT NULL DEFAULT 0)")
                    try execute("CREATE TABLE IF NOT EXISTS metadata (key TEXT PRIMARY KEY, value INTEGER NOT NULL)")
                    try execute("INSERT OR IGNORE INTO metadata VALUES ('revision', 0)")
                    try execute("PRAGMA user_version = 1")
                }
            }
            try execute("PRAGMA journal_mode = WAL")
        } catch {
            sqlite3_close(database); database = nil
            throw error
        }
    }

    deinit { sqlite3_close(database) }

    func execute(_ sql: String, _ values: [SQLValue] = []) throws {
        let statement = try prepare(sql, values)
        defer { sqlite3_finalize(statement) }
        var result = sqlite3_step(statement)
        while result == SQLITE_ROW { result = sqlite3_step(statement) }
        guard result == SQLITE_DONE else { throw StorageError(code: result, operation: "execute") }
    }

    func query(_ sql: String, _ values: [SQLValue] = []) throws -> [[String?]] {
        let statement = try prepare(sql, values)
        defer { sqlite3_finalize(statement) }
        var rows: [[String?]] = []
        var result = sqlite3_step(statement)
        while result == SQLITE_ROW {
            rows.append((0..<sqlite3_column_count(statement)).map {
                guard let value = sqlite3_column_text(statement, $0) else { return nil }
                return String(cString: value)
            })
            result = sqlite3_step(statement)
        }
        guard result == SQLITE_DONE else { throw StorageError(code: result, operation: "query") }
        return rows
    }

    func scalar(_ sql: String, _ values: [SQLValue] = []) throws -> String? {
        try query(sql, values).first?.first ?? nil
    }

    func transaction<T>(_ operation: () throws -> T) throws -> T {
        try execute("BEGIN IMMEDIATE")
        do {
            let result = try operation()
            try execute("COMMIT")
            return result
        } catch {
            let originalError = error
            do { try execute("ROLLBACK") }
            catch { throw StorageError(code: SQLITE_ABORT, operation: "rollback") }
            throw originalError
        }
    }

    private func prepare(_ sql: String, _ values: [SQLValue]) throws -> OpaquePointer {
        var statement: OpaquePointer?
        let result = sqlite3_prepare_v2(database, sql, -1, &statement, nil)
        guard result == SQLITE_OK, let statement else { throw StorageError(code: result, operation: "prepare") }
        do {
            for (index, value) in values.enumerated() {
                let i = Int32(index + 1)
                let bound: Int32 = switch value {
                case .text(let string): sqlite3_bind_text(statement, i, string, -1, transient)
                case .integer(let number): sqlite3_bind_int64(statement, i, number)
                case .real(let number): sqlite3_bind_double(statement, i, number)
                case .null: sqlite3_bind_null(statement, i)
                }
                guard bound == SQLITE_OK else { throw StorageError(code: bound, operation: "bind") }
            }
            return statement
        } catch { sqlite3_finalize(statement); throw error }
    }

    private func backup(to url: URL) throws {
        var destination: OpaquePointer?
        guard sqlite3_open_v2(url.path, &destination, SQLITE_OPEN_READWRITE | SQLITE_OPEN_CREATE, nil) == SQLITE_OK else {
            sqlite3_close(destination)
            throw StorageError(code: SQLITE_CANTOPEN, operation: "backup open")
        }
        defer { sqlite3_close(destination) }
        guard let backup = sqlite3_backup_init(destination, "main", database, "main") else {
            throw StorageError(code: SQLITE_ERROR, operation: "backup init")
        }
        let step = sqlite3_backup_step(backup, -1)
        let finish = sqlite3_backup_finish(backup)
        guard step == SQLITE_DONE, finish == SQLITE_OK else {
            throw StorageError(code: step, operation: "backup")
        }
    }
}
