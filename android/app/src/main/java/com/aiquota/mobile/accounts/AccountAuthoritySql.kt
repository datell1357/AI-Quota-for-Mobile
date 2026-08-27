package com.aiquota.mobile.accounts

import android.database.Cursor
import android.database.sqlite.SQLiteDatabase
import android.database.sqlite.SQLiteStatement
import com.aiquota.mobile.local.ProviderId
import com.aiquota.mobile.local.ProviderUsageSnapshot
import com.aiquota.mobile.providers.ProviderSnapshotCodec

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

internal fun insertAccount(db: SQLiteDatabase, account: AccountRecord) {
    db.compileStatement(
        """
        INSERT INTO accounts(
            provider_id, account_key, provider_rank, state, auth_state, deletion_state,
            generation, session_revision, alias, organization, remote_identity, modified_version
        ) VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)
        """.trimIndent()
    ).use { statement ->
        statement.bindString(1, account.id.providerId.storageId)
        statement.bindString(2, account.id.accountKey.storageValue())
        statement.bindLong(3, providerRank(account.id.providerId).toLong())
        statement.bindString(4, account.state.name)
        statement.bindString(5, account.authState.name)
        statement.bindString(6, account.deletionState.name)
        statement.bindLong(7, account.generation.value)
        statement.bindLong(8, account.sessionRevision.value)
        statement.bindNullableString(9, account.alias)
        statement.bindNullableString(10, account.organization)
        statement.bindNullableString(11, account.remoteIdentity)
        statement.bindLong(12, account.modifiedVersion.value)
        check(statement.executeInsert() != -1L) { "Failed to insert account" }
    }
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

private fun providerRank(providerId: ProviderId): Int {
    val visibleRank = ProviderId.defaultOrder().indexOf(providerId)
    return if (visibleRank >= 0) visibleRank else ProviderId.defaultOrder().size + providerId.ordinal
}
