package com.aiquota.mobile.accounts

import android.database.sqlite.SQLiteDatabase

internal fun readProviderCardDeletion(
    db: SQLiteDatabase,
    accountId: ProviderAccountId,
): ProviderCardDeletionRecord? = db.rawQuery(
    "SELECT step,failure,journal_revision,authority_version FROM provider_card_deletion_journal " +
        "WHERE provider_id=? AND account_key=?",
    arrayOf(accountId.providerId.storageId, accountId.accountKey.storageValue()),
).use { cursor ->
    if (!cursor.moveToFirst()) return@use null
    ProviderCardDeletionRecord(
        accountId = accountId,
        step = ProviderCardDeletionStep.valueOf(cursor.getString(0)),
        failure = cursor.getString(1)?.let(ProviderCardDeletionFailure::valueOf),
        journalRevision = cursor.getLong(2),
        authorityVersion = DisplayVersion.of(cursor.getLong(3)),
    )
}

internal fun writeInitialProviderCardDeletion(
    db: SQLiteDatabase,
    accountId: ProviderAccountId,
    version: DisplayVersion,
): ProviderCardDeletionRecord = writeProviderCardDeletionSeed(
    db,
    accountId,
    ProviderCardDeletionStep.TOMBSTONED,
    1,
    version,
)

internal fun writeRecoveredErasedProviderCardDeletion(
    db: SQLiteDatabase,
    accountId: ProviderAccountId,
    version: DisplayVersion,
): ProviderCardDeletionRecord = writeProviderCardDeletionSeed(
    db,
    accountId,
    ProviderCardDeletionStep.ERASED,
    10,
    version,
)

private fun writeProviderCardDeletionSeed(
    db: SQLiteDatabase,
    accountId: ProviderAccountId,
    step: ProviderCardDeletionStep,
    revision: Long,
    version: DisplayVersion,
): ProviderCardDeletionRecord {
    db.compileStatement(
        "INSERT INTO provider_card_deletion_journal(" +
            "provider_id,account_key,step,failure,journal_revision,authority_version) " +
            "VALUES(?,?,?,NULL,?,?)"
    ).use { statement ->
        statement.bindString(1, accountId.providerId.storageId)
        statement.bindString(2, accountId.accountKey.storageValue())
        statement.bindString(3, step.name)
        statement.bindLong(4, revision)
        statement.bindLong(5, version.value)
        check(statement.executeInsert() != -1L) { "Failed to seed provider-card deletion journal" }
    }
    return requireNotNull(readProviderCardDeletion(db, accountId))
}

internal fun claimProviderCardDeletion(
    db: SQLiteDatabase,
    expected: ProviderCardDeletionRecord,
    owner: ProviderCardDeletionOwnerToken,
    nowMillis: Long,
    expiresAtMillis: Long,
): ProviderCardDeletionClaimResult {
    require(expiresAtMillis > nowMillis)
    db.compileStatement(
        "UPDATE provider_card_deletion_journal SET " +
            "claim_owner=?,claim_step=step,claim_revision=journal_revision," +
            "claim_authority_version=authority_version,claim_expires_at=? " +
            "WHERE provider_id=? AND account_key=? AND step=? AND journal_revision=? " +
            "AND authority_version=? AND (claim_owner IS NULL OR claim_expires_at<=?)"
    ).use { statement ->
        statement.bindString(1, owner.value)
        statement.bindLong(2, expiresAtMillis)
        statement.bindString(3, expected.accountId.providerId.storageId)
        statement.bindString(4, expected.accountId.accountKey.storageValue())
        statement.bindString(5, expected.step.name)
        statement.bindLong(6, expected.journalRevision)
        statement.bindLong(7, expected.authorityVersion.value)
        statement.bindLong(8, nowMillis)
        if (statement.executeUpdateDelete() == 1) {
            return ProviderCardDeletionClaimResult.Claimed(
                ProviderCardDeletionClaim(expected, owner, expiresAtMillis)
            )
        }
    }
    val current = readProviderCardDeletion(db, expected.accountId)
        ?: return ProviderCardDeletionClaimResult.Missing(expected.accountId)
    return ProviderCardDeletionClaimResult.InProgress(current)
}

internal fun advanceClaimedProviderCardDeletion(
    db: SQLiteDatabase,
    claim: ProviderCardDeletionClaim,
    next: ProviderCardDeletionStep,
    version: DisplayVersion,
    completionTimeMillis: Long,
): ProviderCardDeletionRecord? {
    check(next.ordinal == claim.record.step.ordinal + 1)
    val changed = mutateClaimedDeletion(
        db,
        claim,
        "step=?,failure=NULL,journal_revision=journal_revision+1,authority_version=?," + CLEAR_CLAIM,
        listOf(next.name, version.value),
        completionTimeMillis,
    )
    return if (changed) readProviderCardDeletion(db, claim.record.accountId) else null
}

internal fun failClaimedProviderCardDeletion(
    db: SQLiteDatabase,
    claim: ProviderCardDeletionClaim,
    failure: ProviderCardDeletionFailure,
    version: DisplayVersion,
    completionTimeMillis: Long,
): ProviderCardDeletionRecord? {
    val changed = mutateClaimedDeletion(
        db,
        claim,
        "failure=?,journal_revision=journal_revision+1,authority_version=?," + CLEAR_CLAIM,
        listOf(failure.name, version.value),
        completionTimeMillis,
    )
    return if (changed) readProviderCardDeletion(db, claim.record.accountId) else null
}

private fun mutateClaimedDeletion(
    db: SQLiteDatabase,
    claim: ProviderCardDeletionClaim,
    setSql: String,
    values: List<Any>,
    completionTimeMillis: Long,
): Boolean {
    val record = claim.record
    val sql = "UPDATE provider_card_deletion_journal SET $setSql " +
        "WHERE provider_id=? AND account_key=? AND step=? AND journal_revision=? AND authority_version=? " +
        "AND claim_owner=? AND claim_step=? AND claim_revision=? AND claim_authority_version=? " +
        "AND claim_expires_at=? AND ?<claim_expires_at"
    return db.compileStatement(sql).use { statement ->
        var index = 1
        values.forEach { value ->
            when (value) {
                is String -> statement.bindString(index++, value)
                is Long -> statement.bindLong(index++, value)
                else -> error("Unsupported deletion mutation binding")
            }
        }
        statement.bindString(index++, record.accountId.providerId.storageId)
        statement.bindString(index++, record.accountId.accountKey.storageValue())
        statement.bindString(index++, record.step.name)
        statement.bindLong(index++, record.journalRevision)
        statement.bindLong(index++, record.authorityVersion.value)
        statement.bindString(index++, claim.owner.value)
        statement.bindString(index++, record.step.name)
        statement.bindLong(index++, record.journalRevision)
        statement.bindLong(index++, record.authorityVersion.value)
        statement.bindLong(index++, claim.expiresAtMillis)
        statement.bindLong(index, completionTimeMillis)
        statement.executeUpdateDelete() == 1
    }
}

internal fun advanceUnclaimedProviderCardDeletion(
    db: SQLiteDatabase,
    expected: ProviderCardDeletionRecord,
    next: ProviderCardDeletionStep,
    version: DisplayVersion,
): ProviderCardDeletionRecord? {
    check(next.ordinal == expected.step.ordinal + 1)
    db.compileStatement(
        "UPDATE provider_card_deletion_journal SET step=?,failure=NULL," +
            "journal_revision=journal_revision+1,authority_version=? " +
            "WHERE provider_id=? AND account_key=? AND step=? AND journal_revision=? " +
            "AND authority_version=? AND claim_owner IS NULL"
    ).use { statement ->
        statement.bindString(1, next.name)
        statement.bindLong(2, version.value)
        statement.bindString(3, expected.accountId.providerId.storageId)
        statement.bindString(4, expected.accountId.accountKey.storageValue())
        statement.bindString(5, expected.step.name)
        statement.bindLong(6, expected.journalRevision)
        statement.bindLong(7, expected.authorityVersion.value)
        if (statement.executeUpdateDelete() != 1) return null
    }
    return readProviderCardDeletion(db, expected.accountId)
}

internal fun pendingProviderCardDeletionIds(db: SQLiteDatabase): List<ProviderAccountId> = buildList {
    db.rawQuery(
        "SELECT provider_id,account_key FROM provider_card_deletion_journal " +
            "WHERE step!='ERASED' ORDER BY provider_id,account_key",
        null,
    ).use { cursor ->
        while (cursor.moveToNext()) {
            val provider = requireNotNull(com.aiquota.mobile.local.ProviderId.fromStorageId(cursor.getString(0)))
            add(ProviderAccountId(provider, AccountKey.fromStorage(cursor.getString(1))))
        }
    }
}

private const val CLEAR_CLAIM =
    "claim_owner=NULL,claim_step=NULL,claim_revision=NULL,claim_authority_version=NULL,claim_expires_at=NULL"
