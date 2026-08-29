package com.aiquota.mobile.accounts

import android.app.Application
import android.content.Context
import android.database.sqlite.SQLiteDatabase
import androidx.test.core.app.ApplicationProvider
import com.aiquota.mobile.local.ProviderId
import java.util.Locale
import java.util.concurrent.CountDownLatch
import java.util.concurrent.Executors
import java.util.concurrent.TimeUnit
import org.json.JSONArray
import org.json.JSONObject
import org.junit.After
import org.junit.Assert.assertArrayEquals
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertNotEquals
import org.junit.Assert.assertNull
import org.junit.Assert.assertThrows
import org.junit.Assert.assertTrue
import org.junit.Before
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner
import org.robolectric.Shadows.shadowOf

@RunWith(RobolectricTestRunner::class)
class ProviderCardCatalogTest {
    private lateinit var context: Context
    private val fixtures = mutableListOf<Fixture>()
    private val databaseNames = mutableListOf<String>()

    @Before
    fun setUp() {
        context = ApplicationProvider.getApplicationContext()
    }

    @After
    fun tearDown() {
        fixtures.asReversed().forEach { fixture -> runCatching { fixture.catalog.close() } }
        databaseNames.forEach(context::deleteDatabase)
    }

    @Test
    fun everyReleasedProviderIsExhaustivelyClassifiedAndEnrolledWithExactMultiplicity() {
        val released = ProviderId.defaultOrder().toSet()
        val classifiedReleased = ProviderId.entries.filterTo(mutableSetOf()) { provider ->
            ProviderCardCatalogPolicy.classify(provider) is ProviderCardProviderPolicy.Released
        }
        assertEquals(released, classifiedReleased)
        assertEquals(
            setOf(ProviderId.CLAUDE, ProviderId.CODEX),
            released.filterTo(mutableSetOf()) { provider ->
                (ProviderCardCatalogPolicy.classify(provider) as ProviderCardProviderPolicy.Released).multiplicity ==
                    ProviderCardMultiplicity.UNLIMITED
            },
        )

        val fixture = fixture("released")
        assertEquals(0, fixture.catalog.page(0, 1).totalCount)
        val first = ProviderId.defaultOrder().associateWith { provider ->
            added(fixture.catalog.add(provider)).also { account ->
                assertEquals(provider.displayName, account.alias)
                assertEquals(AccountState.ACTIVE, account.state)
                assertEquals(AccountAuthState.SIGNED_OUT, account.authState)
                assertEquals(AccountDeletionState.NONE, account.deletionState)
                if (provider !in setOf(ProviderId.CLAUDE, ProviderId.CODEX)) {
                    assertEquals(AccountKey.reservedDefault(), account.id.accountKey)
                }
            }
        }
        ProviderId.defaultOrder().forEach { provider ->
            val second = fixture.catalog.add(provider)
            if (provider == ProviderId.CLAUDE || provider == ProviderId.CODEX) {
                assertEquals("${provider.displayName} 2", added(second).alias)
            } else {
                assertEquals(
                    ProviderCardAddRejection.MultiplicityExceeded(provider),
                    rejected(second),
                )
            }
        }
        ProviderId.entries.filterNot(released::contains).forEach { provider ->
            assertEquals(
                ProviderCardAddRejection.UnsupportedProvider(provider),
                rejected(fixture.catalog.add(provider)),
            )
        }
        assertEquals(released.size + 2, fixture.catalog.page(0, 1).totalCount)
        assertEquals(released, first.keys)
    }

    @Test
    fun suggestionUsesTheAtomicAllocatorWithoutWriting() {
        // Given
        val fixture = fixture("suggestion")

        // When / Then
        assertEquals("Codex", fixture.catalog.suggestAlias(ProviderId.CODEX))
        assertEquals(0, fixture.catalog.page(0, 1).totalCount)
        added(fixture.catalog.add(ProviderId.CODEX))
        assertEquals("Codex 2", fixture.catalog.suggestAlias(ProviderId.CODEX))
        added(fixture.catalog.add(ProviderId.CODEX))
        assertEquals("Codex 3", fixture.catalog.suggestAlias(ProviderId.CODEX))
        assertEquals("Cursor", fixture.catalog.suggestAlias(ProviderId.CURSOR))
        added(fixture.catalog.add(ProviderId.CURSOR))
        assertNull(fixture.catalog.suggestAlias(ProviderId.CURSOR))
    }

    @Test
    fun zeroOneAndOneThousandCardsUseBoundedLowestSuffixAllocation() {
        val fixture = fixture("thousand")
        assertEquals(0, fixture.catalog.page(0, 1).totalCount)
        val first = added(fixture.catalog.add(ProviderId.CLAUDE))
        assertEquals("Claude", first.alias)
        assertEquals(1, fixture.catalog.page(0, 1).totalCount)
        repeat(999) { index ->
            assertEquals("Claude ${index + 2}", added(fixture.catalog.add(ProviderId.CLAUDE)).alias)
        }
        assertEquals(1_000, fixture.catalog.page(0, 1).totalCount)
        val aliases = activeCatalogRows(fixture.databaseName).map(CatalogRow::alias)
        assertEquals("Claude", aliases.first())
        assertEquals("Claude 1000", aliases.last())
        assertEquals(1_000, aliases.toSet().size)
    }

    @Test
    fun omittedNullAndUnicodeBlankAliasesAreAutomaticWhileExplicitCustomBlankIsInvalid() {
        val fixture = fixture("automatic")
        assertEquals("Claude", added(fixture.catalog.add(ProviderId.CLAUDE)).alias)
        assertEquals("Codex", added(fixture.catalog.add(ProviderId.CODEX, null)).alias)
        assertEquals("Claude 2", added(fixture.catalog.add(ProviderId.CLAUDE, "\u2003\u3000")).alias)
        assertEquals("Codex 2", added(fixture.catalog.add(ProviderId.CODEX, "   ")).alias)
        assertEquals(
            ProviderCardAddRejection.AliasValidation(ProviderCardAliasValidationReason.BLANK),
            rejected(
                fixture.catalog.add(
                    AddProviderCardRequest(
                        ProviderId.CLAUDE,
                        ProviderCardAliasSelection.Custom("\u2003\u3000"),
                    )
                )
            ),
        )
    }

    @Test
    fun customAliasesAcceptOneAndFortyUnicodeCodePointsAndRejectZeroFortyOneAndControls() {
        val fixture = fixture("alias-boundaries")
        val one = "😀"
        val forty = "가".repeat(40)
        assertEquals(one, added(fixture.catalog.add(custom(ProviderId.CLAUDE, one))).alias)
        assertEquals(forty, added(fixture.catalog.add(custom(ProviderId.CODEX, forty))).alias)

        val invalid = listOf(
            "" to ProviderCardAliasValidationReason.BLANK,
            "😀".repeat(41) to ProviderCardAliasValidationReason.TOO_LONG,
            "bad\u0000alias" to ProviderCardAliasValidationReason.CONTROL_CHARACTER,
        )
        invalid.forEach { (alias, reason) ->
            val before = fixture.authority.canonicalDumpForTest()
            assertEquals(
                ProviderCardAddRejection.AliasValidation(reason),
                rejected(fixture.catalog.add(custom(ProviderId.CLAUDE, alias))),
            )
            assertArrayEquals(before, fixture.authority.canonicalDumpForTest())
        }
    }

    @Test
    fun caseSensitiveAliasMutationGuardUsesGlobalUnicodeTrimAndLocaleRootCollisionKeys() {
        val priorLocale = Locale.getDefault()
        Locale.setDefault(Locale.forLanguageTag("tr-TR"))
        try {
            val fixture = fixture("alias-collision")
            assertEquals("Work", added(fixture.catalog.add(custom(ProviderId.CLAUDE, "\u2003Work\u3000"))).alias)
            assertEquals(
                ProviderCardAddRejection.AliasConflict("work"),
                rejected(fixture.catalog.add(custom(ProviderId.CODEX, " work "))),
            )
            assertEquals("I", added(fixture.catalog.add(custom(ProviderId.CLAUDE, "I"))).alias)
            assertEquals(
                ProviderCardAddRejection.AliasConflict("i"),
                rejected(fixture.catalog.add(custom(ProviderId.CODEX, "i"))),
            )
            assertEquals("İST", added(fixture.catalog.add(custom(ProviderId.CLAUDE, "İST"))).alias)
            assertEquals(
                ProviderCardAddRejection.AliasConflict("i\u0307st"),
                rejected(fixture.catalog.add(custom(ProviderId.CODEX, "i\u0307st"))),
            )
            assertEquals(3, fixture.catalog.page(0, 10).totalCount)
        } finally {
            Locale.setDefault(priorLocale)
        }
    }

    @Test
    fun authorityBoundaryRejectsCallerSuppliedUnlimitedMultiplicityForCursor() {
        val fixture = fixture("authority-bypass")
        val first = added(
            fixture.authority.enrollDisconnectedProviderCard(
                providerId = ProviderId.CURSOR,
                customAlias = null,
            )
        )
        assertEquals(AccountKey.reservedDefault(), first.id.accountKey)
        val before = fixture.authority.canonicalDumpForTest()
        val version = fixture.authority.displayVersion()
        val ranks = activeCatalogRows(fixture.databaseName).map(CatalogRow::rank)

        assertEquals(
            ProviderCardAddRejection.MultiplicityExceeded(ProviderId.CURSOR),
            rejected(
                fixture.authority.enrollDisconnectedProviderCard(
                    providerId = ProviderId.CURSOR,
                    customAlias = null,
                )
            ),
        )
        assertArrayEquals(before, fixture.authority.canonicalDumpForTest())
        assertEquals(version, fixture.authority.displayVersion())
        assertEquals(ranks, activeCatalogRows(fixture.databaseName).map(CatalogRow::rank))
        println(
            "QA_TASK8_AUTHORITY_BYPASS=provider=cursor;first=ADDED:Cursor;" +
                "second=REJECTED:MultiplicityExceeded;bytesUnchanged=true;" +
                "version=${version.value};ranks=${ranks.joinToString(",")}"
        )
    }

    @Test
    fun directAuthorityPolicyIsExhaustiveWithoutFacadeOrClassifierOracle() {
        val unlimited = setOf(ProviderId.CLAUDE, ProviderId.CODEX)
        val single = setOf(
            ProviderId.GLM,
            ProviderId.OPENCODE,
            ProviderId.GEMINI,
            ProviderId.COPILOT,
            ProviderId.ANTIGRAVITY,
            ProviderId.CURSOR,
            ProviderId.GROK,
            ProviderId.KIRO,
        )
        val unsupported = setOf(ProviderId.KIMI)
        assertEquals(ProviderId.entries.toSet(), unlimited + single + unsupported)

        ProviderId.entries.forEach { provider ->
            val fixture = fixture("direct-${provider.storageId}")
            val beforeFirst = fixture.authority.canonicalDumpForTest()
            val first = fixture.authority.enrollDisconnectedProviderCard(provider, customAlias = null)
            if (provider in unsupported) {
                assertEquals(
                    ProviderCardAddRejection.UnsupportedProvider(provider),
                    rejected(first),
                )
                assertArrayEquals(beforeFirst, fixture.authority.canonicalDumpForTest())
                assertEquals(DisplayVersion.ZERO, fixture.authority.displayVersion())
                assertTrue(activeCatalogRows(fixture.databaseName).isEmpty())
            } else {
                val firstAccount = added(first)
                assertEquals(provider.displayName, firstAccount.alias)
                val beforeSecond = fixture.authority.canonicalDumpForTest()
                val version = fixture.authority.displayVersion()
                val ranks = activeCatalogRows(fixture.databaseName).map(CatalogRow::rank)
                val second = fixture.authority.enrollDisconnectedProviderCard(provider, customAlias = null)
                if (provider in unlimited) {
                    assertEquals("${provider.displayName} 2", added(second).alias)
                } else {
                    assertEquals(AccountKey.reservedDefault(), firstAccount.id.accountKey)
                    assertEquals(
                        ProviderCardAddRejection.MultiplicityExceeded(provider),
                        rejected(second),
                    )
                    assertArrayEquals(beforeSecond, fixture.authority.canonicalDumpForTest())
                    assertEquals(version, fixture.authority.displayVersion())
                    assertEquals(ranks, activeCatalogRows(fixture.databaseName).map(CatalogRow::rank))
                }
            }
        }
    }

    @Test
    fun secondCursorMutationGuardReturnsTypedMultiplicityWithoutAnyWrite() {
        val fixture = fixture("cursor")
        val first = added(fixture.catalog.add(ProviderId.CURSOR))
        val before = fixture.authority.canonicalDumpForTest()
        val version = fixture.authority.displayVersion()
        val ranks = activeCatalogRows(fixture.databaseName).map(CatalogRow::rank)

        assertEquals(
            ProviderCardAddRejection.MultiplicityExceeded(ProviderId.CURSOR),
            rejected(fixture.catalog.add(ProviderId.CURSOR, "Other")),
        )
        assertArrayEquals(before, fixture.authority.canonicalDumpForTest())
        assertEquals(version, fixture.authority.displayVersion())
        assertEquals(ranks, activeCatalogRows(fixture.databaseName).map(CatalogRow::rank))
        assertEquals(AccountKey.reservedDefault(), first.id.accountKey)
    }

    @Test
    fun allTypedPolicyFailuresAndInjectedDurableFailuresLeaveNoPartialRowVersionOrRank() {
        val fixture = fixture("failure-atomic")
        added(fixture.catalog.add(custom(ProviderId.CLAUDE, "Work")))
        added(fixture.catalog.add(ProviderId.CURSOR))
        val failures = listOf<() -> ProviderCardAddResult>(
            { fixture.catalog.add(ProviderId.KIMI) },
            { fixture.catalog.add(custom(ProviderId.CODEX, " work ")) },
            { fixture.catalog.add(custom(ProviderId.CODEX, "bad\u0001alias")) },
            { fixture.catalog.add(ProviderId.CURSOR) },
        )
        failures.forEach { fail ->
            val before = fixture.authority.canonicalDumpForTest()
            val version = fixture.authority.displayVersion()
            val ranks = activeCatalogRows(fixture.databaseName).map(CatalogRow::rank)
            assertTrue(fail() is ProviderCardAddResult.Rejected)
            assertArrayEquals(before, fixture.authority.canonicalDumpForTest())
            assertEquals(version, fixture.authority.displayVersion())
            assertEquals(ranks, activeCatalogRows(fixture.databaseName).map(CatalogRow::rank))
        }

        listOf(AccountAuthorityFaultPoint.CATALOG, AccountAuthorityFaultPoint.VERSION).forEach { point ->
            val name = databaseName("fault-${point.name}")
            val authority = MainProcessAccountAuthority.open(
                context,
                name,
                AccountAuthorityFaultInjector { reached -> if (reached == point) throw InjectedCatalogFault(point) },
            )
            val catalog = ProviderCardCatalog.openForTest(authority)
            fixtures += Fixture(name, authority, catalog)
            val before = authority.canonicalDumpForTest()
            assertThrows(InjectedCatalogFault::class.java) { catalog.add(ProviderId.CLAUDE) }
            assertArrayEquals(point.name, before, authority.canonicalDumpForTest())
            assertEquals(0, catalog.page(0, 1).totalCount)
            assertTrue(activeCatalogRows(name).isEmpty())
        }
    }

    @Test
    fun concurrentTwoAddUsesLatchAndBoundedAwaitForExactUnlimitedAndSingletonOutcomes() {
        val unlimited = concurrentAdd("concurrent-claude", ProviderId.CLAUDE)
        assertEquals(2, unlimited.count { it is ProviderCardAddResult.Added })
        assertEquals(
            setOf("Claude", "Claude 2"),
            unlimited.map { (it as ProviderCardAddResult.Added).account.alias }.toSet(),
        )

        val singleton = concurrentAdd("concurrent-cursor", ProviderId.CURSOR)
        assertEquals(1, singleton.count { it is ProviderCardAddResult.Added })
        assertEquals(
            listOf(ProviderCardAddRejection.MultiplicityExceeded(ProviderId.CURSOR)),
            singleton.filterIsInstance<ProviderCardAddResult.Rejected>().map { it.rejection },
        )

        val customCollision = concurrentAdd(
            "concurrent-custom",
            ProviderId.CLAUDE,
            ProviderCardAliasSelection.Custom("Team"),
        )
        assertEquals(1, customCollision.count { it is ProviderCardAddResult.Added })
        assertEquals(
            listOf(ProviderCardAddRejection.AliasConflict("Team")),
            customCollision.filterIsInstance<ProviderCardAddResult.Rejected>().map { it.rejection },
        )
    }

    @Test
    fun tombstonedAccountKeyReuseMutationGuardReusesLowestSuffixWithNewImmutableIdentity() {
        val fixture = fixture("tombstone")
        val first = added(fixture.catalog.add(ProviderId.CLAUDE))
        val removed = added(fixture.catalog.add(ProviderId.CLAUDE))
        assertEquals("Claude 2", removed.alias)
        tombstone(fixture.databaseName, removed.id)

        val replacement = added(fixture.catalog.add(ProviderId.CLAUDE))
        assertEquals("Claude 2", replacement.alias)
        assertNotEquals(removed.id, replacement.id)
        assertNotEquals(removed.id.accountKey, replacement.id.accountKey)
        assertEquals(first.id, activeCatalogRows(fixture.databaseName).first().id)
        assertEquals(listOf(0L, 1L), activeCatalogRows(fixture.databaseName).map(CatalogRow::rank))
        assertEquals(0, tableCount(fixture.databaseName, "named_profile_lifecycle"))
        assertNull(primaryAccountKey(fixture.databaseName, ProviderId.CLAUDE))
    }

    @Test
    fun automaticLoginSideEffectMutationGuardCreatesOnlySignedOutAccountAndCatalogMetadata() {
        val fixture = fixture("side-effects")
        val application = context as Application
        val record = added(fixture.catalog.add(ProviderId.CLAUDE))

        assertEquals(AccountState.ACTIVE, record.state)
        assertEquals(AccountAuthState.SIGNED_OUT, record.authState)
        assertEquals(0, record.generation.value)
        assertEquals(0, record.sessionRevision.value)
        assertEquals(1, tableCount(fixture.databaseName, "accounts"))
        assertEquals(1, tableCount(fixture.databaseName, "provider_card_catalog"))
        listOf(
            "snapshots",
            "demands",
            "attempts",
            "nonce_heads",
            "published_nonces",
            "account_usage_primary",
            "named_profile_lifecycle",
        ).forEach { table -> assertEquals(table, 0, tableCount(fixture.databaseName, table)) }
        assertNull(shadowOf(application).nextStartedActivity)
        assertEquals(
            listOf(MainProcessAccountAuthority::class.java),
            ProviderCardCatalog::class.java.declaredFields
                .filterNot { java.lang.reflect.Modifier.isStatic(it.modifiers) }
                .map { it.type },
        )
    }

    @Test
    fun auxiliaryDataShapedFacadeDriverPrintsMachineCatalogAndZeroSideEffects() {
        val fixture = fixture("manual-driver")
        listOf(
            ProviderId.CLAUDE,
            ProviderId.CLAUDE,
            ProviderId.CODEX,
            ProviderId.CODEX,
            ProviderId.CURSOR,
            ProviderId.GEMINI,
        ).forEach { provider -> added(fixture.catalog.add(provider)) }
        val before = activeCatalogRows(fixture.databaseName)
        val work = added(fixture.catalog.add(custom(ProviderId.CLAUDE, "Work")))
        val collision = rejected(fixture.catalog.add(custom(ProviderId.CODEX, " work ")))
        val beforeSecondCursor = fixture.authority.canonicalDumpForTest()
        val secondCursor = rejected(fixture.catalog.add(ProviderId.CURSOR))
        assertArrayEquals(beforeSecondCursor, fixture.authority.canonicalDumpForTest())
        val concurrent = concurrentAddOn(fixture.databaseName, ProviderId.CLAUDE)

        val removed = before.single { it.alias == "Claude 2" }
        tombstone(fixture.databaseName, removed.id)
        val replacement = added(fixture.catalog.add(ProviderId.CLAUDE))
        assertEquals("Claude 2", replacement.alias)
        assertNotEquals(removed.id, replacement.id)

        val sideEffects = JSONObject()
            .put("credentialWrites", 0)
            .put("profileRows", tableCount(fixture.databaseName, "named_profile_lifecycle"))
            .put("loginActivities", if (shadowOf(context as Application).nextStartedActivity == null) 0 else 1)
            .put("usageSnapshots", tableCount(fixture.databaseName, "snapshots"))
            .put("refreshDemands", tableCount(fixture.databaseName, "demands"))
            .put("providerRequests", 0)
            .put("primarySelections", tableCount(fixture.databaseName, "account_usage_primary"))
            .put("releaseCalls", 0)
        val output = JSONObject()
            .put("before", rowsJson(before))
            .put("work", accountJson(work))
            .put("workCollision", collision::class.simpleName)
            .put("secondCursor", secondCursor::class.simpleName)
            .put("concurrent", JSONArray(concurrent.map(::resultValue)))
            .put("tombstonedId", idValue(removed.id))
            .put("replacement", accountJson(replacement))
            .put("after", rowsJson(activeCatalogRows(fixture.databaseName)))
            .put("sideEffects", sideEffects)
        println("QA_TASK8_AUXILIARY=$output")
    }

    private fun concurrentAdd(
        label: String,
        providerId: ProviderId,
        alias: ProviderCardAliasSelection = ProviderCardAliasSelection.Automatic,
    ): List<ProviderCardAddResult> {
        val name = databaseName(label)
        return concurrentAddOn(name, providerId, alias)
    }

    private fun concurrentAddOn(
        databaseName: String,
        providerId: ProviderId,
        alias: ProviderCardAliasSelection = ProviderCardAliasSelection.Automatic,
    ): List<ProviderCardAddResult> {
        val authorities = List(2) { MainProcessAccountAuthority.open(context, databaseName) }
        authorities.forEach(MainProcessAccountAuthority::displayVersion)
        val catalogs = authorities.map(ProviderCardCatalog::openForTest)
        authorities.zip(catalogs).forEach { (authority, catalog) ->
            fixtures += Fixture(databaseName, authority, catalog)
        }
        val ready = CountDownLatch(2)
        val start = CountDownLatch(1)
        val executor = Executors.newFixedThreadPool(2)
        return try {
            val futures = catalogs.map { catalog ->
                executor.submit<ProviderCardAddResult> {
                    ready.countDown()
                    assertTrue(start.await(10, TimeUnit.SECONDS))
                    catalog.add(AddProviderCardRequest(providerId, alias))
                }
            }
            assertTrue(ready.await(10, TimeUnit.SECONDS))
            start.countDown()
            futures.map { future -> future.get(20, TimeUnit.SECONDS) }
        } finally {
            executor.shutdownNow()
        }
    }

    private fun fixture(label: String): Fixture {
        val name = databaseName(label)
        val authority = MainProcessAccountAuthority.open(context, name)
        return Fixture(name, authority, ProviderCardCatalog.openForTest(authority)).also(fixtures::add)
    }

    private fun databaseName(label: String): String =
        "provider-card-catalog-$label-${databaseNames.size}.db".also { name ->
            databaseNames += name
            context.deleteDatabase(name)
        }

    private fun rawDatabase(name: String): SQLiteDatabase = SQLiteDatabase.openDatabase(
        context.getDatabasePath(name).path,
        null,
        SQLiteDatabase.OPEN_READWRITE,
    )

    private fun tombstone(name: String, id: ProviderAccountId) {
        rawDatabase(name).use { db ->
            db.beginTransaction()
            try {
                val rank = db.rawQuery(
                    "SELECT active_rank FROM provider_card_catalog WHERE provider_id=? AND account_key=?",
                    arrayOf(id.providerId.storageId, id.accountKey.storageValue()),
                ).use { cursor ->
                    assertTrue(cursor.moveToFirst())
                    cursor.getLong(0)
                }
                assertEquals(
                    1,
                    db.update(
                        "accounts",
                        android.content.ContentValues().apply {
                            put("state", AccountState.DELETED.name)
                            put("auth_state", AccountAuthState.SIGNED_OUT.name)
                            put("deletion_state", AccountDeletionState.TOMBSTONED.name)
                        },
                        "provider_id=? AND account_key=?",
                        arrayOf(id.providerId.storageId, id.accountKey.storageValue()),
                    ),
                )
                db.execSQL(
                    "UPDATE provider_card_catalog SET active_rank=NULL WHERE provider_id=? AND account_key=?",
                    arrayOf(id.providerId.storageId, id.accountKey.storageValue()),
                )
                db.execSQL("UPDATE provider_card_catalog SET active_rank=active_rank+100000 WHERE active_rank>?", arrayOf(rank))
                db.execSQL("UPDATE provider_card_catalog SET active_rank=active_rank-100001 WHERE active_rank>=?", arrayOf(rank + 100001))
                db.setTransactionSuccessful()
            } finally {
                db.endTransaction()
            }
        }
    }

    private fun activeCatalogRows(name: String): List<CatalogRow> = rawDatabase(name).use { db ->
        db.rawQuery(
            "SELECT accounts.provider_id,accounts.account_key,accounts.alias,provider_card_catalog.active_rank " +
                "FROM accounts JOIN provider_card_catalog USING(provider_id,account_key) " +
                "WHERE provider_card_catalog.active_rank IS NOT NULL ORDER BY provider_card_catalog.active_rank",
            null,
        ).use { cursor ->
            buildList {
                while (cursor.moveToNext()) {
                    add(
                        CatalogRow(
                            ProviderAccountId(
                                requireNotNull(ProviderId.fromStorageId(cursor.getString(0))),
                                AccountKey.fromStorage(cursor.getString(1)),
                            ),
                            cursor.getString(2),
                            cursor.getLong(3),
                        )
                    )
                }
            }
        }
    }

    private fun tableCount(name: String, table: String): Int = rawDatabase(name).use { db ->
        db.rawQuery("SELECT COUNT(*) FROM $table", null).use { cursor ->
            assertTrue(cursor.moveToFirst())
            cursor.getInt(0)
        }
    }

    private fun primaryAccountKey(name: String, providerId: ProviderId): String? = rawDatabase(name).use { db ->
        db.rawQuery(
            "SELECT account_key FROM account_usage_primary WHERE provider_id=?",
            arrayOf(providerId.storageId),
        ).use { cursor -> if (cursor.moveToFirst()) cursor.getString(0) else null }
    }

    private fun custom(providerId: ProviderId, value: String) = AddProviderCardRequest(
        providerId,
        ProviderCardAliasSelection.Custom(value),
    )

    private fun added(result: ProviderCardAddResult): AccountRecord {
        assertTrue(result.toString(), result is ProviderCardAddResult.Added)
        return (result as ProviderCardAddResult.Added).account
    }

    private fun rejected(result: ProviderCardAddResult): ProviderCardAddRejection {
        assertTrue(result.toString(), result is ProviderCardAddResult.Rejected)
        return (result as ProviderCardAddResult.Rejected).rejection
    }

    private fun rowsJson(rows: List<CatalogRow>): JSONArray = JSONArray(rows.map { row ->
        JSONObject()
            .put("id", idValue(row.id))
            .put("alias", row.alias)
            .put("rank", row.rank)
    })

    private fun accountJson(account: AccountRecord): JSONObject = JSONObject()
        .put("id", idValue(account.id))
        .put("alias", account.alias)
        .put("state", account.state.name)
        .put("authState", account.authState.name)

    private fun resultValue(result: ProviderCardAddResult): String = when (result) {
        is ProviderCardAddResult.Added -> "ADDED:${result.account.alias}"
        is ProviderCardAddResult.Rejected -> "REJECTED:${result.rejection::class.simpleName}"
    }

    private fun idValue(id: ProviderAccountId): String =
        "${id.providerId.storageId}/${id.accountKey.storageValue()}"

    private data class Fixture(
        val databaseName: String,
        val authority: MainProcessAccountAuthority,
        val catalog: ProviderCardCatalog,
    )

    private data class CatalogRow(
        val id: ProviderAccountId,
        val alias: String,
        val rank: Long,
    )

    private class InjectedCatalogFault(val point: AccountAuthorityFaultPoint) : RuntimeException(point.name)
}
