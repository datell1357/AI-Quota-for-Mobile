package com.aiquota.mobile.accounts

import android.content.Context
import android.database.sqlite.SQLiteDatabase
import androidx.test.core.app.ApplicationProvider
import com.aiquota.mobile.local.LocalUsageRepository
import com.aiquota.mobile.local.ProviderConnectionState
import com.aiquota.mobile.local.ProviderId
import com.aiquota.mobile.local.ProviderUsageLine
import com.aiquota.mobile.local.ProviderUsageSnapshot
import com.aiquota.mobile.providers.ProviderScriptProviders
import com.aiquota.mobile.providers.ProviderSnapshotCodec
import com.aiquota.mobile.ui.ProviderCardShellState
import java.security.MessageDigest
import java.util.concurrent.atomic.AtomicInteger
import org.junit.After
import org.junit.Assert.assertArrayEquals
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertNotEquals
import org.junit.Assert.assertNull
import org.junit.Assert.assertSame
import org.junit.Assert.assertTrue
import org.junit.Before
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner

@RunWith(RobolectricTestRunner::class)
class AccountUsageRepositoryTest {
    private lateinit var context: Context
    private lateinit var databaseName: String
    private lateinit var authority: MainProcessAccountAuthority
    private lateinit var repository: AccountUsageRepository

    @Before
    fun setUp() {
        context = ApplicationProvider.getApplicationContext()
        databaseName = "account-usage-${counter.incrementAndGet()}.db"
        context.deleteDatabase(databaseName)
        clearLegacyStorage()
        authority = MainProcessAccountAuthority.open(context, databaseName)
        repository = AccountUsageRepository.openForTest(authority, AndroidLegacyMigrationSource(context))
    }

    @After
    fun tearDown() {
        repository.close()
        context.deleteDatabase(databaseName)
        clearLegacyStorage()
    }

    @Test
    fun activeDisconnectedCatalogCardsRemainExactAndDoNotCollapseProviderSiblings() {
        val added = listOf(
            authority.enrollDisconnectedProviderCard(ProviderId.CLAUDE, normalizeProviderCardAlias("Claude")),
            authority.enrollDisconnectedProviderCard(ProviderId.CODEX, normalizeProviderCardAlias("Codex")),
            authority.enrollDisconnectedProviderCard(ProviderId.CODEX, normalizeProviderCardAlias("Codex 2")),
            authority.enrollDisconnectedProviderCard(ProviderId.CURSOR, normalizeProviderCardAlias("Cursor")),
        ).map { (it as ProviderCardAddResult.Added).account }

        val page = repository.page(0, 10)

        assertEquals(4, page.totalCount)
        assertEquals(added.map { it.id }, page.records.map { it.account.id })
        assertEquals(listOf("Claude", "Codex", "Codex 2", "Cursor"), page.records.map { it.account.alias })
        assertTrue(page.records.all { it.snapshot.connectionState == ProviderConnectionState.DISCONNECTED })
    }

    @Test
    fun exactReorderUsesCatalogVersionCasAndLeavesSiblingRecordsByteIdentical() {
        val ids = listOf(
            id(ProviderId.CLAUDE, 11),
            id(ProviderId.CODEX, 12),
            id(ProviderId.CODEX, 13),
            id(ProviderId.CURSOR, 14),
        )
        ids.forEachIndexed { index, accountId -> authority.register(seed(accountId, 80 - index)) }
        val beforeA = requireNotNull(repository.read(ids[1]))
        val initial = repository.loadPage(0, 10)
        val reordered = repository.reorder(
            ReorderProviderCardsRequest(
                listOf(ids[0], ids[2], ids[1], ids[3]),
                initial.version,
            )
        )
        assertTrue(reordered is ReorderProviderCardsResult.Reordered)
        assertEquals(listOf(ids[0], ids[2], ids[1], ids[3]), repository.loadPage(0, 10).records.map { it.accountId })
        assertEquals(beforeA, repository.read(ids[1]))

        val bytes = authority.canonicalDumpForTest()
        assertEquals(
            ReorderProviderCardsResult.Rejected(ReorderProviderCardsRejection.VERSION_MISMATCH),
            repository.reorder(ReorderProviderCardsRequest(ids, initial.version)),
        )
        assertArrayEquals(bytes, authority.canonicalDumpForTest())
        val currentVersion = repository.loadPage(0, 10).version
        assertEquals(
            ReorderProviderCardsResult.Rejected(ReorderProviderCardsRejection.DUPLICATE_ACCOUNT),
            repository.reorder(
                ReorderProviderCardsRequest(
                    listOf(ids[0], ids[2], ids[2], ids[3]),
                    currentVersion,
                )
            ),
        )
        assertEquals(
            ReorderProviderCardsResult.Rejected(ReorderProviderCardsRejection.CARD_MISSING_OR_INACTIVE),
            repository.reorder(
                ReorderProviderCardsRequest(
                    listOf(ids[0], ids[2], ids[1], id(ProviderId.CURSOR, 999)),
                    currentVersion,
                )
            ),
        )
        assertEquals(
            ReorderProviderCardsResult.Rejected(ReorderProviderCardsRejection.CARD_SET_MISMATCH),
            repository.reorder(ReorderProviderCardsRequest(listOf(ids[0], ids[2], ids[1]), currentVersion)),
        )
        assertArrayEquals(bytes, authority.canonicalDumpForTest())
    }

    @Test
    fun exactRefreshIntentAndEligibilityNeverTouchSiblingOrFallback() {
        val a = id(ProviderId.CODEX, 21)
        val b = id(ProviderId.CODEX, 22)
        authority.register(seed(a, 70))
        authority.register(seed(b, 60))
        val aBefore = requireNotNull(repository.read(a))
        val bBefore = requireNotNull(repository.read(b))

        val accepted = repository.requestRefresh(
            AccountRefreshRequest(b, bBefore.version, bBefore.account.generation, bBefore.account.sessionRevision)
        )
        assertTrue(accepted is AccountRefreshRequestResult.Accepted)
        assertEquals(aBefore, repository.read(a))
        assertEquals(
            AccountRefreshRequestResult.Rejected(AccountRefreshRequestRejection.VERSION_MISMATCH),
            repository.requestRefresh(
                AccountRefreshRequest(b, bBefore.version, bBefore.account.generation, bBefore.account.sessionRevision)
            ),
        )
        assertEquals(aBefore, repository.read(a))

        val reauth = authority.requireReauthentication(a)
        assertEquals(AccountAuthState.REAUTH_REQUIRED, reauth.authState)
        val aReauth = requireNotNull(repository.read(a))
        assertEquals(
            AccountRefreshRequestResult.Rejected(AccountRefreshRequestRejection.ACCOUNT_INELIGIBLE),
            repository.requestRefresh(
                AccountRefreshRequest(a, aReauth.version, aReauth.account.generation, aReauth.account.sessionRevision)
            ),
        )
        assertTrue(repository.requestRefresh(
            AccountRefreshRequest(
                b,
                requireNotNull(repository.read(b)).version,
                requireNotNull(repository.read(b)).account.generation,
                requireNotNull(repository.read(b)).account.sessionRevision,
            )
        ) is AccountRefreshRequestResult.Accepted)
        val bForWrite = requireNotNull(repository.read(b))
        val written = repository.write(
            AccountUsageWrite(
                b,
                bForWrite.version,
                bForWrite.account.generation,
                bForWrite.account.sessionRevision,
                snapshot(b, 19),
            )
        )
        assertTrue(written is AccountUsageWriteResult.Committed)
        assertEquals(19, remaining(requireNotNull(repository.read(b))))
        assertEquals(aBefore.snapshot, requireNotNull(repository.read(a)).snapshot)
    }

    @Test
    fun compatibilityUsesReservedDefaultOrExplicitPrimaryAndRestartRestoresExactCatalog() {
        val cursor = (authority.enrollDisconnectedProviderCard(
            ProviderId.CURSOR,
            normalizeProviderCardAlias("Cursor"),
        ) as ProviderCardAddResult.Added).account.id
        val codexA = id(ProviderId.CODEX, 31)
        val codexB = id(ProviderId.CODEX, 32)
        authority.register(seed(codexA, 40))
        authority.register(seed(codexB, 30))
        assertEquals(cursor, repository.compatibilityAccount(ProviderId.CURSOR))
        val disconnected = requireNotNull(repository.read(cursor))
        assertEquals(
            AccountRefreshRequestResult.Rejected(AccountRefreshRequestRejection.ACCOUNT_INELIGIBLE),
            repository.requestRefresh(
                AccountRefreshRequest(
                    cursor,
                    disconnected.version,
                    disconnected.account.generation,
                    disconnected.account.sessionRevision,
                )
            ),
        )
        val ambiguousShell = ProviderCardShellState()
            .applyCatalog(ProviderCardCatalogLoader(repository, 2).load())
            .select(cursor)
        val unresolved = repository.compatibilityAccount(ProviderId.CODEX)
        assertNull(unresolved)
        assertSame(
            ambiguousShell,
            ambiguousShell.applyCompatibilitySelection(ProviderId.CODEX, unresolved),
        )
        repository.assignPrimary(codexB, requireNotNull(repository.read(codexB)).version)
        assertEquals(codexB, repository.compatibilityAccount(ProviderId.CODEX))
        val beforeRestart = ProviderCardCatalogLoader(repository, 2).load() as ProviderCardCatalogLoadResult.Loaded

        repository.close()
        authority = MainProcessAccountAuthority.open(context, databaseName)
        repository = AccountUsageRepository.openForTest(authority, AndroidLegacyMigrationSource(context))
        val afterRestart = ProviderCardCatalogLoader(repository, 2).load() as ProviderCardCatalogLoadResult.Loaded
        assertEquals(beforeRestart.snapshot, afterRestart.snapshot)
        assertEquals(codexB, repository.compatibilityAccount(ProviderId.CODEX))
    }

    @Test
    fun tombstonedExactCardDisappearsWithoutSiblingFallback() {
        val a = id(ProviderId.CODEX, 41)
        val b = id(ProviderId.CODEX, 42)
        authority.register(seed(a, 80))
        authority.register(seed(b, 20))
        repository.assignPrimary(b, requireNotNull(repository.read(b)).version)
        val aBefore = requireNotNull(repository.read(a))

        assertTrue(authority.beginProviderCardDeletion(b) is BeginProviderCardDeletionResult.Ready)

        val activePage = repository.loadPage(0, 10)
        assertEquals(listOf(a), activePage.records.map { it.accountId })
        val bytes = authority.canonicalDumpForTest()
        assertEquals(
            ReorderProviderCardsResult.Rejected(ReorderProviderCardsRejection.CARD_MISSING_OR_INACTIVE),
            repository.reorder(ReorderProviderCardsRequest(listOf(a, b), activePage.version)),
        )
        assertArrayEquals(bytes, authority.canonicalDumpForTest())
        assertNull(repository.read(b))
        val noSelection = ProviderCardShellState()
            .applyCatalog(ProviderCardCatalogLoader(repository, 2).load())
        val deletedPrimary = repository.compatibilityAccount(ProviderId.CODEX)
        assertNull(deletedPrimary)
        assertSame(noSelection, noSelection.applyCompatibilitySelection(ProviderId.CODEX, deletedPrimary))
        assertEquals(aBefore, repository.read(a))
    }

    @Test
    fun claudeAndCodexReverseWritesRemainAccountIndependent() {
        val ids = listOf(
            id(ProviderId.CLAUDE, 1),
            id(ProviderId.CLAUDE, 2),
            id(ProviderId.CODEX, 3),
            id(ProviderId.CODEX, 4)
        )
        ids.forEachIndexed { index, accountId -> authority.register(seed(accountId, 90 - index)) }
        val initial = ids.associateWith { requireNotNull(repository.read(it)) }

        ids.indices.reversed().forEach { index ->
            val current = initial.getValue(ids[index])
            val result = repository.write(
                AccountUsageWrite(
                    accountId = ids[index],
                    expectedVersion = current.version,
                    expectedGeneration = current.account.generation,
                    expectedSessionRevision = current.account.sessionRevision,
                    snapshot = snapshot(ids[index], 40 + index)
                )
            )
            assertTrue(result is AccountUsageWriteResult.Committed)
        }

        assertEquals(ids, repository.page(0, 10).records.map { it.account.id })
        assertEquals(listOf(40, 41, 42, 43), repository.page(0, 10).records.map(::remaining))
    }

    @Test
    fun zeroOneFourAndThousandRowsPageDeterministicallyWithoutAnAccountCap() {
        val observed = mutableListOf<String>()
        listOf(0, 1, 4, 1_000).forEach { count ->
            reset("account-usage-page-$count-${counter.incrementAndGet()}.db")
            val expected = (1..count).map { index ->
                id(if (index % 2 == 0) ProviderId.CODEX else ProviderId.CLAUDE, index)
            }.sortedWith(compareBy<ProviderAccountId>({ ProviderId.defaultOrder().indexOf(it.providerId) }, { it.accountKey }))
            expected.forEachIndexed { index, accountId -> authority.register(seed(accountId, index % 100)) }

            val actual = buildList {
                var offset = 0
                do {
                    val page = repository.page(offset, 137)
                    addAll(page.records.map { it.account.id })
                    offset = page.nextOffset ?: break
                } while (true)
            }

            assertEquals(expected, actual)
            val terminal = repository.page(count, 137)
            assertEquals(count, terminal.totalCount)
            assertNull(terminal.nextOffset)
            observed += "$count:${terminal.version.value}:${sha256(actual.joinToString("|").toByteArray())}"
        }
        println("QA_ACCOUNT_USAGE_PAGING=${observed.joinToString(",")}")
    }

    @Test
    fun staleVersionGenerationAndSessionWritesAreRejectedWithoutMutation() {
        val accountId = id(ProviderId.CLAUDE, 20)
        authority.register(seed(accountId, 80))
        val current = requireNotNull(repository.read(accountId))
        val staleWrites = listOf(
            AccountUsageWrite(accountId, DisplayVersion.ZERO, current.account.generation, current.account.sessionRevision, snapshot(accountId, 1)),
            AccountUsageWrite(accountId, current.version, current.account.generation.next(), current.account.sessionRevision, snapshot(accountId, 2)),
            AccountUsageWrite(accountId, current.version, current.account.generation, current.account.sessionRevision.next(), snapshot(accountId, 3))
        )

        staleWrites.forEach { write ->
            val before = requireNotNull(repository.read(accountId))
            val versionBefore = repository.page(0, 1).version
            assertTrue(repository.write(write) is AccountUsageWriteResult.Rejected)
            assertEquals(before, repository.read(accountId))
            assertEquals(versionBefore, repository.page(0, 1).version)
        }
        assertNotEquals(1, remaining(requireNotNull(repository.read(accountId))))
    }

    @Test
    fun schemaThreeAuthorityUpgradesToAccountUsageProjectionTables() {
        repository.page(0, 1)
        repository.close()
        SQLiteDatabase.openDatabase(context.getDatabasePath(databaseName).path, null, SQLiteDatabase.OPEN_READWRITE).use { db ->
            db.execSQL("DROP TABLE legacy_usage_conflicts")
            db.execSQL("DROP TABLE account_usage_projection_intent")
            db.execSQL("DROP TABLE account_usage_projection_targets")
            db.execSQL("DROP TABLE account_usage_primary")
            db.execSQL("PRAGMA user_version=3")
        }
        authority = MainProcessAccountAuthority.open(context, databaseName)
        repository = AccountUsageRepository.openForTest(authority, AndroidLegacyMigrationSource(context))
        val accountId = id(ProviderId.CLAUDE, 29)
        authority.register(seed(accountId, 66))

        assertTrue(repository.assignPrimary(accountId, requireNotNull(repository.read(accountId)).version) is PrimaryAssignmentResult.Assigned)
        assertEquals(accountId, repository.primary(ProviderId.CLAUDE))
        assertEquals(0, repository.conflicts(0, 10).totalCount)
    }

    @Test
    fun geminiLegacyAndClaudeCodexAccountsCoexistWithExplicitPrimaryOnly() {
        val gemini = snapshot(id(ProviderId.GEMINI, 90), 73)
        LocalUsageRepository(context).saveSnapshots(listOf(gemini))
        val claudeA = id(ProviderId.CLAUDE, 30)
        val claudeB = id(ProviderId.CLAUDE, 31)
        val codexA = id(ProviderId.CODEX, 32)
        val codexB = id(ProviderId.CODEX, 33)
        listOf(claudeA, claudeB, codexA, codexB).forEachIndexed { index, accountId ->
            authority.register(seed(accountId, 80 - index))
        }

        assertTrue(repository.reconcileLegacyProjection() is AccountUsageProjectionResult.Applied)
        assertEquals(listOf(ProviderId.GEMINI), legacySnapshots().map { it.providerId })

        assertTrue(repository.assignPrimary(claudeA, requireNotNull(repository.read(claudeA)).version) is PrimaryAssignmentResult.Assigned)
        assertTrue(repository.assignPrimary(codexA, requireNotNull(repository.read(codexA)).version) is PrimaryAssignmentResult.Assigned)
        assertEquals(claudeA, repository.primary(ProviderId.CLAUDE))
        assertEquals(codexA, repository.primary(ProviderId.CODEX))
        assertEquals(setOf(ProviderId.GEMINI, ProviderId.CLAUDE, ProviderId.CODEX), legacySnapshots().map { it.providerId }.toSet())
        assertEquals(
            mapOf(ProviderId.GEMINI to 73, ProviderId.CLAUDE to 80, ProviderId.CODEX to 78),
            legacySnapshots().associate { it.providerId to it.lines.single().remainingText.removeSuffix("%").toInt() }
        )

        repository.assignPrimary(claudeB, requireNotNull(repository.read(claudeB)).version)
        repository.assignPrimary(codexB, requireNotNull(repository.read(codexB)).version)
        assertEquals(
            mapOf(ProviderId.GEMINI to 73, ProviderId.CLAUDE to 79, ProviderId.CODEX to 77),
            legacySnapshots().associate { it.providerId to it.lines.single().remainingText.removeSuffix("%").toInt() }
        )

        repository.clearPrimary(ProviderId.CLAUDE)
        repository.clearPrimary(ProviderId.CODEX)
        assertNull(repository.primary(ProviderId.CLAUDE))
        assertNull(repository.primary(ProviderId.CODEX))
        assertEquals(listOf(ProviderId.GEMINI), legacySnapshots().map { it.providerId })
        println("QA_PRIMARY=A_TO_B_TO_NONE;LEGACY_TARGETS=0;NON_TARGETS=1")
    }

    @Test
    fun missingOrDeletedPrimaryProjectsNoneAndNeverFallsBackToSibling() {
        val accountA = id(ProviderId.CLAUDE, 40)
        val accountB = id(ProviderId.CLAUDE, 41)
        authority.register(seed(accountA, 80))
        authority.register(seed(accountB, 20))
        repository.assignPrimary(accountA, requireNotNull(repository.read(accountA)).version)
        assertEquals(80, legacySnapshots().single { it.providerId == ProviderId.CLAUDE }.lines.single().remainingText.removeSuffix("%").toInt())

        mutateDatabase("DELETE FROM accounts WHERE provider_id='claude' AND account_key='${accountA.accountKey.storageValue()}'")
        assertNull(repository.primary(ProviderId.CLAUDE))
        assertTrue(repository.reconcileLegacyProjection() is AccountUsageProjectionResult.Applied)
        assertFalse(legacySnapshots().any { it.providerId == ProviderId.CLAUDE })
        assertEquals(20, remaining(requireNotNull(repository.read(accountB))))

        reset("account-usage-deleted-${counter.incrementAndGet()}.db")
        val deletedA = id(ProviderId.CLAUDE, 42)
        val survivingB = id(ProviderId.CLAUDE, 43)
        authority.register(seed(deletedA, 70))
        authority.register(seed(survivingB, 10))
        repository.assignPrimary(deletedA, requireNotNull(repository.read(deletedA)).version)
        mutateDatabase(
            "UPDATE accounts SET state='DELETED', auth_state='SIGNED_OUT', deletion_state='TOMBSTONED' " +
                "WHERE provider_id='claude' AND account_key='${deletedA.accountKey.storageValue()}'"
        )

        assertNull(repository.primary(ProviderId.CLAUDE))
        repository.reconcileLegacyProjection()
        assertFalse(legacySnapshots().any { it.providerId == ProviderId.CLAUDE })
        assertEquals(10, remaining(requireNotNull(repository.read(survivingB))))
        println("QA_DELETION_NO_FALLBACK=MISSING_NONE,DELETED_NONE;SIBLING_REMAINING=10")
    }

    @Test
    fun malformedAndCrossProviderPrimaryAssignmentsFailClosed() {
        val gemini = id(ProviderId.GEMINI, 50)
        val codex = id(ProviderId.CODEX, 51)
        authority.register(seed(gemini, 60))
        authority.register(seed(codex, 50))

        val unsupported = repository.assignPrimary(gemini, requireNotNull(repository.read(gemini)).version)
        assertEquals(PrimaryAssignmentResult.Rejected(PrimaryAssignmentRejection.UNSUPPORTED_PROVIDER), unsupported)
        assertEquals(
            PrimaryAssignmentResult.Rejected(PrimaryAssignmentRejection.VERSION_MISMATCH),
            repository.assignPrimary(codex, DisplayVersion.ZERO)
        )
        val codexVersion = requireNotNull(repository.read(codex)).version
        mutateDatabase(
            "UPDATE accounts SET state='SUSPENDED' WHERE provider_id='codex' AND account_key='${codex.accountKey.storageValue()}'"
        )
        assertEquals(
            PrimaryAssignmentResult.Rejected(PrimaryAssignmentRejection.ACCOUNT_INACTIVE),
            repository.assignPrimary(codex, codexVersion)
        )

        mutateDatabase(
            "INSERT OR REPLACE INTO account_usage_primary(provider_id, account_key) " +
                "VALUES('claude', '${codex.accountKey.storageValue()}')"
        )
        assertNull(repository.primary(ProviderId.CLAUDE))
        repository.reconcileLegacyProjection()
        assertFalse(legacySnapshots().any { it.providerId == ProviderId.CLAUDE })

        mutateDatabase("INSERT OR REPLACE INTO account_usage_primary(provider_id, account_key) VALUES('claude', 'not-an-account')")
        assertNull(repository.primary(ProviderId.CLAUDE))
        assertTrue(repository.reconcileLegacyProjection() is AccountUsageProjectionResult.Applied)
    }

    @Test
    fun postCompleteClaudeAndCodexLegacyWritesRecordDurableConflictsWithoutImporting() {
        val claudeA = id(ProviderId.CLAUDE, 60)
        val claudeB = id(ProviderId.CLAUDE, 61)
        val codexA = id(ProviderId.CODEX, 62)
        val codexB = id(ProviderId.CODEX, 63)
        listOf(claudeA, claudeB, codexA, codexB).forEachIndexed { index, accountId ->
            authority.register(seed(accountId, 90 - index))
        }
        repository.assignPrimary(claudeA, requireNotNull(repository.read(claudeA)).version)
        repository.assignPrimary(codexA, requireNotNull(repository.read(codexA)).version)
        val ids = listOf(claudeA, claudeB, codexA, codexB)
        val v2Before = ids.associateWith { requireNotNull(repository.read(it)) }
        val versionBefore = repository.page(0, 10).version
        val v2HashBefore = v2Hash(ids)
        val geminiChanged = snapshot(id(ProviderId.GEMINI, 64), 44)
        val kiroChanged = snapshot(id(ProviderId.KIRO, 65), 33)
        val claudeExternal = snapshot(claudeB, 2)
        val codexExternal = snapshot(codexB, 3)
        LocalUsageRepository(context).saveSnapshots(listOf(geminiChanged, kiroChanged, claudeExternal, codexExternal))
        val externalRaw = rawLegacy()
        val geminiBytes = providerObject(externalRaw, ProviderId.GEMINI)
        val kiroBytes = providerObject(externalRaw, ProviderId.KIRO)

        val repaired = repository.reconcileLegacyProjection()
        assertTrue(repaired is AccountUsageProjectionResult.Applied)
        assertEquals(2, repository.conflicts(0, 10).totalCount)
        assertEquals(setOf(ProviderId.CLAUDE, ProviderId.CODEX), repository.conflicts(0, 10).receipts.map { it.providerId }.toSet())
        assertEquals(v2Before, ids.associateWith { requireNotNull(repository.read(it)) })
        assertEquals(versionBefore, repository.page(0, 10).version)
        assertEquals(v2HashBefore, v2Hash(ids))
        assertEquals(90, legacySnapshots().single { it.providerId == ProviderId.CLAUDE }.lines.single().remainingText.removeSuffix("%").toInt())
        assertEquals(88, legacySnapshots().single { it.providerId == ProviderId.CODEX }.lines.single().remainingText.removeSuffix("%").toInt())
        assertEquals(geminiBytes, providerObject(rawLegacy(), ProviderId.GEMINI))
        assertEquals(kiroBytes, providerObject(rawLegacy(), ProviderId.KIRO))

        LocalUsageRepository(context).saveSnapshots(listOf(geminiChanged, kiroChanged, claudeExternal, codexExternal))
        repository.reconcileLegacyProjection()
        assertEquals(2, repository.conflicts(0, 10).totalCount)
        assertEquals(v2HashBefore, v2Hash(ids))
        repository.close()
        authority = MainProcessAccountAuthority.open(context, databaseName)
        repository = AccountUsageRepository.openForTest(authority, AndroidLegacyMigrationSource(context))
        assertEquals(2, repository.conflicts(0, 10).totalCount)
        assertEquals(v2HashBefore, v2Hash(ids))
        val receiptHashes = repository.conflicts(0, 10).receipts.joinToString(",") { it.receiptSha256 }
        println("QA_LEGACY_CONFLICTS=2;DUPLICATE_RETRY=2;DURABLE_REOPEN=2;RECEIPTS=$receiptHashes;V2_HASH=$v2HashBefore;NON_TARGET_BYTES=EXACT")
    }

    @Test
    fun productionOpenHonorsDurableCompleteManifestForConflictRepair() {
        val defaultDatabase = "ai_quota_accounts_v2.db"
        context.deleteDatabase(defaultDatabase)
        context.getSharedPreferences("legacy_account_migration_v1", Context.MODE_PRIVATE).edit().clear().commit()
        clearLegacyStorage()
        val migratedClaude = snapshot(
            ProviderAccountId(ProviderId.CLAUDE, AccountKey.reservedDefault()),
            65
        )
        val gemini = snapshot(id(ProviderId.GEMINI, 68), 48)
        LocalUsageRepository(context).saveSnapshots(listOf(gemini, migratedClaude))
        val source = AndroidLegacyMigrationSource(context)
        val journal = AndroidLegacyMigrationJournal(context)
        MainProcessAccountAuthority.open(context).use { migrationAuthority ->
            val result = LegacyAccountMigration(
                source = source,
                journal = journal,
                authority = migrationAuthority,
                vault = AccountCredentialVault(InMemoryCredentialEnvelopeStore(), FakeCredentialVaultCrypto()),
                projectionStore = source
            ).run()
            assertTrue(result is LegacyMigrationResult.Completed)
        }
        LocalUsageRepository(context).saveSnapshots(listOf(gemini, snapshot(id(ProviderId.CLAUDE, 69), 1)))

        AccountUsageRepository.open(context).use { publicRepository ->
            val defaultId = ProviderAccountId(ProviderId.CLAUDE, AccountKey.reservedDefault())
            val defaultRecord = requireNotNull(publicRepository.read(defaultId))
            assertTrue(publicRepository.assignPrimary(defaultId, defaultRecord.version) is PrimaryAssignmentResult.Assigned)
            assertTrue(publicRepository.reconcileLegacyProjection() is AccountUsageProjectionResult.Applied)
            assertEquals(1, publicRepository.conflicts(0, 10).totalCount)
            assertEquals(65, legacySnapshots().single { it.providerId == ProviderId.CLAUDE }.lines.single().remainingText.removeSuffix("%").toInt())
        }
        val durableReceipt = AccountUsageRepository.open(context).use { reopened ->
            assertEquals(1, reopened.conflicts(0, 10).totalCount)
            reopened.conflicts(0, 10).receipts.single().receiptSha256
        }
        context.deleteDatabase(defaultDatabase)
        context.getSharedPreferences("legacy_account_migration_v1", Context.MODE_PRIVATE).edit().clear().commit()
        println("QA_PRODUCTION_COMPLETE_CONFLICTS=1;REOPEN=1;RECEIPT=$durableReceipt;REPAIRED_PRIMARY=65")
    }

    @Test
    fun projectionReadBackFailureKeepsPrimaryAndInterruptedRetryDoesNotCreateConflict() {
        val accountA = id(ProviderId.CLAUDE, 70)
        authority.register(seed(accountA, 76))
        val failing = ReadBackFailingProjectionStore(AndroidLegacyMigrationSource(context), context)
        repository.close()
        authority = MainProcessAccountAuthority.open(context, databaseName)
        repository = AccountUsageRepository.openForTest(authority, failing)

        failing.failAggregate = true
        val assigned = repository.assignPrimary(accountA, requireNotNull(repository.read(accountA)).version)
        assertTrue(assigned is PrimaryAssignmentResult.Assigned)
        assertEquals(
            AccountUsageProjectionResult.Failed(AccountUsageProjectionFailure.AGGREGATE_WRITE_FAILED),
            (assigned as PrimaryAssignmentResult.Assigned).projection
        )
        assertEquals(accountA, repository.primary(ProviderId.CLAUDE))
        assertTrue(authority.accountUsageProjectionIntent() != null)

        failing.failAggregate = false
        failing.corruptClaudeMirror = true
        assertEquals(
            AccountUsageProjectionResult.Failed(AccountUsageProjectionFailure.READ_BACK_FAILED),
            repository.reconcileLegacyProjection()
        )
        failing.corruptClaudeMirror = false
        assertTrue(repository.reconcileLegacyProjection() is AccountUsageProjectionResult.Applied)
        assertEquals(0, repository.conflicts(0, 10).totalCount)
        assertNull(authority.accountUsageProjectionIntent())
        assertEquals(76, legacySnapshots().single { it.providerId == ProviderId.CLAUDE }.lines.single().remainingText.removeSuffix("%").toInt())
    }

    @Test
    fun reversePrimaryOperationsConvergeToTheSameProjection() {
        val accountA = id(ProviderId.CLAUDE, 80)
        val accountB = id(ProviderId.CLAUDE, 81)
        authority.register(seed(accountA, 80))
        authority.register(seed(accountB, 20))
        repository.assignPrimary(accountB, requireNotNull(repository.read(accountB)).version)
        repository.assignPrimary(accountA, requireNotNull(repository.read(accountA)).version)
        repository.assignPrimary(accountB, requireNotNull(repository.read(accountB)).version)
        val forwardHash = sha256(rawLegacy().toByteArray())

        repository.clearPrimary(ProviderId.CLAUDE)
        repository.assignPrimary(accountA, requireNotNull(repository.read(accountA)).version)
        repository.assignPrimary(accountB, requireNotNull(repository.read(accountB)).version)
        val reverseHash = sha256(rawLegacy().toByteArray())

        assertEquals(forwardHash, reverseHash)
        assertEquals(accountB, repository.primary(ProviderId.CLAUDE))
        assertEquals(20, legacySnapshots().single().lines.single().remainingText.removeSuffix("%").toInt())
    }

    private fun reset(name: String) {
        repository.close()
        context.deleteDatabase(databaseName)
        databaseName = name
        context.deleteDatabase(databaseName)
        clearLegacyStorage()
        authority = MainProcessAccountAuthority.open(context, databaseName)
        repository = AccountUsageRepository.openForTest(authority, AndroidLegacyMigrationSource(context))
    }

    private fun legacySnapshots(): List<ProviderUsageSnapshot> = ProviderSnapshotCodec.decode(rawLegacy())

    private fun rawLegacy(): String = context.getSharedPreferences("ai_quota_local_usage", Context.MODE_PRIVATE)
        .getString("provider_snapshots", "")
        .orEmpty()

    private fun mutateDatabase(sql: String) {
        SQLiteDatabase.openDatabase(context.getDatabasePath(databaseName).path, null, SQLiteDatabase.OPEN_READWRITE).use { db ->
            db.execSQL(sql)
        }
    }

    private fun providerObject(raw: String, providerId: ProviderId): String {
        val marker = "\"providerId\":\"${providerId.storageId}\""
        val markerIndex = raw.indexOf(marker)
        require(markerIndex >= 0)
        var start = markerIndex
        while (start >= 0 && raw[start] != '{') start--
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
                    '}' -> if (--depth == 0) return raw.substring(start, index + 1)
                }
            }
        }
        error("Provider object is incomplete")
    }

    private fun clearLegacyStorage() {
        context.getSharedPreferences("ai_quota_local_usage", Context.MODE_PRIVATE).edit().clear().commit()
        context.getSharedPreferences("ai_quota_widget_cache", Context.MODE_PRIVATE).edit().clear().commit()
        ProviderId.entries.forEach { provider ->
            val stores = ProviderScriptProviders.storeNamesFor(provider)
            listOf(stores.usageData, stores.accountData, stores.scriptData).forEach { name ->
                context.getSharedPreferences(name, Context.MODE_PRIVATE).edit().clear().commit()
            }
        }
    }

    private fun v2Hash(ids: List<ProviderAccountId>): String = sha256(
        ids.joinToString("|") { ProviderSnapshotCodec.encode(listOf(requireNotNull(repository.read(it)).snapshot)) }.toByteArray()
    )

    private fun sha256(bytes: ByteArray): String = MessageDigest.getInstance("SHA-256")
        .digest(bytes)
        .joinToString("") { "%02x".format(it) }

    private class ReadBackFailingProjectionStore(
        private val delegate: LegacyProjectionStore,
        private val context: Context
    ) : LegacyProjectionStore by delegate {
        var failAggregate: Boolean = false
        var corruptClaudeMirror: Boolean = false

        override fun writeAggregate(raw: String): Boolean =
            if (failAggregate) false else delegate.writeAggregate(raw)

        override fun writeMirror(providerId: ProviderId, snapshot: ProviderUsageSnapshot?): Boolean {
            val written = delegate.writeMirror(providerId, snapshot)
            if (written && corruptClaudeMirror && providerId == ProviderId.CLAUDE) {
                val store = ProviderScriptProviders.storeNamesFor(providerId).usageData
                context.getSharedPreferences(store, Context.MODE_PRIVATE).edit().clear().commit()
            }
            return written
        }
    }

    private fun seed(accountId: ProviderAccountId, remaining: Int) = AuthorityAccountSeed(
        account = AccountRecord(
            id = accountId,
            state = AccountState.ACTIVE,
            authState = AccountAuthState.AUTHENTICATED,
            deletionState = AccountDeletionState.NONE,
            generation = AccountGeneration.of(1),
            sessionRevision = SessionRevision.of(1)
        ),
        snapshot = snapshot(accountId, remaining)
    )

    private fun snapshot(accountId: ProviderAccountId, remaining: Int) = ProviderUsageSnapshot(
        providerId = accountId.providerId,
        connectionState = ProviderConnectionState.CONNECTED,
        account = "display-$remaining.invalid",
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

    private fun remaining(record: VersionedDisplayRecord): Int =
        record.snapshot.lines.single().remainingText.removeSuffix("%").toInt()

    private fun id(providerId: ProviderId, index: Int) = ProviderAccountId(
        providerId,
        AccountKey.parseOpaque("acct_${index.toString(16).padStart(32, '0')}")
    )

    private companion object {
        val counter = AtomicInteger()
    }
}
