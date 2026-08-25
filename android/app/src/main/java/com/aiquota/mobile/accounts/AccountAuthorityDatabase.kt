package com.aiquota.mobile.accounts

import android.content.Context
import android.database.Cursor
import android.database.sqlite.SQLiteDatabase
import android.database.sqlite.SQLiteOpenHelper
import java.nio.charset.StandardCharsets

internal class AccountAuthorityDatabase(
    context: Context,
    databaseName: String
) : SQLiteOpenHelper(context, databaseName, null, SCHEMA_VERSION) {
    override fun onConfigure(db: SQLiteDatabase) {
        db.setForeignKeyConstraintsEnabled(true)
    }

    override fun onCreate(db: SQLiteDatabase) {
        db.execSQL(
            """
            CREATE TABLE accounts (
                provider_id TEXT NOT NULL,
                account_key TEXT NOT NULL,
                provider_rank INTEGER NOT NULL,
                state TEXT NOT NULL,
                auth_state TEXT NOT NULL,
                deletion_state TEXT NOT NULL,
                generation INTEGER NOT NULL CHECK(generation >= 0),
                session_revision INTEGER NOT NULL CHECK(session_revision >= 0),
                alias TEXT,
                organization TEXT,
                remote_identity TEXT,
                modified_version INTEGER NOT NULL CHECK(modified_version >= 0),
                PRIMARY KEY(provider_id, account_key)
            )
            """.trimIndent()
        )
        db.execSQL(
            """
            CREATE TABLE snapshots (
                provider_id TEXT NOT NULL,
                account_key TEXT NOT NULL,
                snapshot_json TEXT NOT NULL,
                display_version INTEGER NOT NULL CHECK(display_version >= 0),
                PRIMARY KEY(provider_id, account_key),
                FOREIGN KEY(provider_id, account_key) REFERENCES accounts(provider_id, account_key) ON DELETE CASCADE
            )
            """.trimIndent()
        )
        db.execSQL(
            """
            CREATE TABLE demands (
                provider_id TEXT NOT NULL,
                account_key TEXT NOT NULL,
                demand_mask INTEGER NOT NULL CHECK(demand_mask >= 0),
                PRIMARY KEY(provider_id, account_key),
                FOREIGN KEY(provider_id, account_key) REFERENCES accounts(provider_id, account_key) ON DELETE CASCADE
            )
            """.trimIndent()
        )
        db.execSQL(
            """
            CREATE TABLE attempts (
                provider_id TEXT NOT NULL,
                account_key TEXT NOT NULL,
                generation INTEGER NOT NULL CHECK(generation >= 0),
                session_revision INTEGER NOT NULL CHECK(session_revision >= 0),
                active_nonce TEXT,
                PRIMARY KEY(provider_id, account_key),
                FOREIGN KEY(provider_id, account_key) REFERENCES accounts(provider_id, account_key) ON DELETE CASCADE
            )
            """.trimIndent()
        )
        db.execSQL(
            """
            CREATE TABLE nonce_heads (
                provider_id TEXT NOT NULL,
                account_key TEXT NOT NULL,
                last_nonce TEXT,
                PRIMARY KEY(provider_id, account_key),
                FOREIGN KEY(provider_id, account_key) REFERENCES accounts(provider_id, account_key) ON DELETE CASCADE
            )
            """.trimIndent()
        )
        db.execSQL(
            """
            CREATE TABLE published_nonces (
                provider_id TEXT NOT NULL,
                account_key TEXT NOT NULL,
                nonce TEXT NOT NULL,
                PRIMARY KEY(provider_id, account_key, nonce),
                FOREIGN KEY(provider_id, account_key) REFERENCES accounts(provider_id, account_key) ON DELETE CASCADE
            )
            """.trimIndent()
        )
        db.execSQL(
            "CREATE TABLE authority_metadata (singleton_id INTEGER PRIMARY KEY CHECK(singleton_id = 1), display_version INTEGER NOT NULL CHECK(display_version >= 0))"
        )
        db.execSQL("INSERT INTO authority_metadata(singleton_id, display_version) VALUES(1, 0)")
        createMigrationTables(db)
    }

    override fun onUpgrade(db: SQLiteDatabase, oldVersion: Int, newVersion: Int) {
        when {
            oldVersion == 1 && newVersion == 3 -> createMigrationTables(db)
            oldVersion == 2 && newVersion == 3 -> {
                db.execSQL("ALTER TABLE migration_mirrors ADD COLUMN copied_json TEXT NOT NULL DEFAULT ''")
                db.execSQL("ALTER TABLE migration_mirrors ADD COLUMN copied_sha256 TEXT NOT NULL DEFAULT ''")
                db.execSQL("ALTER TABLE migration_preferences ADD COLUMN copied_json TEXT NOT NULL DEFAULT ''")
                db.execSQL("ALTER TABLE migration_preferences ADD COLUMN copied_sha256 TEXT NOT NULL DEFAULT ''")
            }
            else -> error("Unsupported account authority schema upgrade $oldVersion to $newVersion")
        }
    }

    private fun createMigrationTables(db: SQLiteDatabase) {
        db.execSQL(
            "CREATE TABLE migration_mirrors (provider_id TEXT NOT NULL, account_key TEXT NOT NULL, receipt_sha256 TEXT NOT NULL, copied_json TEXT NOT NULL, copied_sha256 TEXT NOT NULL, PRIMARY KEY(provider_id, account_key), FOREIGN KEY(provider_id, account_key) REFERENCES accounts(provider_id, account_key) ON DELETE CASCADE)"
        )
        db.execSQL(
            "CREATE TABLE migration_preferences (provider_id TEXT NOT NULL, account_key TEXT NOT NULL, receipt_sha256 TEXT NOT NULL, copied_json TEXT NOT NULL, copied_sha256 TEXT NOT NULL, PRIMARY KEY(provider_id, account_key), FOREIGN KEY(provider_id, account_key) REFERENCES accounts(provider_id, account_key) ON DELETE CASCADE)"
        )
        db.execSQL(
            "CREATE TABLE projection_state (singleton_id INTEGER PRIMARY KEY CHECK(singleton_id = 1), desired_revision INTEGER NOT NULL CHECK(desired_revision >= 0), applied_revision INTEGER NOT NULL CHECK(applied_revision >= 0), aggregate_sha256 TEXT NOT NULL, mirrors_sha256 TEXT NOT NULL, cache_sha256 TEXT NOT NULL)"
        )
        db.execSQL("INSERT INTO projection_state(singleton_id, desired_revision, applied_revision, aggregate_sha256, mirrors_sha256, cache_sha256) VALUES(1, 0, 0, '${"0".repeat(64)}', '${"0".repeat(64)}', '${"0".repeat(64)}')")
    }

    fun canonicalDump(): ByteArray {
        val db = readableDatabase
        val dump = buildString {
            appendTable(db, "authority_metadata", listOf("singleton_id", "display_version"), "singleton_id")
            appendTable(
                db,
                "accounts",
                listOf(
                    "provider_id", "account_key", "provider_rank", "state", "auth_state", "deletion_state",
                    "generation", "session_revision", "alias", "organization", "remote_identity", "modified_version"
                ),
                "provider_rank, account_key"
            )
            appendTable(db, "snapshots", listOf("provider_id", "account_key", "snapshot_json", "display_version"), "provider_id, account_key")
            appendTable(db, "demands", listOf("provider_id", "account_key", "demand_mask"), "provider_id, account_key")
            appendTable(db, "attempts", listOf("provider_id", "account_key", "generation", "session_revision", "active_nonce"), "provider_id, account_key")
            appendTable(db, "nonce_heads", listOf("provider_id", "account_key", "last_nonce"), "provider_id, account_key")
            appendTable(db, "published_nonces", listOf("provider_id", "account_key", "nonce"), "provider_id, account_key, nonce")
            appendTable(db, "migration_mirrors", listOf("provider_id", "account_key", "receipt_sha256", "copied_json", "copied_sha256"), "provider_id, account_key")
            appendTable(db, "migration_preferences", listOf("provider_id", "account_key", "receipt_sha256", "copied_json", "copied_sha256"), "provider_id, account_key")
            appendTable(db, "projection_state", listOf("singleton_id", "desired_revision", "applied_revision", "aggregate_sha256", "mirrors_sha256", "cache_sha256"), "singleton_id")
        }
        return dump.toByteArray(StandardCharsets.UTF_8)
    }

    fun canonicalLogicalFields(): Map<String, String> {
        val db = readableDatabase
        val fields = linkedMapOf<String, String>()
        appendFields(db, fields, "authority_metadata", listOf("singleton_id", "display_version"), "singleton_id")
        appendFields(
            db, fields, "accounts",
            listOf(
                "provider_id", "account_key", "provider_rank", "state", "auth_state", "deletion_state",
                "generation", "session_revision", "alias", "organization", "remote_identity", "modified_version"
            ),
            "provider_rank, account_key"
        )
        appendFields(db, fields, "snapshots", listOf("provider_id", "account_key", "snapshot_json", "display_version"), "provider_id, account_key")
        appendFields(db, fields, "demands", listOf("provider_id", "account_key", "demand_mask"), "provider_id, account_key")
        appendFields(db, fields, "attempts", listOf("provider_id", "account_key", "generation", "session_revision", "active_nonce"), "provider_id, account_key")
        appendFields(db, fields, "nonce_heads", listOf("provider_id", "account_key", "last_nonce"), "provider_id, account_key")
        appendFields(db, fields, "published_nonces", listOf("provider_id", "account_key", "nonce"), "provider_id, account_key, nonce")
        appendFields(db, fields, "migration_mirrors", listOf("provider_id", "account_key", "receipt_sha256", "copied_json", "copied_sha256"), "provider_id, account_key")
        appendFields(db, fields, "migration_preferences", listOf("provider_id", "account_key", "receipt_sha256", "copied_json", "copied_sha256"), "provider_id, account_key")
        appendFields(db, fields, "projection_state", listOf("singleton_id", "desired_revision", "applied_revision", "aggregate_sha256", "mirrors_sha256", "cache_sha256"), "singleton_id")
        return fields
    }

    private fun appendFields(
        db: SQLiteDatabase,
        output: MutableMap<String, String>,
        table: String,
        columns: List<String>,
        orderBy: String
    ) {
        db.query(table, columns.toTypedArray(), null, null, null, null, orderBy).use { cursor ->
            var row = 0
            while (cursor.moveToNext()) {
                columns.forEachIndexed { index, column ->
                    output["$table[$row].$column"] = when (cursor.getType(index)) {
                        Cursor.FIELD_TYPE_NULL -> "N"
                        Cursor.FIELD_TYPE_INTEGER -> "I${cursor.getLong(index)}"
                        Cursor.FIELD_TYPE_STRING -> "S${cursor.getString(index)}"
                        else -> error("Unexpected SQLite type in canonical authority fields")
                    }
                }
                row++
            }
        }
    }

    private fun StringBuilder.appendTable(
        db: SQLiteDatabase,
        table: String,
        columns: List<String>,
        orderBy: String
    ) {
        append('[').append(table).append("]\n")
        db.query(table, columns.toTypedArray(), null, null, null, null, orderBy).use { cursor ->
            while (cursor.moveToNext()) {
                columns.indices.forEach { index ->
                    when (cursor.getType(index)) {
                        Cursor.FIELD_TYPE_NULL -> append("N;")
                        Cursor.FIELD_TYPE_INTEGER -> append('I').append(cursor.getLong(index)).append(';')
                        Cursor.FIELD_TYPE_STRING -> {
                            val value = cursor.getString(index)
                            append('S').append(value.length).append(':').append(value).append(';')
                        }
                        else -> error("Unexpected SQLite type in canonical authority dump")
                    }
                }
                append('\n')
            }
        }
    }

    private companion object {
        const val SCHEMA_VERSION = 3
    }
}
