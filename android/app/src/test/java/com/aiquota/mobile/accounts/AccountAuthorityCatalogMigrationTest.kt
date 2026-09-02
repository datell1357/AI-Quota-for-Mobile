package com.aiquota.mobile.accounts

import android.content.Context
import android.database.Cursor
import android.database.sqlite.SQLiteDatabase
import android.database.sqlite.SQLiteException
import android.database.sqlite.SQLiteOpenHelper
import androidx.test.core.app.ApplicationProvider
import com.aiquota.mobile.local.ProviderConnectionState
import com.aiquota.mobile.local.ProviderId
import com.aiquota.mobile.local.ProviderUsageLine
import com.aiquota.mobile.local.ProviderUsageSnapshot
import java.security.MessageDigest
import java.util.concurrent.CountDownLatch
import java.util.concurrent.Executors
import java.util.concurrent.TimeUnit
import java.util.concurrent.atomic.AtomicInteger
import org.junit.After
import org.junit.Assert.assertArrayEquals
import org.junit.Assert.assertEquals
import org.junit.Assert.assertNull
import org.junit.Assert.assertThrows
import org.junit.Assert.assertTrue
import org.junit.Before
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner

@RunWith(RobolectricTestRunner::class)
class AccountAuthorityCatalogMigrationTest {
    private lateinit var context: Context
    private val databases = mutableListOf<String>()

    @Before
    fun setUp() {
        context = ApplicationProvider.getApplicationContext()
    }

    @After
    fun tearDown() {
        databases.forEach(context::deleteDatabase)
    }

    @Test
    fun reverseOrderLegacyRowsBecomeContiguousAndTombstonesDoNotConsumeActiveRanks() {
        val name = legacyV6(
            "reverse",
            listOf(
                row(ProviderId.GEMINI, 4, "계정 Ä"),
                row(
                    ProviderId.CLAUDE,
                    2,
                    null,
                    state = "DELETED",
                    authState = "SIGNED_OUT",
                    deletionState = "TOMBSTONED",
                ),
                row(ProviderId.CODEX, 3, null),
                row(ProviderId.CLAUDE, 1, null),
            ),
        )
        val pre = rawCatalogSurface(name)

        openAndTouch(name)

        val migrated = catalogRows(name)
        assertEquals(10, userVersion(name))
        assertEquals(
            listOf(id(ProviderId.CLAUDE, 1), id(ProviderId.CODEX, 3), id(ProviderId.GEMINI, 4)),
            migrated.filter { it.activeRank != null }.map(CatalogRow::id),
        )
        assertEquals(listOf(0L, 1L, 2L), migrated.mapNotNull(CatalogRow::activeRank))
        assertEquals("claude", migrated.single { it.id == id(ProviderId.CLAUDE, 1) }.aliasNormalizedKey)
        assertEquals("codex", migrated.single { it.id == id(ProviderId.CODEX, 3) }.aliasNormalizedKey)
        assertEquals("계정 ä", migrated.single { it.id == id(ProviderId.GEMINI, 4) }.aliasNormalizedKey)
        val tombstone = migrated.single { it.id == id(ProviderId.CLAUDE, 2) }
        assertNull(tombstone.activeRank)
        assertEquals("TOMBSTONED", tombstone.deletionState)
        assertEquals(id(ProviderId.CLAUDE, 2), tombstone.id)

        val once = rawCatalogSurface(name)
        openAndTouch(name)
        assertArrayEquals(once, rawCatalogSurface(name))
        println(
            "QA_TASK7_REVERSE_PRE=${sha256(pre)};PRE_HAS_CATALOG=false;POST=${sha256(once)};" +
                "SCHEMA=${catalogSchemaSurface(name)};ROWS=${catalogDump(migrated)}"
        )
    }

    @Test
    fun thousandRowsMigrateDeterministicallyIndependentOfEnumerationAndRestartByteStably() {
        val rows = (1..1_000).map { index ->
            row(if (index % 2 == 0) ProviderId.CODEX else ProviderId.CLAUDE, index, null)
        }
        val forward = legacyV6("thousand-forward", rows)
        val reverse = legacyV6("thousand-reverse", rows.reversed())

        openAndTouch(forward)
        openAndTouch(reverse)

        val forwardRows = catalogRows(forward)
        val reverseRows = catalogRows(reverse)
        assertEquals(1_000, forwardRows.size)
        assertEquals((0L until 1_000L).toList(), forwardRows.mapNotNull(CatalogRow::activeRank))
        assertEquals(catalogDump(forwardRows), catalogDump(reverseRows))
        val stable = rawCatalogSurface(forward)
        openAndTouch(forward)
        assertArrayEquals(stable, rawCatalogSurface(forward))
        println(
            "QA_TASK7_1000_COUNT=${forwardRows.size};FIRST=${forwardRows.first()};LAST=${forwardRows.last()};" +
                "DETERMINISTIC_SHA256=${sha256(catalogDump(forwardRows).toByteArray())};RESTART_SHA256=${sha256(stable)}"
        )
    }

    @Test
    fun duplicateTrimmedCaseFoldedAliasesAndMalformedLegacyRowsFailClosedWithoutMutation() {
        val duplicateCases = listOf(
            // Duplicates only collide within one provider; the same alias on another provider is fine.
            "ascii" to listOf(row(ProviderId.CLAUDE, 1, " Work "), row(ProviderId.CLAUDE, 2, "work")),
            "unicode" to listOf(row(ProviderId.CLAUDE, 1, "Ä"), row(ProviderId.CLAUDE, 2, "ä")),
        )
        val duplicateHashes = duplicateCases.map { (label, rows) ->
            val name = legacyV6("duplicate-$label", rows)
            "$label:${assertUpgradeFailsUnchanged(name)}"
        }

        val malformed = listOf(
            "blank" to row(ProviderId.CLAUDE, 1, " \t "),
            "control" to row(ProviderId.CLAUDE, 1, "bad\u0007alias"),
            "too-long" to row(ProviderId.CLAUDE, 1, "가".repeat(41)),
            "rank-negative" to row(ProviderId.CLAUDE, 1, "Claude", providerRank = -1),
            "rank-out-of-range" to row(ProviderId.CLAUDE, 1, "Claude", providerRank = 10_000),
        )
        malformed.forEach { (label, legacyRow) ->
            val name = legacyV6("malformed-$label", listOf(legacyRow))
            assertUpgradeFailsUnchanged(name)
        }
        println(
            "QA_TASK7_REJECTED_DUPLICATES_UNCHANGED=${duplicateHashes.joinToString(",")};" +
                "MALFORMED=${malformed.map { it.first }}"
        )
    }

    @Test
    fun injectedCrashAtEveryMigrationBoundaryRollsBackSchemaAndDataThenRetries() {
        val points = listOf(
            AccountAuthorityMigrationFaultPoint.LEGACY_ROWS_VALIDATED,
            AccountAuthorityMigrationFaultPoint.CATALOG_TABLE_CREATED,
            AccountAuthorityMigrationFaultPoint.ALIASES_NORMALIZED,
            AccountAuthorityMigrationFaultPoint.CATALOG_ROWS_WRITTEN,
            AccountAuthorityMigrationFaultPoint.CATALOG_INDEXES_CREATED,
            AccountAuthorityMigrationFaultPoint.CATALOG_VALIDATED,
        )
        assertEquals(points, AccountAuthorityMigrationFaultPoint.entries)

        points.forEachIndexed { index, point ->
            val name = legacyV6(
                "fault-$index",
                listOf(row(ProviderId.CODEX, 2, null), row(ProviderId.CLAUDE, 1, null)),
            )
            val before = rawCatalogSurface(name)
            val helper = AccountAuthorityDatabase(
                context,
                name,
                AccountAuthorityMigrationFaultInjector { reached ->
                    if (reached == point) throw InjectedMigrationFault(point.toString())
                },
            )
            try {
                assertThrows(InjectedMigrationFault::class.java) { helper.writableDatabase }
            } finally {
                helper.close()
            }
            assertEquals(point.toString(), 6, userVersion(name))
            assertArrayEquals(point.toString(), before, rawCatalogSurface(name))

            openAndTouch(name)
            assertEquals(point.toString(), 10, userVersion(name))
            assertEquals(listOf(0L, 1L), catalogRows(name).mapNotNull(CatalogRow::activeRank))
        }
        println("QA_TASK7_FAULT_POINTS=${points.joinToString(",")};ROLLBACKS=${points.size};RETRIES=${points.size}")
    }

    @Test
    fun concurrentUpgradeSerializesAndConvergesWithoutPartialCatalog() {
        val name = legacyV6(
            "concurrent",
            (1..100).reversed().map { index ->
                row(if (index % 2 == 0) ProviderId.CODEX else ProviderId.CLAUDE, index, null)
            },
        )
        val start = CountDownLatch(1)
        val executor = Executors.newFixedThreadPool(2)
        try {
            val opens = (1..2).map {
                executor.submit<List<Long>> {
                    assertTrue(start.await(10, TimeUnit.SECONDS))
                    MainProcessAccountAuthority.open(context, name).use { authority ->
                        authority.catalog(0, 250)
                        catalogRows(name).mapNotNull(CatalogRow::activeRank)
                    }
                }
            }
            start.countDown()
            opens.forEach { future ->
                assertEquals((0L until 100L).toList(), future.get(20, TimeUnit.SECONDS))
            }
        } finally {
            executor.shutdownNow()
        }
        assertEquals(10, userVersion(name))
        val once = rawCatalogSurface(name)
        openAndTouch(name)
        assertArrayEquals(once, rawCatalogSurface(name))
    }

    @Test
    fun olderReaderAndMalformedCurrentSchemaFailClosedAndLeaveCurrentBytesUnchanged() {
        val downgrade = legacyV6("downgrade", listOf(row(ProviderId.CLAUDE, 1, null)))
        openAndTouch(downgrade)
        val beforeDowngrade = rawCatalogSurface(downgrade)
        val older = object : SQLiteOpenHelper(context, downgrade, null, 7) {
            override fun onCreate(db: SQLiteDatabase) = error("unexpected create")
            override fun onUpgrade(db: SQLiteDatabase, oldVersion: Int, newVersion: Int) =
                error("unexpected upgrade")
        }
        assertThrows(SQLiteException::class.java) { older.readableDatabase }
        older.close()
        assertArrayEquals(beforeDowngrade, rawCatalogSurface(downgrade))

        val missingIndex = legacyV6("missing-index", listOf(row(ProviderId.CLAUDE, 1, null)))
        openAndTouch(missingIndex)
        rawDatabase(missingIndex).use { db ->
            db.execSQL("DROP INDEX provider_card_catalog_active_rank_unique")
        }
        assertCurrentOpenFailsUnchanged(missingIndex)

        val missingColumn = legacyV6("missing-column", listOf(row(ProviderId.CLAUDE, 1, null)))
        openAndTouch(missingColumn)
        rawDatabase(missingColumn).use { db ->
            db.execSQL("ALTER TABLE provider_card_catalog RENAME TO provider_card_catalog_complete")
            db.execSQL(
                "CREATE TABLE provider_card_catalog(" +
                    "provider_id TEXT NOT NULL,account_key TEXT NOT NULL,active_rank INTEGER," +
                    "PRIMARY KEY(provider_id,account_key))"
            )
            db.execSQL(
                "INSERT INTO provider_card_catalog(provider_id,account_key,active_rank) " +
                    "SELECT provider_id,account_key,active_rank FROM provider_card_catalog_complete"
            )
            db.execSQL("DROP TABLE provider_card_catalog_complete")
        }
        assertCurrentOpenFailsUnchanged(missingColumn)
        println("QA_TASK7_DOWNGRADE_UNCHANGED=${sha256(beforeDowngrade)};MISSING_INDEX=REJECTED;MISSING_COLUMN=REJECTED")
    }

    @Test
    fun currentSchemaEnforcesExactStateAuthDeletionAndRankCoherenceUnchanged() {
        val valid = listOf(
            CurrentState("enrolling", "ENROLLING", "SIGNED_OUT", "NONE", 0),
            CurrentState("active", "ACTIVE", "AUTHENTICATED", "NONE", 0),
            CurrentState("suspended", "SUSPENDED", "REAUTH_REQUIRED", "NONE", 0),
            CurrentState("tombstoned", "DELETED", "SIGNED_OUT", "TOMBSTONED", null),
            CurrentState("erasure-pending", "DELETED", "SIGNED_OUT", "ERASURE_PENDING", null),
            CurrentState("erased", "DELETED", "SIGNED_OUT", "ERASED", null),
        )
        valid.forEach { state ->
            val name = currentV7("valid-${state.label}")
            setCurrentState(name, state)
            openAndTouch(name)
            val stable = rawCatalogSurface(name)
            openAndTouch(name)
            assertArrayEquals(state.label, stable, rawCatalogSurface(name))
        }

        val invalid = listOf(
            CurrentState("active-tombstone", "ACTIVE", "SIGNED_OUT", "TOMBSTONED", 0),
            CurrentState("active-null-rank", "ACTIVE", "AUTHENTICATED", "NONE", null),
            CurrentState("deleted-none", "DELETED", "AUTHENTICATED", "NONE", null),
            CurrentState("deleted-authenticated", "DELETED", "AUTHENTICATED", "TOMBSTONED", null),
            CurrentState("deleted-ranked", "DELETED", "SIGNED_OUT", "TOMBSTONED", 0),
            CurrentState("bad-state", "NOT_A_STATE", "SIGNED_OUT", "NONE", 0),
            CurrentState("bad-auth", "ACTIVE", "NOT_AUTH", "NONE", 0),
            CurrentState("bad-deletion", "ACTIVE", "SIGNED_OUT", "NOT_DELETION", 0),
        )
        val rejected = invalid.map { state ->
            val name = currentV7("invalid-${state.label}")
            setCurrentState(name, state)
            assertCurrentOpenFailsUnchanged(name)
            state.label
        }
        println("QA_TASK7_STATE_VALID=${valid.map { it.label }};REJECTED_UNCHANGED=$rejected")
    }

    @Test
    fun currentSchemaRejectsWrongIndexColumnsPredicatesAndSplitForeignKeysUnchanged() {
        val mutations = listOf<Pair<String, (SQLiteDatabase) -> Unit>>(
            "rank-index-column" to { db ->
                db.execSQL("DROP INDEX provider_card_catalog_active_rank_unique")
                db.execSQL(
                    "CREATE UNIQUE INDEX provider_card_catalog_active_rank_unique " +
                        "ON provider_card_catalog(alias_normalized_key) WHERE active_rank IS NOT NULL"
                )
            },
            "rank-index-predicate" to { db ->
                db.execSQL("DROP INDEX provider_card_catalog_active_rank_unique")
                db.execSQL(
                    "CREATE UNIQUE INDEX provider_card_catalog_active_rank_unique " +
                        "ON provider_card_catalog(active_rank) WHERE alias_normalized_key IS NOT NULL"
                )
            },
            "alias-index-column" to { db ->
                db.execSQL("DROP INDEX provider_card_catalog_active_alias_unique")
                db.execSQL(
                    "CREATE UNIQUE INDEX provider_card_catalog_active_alias_unique " +
                        "ON provider_card_catalog(active_rank) WHERE active_rank IS NOT NULL"
                )
            },
            "alias-index-predicate" to { db ->
                db.execSQL("DROP INDEX provider_card_catalog_active_alias_unique")
                db.execSQL(
                    "CREATE UNIQUE INDEX provider_card_catalog_active_alias_unique " +
                        "ON provider_card_catalog(alias_normalized_key) WHERE alias_normalized_key IS NOT NULL"
                )
            },
            "split-foreign-keys" to { db -> splitCatalogForeignKey(db) },
        )
        mutations.forEach { (label, mutate) ->
            val name = currentV7("topology-$label")
            rawDatabase(name).use(mutate)
            assertCurrentOpenFailsUnchanged(name)
        }
        println("QA_TASK7_TOPOLOGY_REJECTED_UNCHANGED=${mutations.map { it.first }}")
    }

    @Test
    fun currentV9InitializationChecksForeignKeyTopologyAndPersistedEnumsFailClosedUnchanged() {
        val mutations = listOf<Pair<String, (SQLiteDatabase) -> Unit>>(
            "initialization-checks-absent" to { db ->
                replaceInitializationTable(
                    db,
                    "CREATE TABLE provider_card_initialization(" +
                        "singleton_id INTEGER PRIMARY KEY,migration_version INTEGER NOT NULL," +
                        "onboarding_state TEXT NOT NULL,links_sha256 TEXT NOT NULL)",
                )
            },
            "initialization-hash-check-wrong" to { db ->
                replaceInitializationTable(
                    db,
                    "CREATE TABLE provider_card_initialization(" +
                        "singleton_id INTEGER PRIMARY KEY CHECK(singleton_id=1)," +
                        "migration_version INTEGER NOT NULL CHECK(migration_version IN (0,1))," +
                        "onboarding_state TEXT NOT NULL CHECK(onboarding_state IN ('PENDING','COMPLETED','SKIPPED'))," +
                        "links_sha256 TEXT NOT NULL CHECK(length(links_sha256)=63))",
                )
            },
            "link-checks-absent" to { db ->
                replaceMigrationLinks(
                    db,
                    "CREATE TABLE provider_card_migration_links(" +
                        "provider_id TEXT NOT NULL,account_key TEXT NOT NULL,origin TEXT NOT NULL," +
                        "PRIMARY KEY(provider_id,account_key)," +
                        "FOREIGN KEY(provider_id,account_key) REFERENCES provider_card_catalog(provider_id,account_key) ON DELETE RESTRICT)",
                )
            },
            "link-foreign-key-missing" to { db ->
                replaceMigrationLinks(
                    db,
                    validMigrationLinksSql(includeForeignKey = false),
                )
            },
            "link-foreign-key-split" to { db ->
                replaceMigrationLinks(
                    db,
                    "CREATE TABLE provider_card_migration_links(" +
                        "provider_id TEXT NOT NULL CHECK(length(provider_id)>0)," +
                        "account_key TEXT NOT NULL CHECK(length(account_key)>0)," +
                        "origin TEXT NOT NULL CHECK(origin IN ('EXISTING_CATALOG','LEGACY_DEFAULT'))," +
                        "PRIMARY KEY(provider_id,account_key)," +
                        "FOREIGN KEY(provider_id) REFERENCES provider_card_catalog(provider_id) ON DELETE RESTRICT," +
                        "FOREIGN KEY(account_key) REFERENCES provider_card_catalog(account_key) ON DELETE RESTRICT)",
                )
            },
            "invalid-onboarding-enum" to { db ->
                replaceInitializationTable(
                    db,
                    "CREATE TABLE provider_card_initialization(" +
                        "singleton_id INTEGER PRIMARY KEY,migration_version INTEGER NOT NULL," +
                        "onboarding_state TEXT NOT NULL,links_sha256 TEXT NOT NULL)",
                    onboardingState = "BROKEN",
                )
            },
            "invalid-hash" to { db ->
                replaceInitializationTable(
                    db,
                    "CREATE TABLE provider_card_initialization(" +
                        "singleton_id INTEGER PRIMARY KEY,migration_version INTEGER NOT NULL," +
                        "onboarding_state TEXT NOT NULL,links_sha256 TEXT NOT NULL)",
                    linksSha256 = "not-a-hash",
                )
            },
            "invalid-origin" to { db ->
                replaceMigrationLinks(db, validMigrationLinksSql(includeForeignKey = true))
                db.execSQL(
                    "PRAGMA ignore_check_constraints=ON"
                )
                db.execSQL(
                    "INSERT INTO provider_card_migration_links(provider_id,account_key,origin) " +
                        "SELECT provider_id,account_key,'BROKEN' FROM provider_card_catalog LIMIT 1"
                )
                db.execSQL("PRAGMA ignore_check_constraints=OFF")
            },
        )
        mutations.forEach { (label, mutate) ->
            val name = currentV7("task9-topology-$label")
            rawDatabase(name).use(mutate)
            assertCurrentOpenFailsUnchanged(name)
        }
        println("QA_TASK9_SCHEMA_REJECTED_UNCHANGED=${mutations.map { it.first }}")
    }

    @Test
    fun aliasBoundariesDuplicateRegisterAndConcurrentRegisterAreAtomic() {
        assertThrows(IllegalArgumentException::class.java) { normalizeProviderCardAlias("") }
        assertEquals("a", normalizeProviderCardAlias("a").normalizedKey)
        assertEquals(40, normalizeProviderCardAlias("가".repeat(40)).displayValue.codePointCount(0, 40))
        assertThrows(IllegalArgumentException::class.java) { normalizeProviderCardAlias("가".repeat(41)) }
        assertThrows(IllegalArgumentException::class.java) { normalizeProviderCardAlias("bad\u0000alias") }
        assertEquals(
            NormalizedProviderCardAlias("Ä", "ä"),
            normalizeProviderCardAlias("\u2003Ä\u3000"),
        )

        val duplicate = database("duplicate-register")
        MainProcessAccountAuthority.open(context, duplicate).use { authority ->
            authority.register(seed(ProviderId.CLAUDE, 1, "Work"))
            val before = authority.canonicalDumpForTest()
            assertThrows(SQLiteException::class.java) {
                authority.register(seed(ProviderId.CLAUDE, 2, " work "))
            }
            assertArrayEquals(before, authority.canonicalDumpForTest())
            assertEquals(1, authority.catalog(0, 10).totalCount)
        }

        val concurrent = database("concurrent-register")
        val first = MainProcessAccountAuthority.open(context, concurrent)
        val second = MainProcessAccountAuthority.open(context, concurrent)
        val start = CountDownLatch(1)
        val executor = Executors.newFixedThreadPool(2)
        try {
            val futures = listOf(first to 3, second to 4).map { (authority, index) ->
                executor.submit<AccountRecord> {
                    assertTrue(start.await(10, TimeUnit.SECONDS))
                    authority.register(seed(ProviderId.CLAUDE, index, null)).account
                }
            }
            start.countDown()
            assertEquals(
                setOf("Claude", "Claude 2"),
                futures.map { it.get(20, TimeUnit.SECONDS).alias }.toSet(),
            )
        } finally {
            executor.shutdownNow()
            first.close()
            second.close()
        }
        MainProcessAccountAuthority.open(context, concurrent).use { authority ->
            assertEquals(2, authority.catalog(0, 10).totalCount)
            assertEquals(listOf(0L, 1L), catalogRows(concurrent).mapNotNull(CatalogRow::activeRank))
        }
        println("QA_TASK7_ALIAS_BOUNDARIES=0R,1A,40A,41R,CONTROL_R,UNICODE_TRIM_CASE;DUPLICATE_REGISTER=ROLLBACK;CONCURRENT_REGISTER=2")
    }

    @Test
    fun boundedDefaultAliasSearchHandlesZeroOneThousandAndCrossProviderCollisions() {
        val thousand = database("allocator-thousand")
        MainProcessAccountAuthority.open(context, thousand).use { authority ->
            assertEquals(0, authority.catalog(0, 1).totalCount)
            (1..1_000).forEach { index ->
                authority.register(seed(ProviderId.CLAUDE, index, null))
            }
            assertEquals(1_000, authority.catalog(0, 1).totalCount)
        }
        val aliases = catalogRows(thousand).map(CatalogRow::alias)
        assertEquals("Claude", aliases.first())
        assertEquals("Claude 1000", aliases.last())
        assertEquals(1_000, aliases.toSet().size)

        val collision = database("allocator-cross-provider")
        MainProcessAccountAuthority.open(context, collision).use { authority ->
            // A Claude card named "Codex" does not reserve the name on the Codex provider.
            authority.register(seed(ProviderId.CLAUDE, 1, "Codex"))
            assertEquals("Codex", authority.register(seed(ProviderId.CODEX, 2, null)).account.alias)
            assertEquals("Codex 2", authority.register(seed(ProviderId.CODEX, 3, null)).account.alias)
        }
        println("QA_TASK7_ALLOCATOR=0,1,1000;UNIQUE=${aliases.toSet().size};CROSS_PROVIDER=Codex;SAME_PROVIDER=Codex_2")
    }

    @Test
    fun catalogAndDisplayUseProviderThenAccountKeyAsDeletedRankTieBreakers() {
        val name = database("deleted-total-order")
        val sharedKey = AccountKey.parseOpaque(accountKey(77))
        MainProcessAccountAuthority.open(context, name).use { authority ->
            authority.register(seed(ProviderId.CODEX, 77, "Codex deleted", sharedKey))
            authority.register(seed(ProviderId.CLAUDE, 77, "Claude deleted", sharedKey))
        }
        rawDatabase(name).use { db ->
            db.execSQL(
                "UPDATE accounts SET state='DELETED',auth_state='SIGNED_OUT',deletion_state='TOMBSTONED'"
            )
            db.execSQL("UPDATE provider_card_catalog SET active_rank=NULL")
            db.execSQL(
                "INSERT INTO provider_card_deletion_journal(" +
                    "provider_id,account_key,step,failure,journal_revision,authority_version) " +
                    "SELECT provider_id,account_key,'TOMBSTONED',NULL,1,modified_version FROM accounts"
            )
        }
        val expected = listOf(ProviderId.CLAUDE, ProviderId.CODEX)
        repeat(2) {
            MainProcessAccountAuthority.open(context, name).use { authority ->
                assertEquals(expected, authority.catalog(0, 10).records.map { it.id.providerId })
                assertEquals(expected, authority.displayRecords(0, 10).map { it.account.id.providerId })
                assertEquals(2, authority.catalog(0, 10).totalCount)
                assertEquals(2, authority.displayRecords(0, 10).size)
            }
        }
        println("QA_TASK7_DELETED_TOTAL_ORDER=${expected.joinToString(",")};REGISTERED_SNAPSHOTS=2")
    }

    private fun currentV7(label: String): String =
        legacyV6(label, listOf(row(ProviderId.CLAUDE, 1, "Claude"))).also(::openAndTouch)

    private fun setCurrentState(name: String, state: CurrentState) {
        rawDatabase(name).use { db ->
            db.execSQL(
                "UPDATE accounts SET state=?,auth_state=?,deletion_state=?",
                arrayOf(state.state, state.authState, state.deletionState),
            )
            if (state.activeRank == null) {
                db.execSQL("UPDATE provider_card_catalog SET active_rank=NULL")
            } else {
                db.execSQL("UPDATE provider_card_catalog SET active_rank=?", arrayOf(state.activeRank))
            }
            db.delete("provider_card_deletion_journal", null, null)
            val journal = when (state.deletionState) {
                "TOMBSTONED" -> "'TOMBSTONED',1"
                "ERASURE_PENDING" -> "'WORK_CANCELLED',2"
                "ERASED" -> "'ERASED',10"
                else -> null
            }
            if (journal != null) {
                db.execSQL(
                    "INSERT INTO provider_card_deletion_journal(" +
                        "provider_id,account_key,step,failure,journal_revision,authority_version) " +
                        "SELECT provider_id,account_key,${journal.substringBefore(',')},NULL," +
                        "${journal.substringAfter(',')},modified_version FROM accounts"
                )
            }
        }
    }

    private fun replaceInitializationTable(
        db: SQLiteDatabase,
        createSql: String,
        onboardingState: String = "PENDING",
        linksSha256: String = "0".repeat(64),
    ) {
        db.execSQL("ALTER TABLE provider_card_initialization RENAME TO provider_card_initialization_old")
        db.execSQL(createSql)
        db.execSQL("PRAGMA ignore_check_constraints=ON")
        try {
            db.execSQL(
                "INSERT INTO provider_card_initialization(singleton_id,migration_version,onboarding_state,links_sha256) " +
                    "VALUES(1,0,?,?)",
                arrayOf(onboardingState, linksSha256),
            )
        } finally {
            db.execSQL("PRAGMA ignore_check_constraints=OFF")
        }
        db.execSQL("DROP TABLE provider_card_initialization_old")
    }

    private fun replaceMigrationLinks(db: SQLiteDatabase, createSql: String) {
        db.execSQL("ALTER TABLE provider_card_migration_links RENAME TO provider_card_migration_links_old")
        db.execSQL(createSql)
        db.execSQL("DROP TABLE provider_card_migration_links_old")
    }

    private fun validMigrationLinksSql(includeForeignKey: Boolean): String =
        "CREATE TABLE provider_card_migration_links(" +
            "provider_id TEXT NOT NULL CHECK(length(provider_id)>0)," +
            "account_key TEXT NOT NULL CHECK(length(account_key)>0)," +
            "origin TEXT NOT NULL CHECK(origin IN ('EXISTING_CATALOG','LEGACY_DEFAULT'))," +
            "PRIMARY KEY(provider_id,account_key)" +
            if (includeForeignKey) {
                ",FOREIGN KEY(provider_id,account_key) " +
                    "REFERENCES provider_card_catalog(provider_id,account_key) ON DELETE RESTRICT)"
            } else {
                ")"
            }

    private fun splitCatalogForeignKey(db: SQLiteDatabase) {
        db.execSQL("ALTER TABLE provider_card_catalog RENAME TO provider_card_catalog_composite")
        db.execSQL(
            """
            CREATE TABLE provider_card_catalog (
                provider_id TEXT NOT NULL,
                account_key TEXT NOT NULL,
                active_rank INTEGER CHECK(active_rank IS NULL OR active_rank >= 0),
                alias_normalized_key TEXT NOT NULL CHECK(length(alias_normalized_key) > 0),
                PRIMARY KEY(provider_id, account_key),
                FOREIGN KEY(provider_id) REFERENCES accounts(provider_id) ON DELETE CASCADE,
                FOREIGN KEY(account_key) REFERENCES accounts(account_key) ON DELETE CASCADE
            )
            """.trimIndent()
        )
        db.execSQL(
            "INSERT INTO provider_card_catalog SELECT * FROM provider_card_catalog_composite"
        )
        db.execSQL("DROP TABLE provider_card_catalog_composite")
        db.execSQL(
            "CREATE UNIQUE INDEX provider_card_catalog_active_rank_unique " +
                "ON provider_card_catalog(active_rank) WHERE active_rank IS NOT NULL"
        )
        db.execSQL(
            "CREATE UNIQUE INDEX provider_card_catalog_active_alias_unique " +
                "ON provider_card_catalog(provider_id, alias_normalized_key) WHERE active_rank IS NOT NULL"
        )
    }

    private fun seed(
        provider: ProviderId,
        index: Int,
        alias: String?,
        accountKey: AccountKey = AccountKey.parseOpaque(this.accountKey(index)),
    ): AuthorityAccountSeed {
        val accountId = ProviderAccountId(provider, accountKey)
        return AuthorityAccountSeed(
            AccountRecord(
                id = accountId,
                state = AccountState.ACTIVE,
                authState = AccountAuthState.AUTHENTICATED,
                deletionState = AccountDeletionState.NONE,
                generation = AccountGeneration.of(1),
                sessionRevision = SessionRevision.of(1),
                alias = alias,
            ),
            ProviderUsageSnapshot(
                providerId = provider,
                connectionState = ProviderConnectionState.CONNECTED,
                account = "fixture-$index@example.invalid",
                updatedAt = "2026-08-28T00:00:00Z",
                statusUpdatedAt = "2026-08-28T00:00:00Z",
                lines = listOf(
                    ProviderUsageLine(
                        key = "quota",
                        label = "Quota",
                        remainingPercent = 0.5f,
                        remainingText = "50%",
                    )
                ),
            ),
        )
    }

    private fun assertUpgradeFailsUnchanged(name: String): String {
        val before = rawCatalogSurface(name)
        repeat(2) {
            assertThrows(SQLiteException::class.java) { openAndTouch(name) }
            assertEquals(6, userVersion(name))
            assertArrayEquals(before, rawCatalogSurface(name))
        }
        return sha256(before)
    }

    private fun assertCurrentOpenFailsUnchanged(name: String) {
        val before = rawCatalogSurface(name)
        repeat(2) {
            assertThrows(SQLiteException::class.java) { openAndTouch(name) }
            assertEquals(10, userVersion(name))
            assertArrayEquals(before, rawCatalogSurface(name))
        }
    }

    private fun legacyV6(label: String, rows: List<LegacyRow>): String {
        val name = database(label)
        val helper = AccountAuthorityDatabase(context, name)
        try {
            helper.writableDatabase
        } finally {
            helper.close()
        }
        rawDatabase(name).use { db ->
            if (tableExists(db, "provider_card_catalog")) {
                db.execSQL("DROP TABLE provider_card_catalog")
            }
            db.execSQL("PRAGMA user_version=6")
            db.beginTransaction()
            try {
                rows.forEach { legacy ->
                    db.execSQL(
                        "INSERT INTO accounts(" +
                            "provider_id,account_key,provider_rank,state,auth_state,deletion_state," +
                            "generation,session_revision,alias,organization,remote_identity,modified_version" +
                            ") VALUES(?,?,?,?,?,?,?,?,?,?,?,?)",
                        arrayOf(
                            legacy.provider.storageId,
                            accountKey(legacy.index),
                            legacy.providerRank,
                            legacy.state,
                            legacy.authState,
                            legacy.deletionState,
                            1,
                            1,
                            legacy.alias,
                            null,
                            null,
                            0,
                        ),
                    )
                }
                db.setTransactionSuccessful()
            } finally {
                db.endTransaction()
            }
        }
        return name
    }

    private fun openAndTouch(name: String) {
        MainProcessAccountAuthority.open(context, name).use { it.catalog(0, 1) }
    }

    private fun catalogRows(name: String): List<CatalogRow> = rawDatabase(name).use { db ->
        db.rawQuery(
            "SELECT accounts.provider_id,accounts.account_key,provider_card_catalog.active_rank," +
                "accounts.alias,provider_card_catalog.alias_normalized_key,accounts.deletion_state " +
                "FROM accounts JOIN provider_card_catalog USING(provider_id,account_key) " +
                "ORDER BY provider_card_catalog.active_rank IS NULL,provider_card_catalog.active_rank," +
                "accounts.provider_id,accounts.account_key",
            null,
        ).use { cursor ->
            buildList {
                while (cursor.moveToNext()) {
                    add(
                        CatalogRow(
                            id = "${cursor.getString(0)}/${cursor.getString(1)}",
                            activeRank = if (cursor.isNull(2)) null else cursor.getLong(2),
                            alias = cursor.getString(3),
                            aliasNormalizedKey = cursor.getString(4),
                            deletionState = cursor.getString(5),
                        )
                    )
                }
            }
        }
    }

    private fun catalogSchemaSurface(name: String): String = rawDatabase(name).use { db ->
        val columns = db.rawQuery("PRAGMA table_info(provider_card_catalog)", null).use { cursor ->
            buildList {
                while (cursor.moveToNext()) {
                    add("${cursor.getString(1)}:${cursor.getString(2)}:nn=${cursor.getInt(3)}:pk=${cursor.getInt(5)}")
                }
            }
        }
        val indexes = db.rawQuery("PRAGMA index_list(provider_card_catalog)", null).use { cursor ->
            buildList {
                while (cursor.moveToNext()) {
                    add("${cursor.getString(1)}:unique=${cursor.getInt(2)}:partial=${cursor.getInt(4)}")
                }
            }.sorted()
        }
        "columns=${columns.joinToString(",")};indexes=${indexes.joinToString(",")}"
    }

    private fun rawCatalogSurface(name: String): ByteArray = rawDatabase(name).use { db ->
        buildString {
            append("user_version=").append(userVersion(db)).append('\n')
            val tables = mutableListOf<String>()
            db.rawQuery(
                "SELECT type,name,tbl_name,sql FROM sqlite_master " +
                    "WHERE name NOT LIKE 'sqlite_%' AND name!='android_metadata' ORDER BY type,name",
                null,
            ).use { cursor ->
                while (cursor.moveToNext()) {
                    val type = cursor.getString(0)
                    val objectName = cursor.getString(1)
                    append(type).append('|').append(objectName).append('|')
                        .append(cursor.getString(2)).append('|').append(cursor.getString(3)).append('\n')
                    if (type == "table") tables += objectName
                }
            }
            tables.sorted().forEach { table ->
                append('[').append(table).append("]\n")
                val escaped = table.replace("\"", "\"\"")
                val rows = mutableListOf<String>()
                db.rawQuery("SELECT * FROM \"$escaped\"", null).use { cursor ->
                    while (cursor.moveToNext()) rows += canonicalRow(cursor)
                }
                rows.sorted().forEach { append(it).append('\n') }
            }
        }.toByteArray()
    }

    private fun canonicalRow(cursor: Cursor): String = buildString {
        cursor.columnNames.forEachIndexed { index, column ->
            append(column).append('=')
            when (cursor.getType(index)) {
                Cursor.FIELD_TYPE_NULL -> append('N')
                Cursor.FIELD_TYPE_INTEGER -> append('I').append(cursor.getLong(index))
                Cursor.FIELD_TYPE_FLOAT -> append('F').append(cursor.getDouble(index))
                Cursor.FIELD_TYPE_STRING -> append('S').append(cursor.getString(index))
                Cursor.FIELD_TYPE_BLOB -> append('B').append(
                    cursor.getBlob(index).joinToString("") { "%02x".format(it) },
                )
            }
            append(';')
        }
    }

    private fun rawDatabase(name: String): SQLiteDatabase = SQLiteDatabase.openDatabase(
        context.getDatabasePath(name).path,
        null,
        SQLiteDatabase.OPEN_READWRITE,
    )

    private fun tableExists(db: SQLiteDatabase, table: String): Boolean = db.rawQuery(
        "SELECT 1 FROM sqlite_master WHERE type='table' AND name=?",
        arrayOf(table),
    ).use { it.moveToFirst() }

    private fun userVersion(name: String): Int = rawDatabase(name).use(::userVersion)

    private fun userVersion(db: SQLiteDatabase): Int = db.rawQuery("PRAGMA user_version", null).use { cursor ->
        check(cursor.moveToFirst())
        cursor.getInt(0)
    }

    private fun database(label: String): String =
        "account-authority-catalog-$label-${counter.incrementAndGet()}.db".also { name ->
            context.deleteDatabase(name)
            databases += name
        }

    private fun row(
        provider: ProviderId,
        index: Int,
        alias: String?,
        state: String = "ACTIVE",
        authState: String = "AUTHENTICATED",
        deletionState: String = "NONE",
        providerRank: Int = providerRank(provider),
    ) = LegacyRow(provider, index, providerRank, state, authState, deletionState, alias)

    private fun providerRank(provider: ProviderId): Int {
        val visible = ProviderId.defaultOrder().indexOf(provider)
        return if (visible >= 0) visible else ProviderId.defaultOrder().size + provider.ordinal
    }

    private fun id(provider: ProviderId, index: Int): String = "${provider.storageId}/${accountKey(index)}"

    private fun accountKey(index: Int): String = "acct_${index.toString(16).padStart(32, '0')}"

    private fun catalogDump(rows: List<CatalogRow>): String = rows.joinToString("|") { row ->
        "${row.id},${row.activeRank ?: "T"},${row.alias},${row.aliasNormalizedKey},${row.deletionState}"
    }

    private fun sha256(bytes: ByteArray): String = MessageDigest.getInstance("SHA-256")
        .digest(bytes)
        .joinToString("") { "%02x".format(it) }

    private data class CurrentState(
        val label: String,
        val state: String,
        val authState: String,
        val deletionState: String,
        val activeRank: Int?,
    )

    private data class LegacyRow(
        val provider: ProviderId,
        val index: Int,
        val providerRank: Int,
        val state: String,
        val authState: String,
        val deletionState: String,
        val alias: String?,
    )

    private data class CatalogRow(
        val id: String,
        val activeRank: Long?,
        val alias: String,
        val aliasNormalizedKey: String,
        val deletionState: String,
    )

    private class InjectedMigrationFault(point: String) : RuntimeException(point)

    private companion object {
        val counter = AtomicInteger()
    }
}
