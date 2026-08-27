package com.aiquota.mobile.accounts

import android.content.Context
import android.database.Cursor
import android.database.sqlite.SQLiteDatabase
import android.database.sqlite.SQLiteException
import android.database.sqlite.SQLiteOpenHelper
import com.aiquota.mobile.local.ProviderId
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
        createAccountUsageTables(db)
        createNamedProfileTables(db)
    }

    override fun onUpgrade(db: SQLiteDatabase, oldVersion: Int, newVersion: Int) {
        if (newVersion != SCHEMA_VERSION || oldVersion !in 1 until SCHEMA_VERSION) {
            error("Unsupported account authority schema upgrade $oldVersion to $newVersion")
        }
        if (oldVersion == 1) {
            createMigrationTables(db)
        } else if (oldVersion == 2) {
            upgradeReceiptOnlyMigrationTables(db)
        }
        createAccountUsageTables(db)
        if (oldVersion == 4) backfillParentPrimarySelections(db)
        if (tableExists(db, "named_profile_lifecycle")) validateNamedProfileTable(db)
        createNamedProfileTables(db)
    }

    private fun tableExists(db: SQLiteDatabase, table: String): Boolean =
        db.rawQuery(
                "SELECT 1 FROM sqlite_master WHERE type='table' AND name=?",
                arrayOf(table),
            )
            .use { it.moveToFirst() }

    private fun validateNamedProfileTable(db: SQLiteDatabase) {
        val columns = buildList {
            db.rawQuery("PRAGMA table_info(named_profile_lifecycle)", null).use { cursor ->
                while (cursor.moveToNext()) {
                    add(
                        listOf(
                            cursor.getString(1),
                            cursor.getString(2).uppercase(),
                            cursor.getInt(3).toString(),
                            cursor.getInt(5).toString(),
                        )
                    )
                }
            }
        }
        val expected =
            listOf(
                listOf("provider_id", "TEXT", "1", "1"),
                listOf("account_key", "TEXT", "1", "2"),
                listOf("profile_name", "TEXT", "1", "0"),
                listOf("lifecycle_state", "TEXT", "1", "0"),
                listOf("receipt_disposition", "TEXT", "0", "0"),
            )
        val sql =
            db.rawQuery(
                    "SELECT sql FROM sqlite_master WHERE type='table' AND name='named_profile_lifecycle'",
                    null,
                )
                .use { cursor ->
                    if (!cursor.moveToFirst() || cursor.getType(0) != Cursor.FIELD_TYPE_STRING)
                        throw SQLiteException("Malformed named profile lifecycle table")
                    cursor.getString(0).uppercase()
                }
        if (
            columns != expected ||
                "PROFILE_NAME TEXT NOT NULL UNIQUE" !in sql ||
                "CONTAINER_RETAINED_EMPTY_NEVER_REUSED" !in sql ||
                "DATA_ERASURE_COMPLETED_CONTAINER_RETAINED" !in sql
        ) {
            throw SQLiteException("Malformed named profile lifecycle table")
        }
    }

    private fun backfillParentPrimarySelections(db: SQLiteDatabase) {
        val currentVersion = readParentAuthorityDisplayVersion(db)
        if (!hasCompleteParentProjectionAuthority(db, currentVersion)) return
        db.compileStatement(
            """
            INSERT INTO account_usage_primary(provider_id, account_key)
            SELECT targets.provider_id, ?
            FROM account_usage_projection_targets AS targets
            WHERE targets.target_sha256 = ?
              AND NOT EXISTS (
                  SELECT 1 FROM account_usage_primary AS primary_selection
                  WHERE primary_selection.provider_id = targets.provider_id
              )
            ORDER BY targets.provider_id
            """.trimIndent()
        ).use { statement ->
            statement.bindString(1, ACCOUNT_USAGE_PRIMARY_NONE)
            statement.bindString(2, ACCOUNT_USAGE_ABSENT_SHA256)
            statement.executeInsert()
        }
    }

    private fun readParentAuthorityDisplayVersion(db: SQLiteDatabase): Long = db.rawQuery(
        "SELECT singleton_id, display_version FROM authority_metadata",
        null
    ).use { cursor ->
        if (!cursor.moveToFirst() ||
            cursor.getType(0) != Cursor.FIELD_TYPE_INTEGER ||
            cursor.getLong(0) != 1L ||
            cursor.getType(1) != Cursor.FIELD_TYPE_INTEGER
        ) {
            incoherentParentProjectionAuthority()
        }
        val version = cursor.getLong(1)
        if (version < 0 || cursor.moveToNext()) incoherentParentProjectionAuthority()
        version
    }

    private fun hasCompleteParentProjectionAuthority(
        db: SQLiteDatabase,
        currentVersion: Long
    ): Boolean {
        db.rawQuery(
            "SELECT singleton_id, authority_version, claude_sha256, codex_sha256 " +
                "FROM account_usage_projection_intent",
            null
        ).use { cursor ->
            if (cursor.moveToFirst()) incoherentParentProjectionAuthority()
        }
        val targets = buildList {
            db.rawQuery(
                "SELECT provider_id, target_sha256, authority_version " +
                    "FROM account_usage_projection_targets",
                null
            ).use { cursor ->
                while (cursor.moveToNext()) {
                    if (cursor.getType(0) != Cursor.FIELD_TYPE_STRING ||
                        cursor.getType(1) != Cursor.FIELD_TYPE_STRING ||
                        cursor.getType(2) != Cursor.FIELD_TYPE_INTEGER
                    ) {
                        incoherentParentProjectionAuthority()
                    }
                    val provider = cursor.getString(0)
                    val target = cursor.getString(1)
                    val version = cursor.getLong(2)
                    if (provider !in ACCOUNT_USAGE_TARGET_PROVIDER_IDS ||
                        !SHA256_PATTERN.matches(target) ||
                        version < 0
                    ) {
                        incoherentParentProjectionAuthority()
                    }
                    add(RawAccountUsageProjectionTarget(provider, target, version))
                }
            }
        }
        if (targets.isEmpty()) return false
        if (targets.size != ACCOUNT_USAGE_TARGET_PROVIDER_IDS.size ||
            targets.map { it.providerId }.toSet() != ACCOUNT_USAGE_TARGET_PROVIDER_IDS ||
            targets.map { it.authorityVersion }.distinct().size != 1
        ) {
            incoherentParentProjectionAuthority()
        }
        if (targets.first().authorityVersion > currentVersion) incoherentParentProjectionAuthority()
        return true
    }

    private fun incoherentParentProjectionAuthority(): Nothing =
        throw SQLiteException("Incoherent account usage projection authority")

    private data class RawAccountUsageProjectionTarget(
        val providerId: String,
        val targetSha256: String,
        val authorityVersion: Long
    )

    private fun upgradeReceiptOnlyMigrationTables(db: SQLiteDatabase) {
        listOf("migration_mirrors", "migration_preferences").forEach { table ->
            db.execSQL("ALTER TABLE $table RENAME TO ${table}_v2")
        }
        createMigrationCopyTables(db)
        listOf("migration_mirrors", "migration_preferences").forEach { table ->
            db.execSQL(
                "INSERT INTO $table(provider_id,account_key,receipt_sha256,copied_json,copied_sha256) " +
                    "SELECT provider_id,account_key,receipt_sha256,'','' FROM ${table}_v2"
            )
            db.execSQL("DROP TABLE ${table}_v2")
        }
    }

    private fun createMigrationTables(db: SQLiteDatabase) {
        createMigrationCopyTables(db)
        db.execSQL(
            "CREATE TABLE projection_state (singleton_id INTEGER PRIMARY KEY CHECK(singleton_id = 1), desired_revision INTEGER NOT NULL CHECK(desired_revision >= 0), applied_revision INTEGER NOT NULL CHECK(applied_revision >= 0), aggregate_sha256 TEXT NOT NULL, mirrors_sha256 TEXT NOT NULL, cache_sha256 TEXT NOT NULL)"
        )
        db.execSQL("INSERT INTO projection_state(singleton_id, desired_revision, applied_revision, aggregate_sha256, mirrors_sha256, cache_sha256) VALUES(1, 0, 0, '${"0".repeat(64)}', '${"0".repeat(64)}', '${"0".repeat(64)}')")
    }

    private fun createMigrationCopyTables(db: SQLiteDatabase) {
        db.execSQL(
            "CREATE TABLE migration_mirrors (provider_id TEXT NOT NULL, account_key TEXT NOT NULL, receipt_sha256 TEXT NOT NULL, copied_json TEXT NOT NULL, copied_sha256 TEXT NOT NULL, PRIMARY KEY(provider_id, account_key), FOREIGN KEY(provider_id, account_key) REFERENCES accounts(provider_id, account_key) ON DELETE CASCADE)"
        )
        db.execSQL(
            "CREATE TABLE migration_preferences (provider_id TEXT NOT NULL, account_key TEXT NOT NULL, receipt_sha256 TEXT NOT NULL, copied_json TEXT NOT NULL, copied_sha256 TEXT NOT NULL, PRIMARY KEY(provider_id, account_key), FOREIGN KEY(provider_id, account_key) REFERENCES accounts(provider_id, account_key) ON DELETE CASCADE)"
        )
    }

    private fun createAccountUsageTables(db: SQLiteDatabase) {
        db.execSQL(
            "CREATE TABLE IF NOT EXISTS account_usage_primary (provider_id TEXT PRIMARY KEY, account_key TEXT NOT NULL)"
        )
        db.execSQL(
            "CREATE TABLE IF NOT EXISTS account_usage_projection_targets (provider_id TEXT PRIMARY KEY, target_sha256 TEXT NOT NULL, authority_version INTEGER NOT NULL CHECK(authority_version >= 0))"
        )
        db.execSQL(
            "CREATE TABLE IF NOT EXISTS account_usage_projection_intent (singleton_id INTEGER PRIMARY KEY CHECK(singleton_id = 1), authority_version INTEGER NOT NULL CHECK(authority_version >= 0), claude_sha256 TEXT NOT NULL, codex_sha256 TEXT NOT NULL)"
        )
        db.execSQL(
            "CREATE TABLE IF NOT EXISTS legacy_usage_conflicts (receipt_sha256 TEXT PRIMARY KEY, provider_id TEXT NOT NULL, observed_sha256 TEXT NOT NULL, expected_sha256 TEXT NOT NULL, authority_version INTEGER NOT NULL CHECK(authority_version >= 0))"
        )
    }

    private fun createNamedProfileTables(db: SQLiteDatabase) {
        db.execSQL("""
            CREATE TABLE IF NOT EXISTS named_profile_lifecycle (
              provider_id TEXT NOT NULL, account_key TEXT NOT NULL,
              profile_name TEXT NOT NULL UNIQUE,
              lifecycle_state TEXT NOT NULL CHECK(lifecycle_state IN ('ACTIVE','ERASURE_PENDING','DATA_ERASURE_COMPLETED_CONTAINER_RETAINED')),
              receipt_disposition TEXT CHECK(receipt_disposition IS NULL OR receipt_disposition='CONTAINER_RETAINED_EMPTY_NEVER_REUSED'),
              CHECK((lifecycle_state IN ('ACTIVE','ERASURE_PENDING') AND receipt_disposition IS NULL) OR
                    (lifecycle_state='DATA_ERASURE_COMPLETED_CONTAINER_RETAINED' AND receipt_disposition='CONTAINER_RETAINED_EMPTY_NEVER_REUSED')),
              PRIMARY KEY(provider_id,account_key)
            )
        """.trimIndent())
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
            appendTable(db, "account_usage_primary", listOf("provider_id", "account_key"), "provider_id")
            appendTable(db, "account_usage_projection_targets", listOf("provider_id", "target_sha256", "authority_version"), "provider_id")
            appendTable(db, "account_usage_projection_intent", listOf("singleton_id", "authority_version", "claude_sha256", "codex_sha256"), "singleton_id")
            appendTable(db, "legacy_usage_conflicts", listOf("receipt_sha256", "provider_id", "observed_sha256", "expected_sha256", "authority_version"), "provider_id, receipt_sha256")
            appendTable(db, "named_profile_lifecycle", listOf("provider_id","account_key","profile_name","lifecycle_state","receipt_disposition"), "provider_id,account_key")
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
        appendFields(db, fields, "account_usage_primary", listOf("provider_id", "account_key"), "provider_id")
        appendFields(db, fields, "account_usage_projection_targets", listOf("provider_id", "target_sha256", "authority_version"), "provider_id")
        appendFields(db, fields, "account_usage_projection_intent", listOf("singleton_id", "authority_version", "claude_sha256", "codex_sha256"), "singleton_id")
        appendFields(db, fields, "legacy_usage_conflicts", listOf("receipt_sha256", "provider_id", "observed_sha256", "expected_sha256", "authority_version"), "provider_id, receipt_sha256")
        appendFields(db, fields, "named_profile_lifecycle", listOf("provider_id","account_key","profile_name","lifecycle_state","receipt_disposition"), "provider_id,account_key")
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

    internal companion object {
        val ACCOUNT_USAGE_TARGET_PROVIDER_IDS = setOf(
            ProviderId.CLAUDE.storageId,
            ProviderId.CODEX.storageId
        )
        const val SCHEMA_VERSION = 6
        const val DEFAULT_DATABASE_NAME = "ai_quota_accounts_v2.db"
    }
}
