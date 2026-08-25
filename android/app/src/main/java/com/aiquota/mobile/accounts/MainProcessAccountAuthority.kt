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
        snapshots: Map<ProviderId, ProviderUsageSnapshot>
    ): List<VersionedDisplayRecord> = transaction { db ->
        snapshots.entries.sortedBy { it.key.ordinal }.map { (providerId, snapshot) ->
            require(providerId == ProviderId.CLAUDE || providerId == ProviderId.CODEX)
            val id = ProviderAccountId(providerId, AccountKey.reservedDefault())
            readLegacyImportRecord(db, id)?.also { existing ->
                require(existing.account.state == AccountState.ACTIVE)
                require(existing.account.authState == AccountAuthState.REAUTH_REQUIRED)
                require(existing.account.deletionState == AccountDeletionState.NONE)
                require(existing.snapshot == snapshot)
            } ?: run {
                val version = readVersion(db).next()
                val account = AccountRecord(
                    id = id,
                    state = AccountState.ACTIVE,
                    authState = AccountAuthState.REAUTH_REQUIRED,
                    deletionState = AccountDeletionState.NONE,
                    generation = AccountGeneration.of(1),
                    sessionRevision = SessionRevision.of(1),
                    modifiedVersion = version
                )
                insertAccount(db, account)
                faultInjector.after(AccountAuthorityFaultPoint.CATALOG)
                writeSnapshot(db, id, snapshot, version)
                faultInjector.after(AccountAuthorityFaultPoint.SNAPSHOT)
                writeDemand(db, id, AccountDemandSet.NONE)
                faultInjector.after(AccountAuthorityFaultPoint.DEMAND)
                writeAttempt(db, id, account.generation, account.sessionRevision, null)
                faultInjector.after(AccountAuthorityFaultPoint.ATTEMPT)
                writeNonceHead(db, id, null)
                faultInjector.after(AccountAuthorityFaultPoint.NONCE)
                writeVersion(db, version)
                faultInjector.after(AccountAuthorityFaultPoint.VERSION)
                VersionedDisplayRecord(account, snapshot, version)
            }
        }
    }

    internal fun legacyImportRecord(id: ProviderAccountId): VersionedDisplayRecord? =
        readLegacyImportRecord(database.readableDatabase, id)

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

    internal fun canonicalDumpForTest(): ByteArray = database.canonicalDump()

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
        private const val DEFAULT_DATABASE_NAME = "ai_quota_accounts_v2.db"
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
