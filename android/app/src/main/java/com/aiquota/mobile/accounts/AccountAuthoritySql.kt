package com.aiquota.mobile.accounts

import android.database.Cursor
import android.database.sqlite.SQLiteDatabase
import android.database.sqlite.SQLiteStatement
import com.aiquota.mobile.local.ProviderId
import com.aiquota.mobile.local.ProviderUsageSnapshot
import com.aiquota.mobile.providers.ProviderSnapshotCodec

internal data class NormalizedProviderCardAlias(
    val displayValue: String,
    val normalizedKey: String,
)

internal fun normalizeProviderCardAlias(value: String): NormalizedProviderCardAlias =
    when (val validation = validateProviderCardAlias(value)) {
        is ProviderCardAliasValidation.Valid -> validation.alias
        is ProviderCardAliasValidation.Invalid -> throw IllegalArgumentException(
            "Invalid provider-card alias: ${validation.reason.name}"
        )
    }

internal val ACCOUNT_COLUMNS = arrayOf(
    "provider_id",
    "account_key",
    "provider_rank",
    "state",
    "auth_state",
    "deletion_state",
    "generation",
    "session_revision",
    "alias",
    "organization",
    "remote_identity",
    "modified_version"
)

internal fun insertAccount(db: SQLiteDatabase, account: AccountRecord): AccountRecord {
    val alias = account.alias?.let(::normalizeProviderCardAlias)
        ?: allocateProviderCardAlias(db, account.id.providerId)
    val storedAccount = account.copy(alias = alias.displayValue)
    db.compileStatement(
        """
        INSERT INTO accounts(
            provider_id, account_key, provider_rank, state, auth_state, deletion_state,
            generation, session_revision, alias, organization, remote_identity, modified_version
        ) VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)
        """.trimIndent()
    ).use { statement ->
        statement.bindString(1, storedAccount.id.providerId.storageId)
        statement.bindString(2, storedAccount.id.accountKey.storageValue())
        statement.bindLong(3, providerRank(storedAccount.id.providerId).toLong())
        statement.bindString(4, storedAccount.state.name)
        statement.bindString(5, storedAccount.authState.name)
        statement.bindString(6, storedAccount.deletionState.name)
        statement.bindLong(7, storedAccount.generation.value)
        statement.bindLong(8, storedAccount.sessionRevision.value)
        statement.bindString(9, alias.displayValue)
        statement.bindNullableString(10, storedAccount.organization)
        statement.bindNullableString(11, storedAccount.remoteIdentity)
        statement.bindLong(12, storedAccount.modifiedVersion.value)
        check(statement.executeInsert() != -1L) { "Failed to insert account" }
    }
    val activeRank = db.rawQuery(
        "SELECT COUNT(*) FROM provider_card_catalog WHERE active_rank IS NOT NULL",
        null,
    ).use { cursor ->
        check(cursor.moveToFirst())
        cursor.getLong(0)
    }
    insertProviderCardCatalogMetadata(db, storedAccount.id, activeRank, alias.normalizedKey)
    return storedAccount
}

internal fun insertProviderCardCatalogMetadata(
    db: SQLiteDatabase,
    id: ProviderAccountId,
    activeRank: Long?,
    aliasNormalizedKey: String,
) {
    db.compileStatement(
        "INSERT INTO provider_card_catalog(provider_id,account_key,active_rank,alias_normalized_key) " +
            "VALUES(?,?,?,?)"
    ).use { statement ->
        statement.bindAccountId(1, id)
        if (activeRank == null) statement.bindNull(3) else statement.bindLong(3, activeRank)
        statement.bindString(4, aliasNormalizedKey)
        check(statement.executeInsert() != -1L) { "Failed to insert provider-card metadata" }
    }
}

internal fun activeProviderCardCount(db: SQLiteDatabase, providerId: ProviderId): Long =
    db.rawQuery(
        "SELECT COUNT(*) FROM provider_card_catalog " +
            "WHERE provider_id=? AND active_rank IS NOT NULL",
        arrayOf(providerId.storageId),
    ).use { cursor ->
        check(cursor.moveToFirst())
        cursor.getLong(0)
    }

internal fun activeProviderCardTotalCount(db: SQLiteDatabase): Long =
    db.rawQuery(
        "SELECT COUNT(*) FROM provider_card_catalog WHERE active_rank IS NOT NULL",
        null,
    ).use { cursor ->
        check(cursor.moveToFirst())
        cursor.getLong(0)
    }

internal fun activeProviderCardAliasExists(db: SQLiteDatabase, normalizedKey: String): Boolean =
    db.rawQuery(
        "SELECT 1 FROM provider_card_catalog " +
            "WHERE active_rank IS NOT NULL AND alias_normalized_key=? LIMIT 1",
        arrayOf(normalizedKey),
    ).use(Cursor::moveToFirst)

internal fun activeProviderCardAliasExists(
    db: SQLiteDatabase,
    normalizedKey: String,
    excluding: ProviderAccountId,
): Boolean = db.rawQuery(
    "SELECT 1 FROM provider_card_catalog " +
        "WHERE active_rank IS NOT NULL AND alias_normalized_key=? " +
        "AND NOT (provider_id=? AND account_key=?) LIMIT 1",
    arrayOf(
        normalizedKey,
        excluding.providerId.storageId,
        excluding.accountKey.storageValue(),
    ),
).use(Cursor::moveToFirst)

internal fun updateAccountAlias(
    db: SQLiteDatabase,
    accountId: ProviderAccountId,
    alias: NormalizedProviderCardAlias,
    version: DisplayVersion,
) {
    db.compileStatement(
        "UPDATE accounts SET alias=?,modified_version=? WHERE provider_id=? AND account_key=?"
    ).use { statement ->
        statement.bindString(1, alias.displayValue)
        statement.bindLong(2, version.value)
        statement.bindAccountId(3, accountId)
        check(statement.executeUpdateDelete() == 1) { "Account disappeared during rename" }
    }
    db.compileStatement(
        "UPDATE provider_card_catalog SET alias_normalized_key=? WHERE provider_id=? AND account_key=?"
    ).use { statement ->
        statement.bindString(1, alias.normalizedKey)
        statement.bindAccountId(2, accountId)
        check(statement.executeUpdateDelete() == 1) { "Provider-card metadata disappeared during rename" }
    }
}

internal fun reactivateProviderCard(
    db: SQLiteDatabase,
    account: AccountRecord,
    activeRank: Long,
    alias: NormalizedProviderCardAlias,
) {
    db.compileStatement(
        "UPDATE accounts SET state='ACTIVE',auth_state='SIGNED_OUT',deletion_state='NONE'," +
            "generation=?,session_revision=?,alias=?,organization=NULL,remote_identity=NULL,modified_version=? " +
            "WHERE provider_id=? AND account_key=? AND deletion_state='ERASED'"
    ).use { statement ->
        statement.bindLong(1, account.generation.value)
        statement.bindLong(2, account.sessionRevision.value)
        statement.bindString(3, alias.displayValue)
        statement.bindLong(4, account.modifiedVersion.value)
        statement.bindAccountId(5, account.id)
        check(statement.executeUpdateDelete() == 1) { "Deleted account disappeared during reactivation" }
    }
    db.compileStatement(
        "UPDATE provider_card_catalog SET active_rank=?,alias_normalized_key=? " +
            "WHERE provider_id=? AND account_key=?"
    ).use { statement ->
        statement.bindLong(1, activeRank)
        statement.bindString(2, alias.normalizedKey)
        statement.bindAccountId(3, account.id)
        check(statement.executeUpdateDelete() == 1) { "Provider-card metadata disappeared during reactivation" }
    }
    listOf("snapshots", "demands", "attempts", "nonce_heads", "published_nonces").forEach { table ->
        db.delete(
            table,
            "provider_id=? AND account_key=?",
            arrayOf(account.id.providerId.storageId, account.id.accountKey.storageValue()),
        )
    }
    check(
        db.delete(
            "provider_card_deletion_journal",
            "provider_id=? AND account_key=?",
            arrayOf(account.id.providerId.storageId, account.id.accountKey.storageValue()),
        ) == 1
    ) { "Deleted account journal disappeared during reactivation" }
}

internal fun allocateProviderCardAlias(
    db: SQLiteDatabase,
    providerId: ProviderId,
): NormalizedProviderCardAlias {
    val activeAliasCount = db.rawQuery(
        "SELECT COUNT(*) FROM provider_card_catalog WHERE active_rank IS NOT NULL",
        null,
    ).use { cursor ->
        check(cursor.moveToFirst())
        cursor.getLong(0)
    }
    check(activeAliasCount < Long.MAX_VALUE) { "Provider-card alias allocation exhausted" }
    val base = normalizeProviderCardAlias(providerId.displayName)
    val suffix = db.rawQuery(
        """
        WITH base(value) AS (VALUES(?)),
        used(suffix) AS (
            SELECT 1
            FROM provider_card_catalog, base
            WHERE active_rank IS NOT NULL AND alias_normalized_key = base.value
            UNION ALL
            SELECT CAST(substr(alias_normalized_key, length(base.value) + 2) AS INTEGER)
            FROM provider_card_catalog, base
            WHERE active_rank IS NOT NULL
              AND alias_normalized_key GLOB base.value || ' [0-9]*'
              AND CAST(substr(alias_normalized_key, length(base.value) + 2) AS INTEGER) >= 2
              AND alias_normalized_key = base.value || ' ' ||
                  CAST(CAST(substr(alias_normalized_key, length(base.value) + 2) AS INTEGER) AS TEXT)
        ),
        ordered(suffix, previous) AS (
            SELECT suffix, lag(suffix, 1, 0) OVER (ORDER BY suffix) FROM used
        )
        SELECT coalesce(
            (SELECT previous + 1 FROM ordered WHERE suffix > previous + 1 ORDER BY suffix LIMIT 1),
            (SELECT coalesce(max(suffix), 0) + 1 FROM used)
        )
        """.trimIndent(),
        arrayOf(base.normalizedKey),
    ).use { cursor ->
        check(cursor.moveToFirst()) { "Provider-card alias allocation exhausted" }
        cursor.getLong(0)
    }
    check(suffix in 1L..(activeAliasCount + 1)) { "Provider-card alias allocation exceeded its bound" }
    val displayValue = if (suffix == 1L) providerId.displayName else "${providerId.displayName} $suffix"
    return normalizeProviderCardAlias(displayValue)
}

internal fun updateAccountVersion(db: SQLiteDatabase, id: ProviderAccountId, version: DisplayVersion) {
    db.compileStatement(
        "UPDATE accounts SET modified_version = ? WHERE provider_id = ? AND account_key = ?"
    ).use { statement ->
        statement.bindLong(1, version.value)
        statement.bindAccountId(2, id)
        check(statement.executeUpdateDelete() == 1) { "Account disappeared during transaction" }
    }
}

internal fun updateAccountReauthenticationState(db: SQLiteDatabase, account: AccountRecord) {
    db.compileStatement(
        "UPDATE accounts SET auth_state = ?, session_revision = ?, modified_version = ? WHERE provider_id = ? AND account_key = ?"
    ).use { statement ->
        statement.bindString(1, account.authState.name)
        statement.bindLong(2, account.sessionRevision.value)
        statement.bindLong(3, account.modifiedVersion.value)
        statement.bindAccountId(4, account.id)
        check(statement.executeUpdateDelete() == 1) { "Account disappeared during transaction" }
    }
}

internal fun writeSnapshot(
    db: SQLiteDatabase,
    id: ProviderAccountId,
    snapshot: ProviderUsageSnapshot,
    version: DisplayVersion
) {
    require(id.providerId == snapshot.providerId) { "Snapshot provider does not match account" }
    db.compileStatement(
        "INSERT OR REPLACE INTO snapshots(provider_id, account_key, snapshot_json, display_version) VALUES(?, ?, ?, ?)"
    ).use { statement ->
        statement.bindAccountId(1, id)
        statement.bindString(3, ProviderSnapshotCodec.encode(listOf(snapshot)))
        statement.bindLong(4, version.value)
        check(statement.executeInsert() != -1L) { "Failed to write account snapshot" }
    }
}

internal fun writeDemand(db: SQLiteDatabase, id: ProviderAccountId, demand: AccountDemandSet) {
    db.compileStatement(
        "INSERT OR REPLACE INTO demands(provider_id, account_key, demand_mask) VALUES(?, ?, ?)"
    ).use { statement ->
        statement.bindAccountId(1, id)
        statement.bindLong(3, demand.mask.toLong())
        check(statement.executeInsert() != -1L) { "Failed to write account demand" }
    }
}

internal fun writeAttempt(
    db: SQLiteDatabase,
    id: ProviderAccountId,
    generation: AccountGeneration,
    sessionRevision: SessionRevision,
    nonce: AttemptNonce?
) {
    db.compileStatement(
        "INSERT OR REPLACE INTO attempts(provider_id, account_key, generation, session_revision, active_nonce) VALUES(?, ?, ?, ?, ?)"
    ).use { statement ->
        statement.bindAccountId(1, id)
        statement.bindLong(3, generation.value)
        statement.bindLong(4, sessionRevision.value)
        statement.bindNullableString(5, nonce?.storageValue())
        check(statement.executeInsert() != -1L) { "Failed to write account attempt" }
    }
}

internal fun writeNonceHead(db: SQLiteDatabase, id: ProviderAccountId, nonce: AttemptNonce?) {
    db.compileStatement(
        "INSERT OR REPLACE INTO nonce_heads(provider_id, account_key, last_nonce) VALUES(?, ?, ?)"
    ).use { statement ->
        statement.bindAccountId(1, id)
        statement.bindNullableString(3, nonce?.storageValue())
        check(statement.executeInsert() != -1L) { "Failed to write account nonce" }
    }
}

internal fun publishNonce(db: SQLiteDatabase, id: ProviderAccountId, nonce: AttemptNonce) {
    writeNonceHead(db, id, nonce)
    db.compileStatement(
        "INSERT INTO published_nonces(provider_id, account_key, nonce) VALUES(?, ?, ?)"
    ).use { statement ->
        statement.bindAccountId(1, id)
        statement.bindString(3, nonce.storageValue())
        check(statement.executeInsert() != -1L) { "Failed to publish account nonce" }
    }
}

internal fun writeVersion(db: SQLiteDatabase, version: DisplayVersion) {
    db.compileStatement(
        "UPDATE authority_metadata SET display_version = ? WHERE singleton_id = 1"
    ).use { statement ->
        statement.bindLong(1, version.value)
        check(statement.executeUpdateDelete() == 1) { "Authority metadata is missing" }
    }
}

internal fun readVersion(db: SQLiteDatabase): DisplayVersion =
    db.rawQuery("SELECT display_version FROM authority_metadata WHERE singleton_id = 1", null).use { cursor ->
        check(cursor.moveToFirst()) { "Authority metadata is missing" }
        DisplayVersion.of(cursor.getLong(0))
    }

internal fun readAccount(db: SQLiteDatabase, id: ProviderAccountId): AccountRecord? =
    db.query(
        "accounts",
        ACCOUNT_COLUMNS,
        "provider_id = ? AND account_key = ?",
        arrayOf(id.providerId.storageId, id.accountKey.storageValue()),
        null,
        null,
        null
    ).use { cursor -> if (cursor.moveToFirst()) cursor.toAccountRecord() else null }

internal fun readLegacyImportRecord(db: SQLiteDatabase, id: ProviderAccountId): VersionedDisplayRecord? =
    db.rawQuery(
        """
        SELECT ${ACCOUNT_COLUMNS.joinToString(",")}, snapshots.snapshot_json, snapshots.display_version
        FROM accounts JOIN snapshots USING(provider_id, account_key)
        WHERE accounts.provider_id = ? AND accounts.account_key = ?
        """.trimIndent(),
        arrayOf(id.providerId.storageId, id.accountKey.storageValue())
    ).use { cursor ->
        if (!cursor.moveToFirst()) return@use null
        val account = cursor.toAccountRecord()
        val snapshot = decodeSnapshot(cursor.getString(ACCOUNT_COLUMNS.size), id.providerId)
        VersionedDisplayRecord(account, snapshot, DisplayVersion.of(cursor.getLong(ACCOUNT_COLUMNS.size + 1)))
    }

internal fun Cursor.toAccountRecord(): AccountRecord {
    val provider = requireNotNull(ProviderId.fromStorageId(getString(0))) { "Unknown account provider" }
    return AccountRecord(
        id = ProviderAccountId(provider, AccountKey.fromStorage(getString(1))),
        state = AccountState.valueOf(getString(3)),
        authState = AccountAuthState.valueOf(getString(4)),
        deletionState = AccountDeletionState.valueOf(getString(5)),
        generation = AccountGeneration.of(getLong(6)),
        sessionRevision = SessionRevision.of(getLong(7)),
        alias = getString(8),
        organization = getString(9),
        remoteIdentity = getString(10),
        modifiedVersion = DisplayVersion.of(getLong(11))
    )
}

internal fun attemptMatches(db: SQLiteDatabase, lease: AttemptLease): Boolean =
    db.rawQuery(
        "SELECT generation, session_revision, active_nonce FROM attempts WHERE provider_id = ? AND account_key = ?",
        arrayOf(lease.accountId.providerId.storageId, lease.accountId.accountKey.storageValue())
    ).use { cursor ->
        cursor.moveToFirst() &&
            cursor.getLong(0) == lease.generation.value &&
            cursor.getLong(1) == lease.sessionRevision.value &&
            cursor.getString(2) == lease.nonce.storageValue()
    }

internal fun isPublished(db: SQLiteDatabase, id: ProviderAccountId, nonce: AttemptNonce): Boolean =
    db.rawQuery(
        "SELECT 1 FROM published_nonces WHERE provider_id = ? AND account_key = ? AND nonce = ?",
        arrayOf(id.providerId.storageId, id.accountKey.storageValue(), nonce.storageValue())
    ).use(Cursor::moveToFirst)

internal fun decodeSnapshot(raw: String, providerId: ProviderId): ProviderUsageSnapshot {
    val snapshots = ProviderSnapshotCodec.decode(raw)
    require(snapshots.size == 1 && snapshots.single().providerId == providerId) {
        "Malformed account snapshot"
    }
    return snapshots.single()
}

private fun SQLiteStatement.bindAccountId(startIndex: Int, id: ProviderAccountId) {
    bindString(startIndex, id.providerId.storageId)
    bindString(startIndex + 1, id.accountKey.storageValue())
}

private fun SQLiteStatement.bindNullableString(index: Int, value: String?) {
    if (value == null) bindNull(index) else bindString(index, value)
}

internal fun providerRank(providerId: ProviderId): Int {
    val visibleRank = ProviderId.defaultOrder().indexOf(providerId)
    return if (visibleRank >= 0) visibleRank else ProviderId.defaultOrder().size + providerId.ordinal
}
