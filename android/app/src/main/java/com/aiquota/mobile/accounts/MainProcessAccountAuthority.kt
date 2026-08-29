package com.aiquota.mobile.accounts

import android.app.ActivityManager
import android.app.Application
import android.content.Context
import android.database.Cursor
import android.database.sqlite.SQLiteDatabase
import android.os.Build
import android.os.Process
import androidx.annotation.RequiresApi
import com.aiquota.mobile.ProcessNameCandidate
import com.aiquota.mobile.selectCurrentProcessName
import com.aiquota.mobile.local.ProviderId
import com.aiquota.mobile.local.ProviderUsageSnapshot
import com.aiquota.mobile.providers.ProviderSnapshotCodec

class MainProcessAccountAuthority private constructor(
    private val database: AccountAuthorityDatabase,
    private val faultInjector: AccountAuthorityFaultInjector
) : AutoCloseable, ExactAccountLoginAuthority {
    fun register(seed: AuthorityAccountSeed): VersionedDisplayRecord = transaction { db ->
        require(readAccount(db, seed.account.id) == null) { "Account key is already registered" }
        val version = readVersion(db).next()
        val inserted = insertAccount(db, seed.account.copy(modifiedVersion = version))
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
        VersionedDisplayRecord(inserted, seed.snapshot, version)
    }

    internal fun initializeConnectedProviderCards(
        source: LegacyMigrationSource,
        migrationFaultInjector: ConnectedProviderCardMigrationFaultInjector,
    ): ConnectedProviderCardAuthorityResult = transaction { db ->
        captureAndInitializeConnectedProviderCards(db, source, migrationFaultInjector)
    }

    internal fun providerCatalogInitializationState(): ProviderCatalogInitializationState =
        readProviderCatalogInitializationState(database.readableDatabase)

    internal fun setProviderCatalogOnboardingState(
        state: ProviderCatalogOnboardingState,
    ): ProviderCatalogInitializationState = transaction { db ->
        setProviderCatalogOnboardingState(db, state)
    }

    internal fun suggestProviderCardAlias(providerId: ProviderId): String? {
        val multiplicity = when (val policy = ProviderCardCatalogPolicy.classify(providerId)) {
            is ProviderCardProviderPolicy.Released -> policy.multiplicity
            ProviderCardProviderPolicy.Unsupported -> return null
        }
        return transaction { db ->
            if (multiplicity == ProviderCardMultiplicity.SINGLE_RESERVED_DEFAULT &&
                activeProviderCardCount(db, providerId) != 0L
            ) {
                null
            } else {
                allocateProviderCardAlias(db, providerId).displayValue
            }
        }
    }

    internal fun enrollDisconnectedProviderCard(
        providerId: ProviderId,
        customAlias: NormalizedProviderCardAlias?,
    ): ProviderCardAddResult {
        val multiplicity = when (val policy = ProviderCardCatalogPolicy.classify(providerId)) {
            is ProviderCardProviderPolicy.Released -> policy.multiplicity
            ProviderCardProviderPolicy.Unsupported -> {
                return ProviderCardAddResult.Rejected(
                    ProviderCardAddRejection.UnsupportedProvider(providerId)
                )
            }
        }
        return transaction { db ->
            if (multiplicity == ProviderCardMultiplicity.SINGLE_RESERVED_DEFAULT &&
                activeProviderCardCount(db, providerId) != 0L
            ) {
                return@transaction ProviderCardAddResult.Rejected(
                    ProviderCardAddRejection.MultiplicityExceeded(providerId)
                )
            }

            val selectedAlias = customAlias ?: when (multiplicity) {
                ProviderCardMultiplicity.UNLIMITED -> null
                ProviderCardMultiplicity.SINGLE_RESERVED_DEFAULT -> normalizeProviderCardAlias(providerId.displayName)
            }
            if (selectedAlias != null && activeProviderCardAliasExists(db, selectedAlias.normalizedKey)) {
                return@transaction ProviderCardAddResult.Rejected(
                    ProviderCardAddRejection.AliasConflict(selectedAlias.displayValue)
                )
            }

            val reservedId = ProviderAccountId(providerId, AccountKey.reservedDefault())
            val accountId = if (multiplicity == ProviderCardMultiplicity.SINGLE_RESERVED_DEFAULT &&
                readAccount(db, reservedId) == null
            ) {
                reservedId
            } else {
                var candidate = ProviderAccountId(providerId, AccountKey.create())
                while (readAccount(db, candidate) != null) {
                    candidate = ProviderAccountId(providerId, AccountKey.create())
                }
                candidate
            }
            val version = readVersion(db).next()
            val inserted = insertAccount(
                db,
                AccountRecord(
                    id = accountId,
                    state = AccountState.ACTIVE,
                    authState = AccountAuthState.SIGNED_OUT,
                    deletionState = AccountDeletionState.NONE,
                    generation = AccountGeneration.of(0),
                    sessionRevision = SessionRevision.of(0),
                    alias = selectedAlias?.displayValue,
                    modifiedVersion = version,
                )
            )
            faultInjector.after(AccountAuthorityFaultPoint.CATALOG)
            writeVersion(db, version)
            faultInjector.after(AccountAuthorityFaultPoint.VERSION)
            ProviderCardAddResult.Added(inserted)
        }
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

    internal fun repairLegacyCopyPayloads(
        payloads: Map<ProviderAccountId, Pair<String, String>>,
    ): Boolean = try {
        transaction { db ->
            payloads.forEach { (id, data) ->
                repairLegacyMigrationCopy(db, "migration_mirrors", id, data.first)
                repairLegacyMigrationCopy(db, "migration_preferences", id, data.second)
            }
        }
        true
    } catch (failure: AccountAuthorityCatalogException) {
        false
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

    override fun beginAuthentication(id: ProviderAccountId): AccountLoginSessionBinding? = transaction { db ->
        val account = readAccount(db, id) ?: return@transaction null
        if (account.state != AccountState.ACTIVE || account.deletionState != AccountDeletionState.NONE) {
            return@transaction null
        }
        val version = readVersion(db).next()
        val updated = account.transitionTo(
            nextState = account.state,
            nextAuthState = AccountAuthState.AUTHENTICATING,
            nextDeletionState = account.deletionState,
            nextGeneration = account.generation.next(),
            nextSessionRevision = account.sessionRevision.next(),
        ).copy(modifiedVersion = version)
        writeExactLoginState(db, updated)
        writeAttempt(db, id, updated.generation, updated.sessionRevision, null)
        writeVersion(db, version)
        AccountLoginSessionBinding(id, updated.generation, updated.sessionRevision)
    }

    override fun resumeAuthentication(binding: AccountLoginSessionBinding): Boolean {
        val account = readAccount(database.readableDatabase, binding.accountId) ?: return false
        return account.matches(binding) && account.authState == AccountAuthState.AUTHENTICATING
    }

    override fun completeAuthentication(
        binding: AccountLoginSessionBinding,
        persist: () -> Boolean,
    ): Boolean = transaction { db ->
        val account = readAccount(db, binding.accountId) ?: return@transaction false
        if (!account.matches(binding) || account.authState != AccountAuthState.AUTHENTICATING) {
            return@transaction false
        }
        if (!persist()) return@transaction false
        val version = readVersion(db).next()
        writeExactLoginState(
            db,
            account.transitionTo(
                account.state,
                AccountAuthState.AUTHENTICATED,
                account.deletionState,
            ).copy(modifiedVersion = version),
        )
        writeVersion(db, version)
        true
    }

    override fun markReauthentication(binding: AccountLoginSessionBinding): Boolean = transaction { db ->
        val account = readAccount(db, binding.accountId) ?: return@transaction false
        if (!account.matches(binding)) return@transaction false
        val version = readVersion(db).next()
        writeExactLoginState(
            db,
            account.transitionTo(
                account.state,
                AccountAuthState.REAUTH_REQUIRED,
                account.deletionState,
            ).copy(modifiedVersion = version),
        )
        writeAttempt(db, binding.accountId, account.generation, account.sessionRevision, null)
        writeVersion(db, version)
        true
    }

    override fun logoutExact(id: ProviderAccountId, clear: () -> Boolean): Boolean = transaction { db ->
        val account = readAccount(db, id) ?: return@transaction false
        if (account.state != AccountState.ACTIVE || account.deletionState != AccountDeletionState.NONE) {
            return@transaction false
        }
        if (!clear()) return@transaction false
        val version = readVersion(db).next()
        val updated = account.transitionTo(
            account.state,
            AccountAuthState.REAUTH_REQUIRED,
            account.deletionState,
            account.generation.next(),
            account.sessionRevision.next(),
        ).copy(modifiedVersion = version)
        writeExactLoginState(db, updated)
        writeAttempt(db, id, updated.generation, updated.sessionRevision, null)
        writeVersion(db, version)
        true
    }

    override fun currentBinding(id: ProviderAccountId): AccountLoginSessionBinding? {
        val account = readAccount(database.readableDatabase, id) ?: return null
        if (account.state != AccountState.ACTIVE || account.deletionState != AccountDeletionState.NONE) {
            return null
        }
        return AccountLoginSessionBinding(id, account.generation, account.sessionRevision)
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

    fun refreshDemandRecords(): List<AccountRefreshDemandRecord> {
        val db = database.readableDatabase
        val records = mutableListOf<AccountRefreshDemandRecord>()
        var offset = 0
        do {
            val page = readActiveProviderCardPage(db, offset, MAX_PAGE_SIZE)
            page.records.forEach { card ->
                val id = card.accountId
                val demand = db.rawQuery(
                    "SELECT demand_mask FROM demands WHERE provider_id=? AND account_key=?",
                    arrayOf(id.providerId.storageId, id.accountKey.storageValue()),
                ).use { cursor ->
                    if (cursor.moveToFirst()) AccountDemandSet.fromMask(cursor.getInt(0))
                    else AccountDemandSet.NONE
                }
                records += AccountRefreshDemandRecord(card, demand)
            }
            offset = page.nextOffset ?: break
        } while (true)
        return records
    }

    fun abandonAttempt(lease: AttemptLease, requeue: Boolean): Boolean = transaction { db ->
        val account = readAccount(db, lease.accountId) ?: return@transaction false
        if (account.generation != lease.generation || account.sessionRevision != lease.sessionRevision) {
            return@transaction false
        }
        if (!attemptMatches(db, lease)) return@transaction false
        val demand = if (requeue) {
            db.rawQuery(
                "SELECT demand_mask FROM demands WHERE provider_id=? AND account_key=?",
                arrayOf(lease.accountId.providerId.storageId, lease.accountId.accountKey.storageValue()),
            ).use { cursor ->
                if (cursor.moveToFirst()) AccountDemandSet.fromMask(cursor.getInt(0))
                else AccountDemandSet.NONE
            }
        } else {
            AccountDemandSet.NONE
        }
        val version = readVersion(db).next()
        updateAccountVersion(db, lease.accountId, version)
        writeDemand(db, lease.accountId, demand)
        writeAttempt(db, lease.accountId, lease.generation, lease.sessionRevision, null)
        writeVersion(db, version)
        true
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
        db.rawQuery(
            "SELECT ${ACCOUNT_COLUMNS.joinToString(",") { "accounts.$it" }} " +
                "FROM accounts JOIN provider_card_catalog USING(provider_id,account_key) " +
                "ORDER BY provider_card_catalog.active_rank IS NULL," +
                "provider_card_catalog.active_rank,accounts.provider_id,accounts.account_key LIMIT ? OFFSET ?",
            arrayOf(limit.toString(), offset.toString()),
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
            SELECT ${ACCOUNT_COLUMNS.joinToString(",") { "accounts.$it" }}, snapshots.snapshot_json, snapshots.display_version
            FROM accounts
            JOIN snapshots USING(provider_id, account_key)
            JOIN provider_card_catalog USING(provider_id, account_key)
            ORDER BY provider_card_catalog.active_rank IS NULL, provider_card_catalog.active_rank, accounts.provider_id, accounts.account_key LIMIT ? OFFSET ?
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

    internal fun activeProviderCards(offset: Int, limit: Int): ProviderCardDisplayPage = transaction { db ->
        readActiveProviderCardPage(db, offset, limit)
    }

    internal fun reorderProviderCards(request: ReorderProviderCardsRequest): ReorderProviderCardsResult =
        transaction { db -> reorderActiveProviderCards(db, request) }

    internal fun requestAccountRefresh(request: AccountRefreshRequest): AccountRefreshRequestResult =
        transaction { db -> requestExactAccountRefresh(db, request) }

    internal fun accountUsageRecord(accountId: ProviderAccountId): VersionedDisplayRecord? =
        readExactProviderCardRecord(database.readableDatabase, accountId)

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
            VersionedDisplayRecord(updated, write.snapshot, updated.modifiedVersion),
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

    internal fun compatibilityPrimarySnapshot(): ProviderCardCompatibilityPrimarySnapshot {
        val db = database.readableDatabase
        val accounts = ProviderId.defaultOrder().associateWith { provider ->
            val policy = ProviderCardCatalogPolicy.classify(provider) as? ProviderCardProviderPolicy.Released
                ?: return@associateWith null
            if (policy.multiplicity == ProviderCardMultiplicity.UNLIMITED) {
                resolveAccountUsagePrimary(db, provider)
            } else {
                val id = ProviderAccountId(provider, AccountKey.reservedDefault())
                readAccount(db, id)?.takeIf {
                    it.state == AccountState.ACTIVE && it.deletionState == AccountDeletionState.NONE
                }?.id
            }
        }
        val selected = accounts.values.filterNotNull().toSet()
        val ordered = buildList {
            db.rawQuery(
                "SELECT provider_id,account_key FROM provider_card_catalog " +
                    "WHERE active_rank IS NOT NULL ORDER BY active_rank",
                null,
            ).use { cursor ->
                while (cursor.moveToNext()) {
                    val provider = ProviderId.entries.firstOrNull { it.storageId == cursor.getString(0) }
                        ?: continue
                    val key = runCatching { AccountKey.fromStorage(cursor.getString(1)) }.getOrNull()
                        ?: continue
                    ProviderAccountId(provider, key).takeIf(selected::contains)?.let(::add)
                }
            }
        }
        return ProviderCardCompatibilityPrimarySnapshot(readVersion(db), accounts, ordered)
    }

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

    internal fun beginProviderCardDeletion(
        accountId: ProviderAccountId,
    ): BeginProviderCardDeletionResult = transaction { db ->
        val account = readAccount(db, accountId) ?: return@transaction BeginProviderCardDeletionResult.Missing
        readProviderCardDeletion(db, accountId)?.let {
            return@transaction BeginProviderCardDeletionResult.Ready(it)
        }
        val version = readVersion(db).next()
        if (account.deletionState == AccountDeletionState.NONE) {
            val activeRank = db.rawQuery(
                "SELECT active_rank FROM provider_card_catalog WHERE provider_id=? AND account_key=?",
                arrayOf(accountId.providerId.storageId, accountId.accountKey.storageValue()),
            ).use { cursor ->
                check(cursor.moveToFirst() && !cursor.isNull(0)) { "Active card has no authority rank" }
                cursor.getLong(0)
            }
            db.compileStatement(
                "UPDATE accounts SET state='DELETED',auth_state='SIGNED_OUT'," +
                    "deletion_state='TOMBSTONED',generation=?,session_revision=?,modified_version=? " +
                    "WHERE provider_id=? AND account_key=? AND deletion_state='NONE'"
            ).use { statement ->
                statement.bindLong(1, account.generation.next().value)
                statement.bindLong(2, account.sessionRevision.next().value)
                statement.bindLong(3, version.value)
                statement.bindString(4, accountId.providerId.storageId)
                statement.bindString(5, accountId.accountKey.storageValue())
                check(statement.executeUpdateDelete() == 1) { "Provider card changed during tombstone" }
            }
            db.compileStatement(
                "UPDATE provider_card_catalog SET active_rank=NULL WHERE provider_id=? AND account_key=?"
            ).use { statement ->
                statement.bindString(1, accountId.providerId.storageId)
                statement.bindString(2, accountId.accountKey.storageValue())
                check(statement.executeUpdateDelete() == 1) { "Provider-card metadata disappeared" }
            }
            db.compileStatement(
                "UPDATE provider_card_catalog SET active_rank=active_rank-1 WHERE active_rank>?"
            ).use { statement ->
                statement.bindLong(1, activeRank)
                statement.executeUpdateDelete()
            }
        } else {
            updateAccountVersion(db, accountId, version)
        }
        val journal = if (account.deletionState == AccountDeletionState.ERASED) {
            writeRecoveredErasedProviderCardDeletion(db, accountId, version)
        } else {
            writeInitialProviderCardDeletion(db, accountId, version)
        }
        writeVersion(db, version)
        BeginProviderCardDeletionResult.Ready(journal)
    }

    internal fun providerCardDeletion(accountId: ProviderAccountId): ProviderCardDeletionRecord? =
        readProviderCardDeletion(database.readableDatabase, accountId)

    internal fun pendingProviderCardDeletions(): List<ProviderAccountId> =
        pendingProviderCardDeletionIds(database.readableDatabase)

    internal fun cancelDeletedCardWork(accountId: ProviderAccountId): ProviderCardDeletionRecord =
        transaction { db ->
            val current = requireNotNull(readProviderCardDeletion(db, accountId))
            check(current.step == ProviderCardDeletionStep.TOMBSTONED)
            val version = readVersion(db).next()
            db.compileStatement(
                "UPDATE accounts SET deletion_state='ERASURE_PENDING',modified_version=? " +
                    "WHERE provider_id=? AND account_key=? AND deletion_state IN ('TOMBSTONED','ERASURE_PENDING')"
            ).use { statement ->
                statement.bindLong(1, version.value)
                statement.bindString(2, accountId.providerId.storageId)
                statement.bindString(3, accountId.accountKey.storageValue())
                check(statement.executeUpdateDelete() == 1) { "Deleted account disappeared" }
            }
            listOf("demands", "attempts", "nonce_heads", "published_nonces").forEach { table ->
                db.delete(
                    table,
                    "provider_id=? AND account_key=?",
                    arrayOf(accountId.providerId.storageId, accountId.accountKey.storageValue()),
                )
            }
            val advanced = requireNotNull(
                advanceUnclaimedProviderCardDeletion(
                    db,
                    current,
                    ProviderCardDeletionStep.WORK_CANCELLED,
                    version,
                )
            ) { "Provider-card deletion cancellation lost its revision" }
            writeVersion(db, version)
            advanced
        }

    internal fun clearDeletedCardPrimary(accountId: ProviderAccountId): ProviderCardDeletionRecord =
        transaction { db ->
            val current = requireNotNull(readProviderCardDeletion(db, accountId))
            check(current.step == ProviderCardDeletionStep.WORK_CANCELLED)
            if (accountId.providerId in ACCOUNT_USAGE_TARGET_PROVIDERS) {
                val selected = when (val selection = readAccountUsagePrimarySelection(db, accountId.providerId)) {
                    AccountUsagePrimarySelection.InitialMigrationDefault ->
                        ProviderAccountId(accountId.providerId, AccountKey.reservedDefault())
                    AccountUsagePrimarySelection.ExplicitNone -> null
                    is AccountUsagePrimarySelection.ExplicitAccount -> selection.accountId
                }
                if (selected == accountId) clearAccountUsagePrimary(db, accountId.providerId)
            }
            advanceDeletedCardStep(db, current, ProviderCardDeletionStep.PRIMARY_CLEARED)
        }

    internal fun eraseDeletedCardUsage(accountId: ProviderAccountId): ProviderCardDeletionRecord =
        transaction { db ->
            val current = requireNotNull(readProviderCardDeletion(db, accountId))
            check(current.step == ProviderCardDeletionStep.PROVIDER_CLEANUP)
            listOf("snapshots", "migration_mirrors", "migration_preferences").forEach { table ->
                db.delete(
                    table,
                    "provider_id=? AND account_key=?",
                    arrayOf(accountId.providerId.storageId, accountId.accountKey.storageValue()),
                )
            }
            advanceDeletedCardStep(db, current, ProviderCardDeletionStep.USAGE_ERASED)
        }

    internal fun claimProviderCardDeletion(
        expected: ProviderCardDeletionRecord,
        owner: ProviderCardDeletionOwnerToken,
        nowMillis: Long,
        expiresAtMillis: Long,
    ): ProviderCardDeletionClaimResult = transaction { db ->
        claimProviderCardDeletion(db, expected, owner, nowMillis, expiresAtMillis)
    }

    internal fun advanceClaimedProviderCardDeletion(
        claim: ProviderCardDeletionClaim,
        next: ProviderCardDeletionStep,
        completionTimeMillis: Long,
    ): ProviderCardDeletionRecord? = transaction { db ->
        val version = readVersion(db).next()
        val advanced = advanceClaimedProviderCardDeletion(
            db,
            claim,
            next,
            version,
            completionTimeMillis,
        )
            ?: return@transaction null
        if (next == ProviderCardDeletionStep.ERASED) {
            markDeletedCardErased(db, claim.record.accountId, version)
        } else {
            updateAccountVersion(db, claim.record.accountId, version)
        }
        writeVersion(db, version)
        advanced
    }

    internal fun failClaimedProviderCardDeletion(
        claim: ProviderCardDeletionClaim,
        failure: ProviderCardDeletionFailure,
        completionTimeMillis: Long,
    ): ProviderCardDeletionRecord? = transaction { db ->
        val version = readVersion(db).next()
        val failed = failClaimedProviderCardDeletion(
            db,
            claim,
            failure,
            version,
            completionTimeMillis,
        )
            ?: return@transaction null
        updateAccountVersion(db, claim.record.accountId, version)
        writeVersion(db, version)
        failed
    }

    internal fun finalizeProviderCardDeletion(accountId: ProviderAccountId): ProviderCardDeletionRecord =
        transaction { db ->
            val current = requireNotNull(readProviderCardDeletion(db, accountId))
            check(current.step == ProviderCardDeletionStep.COMPATIBILITY_CLEARED)
            val version = readVersion(db).next()
            val erased = requireNotNull(
                advanceUnclaimedProviderCardDeletion(db, current, ProviderCardDeletionStep.ERASED, version)
            ) { "Provider-card deletion finalization lost its revision" }
            markDeletedCardErased(db, accountId, version)
            writeVersion(db, version)
            erased
        }

    private fun markDeletedCardErased(
        db: SQLiteDatabase,
        accountId: ProviderAccountId,
        version: DisplayVersion,
    ) {
        db.compileStatement(
            "UPDATE accounts SET deletion_state='ERASED',modified_version=? " +
                "WHERE provider_id=? AND account_key=? AND state='DELETED' AND deletion_state='ERASURE_PENDING'"
        ).use { statement ->
            statement.bindLong(1, version.value)
            statement.bindString(2, accountId.providerId.storageId)
            statement.bindString(3, accountId.accountKey.storageValue())
            check(statement.executeUpdateDelete() == 1) { "Deleted account is not pending erasure" }
        }
    }

    private fun advanceDeletedCardStep(
        db: SQLiteDatabase,
        current: ProviderCardDeletionRecord,
        next: ProviderCardDeletionStep,
    ): ProviderCardDeletionRecord {
        val version = readVersion(db).next()
        val advanced = requireNotNull(advanceUnclaimedProviderCardDeletion(db, current, next, version)) {
            "Provider-card deletion step lost its revision"
        }
        updateAccountVersion(db, current.accountId, version)
        writeVersion(db, version)
        return advanced
    }

    internal fun canonicalDumpForTest(): ByteArray = database.canonicalDump()

    internal fun canonicalLogicalFieldsForTest(): Map<String, String> = database.canonicalLogicalFields()

    override fun close() = database.close()

    private fun writeExactLoginState(db: SQLiteDatabase, account: AccountRecord) {
        db.compileStatement(
            "UPDATE accounts SET auth_state=?,generation=?,session_revision=?,modified_version=? " +
                "WHERE provider_id=? AND account_key=?"
        ).use { statement ->
            statement.bindString(1, account.authState.name)
            statement.bindLong(2, account.generation.value)
            statement.bindLong(3, account.sessionRevision.value)
            statement.bindLong(4, account.modifiedVersion.value)
            statement.bindString(5, account.id.providerId.storageId)
            statement.bindString(6, account.id.accountKey.storageValue())
            check(statement.executeUpdateDelete() == 1) { "Exact login account changed" }
        }
    }

    private fun AccountRecord.matches(binding: AccountLoginSessionBinding): Boolean =
        id == binding.accountId &&
            generation == binding.generation &&
            sessionRevision == binding.sessionRevision &&
            state == AccountState.ACTIVE &&
            deletionState == AccountDeletionState.NONE

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
            faultInjector: AccountAuthorityFaultInjector = AccountAuthorityFaultInjector.NONE,
            migrationFaultInjector: AccountAuthorityMigrationFaultInjector =
                AccountAuthorityMigrationFaultInjector.NONE,
        ): MainProcessAccountAuthority {
            val appContext = context.applicationContext
            check(isMainProcess(appContext)) { "Account authority is main-process only" }
            return MainProcessAccountAuthority(
                AccountAuthorityDatabase(appContext, databaseName, migrationFaultInjector),
                faultInjector
            )
        }

        private fun isMainProcess(context: Context): Boolean {
            val expected = context.applicationInfo.processName
            return isMainProcess(
                expectedProcessName = expected,
                sdkInt = Build.VERSION.SDK_INT,
                currentPid = Process.myPid(),
                currentUid = Process.myUid(),
                candidates = {
                    val manager =
                        context.getSystemService(Context.ACTIVITY_SERVICE) as? ActivityManager
                    manager?.runningAppProcesses
                        .orEmpty()
                        .map {
                            ProcessNameCandidate(
                                pid = it.pid,
                                uid = it.uid,
                                processName = it.processName,
                            )
                        }
                },
                modernProcessName = ::modernProcessName,
            )
        }

        internal fun isMainProcess(
            expectedProcessName: String,
            sdkInt: Int,
            currentPid: Int,
            currentUid: Int,
            candidates: () -> Iterable<ProcessNameCandidate>,
            modernProcessName: () -> String,
        ): Boolean =
            selectCurrentProcessName(
                sdkInt = sdkInt,
                currentPid = currentPid,
                currentUid = currentUid,
                candidates = candidates,
                modernProcessName = modernProcessName,
            ) == expectedProcessName

        @RequiresApi(Build.VERSION_CODES.P)
        private fun modernProcessName(): String = Application.getProcessName()
    }
}

private fun importEvent(
    point: LegacyMigrationFaultPoint,
    operation: LegacyMigrationOperation,
    id: ProviderAccountId,
    index: Int,
    total: Int
) = LegacyMigrationFaultEvent(point, operation, id.providerId, index, total)
