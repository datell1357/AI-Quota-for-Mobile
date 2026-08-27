package com.aiquota.mobile.accounts

import android.app.ActivityManager
import android.app.Application
import android.content.Context
import android.database.Cursor
import android.database.sqlite.SQLiteDatabase
import android.os.Build
import android.os.Process
import com.aiquota.mobile.local.ProviderId
import com.aiquota.mobile.local.ProviderUsageSnapshot
import com.aiquota.mobile.providers.ProviderSnapshotCodec

class MainProcessAccountAuthority private constructor(
    private val database: AccountAuthorityDatabase,
    private val faultInjector: AccountAuthorityFaultInjector
) : AutoCloseable {
    fun register(seed: AuthorityAccountSeed): VersionedDisplayRecord = transaction { db ->
        require(readAccount(db, seed.account.id) == null) { "Account key is already registered" }
        val version = readVersion(db).next()
        insertAccount(db, seed.account.copy(modifiedVersion = version))
        faultInjector.after(AccountAuthorityFaultPoint.CATALOG)
        writeSnapshot(db, seed.account.id, seed.snapshot, version)
        faultInjector.after(AccountAuthorityFaultPoint.SNAPSHOT)
        writeDemand(db, seed.account.id, seed.demand)
        faultInjector.after(AccountAuthorityFaultPoint.DEMAND)
        writeAttempt(db, seed.account.id, seed.account.generation, seed.account.sessionRevision, null)
        faultInjector.after(AccountAuthorityFaultPoint.ATTEMPT)
        writeNonceHead(db, seed.account.id, null)
        faultInjector.after(AccountAuthorityFaultPoint.NONCE)
        writeVersion(db, version)
        faultInjector.after(AccountAuthorityFaultPoint.VERSION)
        VersionedDisplayRecord(seed.account.copy(modifiedVersion = version), seed.snapshot, version)
    }

    internal fun importLegacyDefaults(
        seeds: List<LegacyAuthorityImportSeed>,
        migrationFaultInjector: LegacyMigrationFaultInjector
    ): List<LegacyAuthorityState> {
        val ordered = seeds.sortedBy { it.seed.account.id.providerId.ordinal }
        transaction { db ->
            var version = readVersion(db)
            ordered.forEachIndexed { index, item ->
                val id = item.seed.account.id
                require(id.accountKey == AccountKey.reservedDefault())
                val existing = readAccount(db, id)
                if (existing == null) {
                    version = version.next()
                    insertAccount(db, item.seed.account.copy(modifiedVersion = version))
                } else {
                    require(existing.state == AccountState.ACTIVE)
                    require(existing.authState == AccountAuthState.REAUTH_REQUIRED)
                    require(existing.deletionState == AccountDeletionState.NONE)
                }
                migrationFaultInjector.after(importEvent(LegacyMigrationFaultPoint.M03_AFTER_REGISTRY_COPY, LegacyMigrationOperation.REGISTRY_UPSERTED, id, index, ordered.size))
            }
            ordered.forEachIndexed { index, item ->
                val id = item.seed.account.id
                val account = requireNotNull(readAccount(db, id))
                val existing = readLegacyImportRecord(db, id)
                if (existing == null) {
                    writeSnapshot(db, id, item.seed.snapshot, account.modifiedVersion)
                    writeDemand(db, id, AccountDemandSet.NONE)
                    writeAttempt(db, id, account.generation, account.sessionRevision, null)
                    writeNonceHead(db, id, null)
                } else {
                    require(existing.snapshot == item.seed.snapshot)
                }
                migrationFaultInjector.after(importEvent(LegacyMigrationFaultPoint.M04_AFTER_SNAPSHOT_COPY, LegacyMigrationOperation.SNAPSHOT_STATE_UPSERTED, id, index, ordered.size))
            }
            writeVersion(db, version)
        }
        ordered.forEachIndexed { index, item ->
            transaction { db ->
                writeMigrationCopy(db, "migration_mirrors", item.seed.account.id, item.mirrorCopyData)
                require(readMigrationCopy(db, "migration_mirrors", item.seed.account.id)?.second == item.mirrorCopyData)
            }
            migrationFaultInjector.after(importEvent(LegacyMigrationFaultPoint.M05_AFTER_MIRROR_COPY, LegacyMigrationOperation.MIRROR_DATA_COPIED, item.seed.account.id, index, ordered.size))
        }
        ordered.forEachIndexed { index, item ->
            transaction { db ->
                writeMigrationCopy(db, "migration_preferences", item.seed.account.id, item.preferenceCopyData)
                require(readMigrationCopy(db, "migration_preferences", item.seed.account.id)?.second == item.preferenceCopyData)
            }
            migrationFaultInjector.after(importEvent(LegacyMigrationFaultPoint.M06_AFTER_PREF_COPY, LegacyMigrationOperation.PREFERENCE_DATA_COPIED, item.seed.account.id, index, ordered.size))
        }
        return ordered.map { requireNotNull(readLegacyAuthorityState(database.readableDatabase, it.seed.account.id)) }
    }

    internal fun repairLegacyCopyPayloads(payloads: Map<ProviderAccountId, Pair<String, String>>) = transaction { db ->
        payloads.forEach { (id, data) ->
            repairLegacyMigrationCopy(db, "migration_mirrors", id, data.first)
            repairLegacyMigrationCopy(db, "migration_preferences", id, data.second)
        }
    }

    internal fun legacyImportRecord(id: ProviderAccountId): VersionedDisplayRecord? =
        readLegacyImportRecord(database.readableDatabase, id)

    internal fun legacyImportState(id: ProviderAccountId): LegacyAuthorityState? =
        readLegacyAuthorityState(database.readableDatabase, id)

    internal fun legacyProjectionAuthority(): LegacyProjectionAuthority =
        readLegacyProjectionAuthority(database.readableDatabase)

    internal fun legacyProjectionState(): LegacyProjectionAuthorityState =
        readProjectionAuthorityState(database.readableDatabase)

    internal fun acknowledgeLegacyProjection(receipt: LegacyProjectionReceipt) = transaction { db ->
        require(receipt.desiredRevision == readVersion(db).value)
        require(receipt.appliedRevision == receipt.desiredRevision)
        writeProjectionAuthorityState(db, receipt)
    }

    fun beginAttempt(
        accountId: ProviderAccountId,
        demand: AccountDemandSet,
        nonce: AttemptNonce
    ): AttemptLease = transaction { db ->
        val account = requireNotNull(readAccount(db, accountId)) { "Account is not registered" }
        require(
            account.state == AccountState.ACTIVE &&
                account.authState == AccountAuthState.AUTHENTICATED &&
                account.deletionState == AccountDeletionState.NONE
        ) { "Account is not eligible for an attempt" }
        require(!isPublished(db, accountId, nonce)) { "Attempt nonce was already published" }
        val version = readVersion(db).next()
        updateAccountVersion(db, accountId, version)
        writeDemand(db, accountId, demand)
        writeAttempt(db, accountId, account.generation, account.sessionRevision, nonce)
        writeVersion(db, version)
        AttemptLease(accountId, account.generation, account.sessionRevision, nonce)
    }

    fun requireReauthentication(accountId: ProviderAccountId): AccountRecord = transaction { db ->
        val account = requireNotNull(readAccount(db, accountId)) { "Account is not registered" }
        require(
            account.state == AccountState.ACTIVE &&
                account.deletionState == AccountDeletionState.NONE
        ) { "Account is not eligible for reauthentication" }
        if (account.authState == AccountAuthState.REAUTH_REQUIRED) return@transaction account
        require(account.authState == AccountAuthState.AUTHENTICATED) {
            "Account is not eligible for reauthentication"
        }
        val version = readVersion(db).next()
        val updated =
            account
                .transitionTo(
                    nextState = account.state,
                    nextAuthState = AccountAuthState.REAUTH_REQUIRED,
                    nextDeletionState = account.deletionState,
                    nextSessionRevision = account.sessionRevision.next(),
                ).copy(modifiedVersion = version)
        updateAccountReauthenticationState(db, updated)
        faultInjector.after(AccountAuthorityFaultPoint.CATALOG)
        writeAttempt(db, accountId, updated.generation, updated.sessionRevision, null)
        faultInjector.after(AccountAuthorityFaultPoint.ATTEMPT)
        writeVersion(db, version)
        faultInjector.after(AccountAuthorityFaultPoint.VERSION)
        updated
    }

    fun commitAttempt(
        lease: AttemptLease,
        snapshot: ProviderUsageSnapshot,
        remainingDemand: AccountDemandSet = AccountDemandSet.NONE
    ): AttemptCommitResult {
        require(snapshot.providerId == lease.accountId.providerId) { "Snapshot provider does not match attempt" }
        return transaction { db ->
            val account = readAccount(db, lease.accountId)
                ?: return@transaction AttemptCommitResult.Rejected(StaleAttemptReason.ACCOUNT_MISSING)
            if (
                account.state != AccountState.ACTIVE ||
                account.authState != AccountAuthState.AUTHENTICATED ||
                account.deletionState != AccountDeletionState.NONE
            ) {
                return@transaction AttemptCommitResult.Rejected(StaleAttemptReason.ACCOUNT_INACTIVE)
            }
            if (account.generation != lease.generation) {
                return@transaction AttemptCommitResult.Rejected(StaleAttemptReason.GENERATION_MISMATCH)
            }
            if (account.sessionRevision != lease.sessionRevision) {
                return@transaction AttemptCommitResult.Rejected(StaleAttemptReason.SESSION_MISMATCH)
            }
            if (isPublished(db, lease.accountId, lease.nonce)) {
                return@transaction AttemptCommitResult.Rejected(StaleAttemptReason.NONCE_ALREADY_PUBLISHED)
            }
            if (!attemptMatches(db, lease)) {
                return@transaction AttemptCommitResult.Rejected(StaleAttemptReason.ATTEMPT_MISMATCH)
            }

            val version = readVersion(db).next()
            updateAccountVersion(db, lease.accountId, version)
            faultInjector.after(AccountAuthorityFaultPoint.CATALOG)
            writeSnapshot(db, lease.accountId, snapshot, version)
            faultInjector.after(AccountAuthorityFaultPoint.SNAPSHOT)
            writeDemand(db, lease.accountId, remainingDemand)
            faultInjector.after(AccountAuthorityFaultPoint.DEMAND)
            writeAttempt(db, lease.accountId, lease.generation, lease.sessionRevision, null)
            faultInjector.after(AccountAuthorityFaultPoint.ATTEMPT)
            publishNonce(db, lease.accountId, lease.nonce)
            faultInjector.after(AccountAuthorityFaultPoint.NONCE)
            writeVersion(db, version)
            faultInjector.after(AccountAuthorityFaultPoint.VERSION)
            val updated = requireNotNull(readAccount(db, lease.accountId))
            AttemptCommitResult.Committed(VersionedDisplayRecord(updated, snapshot, version))
        }
    }

    fun catalog(offset: Int, limit: Int): AccountCatalogPage {
        require(offset >= 0) { "Catalog offset must be non-negative" }
        require(limit in 1..MAX_PAGE_SIZE) { "Catalog page size must be between 1 and $MAX_PAGE_SIZE" }
        val db = database.readableDatabase
        val records = mutableListOf<AccountRecord>()
        db.query(
            "accounts",
            ACCOUNT_COLUMNS,
            null,
            null,
            null,
            null,
            "provider_rank, account_key",
            "$offset,$limit"
        ).use { cursor ->
            while (cursor.moveToNext()) records += cursor.toAccountRecord()
        }
        val total = db.rawQuery("SELECT COUNT(*) FROM accounts", null).use { cursor ->
            check(cursor.moveToFirst())
            cursor.getInt(0)
        }
        return AccountCatalogPage(records, offset, total, readVersion(db))
    }

    fun displayRecords(offset: Int, limit: Int): List<VersionedDisplayRecord> {
        require(offset >= 0) { "Display offset must be non-negative" }
        require(limit in 1..MAX_PAGE_SIZE) { "Display page size must be between 1 and $MAX_PAGE_SIZE" }
        val db = database.readableDatabase
        val records = mutableListOf<VersionedDisplayRecord>()
        db.rawQuery(
            """
            SELECT ${ACCOUNT_COLUMNS.joinToString(",")}, snapshots.snapshot_json, snapshots.display_version
            FROM accounts JOIN snapshots USING(provider_id, account_key)
            ORDER BY accounts.provider_rank, accounts.account_key LIMIT ? OFFSET ?
            """.trimIndent(),
            arrayOf(limit.toString(), offset.toString())
        ).use { cursor ->
            while (cursor.moveToNext()) {
                val account = cursor.toAccountRecord()
                val snapshot = decodeSnapshot(cursor.getString(ACCOUNT_COLUMNS.size), account.id.providerId)
                records += VersionedDisplayRecord(
                    account = account,
                    snapshot = snapshot,
                    version = DisplayVersion.of(cursor.getLong(ACCOUNT_COLUMNS.size + 1))
                )
            }
        }
        return records
    }

    fun displayVersion(): DisplayVersion = readVersion(database.readableDatabase)

    internal fun accountUsageRecord(accountId: ProviderAccountId): VersionedDisplayRecord? =
        readLegacyImportRecord(database.readableDatabase, accountId)

    internal fun writeAccountUsage(write: AccountUsageWrite): AccountUsageWriteResult = transaction { db ->
        val account = readAccount(db, write.accountId)
            ?: return@transaction AccountUsageWriteResult.Rejected(AccountUsageWriteRejection.ACCOUNT_MISSING)
        if (account.state != AccountState.ACTIVE || account.deletionState != AccountDeletionState.NONE) {
            return@transaction AccountUsageWriteResult.Rejected(AccountUsageWriteRejection.ACCOUNT_INACTIVE)
        }
        if (account.modifiedVersion != write.expectedVersion) {
            return@transaction AccountUsageWriteResult.Rejected(AccountUsageWriteRejection.VERSION_MISMATCH)
        }
        if (account.generation != write.expectedGeneration) {
            return@transaction AccountUsageWriteResult.Rejected(AccountUsageWriteRejection.GENERATION_MISMATCH)
        }
        if (account.sessionRevision != write.expectedSessionRevision) {
            return@transaction AccountUsageWriteResult.Rejected(AccountUsageWriteRejection.SESSION_MISMATCH)
        }
        val version = readVersion(db).next()
        updateAccountVersion(db, write.accountId, version)
        writeSnapshot(db, write.accountId, write.snapshot, version)
        writeVersion(db, version)
        val updated = requireNotNull(readAccount(db, write.accountId))
        AccountUsageWriteResult.Committed(
            VersionedDisplayRecord(updated, write.snapshot, version),
            AccountUsageProjectionResult.MigrationIncomplete
        )
    }

    internal fun assignAccountUsagePrimary(
        accountId: ProviderAccountId,
        expectedVersion: DisplayVersion
    ): PrimaryAssignmentResult = transaction { db ->
        if (accountId.providerId !in ACCOUNT_USAGE_TARGET_PROVIDERS) {
            return@transaction PrimaryAssignmentResult.Rejected(PrimaryAssignmentRejection.UNSUPPORTED_PROVIDER)
        }
        val account = readAccount(db, accountId)
            ?: return@transaction PrimaryAssignmentResult.Rejected(PrimaryAssignmentRejection.ACCOUNT_MISSING)
        if (account.state != AccountState.ACTIVE || account.deletionState != AccountDeletionState.NONE) {
            return@transaction PrimaryAssignmentResult.Rejected(PrimaryAssignmentRejection.ACCOUNT_INACTIVE)
        }
        if (account.modifiedVersion != expectedVersion) {
            return@transaction PrimaryAssignmentResult.Rejected(PrimaryAssignmentRejection.VERSION_MISMATCH)
        }
        writeAccountUsagePrimary(db, accountId)
        writeVersion(db, readVersion(db).next())
        PrimaryAssignmentResult.Assigned(accountId, AccountUsageProjectionResult.MigrationIncomplete)
    }

    internal fun clearAccountUsagePrimary(providerId: ProviderId): Boolean = transaction { db ->
        require(providerId in ACCOUNT_USAGE_TARGET_PROVIDERS) { "Unsupported primary provider" }
        val changed = clearAccountUsagePrimary(db, providerId)
        if (changed) writeVersion(db, readVersion(db).next())
        changed
    }

    internal fun accountUsagePrimary(providerId: ProviderId): ProviderAccountId? =
        resolveAccountUsagePrimary(database.readableDatabase, providerId)

    internal fun accountUsageProjectionIntent(): AccountUsageProjectionIntent? =
        readAccountUsageProjectionIntent(database.readableDatabase)

    internal fun prepareAccountUsageProjection(
        currentTargets: Map<ProviderId, String>,
        desiredTargets: Map<ProviderId, String>
    ): AccountUsageProjectionIntent = transaction { db ->
        require(ACCOUNT_USAGE_TARGET_PROVIDERS.all { it in currentTargets && it in desiredTargets })
        val version = readVersion(db)
        val baseline = readAccountUsageProjectionTargets(db)
        val priorIntent = readAccountUsageProjectionIntent(db)
        val migrationProjection = readProjectionAuthorityState(db)
        val migrationTargets = if (migrationProjection.appliedRevision > 0) {
            readLegacyProjectionAuthority(db).snapshots
        } else {
            emptyMap()
        }
        ACCOUNT_USAGE_TARGET_PROVIDERS.forEach { provider ->
            val observed = requireNotNull(currentTargets[provider])
            val expected = baseline[provider]?.targetSha256
                ?: migrationTargets[provider]?.let(LegacyMigrationCodec::snapshotSha256)
                ?: ACCOUNT_USAGE_ABSENT_SHA256
            val isOwnInterruptedProjection = priorIntent?.targetSha256?.get(provider) == observed
            if (observed != expected && !isOwnInterruptedProjection) {
                insertLegacyUsageConflict(db, provider, observed, expected, version)
            }
        }
        val intent = AccountUsageProjectionIntent(version, desiredTargets)
        writeAccountUsageProjectionIntent(db, intent)
        intent
    }

    internal fun finishAccountUsageProjection(
        intent: AccountUsageProjectionIntent,
        receipt: LegacyProjectionReceipt
    ) = transaction { db ->
        require(readVersion(db) == intent.authorityVersion) { "Account usage projection became stale" }
        finishAccountUsageProjection(db, intent, receipt)
    }

    internal fun legacyUsageConflicts(offset: Int, limit: Int): LegacyUsageConflictPage {
        require(offset >= 0) { "Conflict offset must be non-negative" }
        require(limit in 1..MAX_PAGE_SIZE) { "Conflict page size must be between 1 and $MAX_PAGE_SIZE" }
        return readLegacyUsageConflicts(database.readableDatabase, offset, limit)
    }

    internal fun canonicalDumpForTest(): ByteArray = database.canonicalDump()

    internal fun canonicalLogicalFieldsForTest(): Map<String, String> = database.canonicalLogicalFields()

    override fun close() = database.close()

    private inline fun <T> transaction(block: (SQLiteDatabase) -> T): T {
        val db = database.writableDatabase
        db.beginTransaction()
        return try {
            val result = block(db)
            db.setTransactionSuccessful()
            result
        } finally {
            db.endTransaction()
        }
    }

    companion object {
        private const val DEFAULT_DATABASE_NAME = AccountAuthorityDatabase.DEFAULT_DATABASE_NAME
        private const val MAX_PAGE_SIZE = 250

        fun open(context: Context): MainProcessAccountAuthority =
            open(context, DEFAULT_DATABASE_NAME, AccountAuthorityFaultInjector.NONE)

        internal fun open(
            context: Context,
            databaseName: String,
            faultInjector: AccountAuthorityFaultInjector = AccountAuthorityFaultInjector.NONE
        ): MainProcessAccountAuthority {
            val appContext = context.applicationContext
            check(isMainProcess(appContext)) { "Account authority is main-process only" }
            return MainProcessAccountAuthority(
                AccountAuthorityDatabase(appContext, databaseName),
                faultInjector
            )
        }

        private fun isMainProcess(context: Context): Boolean {
            val expected = context.applicationInfo.processName
            val current = if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.P) {
                Application.getProcessName()
            } else {
                val manager = context.getSystemService(Context.ACTIVITY_SERVICE) as? ActivityManager
                manager?.runningAppProcesses
                    ?.firstOrNull { it.pid == Process.myPid() }
                    ?.processName
            }
            return current == expected
        }
    }
}

private fun importEvent(
    point: LegacyMigrationFaultPoint,
    operation: LegacyMigrationOperation,
    id: ProviderAccountId,
    index: Int,
    total: Int
) = LegacyMigrationFaultEvent(point, operation, id.providerId, index, total)
