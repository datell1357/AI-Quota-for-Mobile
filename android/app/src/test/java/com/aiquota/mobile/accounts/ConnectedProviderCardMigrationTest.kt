package com.aiquota.mobile.accounts

import android.app.Application
import android.app.job.JobScheduler
import android.content.Context
import android.database.sqlite.SQLiteDatabase
import androidx.test.core.app.ApplicationProvider
import com.aiquota.mobile.local.ProviderConnectionState
import com.aiquota.mobile.local.ProviderId
import com.aiquota.mobile.local.ProviderUsageLine
import com.aiquota.mobile.local.ProviderUsageSnapshot
import com.aiquota.mobile.providers.ProviderSnapshotCodec
import java.security.MessageDigest
import java.util.concurrent.CountDownLatch
import java.util.concurrent.Executors
import java.util.concurrent.TimeUnit
import java.util.concurrent.atomic.AtomicInteger
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
class ConnectedProviderCardMigrationTest {
    private lateinit var context: Context
    private val authorities = mutableListOf<MainProcessAccountAuthority>()
    private val databaseNames = mutableListOf<String>()
    private val sources = mutableListOf<DurableFakeMigrationSource>()

    @Before
    fun setUp() {
        context = ApplicationProvider.getApplicationContext()
    }

    @After
    fun tearDown() {
        authorities.asReversed().forEach { runCatching { it.close() } }
        databaseNames.forEach(context::deleteDatabase)
        sources.forEach { it.root.deleteRecursively() }
    }

    @Test
    fun zeroConnectedZeroUsageZeroCatalogCommitsPendingAndShowsPickerOnceInitialized() {
        val fixture = fixture("zero", source())
        val before = databaseHash(fixture.databaseName)

        val result = completed(fixture.migration.run())

        assertEquals(1, result.state.migrationVersion)
        assertEquals(ProviderCatalogOnboardingState.PENDING, result.state.onboardingState)
        assertEquals(0, result.state.activeCardCount)
        assertEquals(0, result.state.migrationLinkCount)
        assertTrue(result.state.showFirstRunProviderPicker)
        assertEquals(1, markerVersion(fixture.databaseName))
        println(
            "QA_TASK9_ZERO=" + JSONObject()
                .put("beforeSha256", before)
                .put("afterSha256", databaseHash(fixture.databaseName))
                .put("markerVersion", result.state.migrationVersion)
                .put("onboardingState", result.state.onboardingState.name)
                .put("picker", result.state.showFirstRunProviderPicker)
                .put("activeCards", result.state.activeCardCount)
        )
    }

    @Test
    fun connectedWithoutUsageAndDisconnectedWithUsageMigrateButUnconnectedEmptyDoesNot() {
        val fixture = fixture(
            "qualification",
            source(
                snapshot(ProviderId.CURSOR, ProviderConnectionState.CONNECTED),
                snapshot(ProviderId.GEMINI, ProviderConnectionState.DISCONNECTED, usage = true),
                snapshot(ProviderId.COPILOT, ProviderConnectionState.DISCONNECTED),
            ),
        )

        val result = completed(fixture.migration.run())
        val records = fixture.authority.catalog(0, 10).records

        assertEquals(setOf(ProviderId.CURSOR, ProviderId.GEMINI), records.map { it.id.providerId }.toSet())
        assertTrue(records.all { it.id.accountKey == AccountKey.reservedDefault() })
        assertEquals(ProviderCatalogOnboardingState.COMPLETED, result.state.onboardingState)
        assertFalse(result.state.showFirstRunProviderPicker)
        assertEquals(2, result.importedAccountCount)
    }

    @Test
    fun legacyConnectedStatePolicyMigratesTransientAndRetryableConnectionsWithoutUsage() {
        val connectedStates = listOf(
            ProviderConnectionState.CONNECTING,
            ProviderConnectionState.CONNECTED,
            ProviderConnectionState.COLLECTING,
            ProviderConnectionState.STALE,
            ProviderConnectionState.UNAVAILABLE,
            ProviderConnectionState.ERROR,
        )
        val providers = listOf(
            ProviderId.CURSOR,
            ProviderId.GEMINI,
            ProviderId.COPILOT,
            ProviderId.GLM,
            ProviderId.OPENCODE,
            ProviderId.ANTIGRAVITY,
        )
        val fixture = fixture(
            "connected-states",
            source(*providers.zip(connectedStates).map { (provider, state) ->
                snapshot(provider, state)
            }.toTypedArray()),
        )

        completed(fixture.migration.run())

        assertEquals(providers.toSet(), fixture.authority.catalog(0, 10).records.map { it.id.providerId }.toSet())
    }

    @Test
    fun providerGlobalUsageCreatesReservedDefaultWithoutProfileOrPrimary() {
        val fixture = fixture(
            "global-usage",
            source(snapshot(ProviderId.OPENCODE, ProviderConnectionState.DISCONNECTED, usage = true)),
        )

        completed(fixture.migration.run())
        val account = fixture.authority.catalog(0, 10).records.single()

        assertEquals(ProviderAccountId(ProviderId.OPENCODE, AccountKey.reservedDefault()), account.id)
        assertEquals(AccountAuthState.REAUTH_REQUIRED, account.authState)
        assertEquals(0, tableCount(fixture.databaseName, "named_profile_lifecycle"))
        assertEquals(0, tableCount(fixture.databaseName, "account_usage_primary"))
    }

    @Test
    fun providerKeyCollapseMutationGuardPreservesClaudeCodexSiblingIdsPrimaryAndAccountBytes() {
        val fixture = fixture("siblings", source())
        val claude = fixture.authority.register(siblingSeed(ProviderId.CLAUDE, 101)).account
        val codex = fixture.authority.register(siblingSeed(ProviderId.CODEX, 102)).account
        insertProfile(fixture.databaseName, claude.id, profileToken(1))
        insertProfile(fixture.databaseName, codex.id, profileToken(2))
        insertPrimary(fixture.databaseName, claude.id)
        insertPrimary(fixture.databaseName, codex.id)
        val accountBefore = tableDump(fixture.databaseName, "accounts")
        val profileBefore = tableDump(fixture.databaseName, "named_profile_lifecycle")
        val primaryBefore = tableDump(fixture.databaseName, "account_usage_primary")

        val result = completed(fixture.migration.run())

        assertEquals(setOf(claude.id, codex.id), fixture.authority.catalog(0, 10).records.map { it.id }.toSet())
        assertEquals(accountBefore, tableDump(fixture.databaseName, "accounts"))
        assertEquals(profileBefore, tableDump(fixture.databaseName, "named_profile_lifecycle"))
        assertEquals(primaryBefore, tableDump(fixture.databaseName, "account_usage_primary"))
        assertEquals(2, result.state.migrationLinkCount)
        println(
            "QA_TASK9_SIBLINGS=" + JSONObject()
                .put("ids", JSONArray(listOf(claude.id, codex.id).map(::idValue)))
                .put("profiles", profileBefore)
                .put("primary", primaryBefore)
                .put("accountSha256", sha256(accountBefore))
                .put("links", result.state.migrationLinkCount)
        )
    }

    @Test
    fun providerGlobalClaudeAndCodexUseReservedDefaultsWithoutCollapsingExistingSiblings() {
        val fixture = fixture(
            "defaults-and-siblings",
            source(
                snapshot(ProviderId.CLAUDE, ProviderConnectionState.CONNECTED),
                snapshot(ProviderId.CODEX, ProviderConnectionState.CONNECTED),
            ),
        )
        val claudeSibling = fixture.authority.register(siblingSeed(ProviderId.CLAUDE, 111)).account
        val codexSibling = fixture.authority.register(siblingSeed(ProviderId.CODEX, 112)).account

        completed(fixture.migration.run())
        val ids = fixture.authority.catalog(0, 10).records.map { it.id }.toSet()

        assertEquals(
            setOf(
                claudeSibling.id,
                codexSibling.id,
                ProviderAccountId(ProviderId.CLAUDE, AccountKey.reservedDefault()),
                ProviderAccountId(ProviderId.CODEX, AccountKey.reservedDefault()),
            ),
            ids,
        )
    }

    @Test
    fun ignorePreexistingCatalogMutationGuardKeepsActiveCardByteStableAndLinked() {
        val fixture = fixture("preexisting", source())
        val existing = added(ProviderCardCatalog.openForTest(fixture.authority).add(ProviderId.CURSOR))
        val before = accountCatalogDump(fixture.databaseName)

        val result = completed(fixture.migration.run())

        assertEquals(before, accountCatalogDump(fixture.databaseName))
        assertEquals(existing.id, fixture.authority.catalog(0, 10).records.single().id)
        assertEquals(1, result.state.migrationLinkCount)
        assertEquals(ProviderCatalogOnboardingState.COMPLETED, result.state.onboardingState)
        println(
            "QA_TASK9_PREEXISTING=" + JSONObject()
                .put("account", accountJson(existing, activeRank(fixture.databaseName, existing.id)))
                .put("byteStable", before == accountCatalogDump(fixture.databaseName))
                .put("links", result.state.migrationLinkCount)
        )
    }

    @Test
    fun qualifiedTombstoneIsLinkedButNeverResurrected() {
        val fixture = fixture(
            "tombstone",
            source(snapshot(ProviderId.CURSOR, ProviderConnectionState.CONNECTED)),
        )
        val existing = added(ProviderCardCatalog.openForTest(fixture.authority).add(ProviderId.CURSOR))
        tombstone(fixture.databaseName, existing.id)
        val before = accountCatalogDump(fixture.databaseName)

        val result = completed(fixture.migration.run())

        assertEquals(before, accountCatalogDump(fixture.databaseName))
        assertEquals(0, result.state.activeCardCount)
        assertEquals(1, result.state.migrationLinkCount)
        assertEquals(ProviderCatalogOnboardingState.COMPLETED, result.state.onboardingState)
        assertFalse(result.state.showFirstRunProviderPicker)
    }

    @Test
    fun restartIsIdempotentAndAlreadyMigratedBytesAreStable() {
        val source = source(snapshot(ProviderId.CURSOR, ProviderConnectionState.CONNECTED))
        val fixture = fixture("restart", source)
        val first = completed(fixture.migration.run())
        val once = fixture.authority.canonicalDumpForTest()

        fixture.authority.close()
        authorities.remove(fixture.authority)
        val restartedAuthority = open(fixture.databaseName)
        val restarted = ConnectedProviderCardMigration(source.reopen(), restartedAuthority)
        val second = completed(restarted.run())

        assertArrayEquals(once, restartedAuthority.canonicalDumpForTest())
        assertEquals(first.state, second.state)
        assertEquals(0, second.importedAccountCount)
        assertTrue(second.resumed)
    }

    @Test
    fun concurrentCallersSerializeToOneImportAndIdenticalStateWithoutPolling() {
        val source = source(snapshot(ProviderId.CURSOR, ProviderConnectionState.CONNECTED))
        val name = database("concurrent")
        val firstAuthority = open(name)
        val secondAuthority = open(name)
        val ready = CountDownLatch(2)
        val start = CountDownLatch(1)
        val executor = Executors.newFixedThreadPool(2)
        try {
            val futures = listOf(firstAuthority, secondAuthority).map { authority ->
                executor.submit<ConnectedProviderCardMigrationResult.Completed> {
                    ready.countDown()
                    assertTrue(start.await(10, TimeUnit.SECONDS))
                    completed(ConnectedProviderCardMigration(source.reopen(), authority).run())
                }
            }
            assertTrue(ready.await(10, TimeUnit.SECONDS))
            start.countDown()
            val results = futures.map { it.get(20, TimeUnit.SECONDS) }
            assertEquals(1, results.sumOf { it.importedAccountCount })
            assertEquals(1, results.map { it.state }.distinct().size)
            assertEquals(setOf(false, true), results.map { it.resumed }.toSet())
            println(
                "QA_TASK9_CONCURRENT=" + JSONObject()
                    .put("imports", results.sumOf { it.importedAccountCount })
                    .put("resumed", JSONArray(results.map { it.resumed }))
                    .put("states", results.map { it.state }.distinct().size)
            )
        } finally {
            executor.shutdownNow()
        }
        assertEquals(1, firstAuthority.catalog(0, 10).totalCount)
        assertEquals(1, markerVersion(name))
    }

    @Test
    fun authoritativeSourceIsCapturedExactlyOnceInsideTheAuthorityTransaction() {
        val cursor = source(snapshot(ProviderId.CURSOR, ProviderConnectionState.CONNECTED))
        val gemini = source(snapshot(ProviderId.GEMINI, ProviderConnectionState.CONNECTED))
        val changing = ChangingLegacyMigrationSource(cursor, gemini)
        val name = database("source-race")
        val authority = open(name).also(MainProcessAccountAuthority::displayVersion)

        val result = completed(ConnectedProviderCardMigration(changing, authority).run())

        assertEquals(1, changing.captureCount)
        assertEquals(1, result.importedAccountCount)
        assertEquals(
            listOf(ProviderId.CURSOR),
            authority.catalog(0, 10).records.map { it.id.providerId },
        )
        assertEquals(1, markerVersion(name))
    }

    @Test
    fun sourceExceptionInsideTransactionLeavesDatabaseMarkerAndOnboardingByteIdentical() {
        val fixture = fixture("source-exception", source())
        val before = fixture.authority.canonicalDumpForTest()
        val throwing = object : LegacyMigrationSource {
            override fun capture(): LegacySourceCapture = throw SourceProbeException()
            override fun readContext(receipt: LegacyContextSourceReceipt): LegacyContextCapture = error("unused")
            override fun mirrorSeedData(providerId: ProviderId): String = error("unused")
            override fun preferenceSeedData(providerId: ProviderId): String = error("unused")
        }

        assertThrows(SourceProbeException::class.java) {
            ConnectedProviderCardMigration(throwing, fixture.authority).run()
        }

        assertArrayEquals(before, fixture.authority.canonicalDumpForTest())
        assertEquals(0, markerVersion(fixture.databaseName))
        assertEquals(ProviderCatalogOnboardingState.PENDING, fixture.migration.state().onboardingState)
    }

    @Test
    fun malformedUsageLinesFailClosedWhileValidZeroAndPositiveUsageQualify() {
        val malformed = listOf(
            "empty-object" to "[{}]",
            "mixed" to "[{\"label\":\"Quota\",\"key\":\"quota\",\"usedAmount\":0.0,\"limitAmount\":100.0},{}]",
            "blank-label" to "[{\"label\":\"   \",\"key\":\"quota\",\"usedAmount\":1.0}]",
            "negative-amount" to "[{\"label\":\"Quota\",\"key\":\"quota\",\"usedAmount\":-1.0}]",
            "out-of-range-percent" to "[{\"label\":\"Quota\",\"key\":\"quota\",\"remainingPercent\":2.0}]",
            "nonfinite" to "[{\"label\":\"Quota\",\"key\":\"quota\",\"usedAmount\":1e999}]",
        )
        malformed.forEach { (label, lines) ->
            val fixture = fixture(
                "malformed-usage-$label",
                sourceRaw(providerRaw(ProviderId.CURSOR, ProviderConnectionState.DISCONNECTED, lines)),
            )
            val before = fixture.authority.canonicalDumpForTest()
            assertThrows(ConnectedProviderCardMigrationException::class.java) { fixture.migration.run() }
            assertArrayEquals(label, before, fixture.authority.canonicalDumpForTest())
            assertEquals(label, 0, markerVersion(fixture.databaseName))
        }

        listOf(
            "zero" to "[{\"label\":\"Quota\",\"key\":\"quota\",\"usedAmount\":0.0,\"limitAmount\":100.0}]",
            "positive" to "[{\"label\":\"Quota\",\"key\":\"quota\",\"usedAmount\":1.0,\"limitAmount\":100.0}]",
        ).forEach { (label, lines) ->
            val fixture = fixture(
                "valid-usage-$label",
                sourceRaw(providerRaw(ProviderId.CURSOR, ProviderConnectionState.DISCONNECTED, lines)),
            )
            val result = completed(fixture.migration.run())
            assertEquals(label, 1, result.importedAccountCount)
            assertEquals(label, ProviderId.CURSOR, fixture.authority.catalog(0, 10).records.single().id.providerId)
        }
    }

    @Test
    fun connectedQualificationDoesNotPermitMalformedUsageLines() {
        val fixture = fixture(
            "connected-malformed-usage",
            sourceRaw(providerRaw(ProviderId.CURSOR, ProviderConnectionState.CONNECTED, "[{}]")),
        )
        val before = fixture.authority.canonicalDumpForTest()

        assertThrows(ConnectedProviderCardMigrationException::class.java) { fixture.migration.run() }

        assertArrayEquals(before, fixture.authority.canonicalDumpForTest())
        assertEquals(0, markerVersion(fixture.databaseName))
    }

    @Test
    fun malformedAndDuplicateLegacyMappingsFailClosedWithMarkerAndDataUnchanged() {
        val malformed = listOf(
            "{" ,
            "{\"providers\":[{\"providerId\":\"cursor\",\"connectionState\":\"CONNECTED\",\"refreshState\":\"IDLE\",\"lines\":[]},{\"providerId\":\"cursor\",\"connectionState\":\"CONNECTED\",\"refreshState\":\"IDLE\",\"lines\":[]}]}",
        )
        malformed.forEachIndexed { index, raw ->
            val fixture = fixture("malformed-$index", sourceRaw(raw))
            val before = fixture.authority.canonicalDumpForTest()
            assertThrows(ConnectedProviderCardMigrationException::class.java) { fixture.migration.run() }
            assertArrayEquals(before, fixture.authority.canonicalDumpForTest())
            assertEquals(0, markerVersion(fixture.databaseName))
        }
    }

    @Test
    fun everyTransactionInternalFaultBoundaryRollsBackByteIdenticallyThenRetryConverges() {
        val expectedRollbackPoints = setOf(
            ConnectedProviderCardMigrationFaultPoint.BEFORE_SOURCE_READ,
            ConnectedProviderCardMigrationFaultPoint.AFTER_SOURCE_READ,
            ConnectedProviderCardMigrationFaultPoint.AFTER_SOURCE_VALIDATED,
            ConnectedProviderCardMigrationFaultPoint.BEFORE_ROW_WRITE,
            ConnectedProviderCardMigrationFaultPoint.AFTER_ROW_WRITE,
            ConnectedProviderCardMigrationFaultPoint.BEFORE_MARKER_WRITE,
            ConnectedProviderCardMigrationFaultPoint.AFTER_MARKER_WRITE,
            ConnectedProviderCardMigrationFaultPoint.BEFORE_COMMIT,
        )
        assertEquals(8, expectedRollbackPoints.size)
        assertEquals(expectedRollbackPoints, ConnectedProviderCardMigrationFaultPoint.entries.toSet())
        val faultOutcomes = JSONArray()
        ConnectedProviderCardMigrationFaultPoint.entries.forEach { point ->
            val source = source(
                snapshot(ProviderId.CURSOR, ProviderConnectionState.CONNECTED),
                snapshot(ProviderId.GEMINI, ProviderConnectionState.DISCONNECTED, usage = true),
            )
            val fixture = fixture("fault-${point.name}", source)
            val before = fixture.authority.canonicalDumpForTest()
            val cut = ConnectedProviderCardMigration(
                source,
                fixture.authority,
                ConnectedProviderCardMigrationFaultInjector { event ->
                    if (event.point == point) throw ConnectedProviderCardMigrationInterrupted(event)
                },
            )
            assertThrows(point.name, ConnectedProviderCardMigrationInterrupted::class.java) { cut.run() }
            assertArrayEquals(point.name, before, fixture.authority.canonicalDumpForTest())
            assertEquals(point.name, 0, markerVersion(fixture.databaseName))
            val retry = completed(ConnectedProviderCardMigration(source.reopen(), fixture.authority).run())
            assertEquals(point.name, 2, retry.state.activeCardCount)
            assertEquals(point.name, 1, markerVersion(fixture.databaseName))
            faultOutcomes.put(
                JSONObject()
                    .put("point", point.name)
                    .put("rolledBack", true)
                    .put("retryMarker", markerVersion(fixture.databaseName))
                    .put("retryCards", retry.state.activeCardCount)
            )
        }
        println("QA_TASK9_FAULTS=" + faultOutcomes)
    }

    @Test
    fun postCommitCrashRestartObservesCompleteDataAndReturnsIdempotentSuccess() {
        val source = source(snapshot(ProviderId.CURSOR, ProviderConnectionState.CONNECTED))
        val fixture = fixture("post-commit-crash", source)
        val committed = completed(fixture.migration.run())
        val bytes = fixture.authority.canonicalDumpForTest()
        assertEquals(1, committed.state.migrationVersion)

        fixture.authority.close()
        authorities.remove(fixture.authority)
        val restartedAuthority = open(fixture.databaseName)
        val restarted = completed(ConnectedProviderCardMigration(source.reopen(), restartedAuthority).run())

        assertTrue(restarted.resumed)
        assertEquals(0, restarted.importedAccountCount)
        assertEquals(committed.state, restarted.state)
        assertArrayEquals(bytes, restartedAuthority.canonicalDumpForTest())
    }

    @Test
    fun eachRowFaultIsIndexedAndRollsBackAllRowsMarkerAndVersion() {
        val source = source(
            snapshot(ProviderId.CURSOR, ProviderConnectionState.CONNECTED),
            snapshot(ProviderId.GEMINI, ProviderConnectionState.CONNECTED),
            snapshot(ProviderId.COPILOT, ProviderConnectionState.CONNECTED),
        )
        repeat(3) { targetIndex ->
            val fixture = fixture("row-$targetIndex", source.reopen())
            val before = fixture.authority.canonicalDumpForTest()
            assertThrows(ConnectedProviderCardMigrationInterrupted::class.java) {
                ConnectedProviderCardMigration(
                    source.reopen(),
                    fixture.authority,
                    ConnectedProviderCardMigrationFaultInjector { event ->
                        if (event.point == ConnectedProviderCardMigrationFaultPoint.AFTER_ROW_WRITE &&
                            event.index == targetIndex
                        ) {
                            assertEquals(3, event.total)
                            throw ConnectedProviderCardMigrationInterrupted(event)
                        }
                    },
                ).run()
            }
            assertArrayEquals(before, fixture.authority.canonicalDumpForTest())
        }
    }

    @Test
    fun staleMarkerOrMissingMigrationLinkFailsClosedInsteadOfSkippingMissingCard() {
        val source = source(snapshot(ProviderId.CURSOR, ProviderConnectionState.CONNECTED))
        val fixture = fixture("stale", source)
        completed(fixture.migration.run())
        rawDatabase(fixture.databaseName).use { db ->
            db.delete("provider_card_migration_links", null, null)
        }
        val before = databaseHash(fixture.databaseName)

        assertThrows(ConnectedProviderCardMigrationException::class.java) {
            ConnectedProviderCardMigration(source.reopen(), fixture.authority).run()
        }
        assertEquals(before, databaseHash(fixture.databaseName))
        assertEquals(1, fixture.authority.catalog(0, 10).totalCount)
    }

    @Test
    fun skippedAndCompletedOnboardingStatesPersistIndependentlyAcrossEmptyRestart() {
        val source = source()
        val fixture = fixture("onboarding", source)
        completed(fixture.migration.run())

        val skipped = fixture.migration.skipOnboarding()
        assertEquals(ProviderCatalogOnboardingState.SKIPPED, skipped.onboardingState)
        assertFalse(skipped.showFirstRunProviderPicker)
        fixture.authority.close()
        authorities.remove(fixture.authority)
        val restartedAuthority = open(fixture.databaseName)
        val restarted = ConnectedProviderCardMigration(source.reopen(), restartedAuthority)
        val restartSkipped = restarted.state()
        assertEquals(ProviderCatalogOnboardingState.SKIPPED, restartSkipped.onboardingState)
        assertFalse(restartSkipped.showFirstRunProviderPicker)

        val completed = restarted.completeOnboarding()
        assertEquals(ProviderCatalogOnboardingState.COMPLETED, completed.onboardingState)
        assertEquals(ProviderCatalogOnboardingState.COMPLETED, restarted.state().onboardingState)
        assertFalse(completed.showFirstRunProviderPicker)
        println(
            "QA_TASK9_ONBOARDING=" + JSONObject()
                .put("skippedEmptyPicker", skipped.showFirstRunProviderPicker)
                .put("restartSkippedState", restartSkipped.onboardingState.name)
                .put("completedState", completed.onboardingState.name)
                .put("completedPicker", completed.showFirstRunProviderPicker)
        )
    }

    @Test
    fun thousandExistingConnectedRowsRetainExactIdentityAndProduceThousandLinks() {
        val fixture = fixture("thousand", source())
        val ids = (1..1_000).map { index ->
            fixture.authority.register(siblingSeed(ProviderId.CLAUDE, 10_000 + index)).account.id
        }
        val before = accountCatalogDump(fixture.databaseName)

        val result = completed(fixture.migration.run())

        assertEquals(1_000, result.state.activeCardCount)
        assertEquals(1_000, result.state.migrationLinkCount)
        assertEquals(ids.toSet(), fixture.authority.catalogAll().map { it.id }.toSet())
        assertEquals(before, accountCatalogDump(fixture.databaseName))
        println(
            "QA_TASK9_THOUSAND=" + JSONObject()
                .put("count", result.state.activeCardCount)
                .put("links", result.state.migrationLinkCount)
                .put("firstId", idValue(ids.first()))
                .put("lastId", idValue(ids.last()))
                .put("catalogSha256", sha256(before))
        )
    }

    @Test
    fun profileIdentityRecreationMutationGuardLeavesExistingProfilesExactAndCreatesNoDefaults() {
        val fixture = fixture("profile-identity", source())
        val existing = fixture.authority.register(siblingSeed(ProviderId.CLAUDE, 191)).account
        insertProfile(fixture.databaseName, existing.id, profileToken(7))
        val before = tableDump(fixture.databaseName, "named_profile_lifecycle")

        completed(fixture.migration.run())

        assertEquals(before, tableDump(fixture.databaseName, "named_profile_lifecycle"))
        assertEquals(1, tableCount(fixture.databaseName, "named_profile_lifecycle"))
        assertEquals(existing.id, fixture.authority.catalog(0, 10).records.single().id)
    }

    @Test
    fun markBeforeDataMutationGuardKeepsMarkerZeroAtFirstRowCutThenCommitsWithAllLinks() {
        val source = source(
            snapshot(ProviderId.CURSOR, ProviderConnectionState.CONNECTED),
            snapshot(ProviderId.GEMINI, ProviderConnectionState.CONNECTED),
        )
        val fixture = fixture("mark-before-data", source)
        assertThrows(ConnectedProviderCardMigrationInterrupted::class.java) {
            ConnectedProviderCardMigration(
                source,
                fixture.authority,
                ConnectedProviderCardMigrationFaultInjector { event ->
                    if (event.point == ConnectedProviderCardMigrationFaultPoint.BEFORE_ROW_WRITE) {
                        throw ConnectedProviderCardMigrationInterrupted(event)
                    }
                },
            ).run()
        }
        assertEquals(0, markerVersion(fixture.databaseName))
        assertEquals(0, fixture.authority.catalog(0, 10).totalCount)

        val completed = completed(fixture.migration.run())
        assertEquals(1, completed.state.migrationVersion)
        assertEquals(2, completed.state.migrationLinkCount)
        assertEquals(2, completed.state.activeCardCount)
    }

    @Test
    fun combinedIdentityMutationGuardRetainsSiblingsDefaultsAndProfiles() {
        val source = source(
            snapshot(ProviderId.CLAUDE, ProviderConnectionState.CONNECTED),
            snapshot(ProviderId.CODEX, ProviderConnectionState.CONNECTED),
        )
        val fixture = fixture("mutation-guards", source)
        val claude = fixture.authority.register(siblingSeed(ProviderId.CLAUDE, 201)).account
        val codex = fixture.authority.register(siblingSeed(ProviderId.CODEX, 202)).account
        insertProfile(fixture.databaseName, claude.id, profileToken(8))
        insertProfile(fixture.databaseName, codex.id, profileToken(9))
        val profilesBefore = tableDump(fixture.databaseName, "named_profile_lifecycle")

        val result = completed(fixture.migration.run())
        val ids = fixture.authority.catalog(0, 10).records.map { it.id }.toSet()

        assertEquals(4, result.state.migrationLinkCount)
        assertTrue(claude.id in ids)
        assertTrue(codex.id in ids)
        assertTrue(ProviderAccountId(ProviderId.CLAUDE, AccountKey.reservedDefault()) in ids)
        assertTrue(ProviderAccountId(ProviderId.CODEX, AccountKey.reservedDefault()) in ids)
        assertEquals(profilesBefore, tableDump(fixture.databaseName, "named_profile_lifecycle"))
        assertEquals(1, markerVersion(fixture.databaseName))
        assertEquals(4, tableCount(fixture.databaseName, "provider_card_migration_links"))
    }

    @Test
    fun automaticLoginSideEffectMutationGuardProvesZeroExternalOrSchedulingEffects() {
        val fixture = fixture(
            "side-effects",
            source(snapshot(ProviderId.CURSOR, ProviderConnectionState.CONNECTED)),
        )
        val application = context as Application

        completed(fixture.migration.run())

        assertNull(shadowOf(application).nextStartedActivity)
        assertEquals(0, tableCount(fixture.databaseName, "named_profile_lifecycle"))
        assertEquals(0, tableCount(fixture.databaseName, "account_usage_primary"))
        assertEquals(0, tableCount(fixture.databaseName, "published_nonces"))
        assertEquals(0, tableCount(fixture.databaseName, "migration_mirrors"))
        assertEquals(0, tableCount(fixture.databaseName, "migration_preferences"))
    }

    @Test
    fun legacyRunnerStartupPathAutoLoginMutationGuardHasZeroActivitiesServicesCallsCredentialsProfilesOrSchedules() {
        val application = context as Application
        val shadow = shadowOf(application)
        shadow.clearNextStartedActivities()
        shadow.clearStartedServices()
        shadow.clearBroadcastIntents()
        val scheduler = context.getSystemService(JobScheduler::class.java)
        scheduler.cancelAll()
        RUNNER_PREFERENCES.forEach { name ->
            context.getSharedPreferences(name, Context.MODE_PRIVATE).edit().clear().commit()
        }
        context.deleteDatabase(DEFAULT_AUTHORITY_DATABASE)

        val result = LegacyAccountMigrationRunner.run(context)

        val activityCount = if (shadow.peekNextStartedActivity() == null) 0 else 1
        val serviceCount = shadow.allStartedServices.size
        val broadcastCount = shadow.broadcastIntents.size
        val scheduleCount = scheduler.allPendingJobs.size
        val credentialCount = context.getSharedPreferences(CREDENTIAL_PREFERENCES, Context.MODE_PRIVATE).all.size
        val profileCount = tableCount(DEFAULT_AUTHORITY_DATABASE, "named_profile_lifecycle")
        val primaryCount = tableCount(DEFAULT_AUTHORITY_DATABASE, "account_usage_primary")
        val publishedNonceCount = tableCount(DEFAULT_AUTHORITY_DATABASE, "published_nonces")
        assertTrue(result is LegacyMigrationResult.Completed)
        assertEquals(0, activityCount)
        assertEquals(0, serviceCount)
        assertEquals(0, broadcastCount)
        assertEquals(0, scheduleCount)
        assertEquals(0, credentialCount)
        assertEquals(0, profileCount)
        assertEquals(0, primaryCount)
        assertEquals(0, publishedNonceCount)
        println(
            "QA_TASK9_RUNNER_SPIES=" + JSONObject()
                .put("activities", activityCount)
                .put("services", serviceCount)
                .put("broadcasts", broadcastCount)
                .put("jobs", scheduleCount)
                .put("credentials", credentialCount)
                .put("profiles", profileCount)
                .put("primaries", primaryCount)
                .put("publishedNonces", publishedNonceCount)
        )
        context.deleteDatabase(DEFAULT_AUTHORITY_DATABASE)
        RUNNER_PREFERENCES.forEach { name ->
            context.getSharedPreferences(name, Context.MODE_PRIVATE).edit().clear().commit()
        }
    }

    @Test
    fun auxiliaryMachineDumpCoversPickerMergeConcurrencyFaultsAndSideEffects() {
        val fixture = fixture(
            "auxiliary",
            source(
                snapshot(ProviderId.CURSOR, ProviderConnectionState.CONNECTED),
                snapshot(ProviderId.GEMINI, ProviderConnectionState.DISCONNECTED, usage = true),
            ),
        )
        val before = databaseHash(fixture.databaseName)
        val result = completed(fixture.migration.run())
        val after = databaseHash(fixture.databaseName)
        val rows = fixture.authority.catalog(0, 10).records
        val applicationShadow = shadowOf(context as Application)
        val scheduler = context.getSystemService(JobScheduler::class.java)
        val activityCount = if (applicationShadow.peekNextStartedActivity() == null) 0 else 1
        val serviceCount = applicationShadow.allStartedServices.size
        val broadcastCount = applicationShadow.broadcastIntents.size
        val credentialCount = context.getSharedPreferences(CREDENTIAL_PREFERENCES, Context.MODE_PRIVATE).all.size
        val scheduleCount = scheduler.allPendingJobs.size
        val output = JSONObject()
            .put("beforeSha256", before)
            .put("afterSha256", after)
            .put("markerVersion", result.state.migrationVersion)
            .put("onboardingState", result.state.onboardingState.name)
            .put("picker", result.state.showFirstRunProviderPicker)
            .put("cards", JSONArray(rows.map { accountJson(it, activeRank(fixture.databaseName, it.id)) }))
            .put("profileRows", tableCount(fixture.databaseName, "named_profile_lifecycle"))
            .put("primaryRows", tableCount(fixture.databaseName, "account_usage_primary"))
            .put("loginActivities", activityCount)
            .put("credentialWrites", credentialCount)
            .put("providerRequests", activityCount + serviceCount + broadcastCount)
            .put("collectorSchedules", scheduleCount)
        println("QA_TASK9_AUXILIARY=$output")
        assertNotEquals(before, after)
    }

    private fun fixture(label: String, source: DurableFakeMigrationSource): Fixture {
        val name = database(label)
        val authority = open(name)
        authority.displayVersion()
        return Fixture(name, authority, ConnectedProviderCardMigration(source, authority))
    }

    private fun open(name: String): MainProcessAccountAuthority =
        MainProcessAccountAuthority.open(context, name).also(authorities::add)

    private fun database(label: String): String =
        "task9-connected-$label-${counter.incrementAndGet()}.db".also {
            databaseNames += it
            context.deleteDatabase(it)
        }

    private fun source(vararg snapshots: ProviderUsageSnapshot): DurableFakeMigrationSource =
        sourceRaw(ProviderSnapshotCodec.encode(snapshots.toList()))

    private fun sourceRaw(raw: String): DurableFakeMigrationSource =
        DurableFakeMigrationSource.create(true, raw, emptyMap()).also(sources::add)

    private fun providerRaw(
        providerId: ProviderId,
        state: ProviderConnectionState,
        lines: String,
    ): String =
        "{\"providers\":[{\"providerId\":\"${providerId.storageId}\"," +
            "\"connectionState\":\"${state.name}\",\"refreshState\":\"IDLE\",\"lines\":$lines}]}"

    private fun snapshot(
        providerId: ProviderId,
        state: ProviderConnectionState,
        usage: Boolean = false,
    ) = ProviderUsageSnapshot(
        providerId = providerId,
        connectionState = state,
        account = "${providerId.storageId}@example.invalid",
        updatedAt = "2026-08-28T00:00:00Z",
        statusUpdatedAt = "2026-08-28T00:00:00Z",
        lines = if (usage) listOf(
            ProviderUsageLine(
                key = "quota",
                label = "Quota",
                remainingPercent = 0.5f,
                remainingText = "50%",
            )
        ) else emptyList(),
    )

    private fun completed(result: ConnectedProviderCardMigrationResult) =
        result as ConnectedProviderCardMigrationResult.Completed

    private fun added(result: ProviderCardAddResult) = (result as ProviderCardAddResult.Added).account

    private fun MainProcessAccountAuthority.catalogAll(): List<AccountRecord> = buildList {
        var offset = 0
        while (true) {
            val page = catalog(offset, 250)
            addAll(page.records)
            offset += page.records.size
            if (offset >= page.totalCount) return@buildList
        }
    }

    private fun markerVersion(name: String): Int = rawDatabase(name).use { db ->
        if (!tableExists(db, "provider_card_initialization")) return@use 0
        db.rawQuery(
            "SELECT migration_version FROM provider_card_initialization WHERE singleton_id=1",
            null,
        ).use { cursor -> if (cursor.moveToFirst()) cursor.getInt(0) else 0 }
    }

    private fun insertProfile(name: String, id: ProviderAccountId, profile: String) = rawDatabase(name).use { db ->
        db.execSQL(
            "INSERT INTO named_profile_lifecycle(provider_id,account_key,profile_name,lifecycle_state,receipt_disposition) VALUES(?,?,?,'ACTIVE',NULL)",
            arrayOf(id.providerId.storageId, id.accountKey.storageValue(), profile),
        )
    }

    private fun insertPrimary(name: String, id: ProviderAccountId) = rawDatabase(name).use { db ->
        db.execSQL(
            "INSERT INTO account_usage_primary(provider_id,account_key) VALUES(?,?)",
            arrayOf(id.providerId.storageId, id.accountKey.storageValue()),
        )
    }

    private fun tombstone(name: String, id: ProviderAccountId) = rawDatabase(name).use { db ->
        db.execSQL(
            "UPDATE accounts SET state='DELETED',auth_state='SIGNED_OUT',deletion_state='TOMBSTONED' WHERE provider_id=? AND account_key=?",
            arrayOf(id.providerId.storageId, id.accountKey.storageValue()),
        )
        db.execSQL(
            "UPDATE provider_card_catalog SET active_rank=NULL WHERE provider_id=? AND account_key=?",
            arrayOf(id.providerId.storageId, id.accountKey.storageValue()),
        )
    }

    private fun activeRank(name: String, id: ProviderAccountId): Long? = rawDatabase(name).use { db ->
        db.rawQuery(
            "SELECT active_rank FROM provider_card_catalog WHERE provider_id=? AND account_key=?",
            arrayOf(id.providerId.storageId, id.accountKey.storageValue()),
        ).use { cursor ->
            check(cursor.moveToFirst())
            if (cursor.isNull(0)) null else cursor.getLong(0)
        }
    }

    private fun tableCount(name: String, table: String): Int = rawDatabase(name).use { db ->
        db.rawQuery("SELECT COUNT(*) FROM $table", null).use { cursor ->
            check(cursor.moveToFirst())
            cursor.getInt(0)
        }
    }

    private fun accountCatalogDump(name: String): String =
        tableDump(name, "accounts") + tableDump(name, "provider_card_catalog")

    private fun tableDump(name: String, table: String): String = rawDatabase(name).use { db ->
        val rows = mutableListOf<String>()
        db.rawQuery("SELECT * FROM $table", null).use { cursor ->
            while (cursor.moveToNext()) {
                rows += cursor.columnNames.indices.joinToString("|") { index ->
                    if (cursor.isNull(index)) "N" else cursor.getString(index)
                }
            }
        }
        rows.sorted().joinToString("\n")
    }

    private fun databaseHash(name: String): String = rawDatabase(name).use { db ->
        val value = buildString {
            db.rawQuery(
                "SELECT type,name,coalesce(sql,'') FROM sqlite_master WHERE name NOT LIKE 'sqlite_%' ORDER BY type,name",
                null,
            ).use { cursor ->
                while (cursor.moveToNext()) append(cursor.getString(0)).append('|').append(cursor.getString(1))
                    .append('|').append(cursor.getString(2)).append('\n')
            }
            val tables = mutableListOf<String>()
            db.rawQuery("SELECT name FROM sqlite_master WHERE type='table' AND name NOT LIKE 'sqlite_%' ORDER BY name", null)
                .use { cursor -> while (cursor.moveToNext()) tables += cursor.getString(0) }
            tables.forEach { table ->
                append('[').append(table).append("]\n")
                val rows = mutableListOf<String>()
                db.rawQuery("SELECT * FROM $table", null).use { cursor ->
                    while (cursor.moveToNext()) {
                        rows += cursor.columnNames.indices.joinToString("|") { index ->
                            if (cursor.isNull(index)) "N" else cursor.getString(index)
                        }
                    }
                }
                rows.sorted().forEach { append(it).append('\n') }
            }
        }
        sha256(value)
    }

    private fun rawDatabase(name: String): SQLiteDatabase = SQLiteDatabase.openDatabase(
        context.getDatabasePath(name).path,
        null,
        SQLiteDatabase.OPEN_READWRITE,
    )

    private fun tableExists(db: SQLiteDatabase, table: String): Boolean =
        db.rawQuery("SELECT 1 FROM sqlite_master WHERE type='table' AND name=?", arrayOf(table)).use { it.moveToFirst() }

    private fun profileToken(index: Int) = "aiq_profile_${index.toString(16).padStart(32, '0')}"

    private fun idValue(id: ProviderAccountId): String =
        "${id.providerId.storageId}:${id.accountKey.storageValue()}"

    private fun accountJson(account: AccountRecord, rank: Long?): JSONObject = JSONObject()
        .put("providerId", account.id.providerId.storageId)
        .put("accountKey", account.id.accountKey.storageValue())
        .put("profileId", JSONObject.NULL)
        .put("primary", false)
        .put("alias", account.alias)
        .put("rank", rank)
        .put("state", account.state.name)
        .put("authState", account.authState.name)

    private fun sha256(value: String): String = MessageDigest.getInstance("SHA-256")
        .digest(value.toByteArray()).joinToString("") { "%02x".format(it) }

    private class ChangingLegacyMigrationSource(
        private val first: LegacyMigrationSource,
        private val second: LegacyMigrationSource,
    ) : LegacyMigrationSource {
        var captureCount: Int = 0
            private set

        override fun capture(): LegacySourceCapture {
            captureCount++
            return if (captureCount == 1) first.capture() else second.capture()
        }

        override fun readContext(receipt: LegacyContextSourceReceipt): LegacyContextCapture =
            first.readContext(receipt)

        override fun mirrorSeedData(providerId: ProviderId): String = first.mirrorSeedData(providerId)

        override fun preferenceSeedData(providerId: ProviderId): String = first.preferenceSeedData(providerId)
    }

    private class SourceProbeException : RuntimeException()

    private data class Fixture(
        val databaseName: String,
        val authority: MainProcessAccountAuthority,
        val migration: ConnectedProviderCardMigration,
    )

    private companion object {
        val counter = AtomicInteger()
        const val DEFAULT_AUTHORITY_DATABASE = "ai_quota_accounts_v2.db"
        const val CREDENTIAL_PREFERENCES = "account_credential_vault_v1"
        val RUNNER_PREFERENCES = listOf(
            "ai_quota_local_usage",
            "ai_quota_widget_cache",
            "legacy_account_migration_v1",
            CREDENTIAL_PREFERENCES,
            "usage_data_claude",
            "account_data_claude",
            "script_data_claude",
            "usage_data_codex",
            "account_data_codex",
            "script_data_codex",
        )
    }
}
