package com.aiquota.mobile.accounts

import android.content.Context
import androidx.test.core.app.ApplicationProvider
import com.aiquota.mobile.local.LocalUsageRepository
import com.aiquota.mobile.local.ProviderConnectionState
import com.aiquota.mobile.local.ProviderId
import com.aiquota.mobile.local.ProviderUsageLine
import com.aiquota.mobile.local.ProviderUsageSnapshot
import com.aiquota.mobile.providers.ProviderScriptProviders
import com.aiquota.mobile.providers.ProviderSnapshotCodec
import java.security.MessageDigest
import java.util.concurrent.atomic.AtomicInteger
import org.junit.After
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertNotNull
import org.junit.Assert.assertNull
import org.junit.Assert.assertTrue
import org.junit.Before
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner

@RunWith(RobolectricTestRunner::class)
class AccountUsageRepositoryFixIteration1Test {
    private lateinit var context: Context
    private lateinit var databaseName: String

    @Before
    fun setUp() {
        context = ApplicationProvider.getApplicationContext()
        databaseName = "account-usage-fix1-${counter.incrementAndGet()}.db"
        context.deleteDatabase(databaseName)
        clearStorage()
    }

    @After
    fun tearDown() {
        context.deleteDatabase(databaseName)
        clearStorage()
    }

    @Test
    fun migrationResumePreservesExplicitBAndExplicitNone() {
        val defaultId = ProviderAccountId(ProviderId.CLAUDE, AccountKey.reservedDefault())
        val siblingB = id(ProviderId.CLAUDE, 1)
        migrateDefault(snapshot(defaultId, 65)).close()

        MainProcessAccountAuthority.open(context, databaseName).let { authority ->
            authority.register(seed(siblingB, 17))
            AccountUsageRepository.openForTest(authority, AndroidLegacyMigrationSource(context)).use { repository ->
                val selected = repository.assignPrimary(siblingB, requireNotNull(repository.read(siblingB)).version)
                assertTrue(selected is PrimaryAssignmentResult.Assigned)
                assertEquals(17, legacyRemaining(ProviderId.CLAUDE))
            }
        }

        resumeMigration().close()
        assertEquals("migration resume must preserve explicit B", 17, legacyRemaining(ProviderId.CLAUDE))
        MainProcessAccountAuthority.open(context, databaseName).let { authority ->
            AccountUsageRepository.openForTest(authority, AndroidLegacyMigrationSource(context)).use { repository ->
                assertTrue(repository.assignPrimary(defaultId, requireNotNull(repository.read(defaultId)).version) is PrimaryAssignmentResult.Assigned)
                assertTrue(repository.assignPrimary(siblingB, requireNotNull(repository.read(siblingB)).version) is PrimaryAssignmentResult.Assigned)
            }
        }
        resumeMigration().close()
        resumeMigration().close()
        assertEquals(17, legacyRemaining(ProviderId.CLAUDE))
        val explicitBHash = sha256(rawLegacy().toByteArray())

        resetForMigration(snapshot(defaultId, 65))
        MainProcessAccountAuthority.open(context, databaseName).let { authority ->
            AccountUsageRepository.openForTest(authority, AndroidLegacyMigrationSource(context)).use { repository ->
                val defaultRecord = requireNotNull(repository.read(defaultId))
                assertTrue(repository.assignPrimary(defaultId, defaultRecord.version) is PrimaryAssignmentResult.Assigned)
                assertTrue(repository.clearPrimary(ProviderId.CLAUDE).changed)
                assertFalse(legacySnapshots().any { it.providerId == ProviderId.CLAUDE })
            }
        }
        LocalUsageRepository(context).saveSnapshots(listOf(snapshot(defaultId, 65)))

        resumeMigration().close()
        resumeMigration().close()
        assertFalse("migration resume must preserve explicit none", legacySnapshots().any { it.providerId == ProviderId.CLAUDE })
        val explicitNoneHash = sha256(rawLegacy().toByteArray())
        println("QA_FIX1_V701_B_HASH=$explicitBHash;NONE_HASH=$explicitNoneHash;RESUMES=4")
    }

    @Test
    fun targetWriteBetweenCaptureAndProjectionRecordsConflictAndPreservesNonTarget() {
        val accountA = id(ProviderId.CLAUDE, 10)
        val geminiBefore = snapshot(id(ProviderId.GEMINI, 11), 40)
        LocalUsageRepository(context).saveSnapshots(listOf(geminiBefore))
        MainProcessAccountAuthority.open(context, databaseName).let { authority ->
            authority.register(seed(accountA, 90))
            AccountUsageRepository.openForTest(authority, AndroidLegacyMigrationSource(context)).use { repository ->
                assertTrue(repository.assignPrimary(accountA, requireNotNull(repository.read(accountA)).version) is PrimaryAssignmentResult.Assigned)
            }
        }

        val authority = MainProcessAccountAuthority.open(context, databaseName)
        val repository = AccountUsageRepository.openForTest(authority, AndroidLegacyMigrationSource(context))
        val v2Before = requireNotNull(repository.read(accountA))
        val v2HashBefore = snapshotHash(v2Before.snapshot)
        val geminiAfter = snapshot(id(ProviderId.GEMINI, 12), 73)
        val externalClaude = snapshot(id(ProviderId.CLAUDE, 13), 2)
        LocalUsageRepository(context).saveSnapshots(listOf(geminiAfter, externalClaude))
        val nonTargetHash = providerObjectHash(rawLegacy(), ProviderId.GEMINI)

        assertTrue(repository.reconcileLegacyProjection() is AccountUsageProjectionResult.Applied)
        assertEquals(1, repository.conflicts(0, 10).totalCount)
        assertEquals(90, legacyRemaining(ProviderId.CLAUDE))
        assertEquals(nonTargetHash, providerObjectHash(rawLegacy(), ProviderId.GEMINI))
        assertEquals(v2Before, repository.read(accountA))
        assertEquals(v2HashBefore, snapshotHash(requireNotNull(repository.read(accountA)).snapshot))
        repository.reconcileLegacyProjection()
        assertEquals(1, repository.conflicts(0, 10).totalCount)
        val receipt = repository.conflicts(0, 10).receipts.single().receiptSha256
        println("QA_FIX1_V702_CONFLICTS=1;RECEIPT=$receipt;V2_HASH=$v2HashBefore;NON_TARGET_HASH=$nonTargetHash")
        repository.close()
        MainProcessAccountAuthority.open(context, databaseName).let { reopenedAuthority ->
            AccountUsageRepository.openForTest(reopenedAuthority, AndroidLegacyMigrationSource(context)).use { reopened ->
                assertEquals(1, reopened.conflicts(0, 10).totalCount)
                assertEquals(v2HashBefore, snapshotHash(requireNotNull(reopened.read(accountA)).snapshot))
            }
        }
    }

    @Test
    fun mirrorMetadataMismatchKeepsIntentUntilFaithfulRetry() {
        val readBackHashes = mutableListOf<String>()
        MirrorCorruption.entries.forEachIndexed { index, corruption ->
            if (index > 0) {
                context.deleteDatabase(databaseName)
                databaseName = "account-usage-fix1-mirror-${counter.incrementAndGet()}.db"
                clearStorage()
            }
            val accountA = id(ProviderId.CLAUDE, 20 + index)
            val delegate = AndroidLegacyMigrationSource(context)
            val corrupting = MetadataCorruptingProjectionStore(delegate, context, corruption)
            val authority = MainProcessAccountAuthority.open(context, databaseName)
            authority.register(seed(accountA, 76 - index))
            AccountUsageRepository.openForTest(authority, corrupting).use { repository ->
                val assigned = repository.assignPrimary(accountA, requireNotNull(repository.read(accountA)).version)
                assertTrue(assigned is PrimaryAssignmentResult.Assigned)
                assertEquals(
                    corruption.name,
                    AccountUsageProjectionResult.Failed(AccountUsageProjectionFailure.READ_BACK_FAILED),
                    (assigned as PrimaryAssignmentResult.Assigned).projection
                )
                assertNotNull(corruption.name, authority.accountUsageProjectionIntent())
                assertEquals(corruption.name, 0, authority.legacyProjectionState().appliedRevision)
                corrupting.enabled = false
                assertTrue(corruption.name, repository.reconcileLegacyProjection() is AccountUsageProjectionResult.Applied)
                assertNull(corruption.name, authority.accountUsageProjectionIntent())
                assertTrue(corruption.name, authority.legacyProjectionState().appliedRevision > 0)
                readBackHashes += "${corruption.name}:${canonicalMirrorHash(ProviderId.CLAUDE)}"
            }
        }
        println("QA_FIX1_V703_RETRIES=${readBackHashes.size};READ_BACK_HASHES=${readBackHashes.joinToString(",")}")
    }

    private fun migrateDefault(defaultSnapshot: ProviderUsageSnapshot): MainProcessAccountAuthority {
        LocalUsageRepository(context).saveSnapshots(listOf(defaultSnapshot))
        val authority = MainProcessAccountAuthority.open(context, databaseName)
        val source = AndroidLegacyMigrationSource(context)
        val result = LegacyAccountMigration(
            source,
            AndroidLegacyMigrationJournal(context),
            authority,
            AccountCredentialVault(InMemoryCredentialEnvelopeStore(), FakeCredentialVaultCrypto()),
            source
        ).run()
        assertTrue(result is LegacyMigrationResult.Completed)
        return authority
    }

    private fun resumeMigration(): MainProcessAccountAuthority {
        val authority = MainProcessAccountAuthority.open(context, databaseName)
        val source = AndroidLegacyMigrationSource(context)
        val result = LegacyAccountMigration(
            source,
            AndroidLegacyMigrationJournal(context),
            authority,
            AccountCredentialVault(InMemoryCredentialEnvelopeStore(), FakeCredentialVaultCrypto()),
            source
        ).run()
        assertTrue(result is LegacyMigrationResult.Completed)
        return authority
    }

    private fun resetForMigration(defaultSnapshot: ProviderUsageSnapshot) {
        context.deleteDatabase(databaseName)
        databaseName = "account-usage-fix1-none-${counter.incrementAndGet()}.db"
        clearStorage()
        migrateDefault(defaultSnapshot).close()
    }

    private fun clearStorage() {
        context.getSharedPreferences("ai_quota_local_usage", Context.MODE_PRIVATE).edit().clear().commit()
        context.getSharedPreferences("ai_quota_widget_cache", Context.MODE_PRIVATE).edit().clear().commit()
        context.getSharedPreferences("legacy_account_migration_v1", Context.MODE_PRIVATE).edit().clear().commit()
        ProviderId.entries.forEach { provider ->
            val stores = ProviderScriptProviders.storeNamesFor(provider)
            listOf(stores.usageData, stores.accountData, stores.scriptData).forEach { name ->
                context.getSharedPreferences(name, Context.MODE_PRIVATE).edit().clear().commit()
            }
        }
    }

    private fun rawLegacy(): String = context.getSharedPreferences("ai_quota_local_usage", Context.MODE_PRIVATE)
        .getString("provider_snapshots", "")
        .orEmpty()

    private fun legacySnapshots(): List<ProviderUsageSnapshot> = ProviderSnapshotCodec.decode(rawLegacy())

    private fun legacyRemaining(providerId: ProviderId): Int = legacySnapshots()
        .single { it.providerId == providerId }
        .lines.single().remainingText.removeSuffix("%").toInt()

    private fun providerObjectHash(raw: String, providerId: ProviderId): String {
        val marker = "\"providerId\":\"${providerId.storageId}\""
        val markerIndex = raw.indexOf(marker)
        require(markerIndex >= 0)
        var start = markerIndex
        while (raw[start] != '{') start--
        var depth = 0
        var string = false
        var escaped = false
        for (index in start until raw.length) {
            val char = raw[index]
            if (string) {
                when {
                    escaped -> escaped = false
                    char == '\\' -> escaped = true
                    char == '"' -> string = false
                }
            } else {
                when (char) {
                    '"' -> string = true
                    '{' -> depth++
                    '}' -> if (--depth == 0) return sha256(raw.substring(start, index + 1).toByteArray())
                }
            }
        }
        error("Incomplete provider object")
    }

    private fun canonicalMirrorHash(providerId: ProviderId): String {
        val stores = ProviderScriptProviders.storeNamesFor(providerId)
        val canonical = listOf(stores.usageData, stores.accountData, stores.scriptData).sorted().joinToString("|") { name ->
            val values = context.getSharedPreferences(name, Context.MODE_PRIVATE).all.toSortedMap()
            "$name:" + values.entries.joinToString(",") { (key, value) -> "$key=$value" }
        }
        return sha256(canonical.toByteArray())
    }

    private fun snapshotHash(snapshot: ProviderUsageSnapshot): String =
        sha256(ProviderSnapshotCodec.encode(listOf(snapshot)).toByteArray())

    private fun sha256(bytes: ByteArray): String = MessageDigest.getInstance("SHA-256")
        .digest(bytes).joinToString("") { "%02x".format(it) }

    private fun seed(accountId: ProviderAccountId, remaining: Int) = AuthorityAccountSeed(
        AccountRecord(
            accountId,
            AccountState.ACTIVE,
            AccountAuthState.AUTHENTICATED,
            AccountDeletionState.NONE,
            AccountGeneration.of(1),
            SessionRevision.of(1)
        ),
        snapshot(accountId, remaining)
    )

    private fun snapshot(accountId: ProviderAccountId, remaining: Int) = ProviderUsageSnapshot(
        providerId = accountId.providerId,
        connectionState = ProviderConnectionState.CONNECTED,
        account = "fixture-$remaining.invalid",
        updatedAt = "2026-08-25T00:00:00Z",
        statusUpdatedAt = "2026-08-25T00:00:00Z",
        lines = listOf(
            ProviderUsageLine(
                key = "${accountId.providerId.storageId}:quota",
                label = "Quota",
                remainingPercent = remaining / 100f,
                remainingText = "$remaining%"
            )
        )
    )

    private fun id(providerId: ProviderId, index: Int) = ProviderAccountId(
        providerId,
        AccountKey.parseOpaque("acct_${index.toString(16).padStart(32, '0')}")
    )

    private enum class MirrorCorruption { ACCOUNT, SCRIPT, ACCOUNT_AND_SCRIPT }

    private class MetadataCorruptingProjectionStore(
        private val delegate: LegacyProjectionStore,
        private val context: Context,
        private val corruption: MirrorCorruption
    ) : LegacyProjectionStore by delegate {
        var enabled = true

        override fun writeMirror(providerId: ProviderId, snapshot: ProviderUsageSnapshot?): Boolean {
            val written = delegate.writeMirror(providerId, snapshot)
            if (!written || !enabled || providerId != ProviderId.CLAUDE) return written
            val stores = ProviderScriptProviders.storeNamesFor(providerId)
            if (corruption == MirrorCorruption.ACCOUNT || corruption == MirrorCorruption.ACCOUNT_AND_SCRIPT) {
                context.getSharedPreferences(stores.accountData, Context.MODE_PRIVATE)
                    .edit().putString("connection_state", "MISMATCH").commit()
            }
            if (corruption == MirrorCorruption.SCRIPT || corruption == MirrorCorruption.ACCOUNT_AND_SCRIPT) {
                context.getSharedPreferences(stores.scriptData, Context.MODE_PRIVATE)
                    .edit().putString("script_version", "mismatch").commit()
            }
            return true
        }
    }

    private companion object { val counter = AtomicInteger() }
}
