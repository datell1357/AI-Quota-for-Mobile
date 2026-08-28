package com.aiquota.mobile.accounts

import android.content.Context
import android.database.sqlite.SQLiteDatabase
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

@RunWith(RobolectricTestRunner::class)
class ProviderCardDeletionCoordinatorTest {
    private lateinit var context: Context
    private val opened = mutableListOf<MainProcessAccountAuthority>()
    private val databases = mutableListOf<String>()

    @Before
    fun setUp() {
        context = ApplicationProvider.getApplicationContext()
    }

    @After
    fun tearDown() {
        opened.forEach { runCatching(it::close) }
        databases.forEach(context::deleteDatabase)
    }

    @Test
    fun selectedConnectedCodexCardIsTombstonedFirstAndEveryExactArtifactIsErased() {
        val fixture = fixture("exact")
        val codex = id(ProviderId.CODEX, 1)
        val codex2 = id(ProviderId.CODEX, 2)
        fixture.authority.register(seed(codex, 81))
        fixture.authority.register(seed(codex2, 22))
        fixture.authority.assignAccountUsagePrimary(
            codex2,
            requireNotNull(fixture.authority.accountUsageRecord(codex2)).version,
        )
        val staleLease = fixture.authority.beginAttempt(
            codex2,
            AccountDemandSet.of(AccountDemand.MANUAL, AccountDemand.WIDGET),
            nonce(1),
        )
        val vaultStore = InMemoryCredentialEnvelopeStore()
        val vaultCrypto = FakeCredentialVaultCrypto()
        val vault = AccountCredentialVault(vaultStore, vaultCrypto)
        putCredential(vault, codex, "header-a")
        putCredential(vault, codex2, "header-b-payload")
        val artifacts = RecordingArtifactEraser(setOf(codex, codex2))
        val profile = RecordingProfileEraser(setOf(codex, codex2))
        val compatibilityCalls = mutableListOf<ProviderAccountId>()
        val observedStates = mutableListOf<AccountDeletionState>()
        val targetVersionBefore = requireNotNull(fixture.authority.accountUsageRecord(codex2)).version
        val siblingBefore = accountHash(fixture.authority, codex)

        val result = ProviderCardDeletionCoordinator(
            fixture.authority,
            AccountVaultCredentialEraser(vault),
            profile,
            NoProviderCleanup,
            ExactCardArtifactEraser { exact ->
                observedStates += fixture.authority.catalog(0, 10).records.single { it.id == exact }.deletionState
                artifacts.erase(exact)
            },
            CompatibilityProjectionClearer { exact ->
                compatibilityCalls += exact
                true
            },
        ).delete(codex2)

        assertTrue(result is ProviderCardDeletionResult.Completed)
        val completed = (result as ProviderCardDeletionResult.Completed).record
        assertEquals(ProviderCardDeletionStep.ERASED, completed.step)
        assertTrue(completed.authorityVersion.value > targetVersionBefore.value)
        val target = fixture.authority.catalog(0, 10).records.single { it.id == codex2 }
        assertEquals(AccountState.DELETED, target.state)
        assertEquals(AccountAuthState.SIGNED_OUT, target.authState)
        assertEquals(AccountDeletionState.ERASED, target.deletionState)
        assertNull(fixture.authority.accountUsageRecord(codex2))
        assertNull(fixture.authority.accountUsagePrimary(ProviderId.CODEX))
        assertEquals(siblingBefore, accountHash(fixture.authority, codex))
        assertTrue(vault.isAbsent(CredentialVaultAccountId.parse(codex2)))
        assertFalse(vault.isAbsent(CredentialVaultAccountId.parse(codex)))
        assertEquals(setOf(codex), profile.remaining)
        assertEquals(setOf(codex), artifacts.remaining)
        assertEquals(listOf(codex2), compatibilityCalls)
        assertTrue(observedStates.all { it == AccountDeletionState.ERASURE_PENDING })
        assertEquals(
            AttemptCommitResult.Rejected(StaleAttemptReason.ACCOUNT_INACTIVE),
            fixture.authority.commitAttempt(staleLease, snapshot(codex2, 1)),
        )
        assertThrows(IllegalArgumentException::class.java) {
            fixture.authority.beginAttempt(codex2, AccountDemandSet.NONE, nonce(2))
        }
        assertEquals(listOf(0L), activeRanks(fixture.name))
        assertEquals(1, tableCount(fixture.name, "provider_card_deletion_journal"))
        assertEquals(1, tableCount(fixture.name, "accounts", codex2))
        println(
            "QA_DELETE_EXACT=codex2;TRACE=${trace(fixture.name, codex2)};" +
                "SIBLING_HASH=$siblingBefore;TARGET_CREDENTIAL=ABSENT;SIBLING_CREDENTIAL=PRESENT"
        )
    }

    @Test
    fun connectedAndDisconnectedCardsConvergeWhileMissingAndErasedAreTypedAndIdempotent() {
        val fixture = fixture("states")
        val connected = id(ProviderId.CLAUDE, 10)
        val disconnected = id(ProviderId.CLAUDE, 11)
        val missing = id(ProviderId.CLAUDE, 12)
        fixture.authority.register(seed(connected, 60))
        fixture.authority.register(seed(disconnected, 0, authenticated = false, connected = false))
        val coordinator = coordinator(fixture.authority)
        val beforeMissing = fixture.authority.canonicalDumpForTest()

        assertEquals(
            ProviderCardDeletionResult.Rejected(ProviderCardDeletionRejection.ACCOUNT_MISSING),
            coordinator.delete(missing),
        )
        assertTrue(beforeMissing.contentEquals(fixture.authority.canonicalDumpForTest()))
        assertTrue(coordinator.delete(disconnected) is ProviderCardDeletionResult.Completed)
        val first = coordinator.delete(connected)
        val firstDump = fixture.authority.canonicalDumpForTest()
        val again = coordinator.delete(connected)

        assertTrue(first is ProviderCardDeletionResult.Completed)
        assertEquals(first, again)
        assertTrue(firstDump.contentEquals(fixture.authority.canonicalDumpForTest()))
        assertEquals(AccountDeletionState.ERASED, account(fixture.authority, connected).deletionState)
        assertEquals(AccountDeletionState.ERASED, account(fixture.authority, disconnected).deletionState)
        assertThrows(IllegalArgumentException::class.java) {
            AccountKey.parseOpaque("codex-2")
        }
    }

    @Test
    fun legacyTombstonedPendingAndErasedRowsWithoutJournalResumeOrCompleteExactly() {
        listOf(
            AccountDeletionState.TOMBSTONED to true,
            AccountDeletionState.ERASURE_PENDING to true,
            AccountDeletionState.ERASED to false,
        ).forEachIndexed { index, (state, shouldErase) ->
            val fixture = fixture("legacy-${state.name}")
            val selected = id(ProviderId.CLAUDE, 15 + index)
            fixture.authority.register(seed(selected, 50))
            raw(fixture.name).use { db ->
                db.execSQL(
                    "UPDATE accounts SET state='DELETED',auth_state='SIGNED_OUT',deletion_state=? " +
                        "WHERE provider_id=? AND account_key=?",
                    arrayOf(state.name, selected.providerId.storageId, selected.accountKey.storageValue()),
                )
                db.execSQL(
                    "UPDATE provider_card_catalog SET active_rank=NULL WHERE provider_id=? AND account_key=?",
                    arrayOf(selected.providerId.storageId, selected.accountKey.storageValue()),
                )
            }
            val credentials = CountingIdempotentEraser()
            val result = coordinator(
                fixture.authority,
                credentials = ExactCredentialEraser { credentials.erase(it) },
            ).delete(selected)

            assertTrue(result is ProviderCardDeletionResult.Completed)
            assertEquals(AccountDeletionState.ERASED, account(fixture.authority, selected).deletionState)
            assertEquals(if (shouldErase) 1 else 0, credentials.maxCallsPerId())
            assertEquals(ProviderCardDeletionStep.ERASED, fixture.authority.providerCardDeletion(selected)?.step)
        }
    }

    @Test
    fun profileFailureLeavesInactivePendingAndRestartRetryNeverMutatesSibling() {
        val fixture = fixture("profile-retry")
        val sibling = id(ProviderId.CLAUDE, 20)
        val selected = id(ProviderId.CLAUDE, 21)
        fixture.authority.register(seed(sibling, 77))
        fixture.authority.register(seed(selected, 33))
        val siblingBefore = accountHash(fixture.authority, sibling)
        val failedProfile = RecordingProfileEraser(setOf(sibling, selected)).apply {
            next = ProfileDataErasureResult.Failed("WEBVIEW_ERASURE")
        }

        val failed = coordinator(
            fixture.authority,
            profiles = failedProfile,
        ).delete(selected)

        assertTrue(failed is ProviderCardDeletionResult.Failed)
        failed as ProviderCardDeletionResult.Failed
        assertEquals(ProviderCardDeletionFailure.PROFILE_ERASURE_FAILED, failed.record.failure)
        assertEquals(ProviderCardDeletionStep.CREDENTIAL_ERASED, failed.record.step)
        assertEquals(AccountDeletionState.ERASURE_PENDING, account(fixture.authority, selected).deletionState)
        assertNull(activeRank(fixture.name, selected))
        assertEquals(siblingBefore, accountHash(fixture.authority, sibling))

        fixture.reopen()
        val resumedProfile = RecordingProfileEraser(setOf(sibling, selected))
        val resumed = coordinator(
            fixture.authority,
            profiles = resumedProfile,
        ).resumePending()

        assertEquals(1, resumed.size)
        assertTrue(resumed.single() is ProviderCardDeletionResult.Completed)
        assertEquals(setOf(sibling), resumedProfile.remaining)
        assertEquals(AccountDeletionState.ERASED, account(fixture.authority, selected).deletionState)
        assertEquals(siblingBefore, accountHash(fixture.authority, sibling))
        println("QA_WEBVIEW_FAILURE=PENDING;RESTART=ERASED;TRACE=${trace(fixture.name, selected)}")
    }

    @Test
    fun namedProfileLifecycleFailureAndRestartReceiptAreDrivenByExactAccountOnly() {
        val fixture = fixture("named-profile")
        val sibling = id(ProviderId.CLAUDE, 30)
        val selected = id(ProviderId.CLAUDE, 31)
        fixture.authority.register(seed(sibling, 70))
        fixture.authority.register(seed(selected, 30))
        val store = InMemoryNamedProfileLifecycleStore()
        val failingPlatform = CoordinatorProfilePlatform(ProfileDataErasureResult.Failed("WEBVIEW"))
        val firstManager = NamedProfileLifecycleManager(store, failingPlatform)
        val siblingBinding = firstManager.ensureBinding(sibling)
        firstManager.ensureBinding(selected)

        val failed = coordinator(
            fixture.authority,
            profiles = NamedProfileExactEraser(firstManager),
        ).delete(selected)

        assertTrue(failed is ProviderCardDeletionResult.Failed)
        assertEquals(ProfileLifecycleState.ACTIVE, store.read(sibling)?.state)
        assertEquals(ProfileLifecycleState.ERASURE_PENDING, store.read(selected)?.state)
        assertEquals(1, failingPlatform.eraseCount)
        fixture.reopen()
        val restartedPlatform = CoordinatorProfilePlatform(ProfileDataErasureResult.Completed)
        val restartedManager = NamedProfileLifecycleManager(store, restartedPlatform)
        val resumed = coordinator(
            fixture.authority,
            profiles = NamedProfileExactEraser(restartedManager),
        ).resumePending()

        assertTrue(resumed.single() is ProviderCardDeletionResult.Completed)
        assertEquals(siblingBinding, store.read(sibling))
        assertEquals(
            ProfileLifecycleState.DATA_ERASURE_COMPLETED_CONTAINER_RETAINED,
            store.read(selected)?.state,
        )
        assertEquals(selected, store.read(selected)?.receipt?.accountId)
        assertEquals(1, restartedPlatform.eraseCount)
    }

    @Test
    fun crashAfterEveryPersistedBoundaryResumesFromJournalWithoutRepeatingCompletedEffects() {
        val traces = mutableListOf<String>()
        ProviderCardDeletionStep.entries.forEachIndexed { index, crashStep ->
            val fixture = fixture("crash-${crashStep.name}")
            val selected = id(ProviderId.CODEX, 100 + index)
            fixture.authority.register(seed(selected, 50))
            val credentials = CountingIdempotentEraser()
            val profiles = CountingProfileEraser()
            val artifacts = CountingIdempotentEraser()
            val compatibility = CountingIdempotentEraser()
            var injected = false
            val coordinator = ProviderCardDeletionCoordinator(
                fixture.authority,
                ExactCredentialEraser { credentials.erase(it) },
                profiles,
                NoProviderCleanup,
                ExactCardArtifactEraser { artifacts.erase(it) },
                CompatibilityProjectionClearer { compatibility.erase(it) },
                ProviderCardDeletionFaultInjector { step ->
                    if (!injected && step == crashStep) {
                        injected = true
                        throw InjectedDeletionCrash(step)
                    }
                },
            )

            assertThrows(InjectedDeletionCrash::class.java) { coordinator.delete(selected) }
            fixture.reopen()
            val resumed = ProviderCardDeletionCoordinator(
                fixture.authority,
                ExactCredentialEraser { credentials.erase(it) },
                profiles,
                NoProviderCleanup,
                ExactCardArtifactEraser { artifacts.erase(it) },
                CompatibilityProjectionClearer { compatibility.erase(it) },
            ).resumePending()
            if (crashStep == ProviderCardDeletionStep.ERASED) {
                assertTrue(resumed.isEmpty())
            } else {
                assertTrue(resumed.single() is ProviderCardDeletionResult.Completed)
            }
            assertEquals(AccountDeletionState.ERASED, account(fixture.authority, selected).deletionState)
            assertTrue(credentials.maxCallsPerId() <= 1)
            assertTrue(profiles.maxCallsPerId() <= 1)
            assertTrue(artifacts.maxCallsPerId() <= 1)
            assertTrue(compatibility.maxCallsPerId() <= 1)
            traces += "${crashStep.name}:${trace(fixture.name, selected)}"
        }
        println("QA_CRASH_BOUNDARIES=${traces.joinToString("|")}")
    }

    @Test
    fun concurrentDeletesShareOneProfileExecutionAndReturnIdenticalInProgressState() {
        val fixture = fixture("concurrent")
        val selected = id(ProviderId.CLAUDE, 200)
        fixture.authority.register(seed(selected, 44))
        val profile = BlockingNonCoalescingProfileEraser()
        val coordinatorA = coordinator(fixture.authority, profiles = profile)
        val secondAuthority = MainProcessAccountAuthority.open(context, fixture.name).also(opened::add)
        val coordinatorB = coordinator(secondAuthority, profiles = profile)
        val ready = CountDownLatch(2)
        val start = CountDownLatch(1)
        val executor = Executors.newFixedThreadPool(2)
        try {
            val futures = listOf(coordinatorA, coordinatorB).map { coordinator ->
                executor.submit<ProviderCardDeletionResult> {
                    ready.countDown()
                    assertTrue(start.await(10, TimeUnit.SECONDS))
                    coordinator.delete(selected)
                }
            }
            assertTrue(ready.await(10, TimeUnit.SECONDS))
            start.countDown()
            val results = futures.map { it.get(20, TimeUnit.SECONDS) }
            assertEquals(1, profile.externalEraseCount)
            assertTrue(results.all { it is ProviderCardDeletionResult.InProgress })
            assertEquals(
                (results[0] as ProviderCardDeletionResult.InProgress).record,
                (results[1] as ProviderCardDeletionResult.InProgress).record,
            )
            profile.complete(ProfileDataErasureResult.Completed)
            assertEquals(AccountDeletionState.ERASED, account(fixture.authority, selected).deletionState)
            assertEquals(ProviderCardDeletionStep.ERASED, fixture.authority.providerCardDeletion(selected)?.step)
        } finally {
            executor.shutdownNow()
        }
    }

    @Test
    fun primaryClearsOnlyWhenExactSelectedAndProviderCleanupRunsOnlyForReservedSingleAccount() {
        val fixture = fixture("primary-policy")
        val codexA = id(ProviderId.CODEX, 300)
        val codexB = id(ProviderId.CODEX, 301)
        val cursor = ProviderAccountId(ProviderId.CURSOR, AccountKey.reservedDefault())
        fixture.authority.register(seed(codexA, 80))
        fixture.authority.register(seed(codexB, 20))
        fixture.authority.register(seed(cursor, 40))
        fixture.authority.assignAccountUsagePrimary(
            codexA,
            requireNotNull(fixture.authority.accountUsageRecord(codexA)).version,
        )
        val cleanup = RecordingProviderCleanup(setOf(ProviderId.CODEX, ProviderId.CURSOR))

        assertTrue(
            coordinator(fixture.authority, providerCleanup = cleanup)
                .delete(codexB) is ProviderCardDeletionResult.Completed
        )
        assertEquals(codexA, fixture.authority.accountUsagePrimary(ProviderId.CODEX))
        assertTrue(cleanup.calls.isEmpty())

        assertTrue(
            coordinator(fixture.authority, providerCleanup = cleanup)
                .delete(codexA) is ProviderCardDeletionResult.Completed
        )
        assertNull(fixture.authority.accountUsagePrimary(ProviderId.CODEX))
        assertTrue(cleanup.calls.isEmpty())

        assertTrue(
            coordinator(fixture.authority, providerCleanup = cleanup)
                .delete(cursor) is ProviderCardDeletionResult.Completed
        )
        assertEquals(listOf(cursor), cleanup.calls)
    }

    @Test
    fun credentialArtifactAndCompatibilityFailuresAreTypedRetryableAndNeverReactivate() {
        val failureCases = listOf(
            ProviderCardDeletionFailure.CREDENTIAL_ERASURE_FAILED,
            ProviderCardDeletionFailure.ARTIFACT_ERASURE_FAILED,
            ProviderCardDeletionFailure.COMPATIBILITY_CLEAR_FAILED,
        )
        failureCases.forEachIndexed { index, expected ->
            val fixture = fixture("typed-failure-$index")
            val selected = id(ProviderId.CODEX, 400 + index)
            fixture.authority.register(seed(selected, 10))
            var credentialsFail = expected == ProviderCardDeletionFailure.CREDENTIAL_ERASURE_FAILED
            var artifactsFail = expected == ProviderCardDeletionFailure.ARTIFACT_ERASURE_FAILED
            var compatibilityFail = expected == ProviderCardDeletionFailure.COMPATIBILITY_CLEAR_FAILED
            val coordinator = coordinator(
                fixture.authority,
                credentials = ExactCredentialEraser { !credentialsFail },
                artifacts = ExactCardArtifactEraser { !artifactsFail },
                compatibility = CompatibilityProjectionClearer { !compatibilityFail },
            )
            val failed = coordinator.delete(selected) as ProviderCardDeletionResult.Failed
            assertEquals(expected, failed.record.failure)
            assertEquals(AccountDeletionState.ERASURE_PENDING, account(fixture.authority, selected).deletionState)
            assertNull(activeRank(fixture.name, selected))
            credentialsFail = false
            artifactsFail = false
            compatibilityFail = false
            assertTrue(coordinator.delete(selected) is ProviderCardDeletionResult.Completed)
            assertEquals(AccountDeletionState.ERASED, account(fixture.authority, selected).deletionState)
        }
    }

    @Test
    fun zeroOneAndThousandArtifactsAndCardsDeleteInBoundedExactKeyOperations() {
        listOf(0, 1, 1_000).forEach { artifactCount ->
            val fixture = fixture("scale-$artifactCount")
            val ids = (1..maxOf(1, artifactCount)).map { id(ProviderId.CLAUDE, 10_000 + it) }
            ids.forEachIndexed { index, accountId -> fixture.authority.register(seed(accountId, index % 100)) }
            val selected = ids[ids.size / 2]
            val preferenceArtifacts = RecordingExactArtifactStore(ids.take(artifactCount))
            val widgetArtifacts = RecordingExactArtifactStore(ids.take(artifactCount))
            val notificationArtifacts = RecordingExactArtifactStore(ids.take(artifactCount))
            val siblingHashes = ids.filterNot { it == selected }.associateWith { accountHash(fixture.authority, it) }

            val result = coordinator(
                fixture.authority,
                artifacts = CompositeExactCardArtifactEraser(
                    preferenceArtifacts,
                    widgetArtifacts,
                    notificationArtifacts,
                ),
            ).delete(selected)

            assertTrue(result is ProviderCardDeletionResult.Completed)
            listOf(preferenceArtifacts, widgetArtifacts, notificationArtifacts).forEach { store ->
                assertEquals(1, store.calls.get())
                assertFalse(selected in store.remaining)
            }
            siblingHashes.forEach { (id, before) -> assertEquals(before, accountHash(fixture.authority, id)) }
            assertEquals(ids.size - 1, activeRanks(fixture.name).size)
            assertEquals((0 until ids.size - 1).map(Int::toLong), activeRanks(fixture.name))
            println("QA_DELETE_SCALE=$artifactCount;CARDS=${ids.size};PREFERENCE_CALLS=1;WIDGET_CALLS=1;NOTIFICATION_CALLS=1")
        }
    }

    @Test
    fun schemaEightUpgradeAddsEmptyDeletionJournalAndPreservesCatalogBytes() {
        val fixture = fixture("upgrade-v8")
        val selected = id(ProviderId.CLAUDE, 500)
        fixture.authority.register(seed(selected, 70))
        val before = accountHash(fixture.authority, selected)
        fixture.authority.close()
        SQLiteDatabase.openDatabase(
            context.getDatabasePath(fixture.name).path,
            null,
            SQLiteDatabase.OPEN_READWRITE,
        ).use { db ->
            db.execSQL("DROP TABLE provider_card_deletion_journal")
            db.execSQL("PRAGMA user_version=8")
        }
        fixture.authority = MainProcessAccountAuthority.open(context, fixture.name).also(opened::add)
        fixture.authority.displayVersion()

        assertEquals(0, tableCount(fixture.name, "provider_card_deletion_journal"))
        assertEquals(before, accountHash(fixture.authority, selected))
        assertTrue(
            coordinator(fixture.authority).delete(selected) is
                ProviderCardDeletionResult.Completed
        )
    }

    private fun coordinator(
        authority: MainProcessAccountAuthority,
        credentials: ExactCredentialEraser = ExactCredentialEraser { true },
        profiles: ExactProfileEraser = ImmediateProfileEraser,
        providerCleanup: ProviderSpecificAccountCleanup = NoProviderCleanup,
        artifacts: ExactCardArtifactEraser = ExactCardArtifactEraser { true },
        compatibility: CompatibilityProjectionClearer = CompatibilityProjectionClearer { true },
    ) = ProviderCardDeletionCoordinator(
        authority,
        credentials,
        profiles,
        providerCleanup,
        artifacts,
        compatibility,
    )

    private fun fixture(label: String): Fixture {
        val name = "provider-delete-$label-${sequence.incrementAndGet()}.db"
        databases += name
        context.deleteDatabase(name)
        return Fixture(name, MainProcessAccountAuthority.open(context, name).also(opened::add))
    }

    private fun seed(
        accountId: ProviderAccountId,
        remaining: Int,
        authenticated: Boolean = true,
        connected: Boolean = true,
    ) = AuthorityAccountSeed(
        AccountRecord(
            id = accountId,
            state = AccountState.ACTIVE,
            authState = if (authenticated) AccountAuthState.AUTHENTICATED else AccountAuthState.SIGNED_OUT,
            deletionState = AccountDeletionState.NONE,
            generation = AccountGeneration.of(1),
            sessionRevision = SessionRevision.of(1),
        ),
        snapshot(accountId, remaining, connected),
    )

    private fun snapshot(
        accountId: ProviderAccountId,
        remaining: Int,
        connected: Boolean = true,
    ) = ProviderUsageSnapshot(
        providerId = accountId.providerId,
        connectionState = if (connected) ProviderConnectionState.CONNECTED else ProviderConnectionState.DISCONNECTED,
        account = "account-$remaining@example.invalid",
        updatedAt = "2026-08-28T00:00:00Z",
        statusUpdatedAt = "2026-08-28T00:00:00Z",
        lines = if (connected) listOf(
            ProviderUsageLine(
                key = "quota",
                label = "Quota",
                remainingPercent = remaining / 100f,
                remainingText = "$remaining%",
            )
        ) else emptyList(),
    )

    private fun putCredential(vault: AccountCredentialVault, accountId: ProviderAccountId, payload: String) {
        assertTrue(
            vault.put(
                CredentialVaultBinding(
                    CredentialVaultSchema.CURRENT,
                    CredentialVaultAccountId.parse(accountId),
                    AccountGeneration.of(1),
                    SessionRevision.of(1),
                    SecretRevision.of(1),
                ),
                CredentialBundle.fromBytes(payload.toByteArray()),
            )
        )
    }

    private fun account(authority: MainProcessAccountAuthority, id: ProviderAccountId): AccountRecord {
        var offset = 0
        while (true) {
            val page = authority.catalog(offset, 250)
            page.records.firstOrNull { it.id == id }?.let { return it }
            offset += page.records.size
            check(offset < page.totalCount) { "Account is absent from authority catalog" }
        }
    }

    private fun accountHash(authority: MainProcessAccountAuthority, id: ProviderAccountId): String {
        val account = account(authority, id)
        val usage = authority.accountUsageRecord(id)
        return sha256("$account|$usage".toByteArray())
    }

    private fun activeRanks(databaseName: String): List<Long> = raw(databaseName).use { db ->
        db.rawQuery(
            "SELECT active_rank FROM provider_card_catalog WHERE active_rank IS NOT NULL ORDER BY active_rank",
            null,
        ).use { cursor -> buildList { while (cursor.moveToNext()) add(cursor.getLong(0)) } }
    }

    private fun activeRank(databaseName: String, id: ProviderAccountId): Long? = raw(databaseName).use { db ->
        db.rawQuery(
            "SELECT active_rank FROM provider_card_catalog WHERE provider_id=? AND account_key=?",
            arrayOf(id.providerId.storageId, id.accountKey.storageValue()),
        ).use { cursor ->
            assertTrue(cursor.moveToFirst())
            if (cursor.isNull(0)) null else cursor.getLong(0)
        }
    }

    private fun tableCount(databaseName: String, table: String, id: ProviderAccountId? = null): Int =
        raw(databaseName).use { db ->
            db.rawQuery(
                "SELECT COUNT(*) FROM $table" + if (id == null) "" else " WHERE provider_id=? AND account_key=?",
                id?.let { arrayOf(it.providerId.storageId, it.accountKey.storageValue()) },
            ).use { cursor -> assertTrue(cursor.moveToFirst()); cursor.getInt(0) }
        }

    private fun trace(databaseName: String, id: ProviderAccountId): String = raw(databaseName).use { db ->
        db.rawQuery(
            "SELECT accounts.deletion_state,accounts.modified_version," +
                "provider_card_deletion_journal.step,provider_card_deletion_journal.journal_revision," +
                "provider_card_deletion_journal.authority_version " +
                "FROM accounts JOIN provider_card_deletion_journal USING(provider_id,account_key) " +
                "WHERE provider_id=? AND account_key=?",
            arrayOf(id.providerId.storageId, id.accountKey.storageValue()),
        ).use { cursor ->
            assertTrue(cursor.moveToFirst())
            "${cursor.getString(0)}@${cursor.getLong(1)}:${cursor.getString(2)}#${cursor.getLong(3)}@${cursor.getLong(4)}"
        }
    }

    private fun raw(databaseName: String): SQLiteDatabase = SQLiteDatabase.openDatabase(
        context.getDatabasePath(databaseName).path,
        null,
        SQLiteDatabase.OPEN_READWRITE,
    )

    private fun id(providerId: ProviderId, index: Int) = ProviderAccountId(
        providerId,
        AccountKey.parseOpaque("acct_${index.toString(16).padStart(32, '0')}"),
    )

    private fun nonce(index: Int) =
        AttemptNonce.parseOpaque("attempt_${index.toString().padStart(16, '0')}")

    private fun sha256(bytes: ByteArray): String = MessageDigest.getInstance("SHA-256")
        .digest(bytes)
        .joinToString("") { "%02x".format(it) }

    private inner class Fixture(
        val name: String,
        var authority: MainProcessAccountAuthority,
    ) {
        fun reopen() {
            authority.close()
            authority = MainProcessAccountAuthority.open(context, name).also(opened::add)
        }
    }

    private class CoordinatorProfilePlatform(
        private val erasureResult: ProfileDataErasureResult,
    ) : NamedProfilePlatform {
        var eraseCount = 0
            private set
        override fun probeCapability(): NamedProfileCapability = NamedProfileCapability.Supported(
            WebViewProviderIdentity("com.google.android.webview", "152.0.7977.54")
        )
        override fun requireUiThread() = Unit
        override fun createBoundSession(name: WebProfileName): NamedProfileSessionResource =
            error("Deletion must not acquire or create a WebView session")
        override fun eraseProfileData(
            name: WebProfileName,
            callback: (ProfileDataErasureResult) -> Unit,
        ) {
            eraseCount++
            callback(erasureResult)
        }
    }

    private object ImmediateProfileEraser : ExactProfileEraser {
        override fun erase(accountId: ProviderAccountId, callback: ExactProfileErasureCallback): Boolean {
            callback.complete(ProfileDataErasureResult.Completed)
            return true
        }
    }

    private object NoProviderCleanup : ProviderSpecificAccountCleanup {
        override fun supports(providerId: ProviderId) = false
        override fun erase(accountId: ProviderAccountId) = true
    }

    private class RecordingProfileEraser(initial: Set<ProviderAccountId>) : ExactProfileEraser {
        val remaining = initial.toMutableSet()
        var next: ProfileDataErasureResult = ProfileDataErasureResult.Completed
        override fun erase(accountId: ProviderAccountId, callback: ExactProfileErasureCallback): Boolean {
            val result = next
            if (result == ProfileDataErasureResult.Completed) remaining.remove(accountId)
            callback.complete(result)
            return true
        }
    }

    private class RecordingArtifactEraser(initial: Set<ProviderAccountId>) : ExactCardArtifactEraser {
        val remaining = initial.toMutableSet()
        override fun erase(accountId: ProviderAccountId): Boolean = remaining.remove(accountId) || accountId !in remaining
    }

    private class RecordingExactArtifactStore(initial: List<ProviderAccountId>) : ExactCardArtifactStore {
        val remaining = initial.toMutableSet()
        val calls = AtomicInteger()
        override fun eraseExact(accountId: ProviderAccountId): Boolean {
            calls.incrementAndGet()
            remaining.remove(accountId)
            return true
        }
    }

    private class CountingIdempotentEraser {
        private val calls = mutableMapOf<ProviderAccountId, Int>()
        fun erase(id: ProviderAccountId): Boolean {
            calls[id] = (calls[id] ?: 0) + 1
            return true
        }
        fun maxCallsPerId(): Int = calls.values.maxOrNull() ?: 0
    }

    private class CountingProfileEraser : ExactProfileEraser {
        private val calls = mutableMapOf<ProviderAccountId, Int>()
        override fun erase(accountId: ProviderAccountId, callback: ExactProfileErasureCallback): Boolean {
            calls[accountId] = (calls[accountId] ?: 0) + 1
            callback.complete(ProfileDataErasureResult.Completed)
            return true
        }
        fun maxCallsPerId(): Int = calls.values.maxOrNull() ?: 0
    }

    private class BlockingNonCoalescingProfileEraser : ExactProfileEraser {
        private var callback: ExactProfileErasureCallback? = null
        var externalEraseCount = 0
            private set
        override fun erase(accountId: ProviderAccountId, callback: ExactProfileErasureCallback): Boolean {
            externalEraseCount++
            check(this.callback == null) { "Duplicate external Profile erasure" }
            this.callback = callback
            return true
        }
        fun complete(result: ProfileDataErasureResult) {
            requireNotNull(callback).complete(result)
            callback = null
        }
    }

    private class RecordingProviderCleanup(
        private val supported: Set<ProviderId>,
    ) : ProviderSpecificAccountCleanup {
        val calls = mutableListOf<ProviderAccountId>()
        override fun supports(providerId: ProviderId) = providerId in supported
        override fun erase(accountId: ProviderAccountId): Boolean = true.also { calls += accountId }
    }

    private class InjectedDeletionCrash(step: ProviderCardDeletionStep) : RuntimeException(step.name)

    private companion object {
        val sequence = AtomicInteger()
    }
}
