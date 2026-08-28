package com.aiquota.mobile.accounts

import android.content.Context
import android.database.Cursor
import android.database.sqlite.SQLiteDatabase
import android.database.sqlite.SQLiteException
import android.database.sqlite.SQLiteOpenHelper
import com.aiquota.mobile.local.ProviderId
import java.nio.charset.StandardCharsets
import java.util.Locale

internal class AccountAuthorityCatalogException(
    message: String,
    cause: Throwable? = null,
) : SQLiteException(message, cause)

internal class AccountAuthorityDatabase(
    context: Context,
    databaseName: String,
    private val migrationFaultInjector: AccountAuthorityMigrationFaultInjector =
        AccountAuthorityMigrationFaultInjector.NONE,
) : SQLiteOpenHelper(context, databaseName, null, SCHEMA_VERSION) {
    override fun onConfigure(db: SQLiteDatabase) {
        db.setForeignKeyConstraintsEnabled(true)
    }

    override fun onCreate(db: SQLiteDatabase) {
        db.execSQL(
            """
            CREATE TABLE IF NOT EXISTS accounts (
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
            CREATE TABLE IF NOT EXISTS snapshots (
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
            CREATE TABLE IF NOT EXISTS demands (
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
            CREATE TABLE IF NOT EXISTS attempts (
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
            CREATE TABLE IF NOT EXISTS nonce_heads (
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
            CREATE TABLE IF NOT EXISTS published_nonces (
                provider_id TEXT NOT NULL,
                account_key TEXT NOT NULL,
                nonce TEXT NOT NULL,
                PRIMARY KEY(provider_id, account_key, nonce),
                FOREIGN KEY(provider_id, account_key) REFERENCES accounts(provider_id, account_key) ON DELETE CASCADE
            )
            """.trimIndent()
        )
        db.execSQL(
            "CREATE TABLE IF NOT EXISTS authority_metadata (singleton_id INTEGER PRIMARY KEY CHECK(singleton_id = 1), display_version INTEGER NOT NULL CHECK(display_version >= 0))"
        )
        db.execSQL("INSERT OR IGNORE INTO authority_metadata(singleton_id, display_version) VALUES(1, 0)")
        createMigrationTables(db)
        createAccountUsageTables(db)
        createNamedProfileTables(db)
        createProviderCardCatalogTable(db)
        createProviderCardCatalogIndexes(db)
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
        upgradeProviderCardCatalog(db)
    }

    override fun onOpen(db: SQLiteDatabase) {
        super.onOpen(db)
        validateProviderCardCatalog(db)
    }

    private fun upgradeProviderCardCatalog(db: SQLiteDatabase) {
        if (tableExists(db, PROVIDER_CARD_CATALOG_TABLE)) {
            validateProviderCardCatalog(db)
            return
        }

        val rows = readLegacyProviderCardRows(db)
        val activeAliasKeys = linkedSetOf<String>()
        val prepared = rows.map { row ->
            val explicitAlias = row.account.alias?.let(::normalizeAliasForMigration)
            if (row.account.deletionState == AccountDeletionState.NONE && explicitAlias != null) {
                if (!activeAliasKeys.add(explicitAlias.normalizedKey)) {
                    malformedCatalog("Duplicate active provider-card alias")
                }
            }
            LegacyProviderCardRow(row.account, explicitAlias)
        }.map { row ->
            val alias = row.alias ?: allocateLegacyAlias(row.account.id.providerId, activeAliasKeys)
            if (row.account.deletionState == AccountDeletionState.NONE) {
                activeAliasKeys += alias.normalizedKey
            }
            row.copy(alias = alias)
        }
        migrationFaultInjector.after(AccountAuthorityMigrationFaultPoint.LEGACY_ROWS_VALIDATED)

        createProviderCardCatalogTable(db)
        migrationFaultInjector.after(AccountAuthorityMigrationFaultPoint.CATALOG_TABLE_CREATED)

        prepared.forEach { row ->
            db.compileStatement(
                "UPDATE accounts SET alias=? WHERE provider_id=? AND account_key=?"
            ).use { statement ->
                statement.bindString(1, requireNotNull(row.alias).displayValue)
                statement.bindString(2, row.account.id.providerId.storageId)
                statement.bindString(3, row.account.id.accountKey.storageValue())
                if (statement.executeUpdateDelete() != 1) malformedCatalog("Legacy account disappeared")
            }
        }
        migrationFaultInjector.after(AccountAuthorityMigrationFaultPoint.ALIASES_NORMALIZED)

        var activeRank = 0L
        prepared.forEach { row ->
            val rank = if (row.account.deletionState == AccountDeletionState.NONE) activeRank++ else null
            insertProviderCardCatalogMetadata(
                db,
                row.account.id,
                rank,
                requireNotNull(row.alias).normalizedKey,
            )
        }
        migrationFaultInjector.after(AccountAuthorityMigrationFaultPoint.CATALOG_ROWS_WRITTEN)

        createProviderCardCatalogIndexes(db)
        migrationFaultInjector.after(AccountAuthorityMigrationFaultPoint.CATALOG_INDEXES_CREATED)
        validateProviderCardCatalog(db)
        migrationFaultInjector.after(AccountAuthorityMigrationFaultPoint.CATALOG_VALIDATED)
    }

    private fun readLegacyProviderCardRows(db: SQLiteDatabase): List<LegacyProviderCardRow> {
        val rows = buildList {
            db.query("accounts", ACCOUNT_COLUMNS, null, null, null, null, null).use { cursor ->
                while (cursor.moveToNext()) {
                    val account = try {
                        cursor.toAccountRecord()
                    } catch (cause: IllegalArgumentException) {
                        throw AccountAuthorityCatalogException("Malformed legacy account row", cause)
                    }
                    if (cursor.getType(2) != Cursor.FIELD_TYPE_INTEGER ||
                        cursor.getLong(2) != providerRank(account.id.providerId).toLong()
                    ) {
                        malformedCatalog("Malformed legacy provider rank")
                    }
                    add(LegacyProviderCardRow(account, null))
                }
            }
        }
        return rows.sortedWith(
            compareBy<LegacyProviderCardRow>(
                { providerRank(it.account.id.providerId) },
                { it.account.id.providerId.storageId },
                { it.account.id.accountKey.storageValue() },
            )
        )
    }

    private fun createProviderCardCatalogTable(db: SQLiteDatabase) {
        db.execSQL(
            """
            CREATE TABLE IF NOT EXISTS provider_card_catalog (
                provider_id TEXT NOT NULL,
                account_key TEXT NOT NULL,
                active_rank INTEGER CHECK(active_rank IS NULL OR active_rank >= 0),
                alias_normalized_key TEXT NOT NULL CHECK(length(alias_normalized_key) > 0),
                PRIMARY KEY(provider_id, account_key),
                FOREIGN KEY(provider_id, account_key) REFERENCES accounts(provider_id, account_key) ON DELETE CASCADE
            )
            """.trimIndent()
        )
    }

    private fun createProviderCardCatalogIndexes(db: SQLiteDatabase) {
        db.execSQL(
            "CREATE UNIQUE INDEX IF NOT EXISTS provider_card_catalog_active_rank_unique " +
                "ON provider_card_catalog(active_rank) WHERE active_rank IS NOT NULL"
        )
        db.execSQL(
            "CREATE UNIQUE INDEX IF NOT EXISTS provider_card_catalog_active_alias_unique " +
                "ON provider_card_catalog(alias_normalized_key) WHERE active_rank IS NOT NULL"
        )
    }

    private fun validateProviderCardCatalog(db: SQLiteDatabase) {
        validateProviderCardCatalogSchema(db)
        val activeRanks = mutableListOf<Long>()
        val activeAliases = mutableSetOf<String>()
        var accountCount = 0L
        val qualifiedColumns = ACCOUNT_COLUMNS.joinToString(",") { "accounts.$it" }
        db.rawQuery(
            "SELECT $qualifiedColumns,provider_card_catalog.provider_id," +
                "provider_card_catalog.active_rank,provider_card_catalog.alias_normalized_key " +
                "FROM accounts LEFT JOIN provider_card_catalog USING(provider_id,account_key)",
            null,
        ).use { cursor ->
            while (cursor.moveToNext()) {
                accountCount++
                val provider = if (cursor.getType(0) == Cursor.FIELD_TYPE_STRING) {
                    ProviderId.fromStorageId(cursor.getString(0))
                } else {
                    null
                } ?: malformedCatalog("Unknown account provider")
                if (cursor.getType(1) != Cursor.FIELD_TYPE_STRING) {
                    malformedCatalog("Malformed account key")
                }
                try {
                    AccountKey.fromStorage(cursor.getString(1))
                } catch (cause: IllegalArgumentException) {
                    throw AccountAuthorityCatalogException("Malformed account key", cause)
                }
                if (cursor.getType(2) != Cursor.FIELD_TYPE_INTEGER ||
                    cursor.getLong(2) != providerRank(provider).toLong()
                ) {
                    malformedCatalog("Malformed provider rank")
                }
                val state = parseEnumColumn<AccountState>(cursor, 3, "account state")
                val authState = parseEnumColumn<AccountAuthState>(cursor, 4, "account auth state")
                val deletionState = parseEnumColumn<AccountDeletionState>(cursor, 5, "account deletion state")
                val metadataOffset = ACCOUNT_COLUMNS.size
                if (cursor.getType(metadataOffset) != Cursor.FIELD_TYPE_STRING) {
                    malformedCatalog("Provider-card metadata is missing")
                }
                val alias = if (cursor.getType(8) == Cursor.FIELD_TYPE_STRING) {
                    cursor.getString(8)
                } else {
                    malformedCatalog("Provider-card alias is missing")
                }
                val normalized = normalizeAliasForMigration(alias)
                if (normalized.displayValue != alias ||
                    cursor.getType(metadataOffset + 2) != Cursor.FIELD_TYPE_STRING ||
                    cursor.getString(metadataOffset + 2) != normalized.normalizedKey
                ) {
                    malformedCatalog("Provider-card alias metadata is incoherent")
                }
                val rank = when (cursor.getType(metadataOffset + 1)) {
                    Cursor.FIELD_TYPE_NULL -> null
                    Cursor.FIELD_TYPE_INTEGER -> cursor.getLong(metadataOffset + 1)
                    else -> malformedCatalog("Provider-card rank has invalid type")
                }
                val isActive = deletionState == AccountDeletionState.NONE
                if (isActive != (state != AccountState.DELETED)) {
                    malformedCatalog("Account state and deletion state are incoherent")
                }
                if (!isActive && authState != AccountAuthState.SIGNED_OUT) {
                    malformedCatalog("Deleted provider card is not signed out")
                }
                if (isActive) {
                    val activeRank = rank ?: malformedCatalog("Active provider card has no rank")
                    if (activeRank < 0 || activeRank > Int.MAX_VALUE) {
                        malformedCatalog("Active provider-card rank is out of range")
                    }
                    if (!activeAliases.add(normalized.normalizedKey)) {
                        malformedCatalog("Duplicate active provider-card alias")
                    }
                    activeRanks += activeRank
                } else if (rank != null) {
                    malformedCatalog("Deleted provider card consumes an active rank")
                }
            }
        }
        val catalogCount = db.rawQuery(
            "SELECT COUNT(*) FROM provider_card_catalog",
            null,
        ).use { cursor ->
            if (!cursor.moveToFirst() || cursor.getType(0) != Cursor.FIELD_TYPE_INTEGER) {
                malformedCatalog("Provider-card catalog count is malformed")
            }
            cursor.getLong(0)
        }
        if (catalogCount != accountCount) malformedCatalog("Provider-card catalog is not one-to-one")
        if (activeRanks.sorted() != activeRanks.indices.map(Int::toLong)) {
            malformedCatalog("Active provider-card ranks are not contiguous")
        }
    }

    private fun validateProviderCardCatalogSchema(db: SQLiteDatabase) {
        if (!tableExists(db, PROVIDER_CARD_CATALOG_TABLE)) {
            malformedCatalog("Provider-card catalog table is missing")
        }
        val columns = buildList {
            db.rawQuery("PRAGMA table_info(provider_card_catalog)", null).use { cursor ->
                while (cursor.moveToNext()) {
                    add(
                        CatalogColumn(
                            name = cursor.getString(1),
                            type = cursor.getString(2).uppercase(Locale.ROOT),
                            notNull = cursor.getInt(3),
                            primaryKey = cursor.getInt(5),
                        )
                    )
                }
            }
        }
        val expected = listOf(
            CatalogColumn("provider_id", "TEXT", 1, 1),
            CatalogColumn("account_key", "TEXT", 1, 2),
            CatalogColumn("active_rank", "INTEGER", 0, 0),
            CatalogColumn("alias_normalized_key", "TEXT", 1, 0),
        )
        if (columns != expected) malformedCatalog("Provider-card catalog columns are malformed")

        validateProviderCardCatalogIndex(
            db,
            ACTIVE_RANK_INDEX,
            "active_rank",
            "active_rank IS NOT NULL",
        )
        validateProviderCardCatalogIndex(
            db,
            ACTIVE_ALIAS_INDEX,
            "alias_normalized_key",
            "active_rank IS NOT NULL",
        )

        val foreignKeys = buildList {
            db.rawQuery("PRAGMA foreign_key_list(provider_card_catalog)", null).use { cursor ->
                while (cursor.moveToNext()) {
                    add(
                        CatalogForeignKey(
                            id = cursor.getInt(0),
                            sequence = cursor.getInt(1),
                            table = cursor.getString(2),
                            from = cursor.getString(3),
                            to = cursor.getString(4),
                            onUpdate = cursor.getString(5).uppercase(Locale.ROOT),
                            onDelete = cursor.getString(6).uppercase(Locale.ROOT),
                        )
                    )
                }
            }
        }.sortedBy(CatalogForeignKey::sequence)
        if (foreignKeys.size != 2 || foreignKeys.map(CatalogForeignKey::id).distinct().size != 1) {
            malformedCatalog("Provider-card catalog must have one composite foreign key")
        }
        val foreignKeyId = foreignKeys.first().id
        val expectedForeignKeys = listOf(
            CatalogForeignKey(foreignKeyId, 0, "accounts", "provider_id", "provider_id", "NO ACTION", "CASCADE"),
            CatalogForeignKey(foreignKeyId, 1, "accounts", "account_key", "account_key", "NO ACTION", "CASCADE"),
        )
        if (foreignKeys != expectedForeignKeys) {
            malformedCatalog("Provider-card catalog composite foreign key is malformed")
        }
    }

    private fun validateProviderCardCatalogIndex(
        db: SQLiteDatabase,
        name: String,
        column: String,
        predicate: String,
    ) {
        val flags = db.rawQuery("PRAGMA index_list(provider_card_catalog)", null).use { cursor ->
            var found: Pair<Int, Int>? = null
            while (cursor.moveToNext()) {
                if (cursor.getString(1) == name) found = cursor.getInt(2) to cursor.getInt(4)
            }
            found
        }
        if (flags != (1 to 1)) malformedCatalog("Provider-card catalog index $name is missing or malformed")
        val columns = buildList {
            db.rawQuery("PRAGMA index_info($name)", null).use { cursor ->
                while (cursor.moveToNext()) add(cursor.getString(2))
            }
        }
        if (columns != listOf(column)) malformedCatalog("Provider-card catalog index $name has wrong columns")
        val sql = db.rawQuery(
            "SELECT sql FROM sqlite_master WHERE type='index' AND name=?",
            arrayOf(name),
        ).use { cursor ->
            if (!cursor.moveToFirst() || cursor.getType(0) != Cursor.FIELD_TYPE_STRING) {
                malformedCatalog("Provider-card catalog index $name SQL is missing")
            }
            cursor.getString(0)
        }
        val actualPredicate = sql.substringAfter(" WHERE ", "").trim()
            .replace(Regex("\\s+"), " ")
            .uppercase(Locale.ROOT)
        if (actualPredicate != predicate.uppercase(Locale.ROOT)) {
            malformedCatalog("Provider-card catalog index $name has wrong predicate")
        }
    }

    private inline fun <reified T : Enum<T>> parseEnumColumn(
        cursor: Cursor,
        index: Int,
        label: String,
    ): T {
        if (cursor.getType(index) != Cursor.FIELD_TYPE_STRING) malformedCatalog("Malformed $label")
        return try {
            enumValueOf(cursor.getString(index))
        } catch (cause: IllegalArgumentException) {
            throw AccountAuthorityCatalogException("Malformed $label", cause)
        }
    }

    private fun normalizeAliasForMigration(value: String): NormalizedProviderCardAlias = try {
        normalizeProviderCardAlias(value)
    } catch (cause: IllegalArgumentException) {
        throw AccountAuthorityCatalogException("Malformed provider-card alias", cause)
    }

    private fun allocateLegacyAlias(
        providerId: ProviderId,
        activeAliasKeys: Set<String>,
    ): NormalizedProviderCardAlias {
        for (suffix in 1..(activeAliasKeys.size + 1)) {
            val candidate = if (suffix == 1) providerId.displayName else "${providerId.displayName} $suffix"
            val normalized = normalizeAliasForMigration(candidate)
            if (normalized.normalizedKey !in activeAliasKeys) return normalized
        }
        malformedCatalog("Provider-card alias allocation exhausted")
    }

    private fun malformedCatalog(message: String): Nothing =
        throw AccountAuthorityCatalogException(message)

    private data class LegacyProviderCardRow(
        val account: AccountRecord,
        val alias: NormalizedProviderCardAlias?,
    )

    private data class CatalogColumn(
        val name: String,
        val type: String,
        val notNull: Int,
        val primaryKey: Int,
    )

    private data class CatalogForeignKey(
        val id: Int,
        val sequence: Int,
        val table: String,
        val from: String,
        val to: String,
        val onUpdate: String,
        val onDelete: String,
    )

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
            "CREATE TABLE IF NOT EXISTS projection_state (singleton_id INTEGER PRIMARY KEY CHECK(singleton_id = 1), desired_revision INTEGER NOT NULL CHECK(desired_revision >= 0), applied_revision INTEGER NOT NULL CHECK(applied_revision >= 0), aggregate_sha256 TEXT NOT NULL, mirrors_sha256 TEXT NOT NULL, cache_sha256 TEXT NOT NULL)"
        )
        db.execSQL("INSERT OR IGNORE INTO projection_state(singleton_id, desired_revision, applied_revision, aggregate_sha256, mirrors_sha256, cache_sha256) VALUES(1, 0, 0, '${"0".repeat(64)}', '${"0".repeat(64)}', '${"0".repeat(64)}')")
    }

    private fun createMigrationCopyTables(db: SQLiteDatabase) {
        db.execSQL(
            "CREATE TABLE IF NOT EXISTS migration_mirrors (provider_id TEXT NOT NULL, account_key TEXT NOT NULL, receipt_sha256 TEXT NOT NULL, copied_json TEXT NOT NULL, copied_sha256 TEXT NOT NULL, PRIMARY KEY(provider_id, account_key), FOREIGN KEY(provider_id, account_key) REFERENCES accounts(provider_id, account_key) ON DELETE CASCADE)"
        )
        db.execSQL(
            "CREATE TABLE IF NOT EXISTS migration_preferences (provider_id TEXT NOT NULL, account_key TEXT NOT NULL, receipt_sha256 TEXT NOT NULL, copied_json TEXT NOT NULL, copied_sha256 TEXT NOT NULL, PRIMARY KEY(provider_id, account_key), FOREIGN KEY(provider_id, account_key) REFERENCES accounts(provider_id, account_key) ON DELETE CASCADE)"
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
            appendTable(db, "provider_card_catalog", listOf("provider_id", "account_key", "active_rank", "alias_normalized_key"), "active_rank IS NULL, active_rank, provider_id, account_key")
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
        appendFields(db, fields, "provider_card_catalog", listOf("provider_id", "account_key", "active_rank", "alias_normalized_key"), "active_rank IS NULL, active_rank, provider_id, account_key")
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
        private const val PROVIDER_CARD_CATALOG_TABLE = "provider_card_catalog"
        private const val ACTIVE_RANK_INDEX = "provider_card_catalog_active_rank_unique"
        private const val ACTIVE_ALIAS_INDEX = "provider_card_catalog_active_alias_unique"
        const val SCHEMA_VERSION = 7
        const val DEFAULT_DATABASE_NAME = "ai_quota_accounts_v2.db"
    }
}
