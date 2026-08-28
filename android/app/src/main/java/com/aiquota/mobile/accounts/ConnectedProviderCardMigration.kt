package com.aiquota.mobile.accounts

import android.database.Cursor
import android.database.sqlite.SQLiteDatabase
import com.aiquota.mobile.local.ProviderConnectionState
import com.aiquota.mobile.local.ProviderId
import com.aiquota.mobile.local.ProviderUsageLine
import com.aiquota.mobile.local.ProviderUsageSnapshot
import java.security.MessageDigest
import java.util.concurrent.locks.ReentrantLock
import kotlin.concurrent.withLock
import org.json.JSONObject

enum class ProviderCatalogOnboardingState {
    PENDING,
    COMPLETED,
    SKIPPED,
}

data class ProviderCatalogInitializationState(
    val migrationVersion: Int,
    val onboardingState: ProviderCatalogOnboardingState,
    val activeCardCount: Int,
    val migrationLinkCount: Int,
) {
    val showFirstRunProviderPicker: Boolean
        get() = onboardingState == ProviderCatalogOnboardingState.PENDING && activeCardCount == 0
}

internal enum class ConnectedProviderCardMigrationFaultPoint {
    BEFORE_SOURCE_READ,
    AFTER_SOURCE_READ,
    AFTER_SOURCE_VALIDATED,
    BEFORE_ROW_WRITE,
    AFTER_ROW_WRITE,
    BEFORE_MARKER_WRITE,
    AFTER_MARKER_WRITE,
    BEFORE_COMMIT,
}

internal data class ConnectedProviderCardMigrationFaultEvent(
    val point: ConnectedProviderCardMigrationFaultPoint,
    val providerId: ProviderId? = null,
    val index: Int = 0,
    val total: Int = 1,
) {
    init {
        require(index in 0 until total)
    }
}

internal fun interface ConnectedProviderCardMigrationFaultInjector {
    fun after(event: ConnectedProviderCardMigrationFaultEvent)

    companion object {
        val NONE = ConnectedProviderCardMigrationFaultInjector { }
    }
}

internal class ConnectedProviderCardMigrationInterrupted(
    val event: ConnectedProviderCardMigrationFaultEvent,
) : RuntimeException(event.point.name)

internal class ConnectedProviderCardMigrationException(
    message: String,
    cause: Throwable? = null,
) : IllegalStateException(message, cause)

internal sealed interface ConnectedProviderCardMigrationResult {
    data class Completed(
        val state: ProviderCatalogInitializationState,
        val importedAccountCount: Int,
        val resumed: Boolean,
    ) : ConnectedProviderCardMigrationResult
}

internal data class ConnectedProviderCardMigrationInput(
    val snapshots: List<ProviderUsageSnapshot>,
    val connectedContextProviders: Set<ProviderId>,
)

internal data class ConnectedProviderCardAuthorityResult(
    val state: ProviderCatalogInitializationState,
    val importedAccountCount: Int,
    val resumed: Boolean,
)

internal class ConnectedProviderCardMigration(
    private val source: LegacyMigrationSource,
    private val authority: MainProcessAccountAuthority,
    private val faultInjector: ConnectedProviderCardMigrationFaultInjector =
        ConnectedProviderCardMigrationFaultInjector.NONE,
) {
    fun run(): ConnectedProviderCardMigrationResult = PROCESS_LOCK.withLock {
        val authorityResult = authority.initializeConnectedProviderCards(source, faultInjector)
        ConnectedProviderCardMigrationResult.Completed(
            state = authorityResult.state,
            importedAccountCount = authorityResult.importedAccountCount,
            resumed = authorityResult.resumed,
        )
    }

    fun state(): ProviderCatalogInitializationState = authority.providerCatalogInitializationState()

    fun skipOnboarding(): ProviderCatalogInitializationState =
        authority.setProviderCatalogOnboardingState(ProviderCatalogOnboardingState.SKIPPED)

    fun completeOnboarding(): ProviderCatalogInitializationState =
        authority.setProviderCatalogOnboardingState(ProviderCatalogOnboardingState.COMPLETED)

    private companion object {
        val PROCESS_LOCK = ReentrantLock()
    }
}

internal fun captureAndInitializeConnectedProviderCards(
    db: SQLiteDatabase,
    source: LegacyMigrationSource,
    faultInjector: ConnectedProviderCardMigrationFaultInjector,
): ConnectedProviderCardAuthorityResult {
    faultInjector.after(
        ConnectedProviderCardMigrationFaultEvent(ConnectedProviderCardMigrationFaultPoint.BEFORE_SOURCE_READ)
    )
    val captured = source.capture()
    faultInjector.after(
        ConnectedProviderCardMigrationFaultEvent(ConnectedProviderCardMigrationFaultPoint.AFTER_SOURCE_READ)
    )
    if (LegacyMigrationCodec.blobReceipt(captured.rawAggregate) != captured.receipt.aggregate ||
        (!captured.receipt.aggregatePresent && captured.rawAggregate.isNotBlank())
    ) {
        throw ConnectedProviderCardMigrationException("Legacy provider snapshot capture is incoherent")
    }
    val snapshots = LegacySnapshotStrictParser.parse(captured.rawAggregate)
        ?: throw ConnectedProviderCardMigrationException("Malformed legacy provider snapshot aggregate")
    validateRawProviderUsageLines(captured.rawAggregate)
    val input = ConnectedProviderCardMigrationInput(
        snapshots = snapshots,
        connectedContextProviders = captured.receipt.contexts.mapTo(linkedSetOf()) { it.providerId },
    )
    validateConnectedProviderCardInput(input)
    faultInjector.after(
        ConnectedProviderCardMigrationFaultEvent(ConnectedProviderCardMigrationFaultPoint.AFTER_SOURCE_VALIDATED)
    )
    return initializeConnectedProviderCards(db, input, faultInjector)
}

internal fun initializeConnectedProviderCards(
    db: SQLiteDatabase,
    input: ConnectedProviderCardMigrationInput,
    faultInjector: ConnectedProviderCardMigrationFaultInjector,
): ConnectedProviderCardAuthorityResult {
    val snapshotsByProvider = validateConnectedProviderCardInput(input)
    val qualifyingProviders = buildSet {
        snapshotsByProvider.values
            .filter(ProviderUsageSnapshot::qualifiesForProviderCardMigration)
            .mapTo(this, ProviderUsageSnapshot::providerId)
        addAll(input.connectedContextProviders)
    }.filterTo(linkedSetOf()) { provider ->
        ProviderCardCatalogPolicy.classify(provider) is ProviderCardProviderPolicy.Released
    }
    val marker = readProviderCardInitializationMarker(db)
    if (marker.migrationVersion == CONNECTED_PROVIDER_CARD_MIGRATION_VERSION) {
        val state = validateProviderCardInitializationState(db, marker)
        qualifyingProviders.forEach { provider ->
            val defaultId = ProviderAccountId(provider, AccountKey.reservedDefault())
            if (!migrationLinkExists(db, defaultId)) {
                throw ConnectedProviderCardMigrationException(
                    "Completed provider-card migration is missing a qualifying default link"
                )
            }
        }
        return ConnectedProviderCardAuthorityResult(state, importedAccountCount = 0, resumed = true)
    }
    if (marker.migrationVersion != 0) {
        throw ConnectedProviderCardMigrationException("Unsupported provider-card migration marker")
    }
    if (providerCardMigrationLinkCount(db) != 0) {
        throw ConnectedProviderCardMigrationException("Provider-card migration links exist before completion")
    }

    validateExistingProviderCardMultiplicity(db)
    val existingIds = readProviderCardCatalogIds(db)
    val qualifiedDefaultIds = qualifyingProviders.mapTo(linkedSetOf()) { provider ->
        ProviderAccountId(provider, AccountKey.reservedDefault())
    }
    val desiredIds = (existingIds + qualifiedDefaultIds).distinct().sortedWith(providerAccountIdComparator)
    var version = readVersion(db)
    var imported = 0
    desiredIds.forEachIndexed { index, id ->
        emitRowFault(
            faultInjector,
            ConnectedProviderCardMigrationFaultPoint.BEFORE_ROW_WRITE,
            id.providerId,
            index,
            desiredIds.size,
        )
        if (readAccount(db, id) == null) {
            val policy = ProviderCardCatalogPolicy.classify(id.providerId)
            if (policy !is ProviderCardProviderPolicy.Released) {
                throw ConnectedProviderCardMigrationException("Unsupported provider in migration mapping")
            }
            version = version.next()
            val explicitAlias = if (policy.multiplicity == ProviderCardMultiplicity.SINGLE_RESERVED_DEFAULT) {
                id.providerId.displayName
            } else {
                null
            }
            val account = try {
                insertAccount(
                    db,
                    AccountRecord(
                        id = id,
                        state = AccountState.ACTIVE,
                        authState = AccountAuthState.REAUTH_REQUIRED,
                        deletionState = AccountDeletionState.NONE,
                        generation = AccountGeneration.of(1),
                        sessionRevision = SessionRevision.of(1),
                        alias = explicitAlias,
                        modifiedVersion = version,
                    ),
                )
            } catch (cause: RuntimeException) {
                throw ConnectedProviderCardMigrationException("Provider-card identity allocation failed", cause)
            }
            val snapshot = snapshotsByProvider[id.providerId]
                ?: ProviderUsageSnapshot.notConnected(id.providerId)
            writeSnapshot(db, account.id, snapshot, version)
            writeDemand(db, account.id, AccountDemandSet.NONE)
            writeAttempt(db, account.id, account.generation, account.sessionRevision, null)
            writeNonceHead(db, account.id, null)
            imported++
        }
        val origin = if (id in qualifiedDefaultIds) "LEGACY_DEFAULT" else "EXISTING_CATALOG"
        insertProviderCardMigrationLink(db, id, origin)
        emitRowFault(
            faultInjector,
            ConnectedProviderCardMigrationFaultPoint.AFTER_ROW_WRITE,
            id.providerId,
            index,
            desiredIds.size,
        )
    }
    if (imported != 0) writeVersion(db, version)

    val onboardingState = if (
        marker.onboardingState == ProviderCatalogOnboardingState.PENDING && desiredIds.isNotEmpty()
    ) {
        ProviderCatalogOnboardingState.COMPLETED
    } else {
        marker.onboardingState
    }
    val linksHash = providerCardMigrationLinksSha256(db)
    faultInjector.after(
        ConnectedProviderCardMigrationFaultEvent(ConnectedProviderCardMigrationFaultPoint.BEFORE_MARKER_WRITE)
    )
    val updated = db.compileStatement(
        "UPDATE provider_card_initialization SET migration_version=?,onboarding_state=?,links_sha256=? " +
            "WHERE singleton_id=1 AND migration_version=0"
    ).use { statement ->
        statement.bindLong(1, CONNECTED_PROVIDER_CARD_MIGRATION_VERSION.toLong())
        statement.bindString(2, onboardingState.name)
        statement.bindString(3, linksHash)
        statement.executeUpdateDelete()
    }
    if (updated != 1) throw ConnectedProviderCardMigrationException("Provider-card migration marker write failed")
    faultInjector.after(
        ConnectedProviderCardMigrationFaultEvent(ConnectedProviderCardMigrationFaultPoint.AFTER_MARKER_WRITE)
    )
    val state = validateProviderCardInitializationState(db, readProviderCardInitializationMarker(db))
    faultInjector.after(
        ConnectedProviderCardMigrationFaultEvent(ConnectedProviderCardMigrationFaultPoint.BEFORE_COMMIT)
    )
    return ConnectedProviderCardAuthorityResult(state, imported, resumed = false)
}

internal fun readProviderCatalogInitializationState(db: SQLiteDatabase): ProviderCatalogInitializationState =
    validateProviderCardInitializationState(db, readProviderCardInitializationMarker(db))

internal fun setProviderCatalogOnboardingState(
    db: SQLiteDatabase,
    state: ProviderCatalogOnboardingState,
): ProviderCatalogInitializationState {
    val current = validateProviderCardInitializationState(db, readProviderCardInitializationMarker(db))
    val next = when (state) {
        ProviderCatalogOnboardingState.PENDING ->
            throw ConnectedProviderCardMigrationException("Onboarding cannot return to pending")
        ProviderCatalogOnboardingState.SKIPPED ->
            if (current.onboardingState == ProviderCatalogOnboardingState.COMPLETED) {
                ProviderCatalogOnboardingState.COMPLETED
            } else {
                ProviderCatalogOnboardingState.SKIPPED
            }
        ProviderCatalogOnboardingState.COMPLETED -> ProviderCatalogOnboardingState.COMPLETED
    }
    if (next != current.onboardingState) {
        val updated = db.compileStatement(
            "UPDATE provider_card_initialization SET onboarding_state=? WHERE singleton_id=1"
        ).use { statement ->
            statement.bindString(1, next.name)
            statement.executeUpdateDelete()
        }
        if (updated != 1) throw ConnectedProviderCardMigrationException("Onboarding state write failed")
    }
    return validateProviderCardInitializationState(db, readProviderCardInitializationMarker(db))
}

private fun validateConnectedProviderCardInput(
    input: ConnectedProviderCardMigrationInput,
): Map<ProviderId, ProviderUsageSnapshot> {
    if (input.snapshots.map(ProviderUsageSnapshot::providerId).distinct().size != input.snapshots.size) {
        throw ConnectedProviderCardMigrationException("Duplicate legacy provider mapping")
    }
    if (input.connectedContextProviders.any { it != ProviderId.CLAUDE && it != ProviderId.CODEX }) {
        throw ConnectedProviderCardMigrationException("Malformed legacy context provider mapping")
    }
    input.snapshots.forEach { snapshot ->
        snapshot.lines.forEach { line ->
            if (!line.label.isNotBlank() || !line.key.isNotBlank()) {
                throw ConnectedProviderCardMigrationException("Malformed provider usage line identity")
            }
            if (line.remainingPercent?.let { !it.isFinite() || it !in 0f..1f } == true ||
                line.confidence?.let { !it.isFinite() || it !in 0f..1f } == true ||
                listOf(line.usedAmount, line.limitAmount, line.remainingAmount)
                    .filterNotNull()
                    .any { !it.isFinite() || it < 0.0 }
            ) {
                throw ConnectedProviderCardMigrationException("Malformed provider usage line numeric value")
            }
            if (line.remainingPercent == null && line.usedAmount == null &&
                line.limitAmount == null && line.remainingAmount == null
            ) {
                throw ConnectedProviderCardMigrationException("Provider usage line has no trusted usage value")
            }
        }
    }
    return input.snapshots.associateBy(ProviderUsageSnapshot::providerId)
}

private fun validateRawProviderUsageLines(raw: String) {
    if (raw.isBlank()) return
    val providers = JSONObject(raw).getJSONArray("providers")
    for (providerIndex in 0 until providers.length()) {
        val lines = providers.getJSONObject(providerIndex).getJSONArray("lines")
        for (lineIndex in 0 until lines.length()) {
            val line = lines.getJSONObject(lineIndex)
            val label = if (line.has("label") && !line.isNull("label")) line.getString("label") else ""
            if (label.isBlank()) {
                throw ConnectedProviderCardMigrationException("Malformed provider usage line label")
            }
        }
    }
}

private fun ProviderUsageSnapshot.qualifiesForProviderCardMigration(): Boolean =
    lines.any(ProviderUsageLine::hasTrustedUsageValue) || connectionState in CONNECTED_PROVIDER_CARD_STATES

private fun ProviderUsageLine.hasTrustedUsageValue(): Boolean =
    remainingPercent != null || usedAmount != null || limitAmount != null || remainingAmount != null

private fun validateExistingProviderCardMultiplicity(db: SQLiteDatabase) {
    ProviderId.defaultOrder().forEach { provider ->
        val policy = ProviderCardCatalogPolicy.classify(provider)
        if (policy !is ProviderCardProviderPolicy.Released ||
            policy.multiplicity != ProviderCardMultiplicity.SINGLE_RESERVED_DEFAULT
        ) {
            return@forEach
        }
        val ids = readProviderCardCatalogIds(db).filter { it.providerId == provider }
        if (ids.size > 1 || ids.any { it.accountKey != AccountKey.reservedDefault() }) {
            throw ConnectedProviderCardMigrationException("Single-provider catalog mapping is malformed")
        }
    }
}

private fun readProviderCardCatalogIds(db: SQLiteDatabase): List<ProviderAccountId> = buildList {
    db.rawQuery(
        "SELECT provider_id,account_key FROM provider_card_catalog ORDER BY provider_id,account_key",
        null,
    ).use { cursor ->
        while (cursor.moveToNext()) add(cursor.providerAccountId())
    }
}

private fun insertProviderCardMigrationLink(
    db: SQLiteDatabase,
    id: ProviderAccountId,
    origin: String,
) {
    db.compileStatement(
        "INSERT INTO provider_card_migration_links(provider_id,account_key,origin) VALUES(?,?,?)"
    ).use { statement ->
        statement.bindString(1, id.providerId.storageId)
        statement.bindString(2, id.accountKey.storageValue())
        statement.bindString(3, origin)
        if (statement.executeInsert() == -1L) {
            throw ConnectedProviderCardMigrationException("Provider-card migration link write failed")
        }
    }
}

private fun migrationLinkExists(db: SQLiteDatabase, id: ProviderAccountId): Boolean =
    db.rawQuery(
        "SELECT 1 FROM provider_card_migration_links WHERE provider_id=? AND account_key=?",
        arrayOf(id.providerId.storageId, id.accountKey.storageValue()),
    ).use(Cursor::moveToFirst)

private fun validateProviderCardInitializationState(
    db: SQLiteDatabase,
    marker: ProviderCardInitializationMarker,
): ProviderCatalogInitializationState {
    val linkCount = providerCardMigrationLinkCount(db)
    if (marker.migrationVersion == 0) {
        if (linkCount != 0 || marker.linksSha256 != ZERO_SHA256) {
            throw ConnectedProviderCardMigrationException("Uncommitted provider-card marker has durable data")
        }
    } else if (marker.migrationVersion == CONNECTED_PROVIDER_CARD_MIGRATION_VERSION) {
        if (marker.linksSha256 != providerCardMigrationLinksSha256(db)) {
            throw ConnectedProviderCardMigrationException("Provider-card migration marker/link mismatch")
        }
        val joinedCount = db.rawQuery(
            "SELECT COUNT(*) FROM provider_card_migration_links " +
                "JOIN accounts USING(provider_id,account_key) " +
                "JOIN provider_card_catalog USING(provider_id,account_key)",
            null,
        ).use { cursor ->
            if (!cursor.moveToFirst() || cursor.getType(0) != Cursor.FIELD_TYPE_INTEGER) {
                throw ConnectedProviderCardMigrationException("Provider-card migration links are malformed")
            }
            cursor.getInt(0)
        }
        if (joinedCount != linkCount) {
            throw ConnectedProviderCardMigrationException("Provider-card migration link target is missing")
        }
    } else {
        throw ConnectedProviderCardMigrationException("Unsupported provider-card migration marker")
    }
    val activeCount = db.rawQuery(
        "SELECT COUNT(*) FROM provider_card_catalog WHERE active_rank IS NOT NULL",
        null,
    ).use { cursor ->
        if (!cursor.moveToFirst() || cursor.getType(0) != Cursor.FIELD_TYPE_INTEGER) {
            throw ConnectedProviderCardMigrationException("Provider-card active count is malformed")
        }
        cursor.getInt(0)
    }
    return ProviderCatalogInitializationState(
        migrationVersion = marker.migrationVersion,
        onboardingState = marker.onboardingState,
        activeCardCount = activeCount,
        migrationLinkCount = linkCount,
    )
}

private fun readProviderCardInitializationMarker(db: SQLiteDatabase): ProviderCardInitializationMarker =
    db.rawQuery(
        "SELECT migration_version,onboarding_state,links_sha256 " +
            "FROM provider_card_initialization WHERE singleton_id=1",
        null,
    ).use { cursor ->
        if (!cursor.moveToFirst()) {
            throw ConnectedProviderCardMigrationException("Provider-card initialization marker is missing")
        }
        if (cursor.getType(0) != Cursor.FIELD_TYPE_INTEGER ||
            cursor.getType(1) != Cursor.FIELD_TYPE_STRING ||
            cursor.getType(2) != Cursor.FIELD_TYPE_STRING
        ) {
            throw ConnectedProviderCardMigrationException("Provider-card initialization marker is malformed")
        }
        val onboardingState = try {
            ProviderCatalogOnboardingState.valueOf(cursor.getString(1))
        } catch (cause: IllegalArgumentException) {
            throw ConnectedProviderCardMigrationException("Provider-card onboarding state is malformed", cause)
        }
        val hash = cursor.getString(2)
        if (!SHA256_PATTERN.matches(hash)) {
            throw ConnectedProviderCardMigrationException("Provider-card migration hash is malformed")
        }
        ProviderCardInitializationMarker(cursor.getInt(0), onboardingState, hash)
    }

private fun providerCardMigrationLinkCount(db: SQLiteDatabase): Int = db.rawQuery(
    "SELECT COUNT(*) FROM provider_card_migration_links",
    null,
).use { cursor ->
    if (!cursor.moveToFirst() || cursor.getType(0) != Cursor.FIELD_TYPE_INTEGER) {
        throw ConnectedProviderCardMigrationException("Provider-card migration-link count is malformed")
    }
    cursor.getInt(0)
}

private fun providerCardMigrationLinksSha256(db: SQLiteDatabase): String {
    val canonical = buildString {
        db.rawQuery(
            "SELECT provider_id,account_key,origin FROM provider_card_migration_links " +
                "ORDER BY provider_id,account_key",
            null,
        ).use { cursor ->
            while (cursor.moveToNext()) {
                if ((0..2).any { cursor.getType(it) != Cursor.FIELD_TYPE_STRING }) {
                    throw ConnectedProviderCardMigrationException("Provider-card migration link is malformed")
                }
                val id = cursor.providerAccountId()
                val origin = cursor.getString(2)
                if (origin != "EXISTING_CATALOG" && origin != "LEGACY_DEFAULT") {
                    throw ConnectedProviderCardMigrationException("Provider-card migration origin is malformed")
                }
                append(id.providerId.storageId).append('|')
                    .append(id.accountKey.storageValue()).append('|')
                    .append(origin).append('\n')
            }
        }
    }
    return MessageDigest.getInstance("SHA-256")
        .digest(canonical.toByteArray(Charsets.UTF_8))
        .joinToString("") { "%02x".format(it) }
}

private fun Cursor.providerAccountId(): ProviderAccountId {
    if (getType(0) != Cursor.FIELD_TYPE_STRING || getType(1) != Cursor.FIELD_TYPE_STRING) {
        throw ConnectedProviderCardMigrationException("Provider-card identity is malformed")
    }
    val provider = ProviderId.fromStorageId(getString(0))
        ?: throw ConnectedProviderCardMigrationException("Unknown provider-card provider")
    val accountKey = try {
        AccountKey.fromStorage(getString(1))
    } catch (cause: IllegalArgumentException) {
        throw ConnectedProviderCardMigrationException("Malformed provider-card account key", cause)
    }
    return ProviderAccountId(provider, accountKey)
}

private fun emitRowFault(
    faultInjector: ConnectedProviderCardMigrationFaultInjector,
    point: ConnectedProviderCardMigrationFaultPoint,
    providerId: ProviderId,
    index: Int,
    total: Int,
) {
    faultInjector.after(ConnectedProviderCardMigrationFaultEvent(point, providerId, index, total))
}

private data class ProviderCardInitializationMarker(
    val migrationVersion: Int,
    val onboardingState: ProviderCatalogOnboardingState,
    val linksSha256: String,
)

private val providerAccountIdComparator = compareBy<ProviderAccountId>(
    { ProviderId.defaultOrder().indexOf(it.providerId) },
    { it.providerId.storageId },
    { it.accountKey.storageValue() },
)

private val CONNECTED_PROVIDER_CARD_STATES = setOf(
    ProviderConnectionState.CONNECTING,
    ProviderConnectionState.CONNECTED,
    ProviderConnectionState.COLLECTING,
    ProviderConnectionState.STALE,
    ProviderConnectionState.UNAVAILABLE,
    ProviderConnectionState.ERROR,
)
private const val CONNECTED_PROVIDER_CARD_MIGRATION_VERSION = 1
private const val ZERO_SHA256 = "0000000000000000000000000000000000000000000000000000000000000000"
