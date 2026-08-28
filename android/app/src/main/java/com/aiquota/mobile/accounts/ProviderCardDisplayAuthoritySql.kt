package com.aiquota.mobile.accounts

import android.database.sqlite.SQLiteDatabase
import com.aiquota.mobile.local.ProviderUsageSnapshot

internal fun readActiveProviderCardPage(
    db: SQLiteDatabase,
    offset: Int,
    limit: Int,
): ProviderCardDisplayPage {
    require(offset >= 0) { "Card offset must be non-negative" }
    require(limit in 1..250) { "Card page size must be between 1 and 250" }
    val records = mutableListOf<ProviderCardDisplayRecord>()
    db.rawQuery(
        """
        SELECT ${ACCOUNT_COLUMNS.joinToString(",") { "accounts.$it" }},
            provider_card_catalog.active_rank,snapshots.snapshot_json
        FROM accounts
        JOIN provider_card_catalog USING(provider_id,account_key)
        LEFT JOIN snapshots USING(provider_id,account_key)
        WHERE provider_card_catalog.active_rank IS NOT NULL
          AND accounts.state='ACTIVE' AND accounts.deletion_state='NONE'
        ORDER BY provider_card_catalog.active_rank
        LIMIT ? OFFSET ?
        """.trimIndent(),
        arrayOf(limit.toString(), offset.toString()),
    ).use { cursor ->
        while (cursor.moveToNext()) {
            val account = cursor.toAccountRecord()
            val rank = cursor.getLong(ACCOUNT_COLUMNS.size)
            check(rank in 0..Int.MAX_VALUE.toLong()) { "Malformed active provider-card rank" }
            val snapshot = if (cursor.isNull(ACCOUNT_COLUMNS.size + 1)) {
                deterministicDisconnectedSnapshot(account.id.providerId)
            } else {
                decodeSnapshot(cursor.getString(ACCOUNT_COLUMNS.size + 1), account.id.providerId)
            }
            records += ProviderCardDisplayRecord(
                VersionedDisplayRecord(account, snapshot, account.modifiedVersion),
                rank.toInt(),
            )
        }
    }
    val total = db.rawQuery(
        "SELECT COUNT(*) FROM accounts JOIN provider_card_catalog USING(provider_id,account_key) " +
            "WHERE provider_card_catalog.active_rank IS NOT NULL " +
            "AND accounts.state='ACTIVE' AND accounts.deletion_state='NONE'",
        null,
    ).use { cursor ->
        check(cursor.moveToFirst())
        cursor.getInt(0)
    }
    return ProviderCardDisplayPage(
        records = records,
        offset = offset,
        totalCount = total,
        nextOffset = (offset + records.size).takeIf { it < total },
        version = readVersion(db),
    )
}

internal fun readExactProviderCardRecord(
    db: SQLiteDatabase,
    accountId: ProviderAccountId,
): VersionedDisplayRecord? = db.rawQuery(
    """
    SELECT ${ACCOUNT_COLUMNS.joinToString(",") { "accounts.$it" }},snapshots.snapshot_json
    FROM accounts LEFT JOIN snapshots USING(provider_id,account_key)
    WHERE accounts.provider_id=? AND accounts.account_key=?
      AND accounts.state='ACTIVE' AND accounts.deletion_state='NONE'
    """.trimIndent(),
    arrayOf(accountId.providerId.storageId, accountId.accountKey.storageValue()),
).use { cursor ->
    if (!cursor.moveToFirst()) return@use null
    val account = cursor.toAccountRecord()
    val snapshot = if (cursor.isNull(ACCOUNT_COLUMNS.size)) {
        deterministicDisconnectedSnapshot(accountId.providerId)
    } else {
        decodeSnapshot(cursor.getString(ACCOUNT_COLUMNS.size), accountId.providerId)
    }
    VersionedDisplayRecord(account, snapshot, account.modifiedVersion)
}

private fun deterministicDisconnectedSnapshot(providerId: com.aiquota.mobile.local.ProviderId) =
    ProviderUsageSnapshot.disconnected(providerId).copy(
        updatedAt = "1970-01-01T00:00:00Z",
        statusUpdatedAt = "1970-01-01T00:00:00Z",
    )

internal fun reorderActiveProviderCards(
    db: SQLiteDatabase,
    request: ReorderProviderCardsRequest,
): ReorderProviderCardsResult {
    if (readVersion(db) != request.expectedVersion) {
        return ReorderProviderCardsResult.Rejected(ReorderProviderCardsRejection.VERSION_MISMATCH)
    }
    if (request.orderedAccountIds.toSet().size != request.orderedAccountIds.size) {
        return ReorderProviderCardsResult.Rejected(ReorderProviderCardsRejection.DUPLICATE_ACCOUNT)
    }
    val active = readAllActiveProviderCardIds(db)
    if (request.orderedAccountIds.any { it !in active }) {
        return ReorderProviderCardsResult.Rejected(ReorderProviderCardsRejection.CARD_MISSING_OR_INACTIVE)
    }
    if (request.orderedAccountIds.size != active.size) {
        return ReorderProviderCardsResult.Rejected(ReorderProviderCardsRejection.CARD_SET_MISMATCH)
    }
    db.execSQL("UPDATE provider_card_catalog SET active_rank=NULL WHERE active_rank IS NOT NULL")
    db.compileStatement(
        "UPDATE provider_card_catalog SET active_rank=? WHERE provider_id=? AND account_key=? AND active_rank IS NULL"
    ).use { statement ->
        request.orderedAccountIds.forEachIndexed { rank, id ->
            statement.clearBindings()
            statement.bindLong(1, rank.toLong())
            statement.bindString(2, id.providerId.storageId)
            statement.bindString(3, id.accountKey.storageValue())
            check(statement.executeUpdateDelete() == 1) { "Provider-card reorder lost an active card" }
        }
    }
    val version = request.expectedVersion.next()
    writeVersion(db, version)
    return ReorderProviderCardsResult.Reordered(request.orderedAccountIds.toList(), version)
}

private fun readAllActiveProviderCardIds(db: SQLiteDatabase): Set<ProviderAccountId> = db.rawQuery(
    "SELECT provider_id,account_key FROM provider_card_catalog WHERE active_rank IS NOT NULL ORDER BY active_rank",
    null,
).use { cursor ->
    buildSet {
        while (cursor.moveToNext()) {
            val provider = requireNotNull(com.aiquota.mobile.local.ProviderId.fromStorageId(cursor.getString(0)))
            add(ProviderAccountId(provider, AccountKey.fromStorage(cursor.getString(1))))
        }
    }
}

internal fun requestExactAccountRefresh(
    db: SQLiteDatabase,
    request: AccountRefreshRequest,
): AccountRefreshRequestResult {
    val account = readAccount(db, request.accountId)
        ?: return AccountRefreshRequestResult.Rejected(AccountRefreshRequestRejection.ACCOUNT_MISSING)
    if (account.state != AccountState.ACTIVE || account.deletionState != AccountDeletionState.NONE ||
        account.authState != AccountAuthState.AUTHENTICATED
    ) return AccountRefreshRequestResult.Rejected(AccountRefreshRequestRejection.ACCOUNT_INELIGIBLE)
    if (account.modifiedVersion != request.expectedVersion) {
        return AccountRefreshRequestResult.Rejected(AccountRefreshRequestRejection.VERSION_MISMATCH)
    }
    if (account.generation != request.expectedGeneration) {
        return AccountRefreshRequestResult.Rejected(AccountRefreshRequestRejection.GENERATION_MISMATCH)
    }
    if (account.sessionRevision != request.expectedSessionRevision) {
        return AccountRefreshRequestResult.Rejected(AccountRefreshRequestRejection.SESSION_MISMATCH)
    }
    val currentDemand = db.rawQuery(
        "SELECT demand_mask FROM demands WHERE provider_id=? AND account_key=?",
        arrayOf(request.accountId.providerId.storageId, request.accountId.accountKey.storageValue()),
    ).use { cursor -> if (cursor.moveToFirst()) AccountDemandSet.fromMask(cursor.getInt(0)) else AccountDemandSet.NONE }
    val version = readVersion(db).next()
    updateAccountVersion(db, request.accountId, version)
    writeDemand(db, request.accountId, currentDemand.plus(AccountDemand.MANUAL))
    writeVersion(db, version)
    return AccountRefreshRequestResult.Accepted(requireNotNull(readExactProviderCardRecord(db, request.accountId)))
}
