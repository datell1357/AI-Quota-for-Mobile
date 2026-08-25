package com.aiquota.mobile.accounts

import android.database.sqlite.SQLiteDatabase
import com.aiquota.mobile.local.ProviderId

internal fun readAccountUsagePrimarySelection(
    db: SQLiteDatabase,
    providerId: ProviderId
): AccountUsagePrimarySelection {
    if (providerId !in ACCOUNT_USAGE_TARGET_PROVIDERS) return AccountUsagePrimarySelection.ExplicitNone
    val token = db.rawQuery(
        "SELECT account_key FROM account_usage_primary WHERE provider_id = ?",
        arrayOf(providerId.storageId)
    ).use { cursor ->
        if (!cursor.moveToFirst()) return AccountUsagePrimarySelection.InitialMigrationDefault
        cursor.getString(0)
    }
    if (token == ACCOUNT_USAGE_PRIMARY_NONE) return AccountUsagePrimarySelection.ExplicitNone
    val key = runCatching { AccountKey.fromStorage(token) }.getOrNull()
        ?: return AccountUsagePrimarySelection.ExplicitNone
    return AccountUsagePrimarySelection.ExplicitAccount(ProviderAccountId(providerId, key))
}

internal fun resolveAccountUsagePrimary(db: SQLiteDatabase, providerId: ProviderId): ProviderAccountId? {
    val selected = when (val selection = readAccountUsagePrimarySelection(db, providerId)) {
        AccountUsagePrimarySelection.InitialMigrationDefault ->
            ProviderAccountId(providerId, AccountKey.reservedDefault())
        AccountUsagePrimarySelection.ExplicitNone -> return null
        is AccountUsagePrimarySelection.ExplicitAccount -> selection.accountId
    }
    val account = readAccount(db, selected) ?: return null
    return selected.takeIf {
        account.state == AccountState.ACTIVE && account.deletionState == AccountDeletionState.NONE
    }
}

internal fun writeAccountUsagePrimary(db: SQLiteDatabase, id: ProviderAccountId) {
    db.compileStatement(
        "INSERT OR REPLACE INTO account_usage_primary(provider_id, account_key) VALUES(?, ?)"
    ).use { statement ->
        statement.bindString(1, id.providerId.storageId)
        statement.bindString(2, id.accountKey.storageValue())
        check(statement.executeInsert() != -1L)
    }
}

internal fun clearAccountUsagePrimary(db: SQLiteDatabase, providerId: ProviderId): Boolean {
    val alreadyNone = readAccountUsagePrimarySelection(db, providerId) == AccountUsagePrimarySelection.ExplicitNone
    db.compileStatement(
        "INSERT OR REPLACE INTO account_usage_primary(provider_id, account_key) VALUES(?, ?)"
    ).use { statement ->
        statement.bindString(1, providerId.storageId)
        statement.bindString(2, ACCOUNT_USAGE_PRIMARY_NONE)
        check(statement.executeInsert() != -1L)
    }
    return !alreadyNone
}

internal fun readAccountUsageProjectionTargets(db: SQLiteDatabase): Map<ProviderId, AccountUsageProjectionTargetState> =
    buildMap {
        db.rawQuery(
            "SELECT provider_id, target_sha256, authority_version FROM account_usage_projection_targets ORDER BY provider_id",
            null
        ).use { cursor ->
            while (cursor.moveToNext()) {
                val provider = ProviderId.fromStorageId(cursor.getString(0)) ?: continue
                if (provider !in ACCOUNT_USAGE_TARGET_PROVIDERS) continue
                val hash = cursor.getString(1)
                if (!SHA256_PATTERN.matches(hash)) continue
                put(provider, AccountUsageProjectionTargetState(provider, hash, DisplayVersion.of(cursor.getLong(2))))
            }
        }
    }

internal fun readAccountUsageProjectionIntent(db: SQLiteDatabase): AccountUsageProjectionIntent? =
    db.rawQuery(
        "SELECT authority_version, claude_sha256, codex_sha256 FROM account_usage_projection_intent WHERE singleton_id = 1",
        null
    ).use { cursor ->
        if (!cursor.moveToFirst()) return null
        val claude = cursor.getString(1)
        val codex = cursor.getString(2)
        if (!SHA256_PATTERN.matches(claude) || !SHA256_PATTERN.matches(codex)) return null
        AccountUsageProjectionIntent(
            authorityVersion = DisplayVersion.of(cursor.getLong(0)),
            targetSha256 = mapOf(ProviderId.CLAUDE to claude, ProviderId.CODEX to codex)
        )
    }

internal fun writeAccountUsageProjectionIntent(db: SQLiteDatabase, intent: AccountUsageProjectionIntent) {
    val claude = requireNotNull(intent.targetSha256[ProviderId.CLAUDE])
    val codex = requireNotNull(intent.targetSha256[ProviderId.CODEX])
    require(SHA256_PATTERN.matches(claude) && SHA256_PATTERN.matches(codex))
    db.compileStatement(
        "INSERT OR REPLACE INTO account_usage_projection_intent(singleton_id, authority_version, claude_sha256, codex_sha256) VALUES(1, ?, ?, ?)"
    ).use { statement ->
        statement.bindLong(1, intent.authorityVersion.value)
        statement.bindString(2, claude)
        statement.bindString(3, codex)
        check(statement.executeInsert() != -1L)
    }
}

internal fun finishAccountUsageProjection(
    db: SQLiteDatabase,
    intent: AccountUsageProjectionIntent,
    receipt: LegacyProjectionReceipt
) {
    require(intent.authorityVersion.value == receipt.desiredRevision)
    ACCOUNT_USAGE_TARGET_PROVIDERS.forEach { provider ->
        val hash = requireNotNull(intent.targetSha256[provider])
        db.compileStatement(
            "INSERT OR REPLACE INTO account_usage_projection_targets(provider_id, target_sha256, authority_version) VALUES(?, ?, ?)"
        ).use { statement ->
            statement.bindString(1, provider.storageId)
            statement.bindString(2, hash)
            statement.bindLong(3, intent.authorityVersion.value)
            check(statement.executeInsert() != -1L)
        }
    }
    writeProjectionAuthorityState(db, receipt)
    check(db.delete("account_usage_projection_intent", "singleton_id = 1", null) == 1)
}

internal fun insertLegacyUsageConflict(
    db: SQLiteDatabase,
    providerId: ProviderId,
    observedSha256: String,
    expectedSha256: String,
    authorityVersion: DisplayVersion
): LegacyUsageConflictReceipt {
    require(providerId in ACCOUNT_USAGE_TARGET_PROVIDERS)
    require(SHA256_PATTERN.matches(observedSha256) && SHA256_PATTERN.matches(expectedSha256))
    val receipt = LegacyMigrationCodec.sha256(
        "legacy-usage-conflict-v1|${providerId.storageId}|$observedSha256|$expectedSha256|${authorityVersion.value}"
    )
    db.compileStatement(
        "INSERT OR IGNORE INTO legacy_usage_conflicts(receipt_sha256, provider_id, observed_sha256, expected_sha256, authority_version) VALUES(?, ?, ?, ?, ?)"
    ).use { statement ->
        statement.bindString(1, receipt)
        statement.bindString(2, providerId.storageId)
        statement.bindString(3, observedSha256)
        statement.bindString(4, expectedSha256)
        statement.bindLong(5, authorityVersion.value)
        statement.executeInsert()
    }
    return LegacyUsageConflictReceipt(receipt, providerId, observedSha256, expectedSha256, authorityVersion)
}

internal fun readLegacyUsageConflicts(
    db: SQLiteDatabase,
    offset: Int,
    limit: Int
): LegacyUsageConflictPage {
    val total = db.rawQuery("SELECT COUNT(*) FROM legacy_usage_conflicts", null).use { cursor ->
        check(cursor.moveToFirst())
        cursor.getInt(0)
    }
    val receipts = buildList {
        db.rawQuery(
            "SELECT receipt_sha256, provider_id, observed_sha256, expected_sha256, authority_version FROM legacy_usage_conflicts ORDER BY provider_id, receipt_sha256 LIMIT ? OFFSET ?",
            arrayOf(limit.toString(), offset.toString())
        ).use { cursor ->
            while (cursor.moveToNext()) {
                val provider = ProviderId.fromStorageId(cursor.getString(1)) ?: continue
                if (provider !in ACCOUNT_USAGE_TARGET_PROVIDERS) continue
                add(
                    LegacyUsageConflictReceipt(
                        receiptSha256 = cursor.getString(0),
                        providerId = provider,
                        observedTargetSha256 = cursor.getString(2),
                        expectedTargetSha256 = cursor.getString(3),
                        authorityVersion = DisplayVersion.of(cursor.getLong(4))
                    )
                )
            }
        }
    }
    val next = (offset + receipts.size).takeIf { it < total }
    return LegacyUsageConflictPage(receipts, offset, total, next)
}
