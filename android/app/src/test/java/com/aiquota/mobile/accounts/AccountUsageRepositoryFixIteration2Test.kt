package com.aiquota.mobile.accounts

import android.content.Context
import android.database.sqlite.SQLiteDatabase
import android.database.sqlite.SQLiteException
import androidx.test.core.app.ApplicationProvider
import com.aiquota.mobile.local.LegacyUsageMutationCoordinator
import com.aiquota.mobile.local.LocalUsageRepository
import com.aiquota.mobile.local.ProviderConnectionState
import com.aiquota.mobile.local.ProviderId
import com.aiquota.mobile.local.ProviderUsageLine
import com.aiquota.mobile.local.ProviderUsageSnapshot
import com.aiquota.mobile.providers.ProviderScriptProviders
import com.aiquota.mobile.providers.ProviderSnapshotCodec
import java.security.MessageDigest
import java.util.concurrent.CopyOnWriteArrayList
import java.util.concurrent.CountDownLatch
import java.util.concurrent.Executors
import java.util.concurrent.TimeUnit
import java.util.concurrent.atomic.AtomicBoolean
import java.util.concurrent.atomic.AtomicInteger
import java.util.concurrent.locks.ReentrantLock
import org.junit.After
import org.junit.Assert.assertEquals
import org.junit.Assert.assertNull
import org.junit.Assert.assertThrows
import org.junit.Assert.assertTrue
import org.junit.Before
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner

@RunWith(RobolectricTestRunner::class)
class AccountUsageRepositoryFixIteration2Test {
    private lateinit var context: Context
    private val databases = mutableListOf<String>()

    @Before
    fun setUp() {
        context = ApplicationProvider.getApplicationContext()
        clearStorage()
    }

    @After
    fun tearDown() {
        databases.forEach(context::deleteDatabase)
        clearStorage()
    }

    @Test
    fun exactParentV4StatesUpgradeTransactionallyWithoutPrimaryResurrection() {
        val schemaHashes = mutableListOf<String>()
        listOf(ProviderId.CLAUDE, ProviderId.CODEX).forEachIndexed { index, noneProvider ->
            clearStorage()
            val name = database("parent-v4-${noneProvider.storageId}")
            val bProvider = if (noneProvider == ProviderId.CLAUDE) ProviderId.CODEX else ProviderId.CLAUDE
            val bId = id(bProvider, 10 + index)
            createParentV4State(name, noneProvider, bId, reverse = index % 2 == 1)
            val beforeHash = schemaHash(name)

            resumeMigration(name).close()

            assertNull("$noneProvider parent explicit-none resurrected", legacyRemaining(noneProvider))
            assertEquals(if (bProvider == ProviderId.CLAUDE) 17 else 18, legacyRemaining(bProvider))
            assertEquals(ACCOUNT_USAGE_PRIMARY_NONE, primaryToken(name, noneProvider))
            assertEquals(bId.accountKey.storageValue(), primaryToken(name, bProvider))
            assertEquals(8, userVersion(name))
            resumeMigration(name).close()
            assertNull(legacyRemaining(noneProvider))
            schemaHashes += "$beforeHash:${schemaHash(name)}"
        }

        clearStorage()
        val untouched = database("parent-v4-untouched")
        migrateDefaults(untouched).close()
        rawDatabase(untouched).use { it.execSQL("PRAGMA user_version=4") }
        assertEquals(4, userVersion(untouched))
        resumeMigration(untouched).close()
        assertEquals(65, legacyRemaining(ProviderId.CLAUDE))
        assertEquals(66, legacyRemaining(ProviderId.CODEX))
        assertNull(primaryToken(untouched, ProviderId.CLAUDE))
        assertNull(primaryToken(untouched, ProviderId.CODEX))

        val fresh = database("fresh-current")
        MainProcessAccountAuthority.open(context, fresh).use { it.catalog(0, 1) }
        val freshSchemaHash = schemaHash(fresh)
        listOf(1, 2, 3, 4, 5).forEach { oldVersion ->
            val upgraded = database("upgrade-$oldVersion")
            MainProcessAccountAuthority.open(context, upgraded).use { it.catalog(0, 1) }
            downgradeSchema(upgraded, oldVersion)
            MainProcessAccountAuthority.open(context, upgraded).use { it.catalog(0, 1) }
            assertEquals(oldVersion.toString(), freshSchemaHash, schemaHash(upgraded))
            assertEquals(8, userVersion(upgraded))
        }

        val malformedV5 = database("malformed-v5")
        MainProcessAccountAuthority.open(context, malformedV5).use { it.catalog(0, 1) }
        rawDatabase(malformedV5).use { db ->
            db.execSQL("DROP TABLE named_profile_lifecycle")
            db.execSQL("CREATE TABLE named_profile_lifecycle(bad TEXT)")
            db.execSQL("PRAGMA user_version=5")
        }
        assertThrows(SQLiteException::class.java) {
            MainProcessAccountAuthority.open(context, malformedV5).use { it.catalog(0, 1) }
        }
        assertEquals(5, userVersion(malformedV5))
        rawDatabase(malformedV5).use { it.execSQL("DROP TABLE named_profile_lifecycle") }
        MainProcessAccountAuthority.open(context, malformedV5).use { it.catalog(0, 1) }
        assertEquals(8, userVersion(malformedV5))

        clearStorage()
        val failing = database("parent-v4-failure")
        createParentV4BothNone(failing)
        rawDatabase(failing).use { db ->
            db.execSQL(
                "CREATE TRIGGER fail_codex_primary BEFORE INSERT ON account_usage_primary " +
                    "WHEN NEW.provider_id='codex' BEGIN SELECT RAISE(ABORT, 'injected-upgrade-failure'); END"
            )
        }
        assertThrows(SQLiteException::class.java) {
            MainProcessAccountAuthority.open(context, failing).use { it.catalog(0, 1) }
        }
        assertEquals(4, userVersion(failing))
        assertNull(primaryToken(failing, ProviderId.CLAUDE))
        assertNull(primaryToken(failing, ProviderId.CODEX))
        rawDatabase(failing).use { it.execSQL("DROP TRIGGER fail_codex_primary") }
        MainProcessAccountAuthority.open(context, failing).use { it.catalog(0, 1) }
        assertEquals(ACCOUNT_USAGE_PRIMARY_NONE, primaryToken(failing, ProviderId.CLAUDE))
        assertEquals(ACCOUNT_USAGE_PRIMARY_NONE, primaryToken(failing, ProviderId.CODEX))
        println("QA_FIX2_UPGRADE_SCHEMA_HASH=$freshSchemaHash;PARENT_SCHEMA_PAIRS=${schemaHashes.joinToString(",")};STATE_HASH=${sha256(schemaHashes.joinToString("|").toByteArray())};UPGRADES=1,2,3,4,5;MALFORMED_V5_ROLLBACK=1;BACKFILLED_NONE=4;PRESERVED_B=2;UNTOUCHED=2;ROLLBACK=1")
    }

    @Test
    fun fairCoordinatorUsesOneBoundedProjectionBoundaryWithDeterministicOrder() {
        val lockField = LegacyUsageMutationCoordinator::class.java.getDeclaredField("lock").apply { isAccessible = true }
        val rawLock = lockField.get(LegacyUsageMutationCoordinator) as ReentrantLock
        assertTrue("shared mutation coordinator must be fair", rawLock.isFair)

        val order = CopyOnWriteArrayList<String>()
        val writerOneEntered = CountDownLatch(1)
        val releaseWriterOne = CountDownLatch(1)
        val projectionAttempted = CountDownLatch(1)
        val projectionEntered = CountDownLatch(1)
        val releaseProjection = CountDownLatch(1)
        val writerTwoAttempted = CountDownLatch(1)
        val executor = Executors.newFixedThreadPool(3)
        try {
            val writerOne = executor.submit {
                LegacyUsageMutationCoordinator.withLock {
                    order += "writer-1"
                    writerOneEntered.countDown()
                    check(releaseWriterOne.await(5, TimeUnit.SECONDS))
                }
            }
            assertTrue(writerOneEntered.await(5, TimeUnit.SECONDS))
            val projection = executor.submit {
                projectionAttempted.countDown()
                LegacyUsageMutationCoordinator.withLock {
                    order += "projection"
                    projectionEntered.countDown()
                    check(releaseProjection.await(5, TimeUnit.SECONDS))
                }
            }
            assertTrue(projectionAttempted.await(5, TimeUnit.SECONDS))
            releaseWriterOne.countDown()
            assertTrue(projectionEntered.await(5, TimeUnit.SECONDS))
            val writerTwo = executor.submit {
                writerTwoAttempted.countDown()
                LegacyUsageMutationCoordinator.withLock { order += "writer-2" }
            }
            assertTrue(writerTwoAttempted.await(5, TimeUnit.SECONDS))
            releaseProjection.countDown()
            writerOne.get(5, TimeUnit.SECONDS)
            projection.get(5, TimeUnit.SECONDS)
            writerTwo.get(5, TimeUnit.SECONDS)
            assertEquals(listOf("writer-1", "projection", "writer-2"), order)
        } finally {
            releaseWriterOne.countDown()
            releaseProjection.countDown()
            executor.shutdownNow()
        }

        val name = database("single-boundary")
        val claude = id(ProviderId.CLAUDE, 80)
        val codex = id(ProviderId.CODEX, 81)
        val authority = MainProcessAccountAuthority.open(context, name)
        authority.register(seed(claude, 82))
        authority.register(seed(codex, 83))
        val countingStore = CountingProjectionStore(AndroidLegacyMigrationSource(context))
        AccountUsageRepository.openForTest(authority, countingStore).use { repository ->
            assertTrue(repository.assignPrimary(claude, requireNotNull(repository.read(claude)).version) is PrimaryAssignmentResult.Assigned)
            assertTrue(repository.assignPrimary(codex, requireNotNull(repository.read(codex)).version) is PrimaryAssignmentResult.Assigned)
            countingStore.captures.set(0)
            assertTrue(repository.reconcileLegacyProjection() is AccountUsageProjectionResult.Applied)
            assertEquals("one capture inside one shared boundary", 1, countingStore.captures.get())
        }

        val projectionInside = CountDownLatch(1)
        val releaseProjectionWrite = CountDownLatch(1)
        val writerStarted = CountDownLatch(1)
        val blockingStore = BoundaryBlockingProjectionStore(
            AndroidLegacyMigrationSource(context),
            projectionInside,
            releaseProjectionWrite
        )
        val reopenedAuthority = MainProcessAccountAuthority.open(context, name)
        val repository = AccountUsageRepository.openForTest(reopenedAuthority, blockingStore)
        val v2Hash = accountHash(repository, listOf(claude, codex))
        val boundaryExecutor = Executors.newFixedThreadPool(2)
        try {
            val projection = boundaryExecutor.submit<AccountUsageProjectionResult> {
                repository.reconcileLegacyProjection()
            }
            assertTrue(projectionInside.await(5, TimeUnit.SECONDS))
            val writer = boundaryExecutor.submit {
                writerStarted.countDown()
                LocalUsageRepository(context).saveSnapshots(
                    listOf(
                        snapshot(id(ProviderId.GEMINI, 82), 71),
                        snapshot(id(ProviderId.CODEX, 83), 3),
                        snapshot(id(ProviderId.CLAUDE, 84), 2)
                    )
                )
            }
            assertTrue(writerStarted.await(5, TimeUnit.SECONDS))
            releaseProjectionWrite.countDown()
            assertTrue(projection.get(5, TimeUnit.SECONDS) is AccountUsageProjectionResult.Applied)
            writer.get(5, TimeUnit.SECONDS)
            val nonTargetHash = providerObjectHash(rawLegacy(), ProviderId.GEMINI)
            assertEquals(0, repository.conflicts(0, 10).totalCount)
            assertTrue(repository.reconcileLegacyProjection() is AccountUsageProjectionResult.Applied)
            assertEquals(2, repository.conflicts(0, 10).totalCount)
            assertEquals(82, legacyRemaining(ProviderId.CLAUDE))
            assertEquals(83, legacyRemaining(ProviderId.CODEX))
            assertEquals(nonTargetHash, providerObjectHash(rawLegacy(), ProviderId.GEMINI))
            assertEquals(v2Hash, accountHash(repository, listOf(claude, codex)))
            repository.reconcileLegacyProjection()
            assertEquals(2, repository.conflicts(0, 10).totalCount)
            val conflictHash = sha256(
                repository.conflicts(0, 10).receipts.joinToString("|") { it.receiptSha256 }.toByteArray()
            )
            println("QA_FIX2_PROGRESS_FAIR=${rawLock.isFair};SINGLE_BOUNDARY=1;QUEUE_HASH=${sha256(order.joinToString("|").toByteArray())};V2_HASH=$v2Hash;NON_TARGET_HASH=$nonTargetHash;CONFLICT_HASH=$conflictHash")
        } finally {
            releaseProjectionWrite.countDown()
            boundaryExecutor.shutdownNow()
            repository.close()
        }
        MainProcessAccountAuthority.open(context, name).let { finalAuthority ->
            AccountUsageRepository.openForTest(finalAuthority, AndroidLegacyMigrationSource(context)).use { finalRepository ->
                assertEquals(2, finalRepository.conflicts(0, 10).totalCount)
                assertEquals(v2Hash, accountHash(finalRepository, listOf(claude, codex)))
            }
        }
    }

    private fun createParentV4State(
        name: String,
        noneProvider: ProviderId,
        bId: ProviderAccountId,
        reverse: Boolean
    ) {
        migrateDefaults(name).close()
        val authority = MainProcessAccountAuthority.open(context, name)
        authority.register(seed(bId, if (bId.providerId == ProviderId.CLAUDE) 17 else 18))
        AccountUsageRepository.openForTest(authority, AndroidLegacyMigrationSource(context)).use { repository ->
            val noneDefault = ProviderAccountId(noneProvider, AccountKey.reservedDefault())
            val operations = listOf<() -> Unit>(
                {
                    assertTrue(repository.assignPrimary(noneDefault, requireNotNull(repository.read(noneDefault)).version) is PrimaryAssignmentResult.Assigned)
                    repository.clearPrimary(noneProvider)
                },
                { assertTrue(repository.assignPrimary(bId, requireNotNull(repository.read(bId)).version) is PrimaryAssignmentResult.Assigned) }
            )
            (if (reverse) operations.reversed() else operations).forEach { it() }
        }
        rawDatabase(name).use { db ->
            db.delete("account_usage_primary", "provider_id=?", arrayOf(noneProvider.storageId))
            db.execSQL("PRAGMA user_version=4")
        }
        assertNull(primaryToken(name, noneProvider))
        assertEquals(ACCOUNT_USAGE_ABSENT_SHA256, projectionTarget(name, noneProvider))
    }

    private fun createParentV4BothNone(name: String) {
        migrateDefaults(name).close()
        val authority = MainProcessAccountAuthority.open(context, name)
        AccountUsageRepository.openForTest(authority, AndroidLegacyMigrationSource(context)).use { repository ->
            listOf(ProviderId.CODEX, ProviderId.CLAUDE).forEach { provider ->
                val defaultId = ProviderAccountId(provider, AccountKey.reservedDefault())
                assertTrue(repository.assignPrimary(defaultId, requireNotNull(repository.read(defaultId)).version) is PrimaryAssignmentResult.Assigned)
                repository.clearPrimary(provider)
            }
        }
        rawDatabase(name).use { db ->
            db.delete("account_usage_primary", null, null)
            db.execSQL("PRAGMA user_version=4")
        }
    }

    private fun migrateDefaults(name: String): MainProcessAccountAuthority {
        LocalUsageRepository(context).saveSnapshots(
            listOf(
                snapshot(ProviderAccountId(ProviderId.CLAUDE, AccountKey.reservedDefault()), 65),
                snapshot(ProviderAccountId(ProviderId.CODEX, AccountKey.reservedDefault()), 66)
            )
        )
        val authority = MainProcessAccountAuthority.open(context, name)
        val source = AndroidLegacyMigrationSource(context)
        assertTrue(
            LegacyAccountMigration(
                source,
                AndroidLegacyMigrationJournal(context),
                authority,
                AccountCredentialVault(InMemoryCredentialEnvelopeStore(), FakeCredentialVaultCrypto()),
                source
            ).run() is LegacyMigrationResult.Completed
        )
        return authority
    }

    private fun resumeMigration(name: String): MainProcessAccountAuthority {
        val authority = MainProcessAccountAuthority.open(context, name)
        val source = AndroidLegacyMigrationSource(context)
        assertTrue(
            LegacyAccountMigration(
                source,
                AndroidLegacyMigrationJournal(context),
                authority,
                AccountCredentialVault(InMemoryCredentialEnvelopeStore(), FakeCredentialVaultCrypto()),
                source
            ).run() is LegacyMigrationResult.Completed
        )
        return authority
    }

    private fun downgradeSchema(name: String, version: Int) {
        rawDatabase(name).use { db ->
            db.execSQL("DROP TABLE named_profile_lifecycle")
            if (version <= 3) {
                listOf(
                    "legacy_usage_conflicts", "account_usage_projection_intent",
                    "account_usage_projection_targets", "account_usage_primary"
                ).forEach { db.execSQL("DROP TABLE $it") }
            }
            if (version == 2) {
                db.execSQL("DROP TABLE migration_mirrors")
                db.execSQL("DROP TABLE migration_preferences")
                db.execSQL(
                    "CREATE TABLE migration_mirrors (provider_id TEXT NOT NULL, account_key TEXT NOT NULL, receipt_sha256 TEXT NOT NULL, PRIMARY KEY(provider_id,account_key), FOREIGN KEY(provider_id,account_key) REFERENCES accounts(provider_id,account_key) ON DELETE CASCADE)"
                )
                db.execSQL(
                    "CREATE TABLE migration_preferences (provider_id TEXT NOT NULL, account_key TEXT NOT NULL, receipt_sha256 TEXT NOT NULL, PRIMARY KEY(provider_id,account_key), FOREIGN KEY(provider_id,account_key) REFERENCES accounts(provider_id,account_key) ON DELETE CASCADE)"
                )
            }
            if (version == 1) {
                db.execSQL("DROP TABLE projection_state")
                db.execSQL("DROP TABLE migration_preferences")
                db.execSQL("DROP TABLE migration_mirrors")
            }
            db.execSQL("PRAGMA user_version=$version")
        }
    }

    private fun primaryToken(name: String, provider: ProviderId): String? = rawDatabase(name).use { db ->
        db.rawQuery(
            "SELECT account_key FROM account_usage_primary WHERE provider_id=?",
            arrayOf(provider.storageId)
        ).use { cursor -> if (cursor.moveToFirst()) cursor.getString(0) else null }
    }

    private fun projectionTarget(name: String, provider: ProviderId): String? = rawDatabase(name).use { db ->
        db.rawQuery(
            "SELECT target_sha256 FROM account_usage_projection_targets WHERE provider_id=?",
            arrayOf(provider.storageId)
        ).use { cursor -> if (cursor.moveToFirst()) cursor.getString(0) else null }
    }

    private fun userVersion(name: String): Int = rawDatabase(name).use { db ->
        db.rawQuery("PRAGMA user_version", null).use { cursor -> cursor.moveToFirst(); cursor.getInt(0) }
    }

    private fun schemaHash(name: String): String = rawDatabase(name).use { db ->
        val canonical = buildString {
            db.rawQuery(
                "SELECT type,name,tbl_name,sql FROM sqlite_master " +
                    "WHERE name NOT LIKE 'sqlite_%' AND name!='android_metadata' AND type IN ('table','index') " +
                    "ORDER BY type,name",
                null
            ).use { cursor ->
                while (cursor.moveToNext()) {
                    append(cursor.getString(0)).append('|').append(cursor.getString(1)).append('|')
                        .append(cursor.getString(2)).append('|').append(cursor.getString(3)).append('\n')
                }
            }
        }
        sha256(canonical.toByteArray())
    }

    private fun rawDatabase(name: String): SQLiteDatabase = SQLiteDatabase.openDatabase(
        context.getDatabasePath(name).path,
        null,
        SQLiteDatabase.OPEN_READWRITE
    )

    private fun legacyRemaining(provider: ProviderId): Int? = ProviderSnapshotCodec.decode(rawLegacy())
        .singleOrNull { it.providerId == provider }
        ?.lines?.single()?.remainingText?.removeSuffix("%")?.toInt()

    private fun rawLegacy(): String = context.getSharedPreferences("ai_quota_local_usage", Context.MODE_PRIVATE)
        .getString("provider_snapshots", "").orEmpty()

    private fun providerObjectHash(raw: String, provider: ProviderId): String {
        val marker = "\"providerId\":\"${provider.storageId}\""
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

    private fun accountHash(
        repository: AccountUsageRepository,
        ids: List<ProviderAccountId>
    ): String = sha256(
        ids.joinToString("|") { id ->
            ProviderSnapshotCodec.encode(listOf(requireNotNull(repository.read(id)).snapshot))
        }.toByteArray()
    )

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

    private fun database(label: String): String = "account-usage-fix2-$label-${counter.incrementAndGet()}.db"
        .also { databases += it; context.deleteDatabase(it) }

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

    private fun id(provider: ProviderId, index: Int) = ProviderAccountId(
        provider,
        AccountKey.parseOpaque("acct_${index.toString(16).padStart(32, '0')}")
    )

    private fun sha256(bytes: ByteArray): String = MessageDigest.getInstance("SHA-256")
        .digest(bytes).joinToString("") { "%02x".format(it) }

    private class CountingProjectionStore(
        private val delegate: LegacyProjectionStore
    ) : LegacyProjectionStore by delegate {
        val captures = AtomicInteger()
        override fun captureAggregate(): LegacySourceCapture {
            captures.incrementAndGet()
            return delegate.captureAggregate()
        }
    }

    private class BoundaryBlockingProjectionStore(
        private val delegate: LegacyProjectionStore,
        private val projectionInside: CountDownLatch,
        private val releaseProjectionWrite: CountDownLatch
    ) : LegacyProjectionStore by delegate {
        private val armed = AtomicBoolean(true)

        override fun writeAggregate(raw: String): Boolean {
            if (armed.compareAndSet(true, false)) {
                projectionInside.countDown()
                check(releaseProjectionWrite.await(5, TimeUnit.SECONDS))
            }
            return delegate.writeAggregate(raw)
        }
    }

    private companion object { val counter = AtomicInteger() }
}
