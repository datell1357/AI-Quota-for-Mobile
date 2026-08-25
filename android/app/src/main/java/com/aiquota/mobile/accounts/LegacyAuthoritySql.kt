package com.aiquota.mobile.accounts

import android.database.sqlite.SQLiteDatabase
import com.aiquota.mobile.local.ProviderId

internal fun writeMigrationReceipt(
    db: SQLiteDatabase,
    table: String,
    id: ProviderAccountId,
    receipt: String
) {
    require(table == "migration_mirrors" || table == "migration_preferences")
    db.compileStatement("INSERT OR REPLACE INTO $table(provider_id, account_key, receipt_sha256) VALUES(?, ?, ?)").use {
        it.bindString(1, id.providerId.storageId)
        it.bindString(2, id.accountKey.storageValue())
        it.bindString(3, receipt)
        check(it.executeInsert() != -1L)
    }
}

internal fun readLegacyAuthorityState(db: SQLiteDatabase, id: ProviderAccountId): LegacyAuthorityState? {
    val record = readLegacyImportRecord(db, id) ?: return null
    val demand = db.rawQuery(
        "SELECT demand_mask FROM demands WHERE provider_id = ? AND account_key = ?",
        arrayOf(id.providerId.storageId, id.accountKey.storageValue())
    ).use { cursor -> if (cursor.moveToFirst()) cursor.getInt(0) else return null }
    val attempt = db.rawQuery(
        "SELECT generation, session_revision, active_nonce FROM attempts WHERE provider_id = ? AND account_key = ?",
        arrayOf(id.providerId.storageId, id.accountKey.storageValue())
    ).use { cursor ->
        if (!cursor.moveToFirst()) return null
        Triple(AccountGeneration.of(cursor.getLong(0)), SessionRevision.of(cursor.getLong(1)), cursor.getString(2))
    }
    val lastNonce = db.rawQuery(
        "SELECT last_nonce FROM nonce_heads WHERE provider_id = ? AND account_key = ?",
        arrayOf(id.providerId.storageId, id.accountKey.storageValue())
    ).use { cursor -> if (cursor.moveToFirst()) cursor.getString(0) else return null }
    val published = db.rawQuery(
        "SELECT COUNT(*) FROM published_nonces WHERE provider_id = ? AND account_key = ?",
        arrayOf(id.providerId.storageId, id.accountKey.storageValue())
    ).use { cursor -> check(cursor.moveToFirst()); cursor.getInt(0) }
    return LegacyAuthorityState(
        record = record,
        demandMask = demand,
        attemptGeneration = attempt.first,
        attemptSessionRevision = attempt.second,
        activeNonce = attempt.third,
        lastNonce = lastNonce,
        publishedNonceCount = published,
        mirrorReceiptSha256 = readMigrationReceipt(db, "migration_mirrors", id) ?: return null,
        preferenceReceiptSha256 = readMigrationReceipt(db, "migration_preferences", id) ?: return null
    )
}

internal fun readLegacyProjectionAuthority(db: SQLiteDatabase): LegacyProjectionAuthority {
    val snapshots = listOf(ProviderId.CLAUDE, ProviderId.CODEX).mapNotNull { provider ->
        val id = ProviderAccountId(provider, AccountKey.reservedDefault())
        readLegacyImportRecord(db, id)?.takeIf {
            it.account.state == AccountState.ACTIVE && it.account.deletionState == AccountDeletionState.NONE
        }?.let { provider to it.snapshot }
    }.toMap()
    return LegacyProjectionAuthority(readVersion(db).value, snapshots)
}

internal fun readProjectionAuthorityState(db: SQLiteDatabase): LegacyProjectionAuthorityState = db.rawQuery(
    "SELECT desired_revision, applied_revision, aggregate_sha256, mirrors_sha256, cache_sha256 FROM projection_state WHERE singleton_id = 1",
    null
).use { cursor ->
    check(cursor.moveToFirst())
    LegacyProjectionAuthorityState(
        desiredRevision = cursor.getLong(0), appliedRevision = cursor.getLong(1),
        aggregateSha256 = cursor.getString(2), mirrorsSha256 = cursor.getString(3), cacheSha256 = cursor.getString(4)
    )
}

internal fun writeProjectionAuthorityState(db: SQLiteDatabase, receipt: LegacyProjectionReceipt) {
    db.compileStatement(
        "UPDATE projection_state SET desired_revision = ?, applied_revision = ?, aggregate_sha256 = ?, mirrors_sha256 = ?, cache_sha256 = ? WHERE singleton_id = 1"
    ).use {
        it.bindLong(1, receipt.desiredRevision)
        it.bindLong(2, receipt.appliedRevision)
        it.bindString(3, receipt.aggregateSha256)
        it.bindString(4, receipt.mirrorsSha256)
        it.bindString(5, receipt.cacheSha256)
        check(it.executeUpdateDelete() == 1)
    }
}

private fun readMigrationReceipt(db: SQLiteDatabase, table: String, id: ProviderAccountId): String? = db.rawQuery(
    "SELECT receipt_sha256 FROM $table WHERE provider_id = ? AND account_key = ?",
    arrayOf(id.providerId.storageId, id.accountKey.storageValue())
).use { cursor -> if (cursor.moveToFirst()) cursor.getString(0) else null }
