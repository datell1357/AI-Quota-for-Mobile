package com.aiquota.mobile.accounts

import android.app.Application
import android.content.Context
import android.database.sqlite.SQLiteDatabase
import androidx.test.core.app.ApplicationProvider
import com.aiquota.mobile.local.ProviderConnectionState
import com.aiquota.mobile.local.ProviderId
import com.aiquota.mobile.local.ProviderUsageSnapshot
import java.util.concurrent.atomic.AtomicInteger
import org.junit.After
import org.junit.Assert.assertArrayEquals
import org.junit.Assert.assertEquals
import org.junit.Assert.assertThrows
import org.junit.Assert.assertTrue
import org.junit.Before
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner
import org.robolectric.Shadows.shadowOf

@RunWith(RobolectricTestRunner::class)
class ProviderCardDeletionCorrectionRedTest {
    private lateinit var context: Context
    private val databases = mutableListOf<String>()

    @Before
    fun setUp() {
        context = ApplicationProvider.getApplicationContext()
    }

    @After
    fun tearDown() {
        MainProcessAccountFeature.resetForTest()
        databases.forEach(context::deleteDatabase)
        context.deleteDatabase(AccountAuthorityDatabase.DEFAULT_DATABASE_NAME)
    }

    @Test
    fun applicationMainProcessStartupResumesPersistedDeletionWithoutLoginRequestOrRefresh() {
        context.deleteDatabase(AccountAuthorityDatabase.DEFAULT_DATABASE_NAME)
        val selected = ProviderAccountId(ProviderId.CURSOR, AccountKey.reservedDefault())
        MainProcessAccountAuthority.open(context).use { authority ->
            authority.register(seed(selected))
            val begun = authority.beginProviderCardDeletion(selected) as BeginProviderCardDeletionResult.Ready
            assertEquals(ProviderCardDeletionStep.TOMBSTONED, begun.record.step)
        }

        LegacyAccountMigrationRunner.run(context)

        MainProcessAccountAuthority.open(context).use { restarted ->
            assertEquals(
                ProviderCardDeletionStep.ERASED,
                restarted.providerCardDeletion(selected)?.step,
            )
            assertEquals(AccountDeletionState.ERASED, restarted.catalog(0, 10).records.single().deletionState)
        }
        assertTrue(MainProcessAccountFeature.deletionApi().delete(selected) is ProviderCardDeletionResult.Completed)
        val application = shadowOf(context as Application)
        assertEquals(null, application.nextStartedActivity)
        assertEquals(null, application.nextStartedService)
    }

    @Test
    fun malformedV9DeletionJournalWithoutCompositeRestrictForeignKeyFailsOpen() {
        val name = database("malformed-journal")
        MainProcessAccountAuthority.open(context, name).use { it.displayVersion() }
        raw(name).use { db ->
            db.execSQL("ALTER TABLE provider_card_deletion_journal RENAME TO deletion_journal_valid")
            db.execSQL(
                "CREATE TABLE provider_card_deletion_journal(" +
                    "provider_id TEXT NOT NULL,account_key TEXT NOT NULL,step TEXT NOT NULL," +
                    "failure TEXT,journal_revision INTEGER NOT NULL,authority_version INTEGER NOT NULL," +
                    "PRIMARY KEY(provider_id,account_key))"
            )
            db.execSQL("DROP TABLE deletion_journal_valid")
        }

        assertThrows(android.database.sqlite.SQLiteException::class.java) {
            MainProcessAccountAuthority.open(context, name).use { it.displayVersion() }
        }
    }

    @Test
    fun expiredProfileAdvanceBeforeRecoveryIsFencedAtExactLeaseBoundary() {
        verifyLateProfileCompletionIsFenced(60_100L, ProfileDataErasureResult.Completed)
    }

    @Test
    fun expiredProfileAdvanceBeforeRecoveryIsFencedPastLeaseBoundary() {
        verifyLateProfileCompletionIsFenced(60_101L, ProfileDataErasureResult.Completed)
    }

    @Test
    fun expiredProfileFailureBeforeRecoveryIsFencedWithoutVersionMutation() {
        verifyLateProfileCompletionIsFenced(
            60_100L,
            ProfileDataErasureResult.Failed("LATE_WEBVIEW_FAILURE"),
        )
    }

    @Test
    fun stalePersistedClaimExpiryCannotAdvanceOrFail() {
        val name = database("stale-expiry")
        val authority = MainProcessAccountAuthority.open(context, name)
        val selected = id(5)
        authority.register(seed(selected))
        val clock = MutableDeletionClock(100L)
        val profile = BlockingNonCoalescingProfileEraser()
        assertTrue(coordinator(authority, profile, clock).delete(selected) is ProviderCardDeletionResult.InProgress)
        val record = requireNotNull(authority.providerCardDeletion(selected))
        val persisted = readClaim(name, record)
        val staleExpiry = persisted.copy(expiresAtMillis = persisted.expiresAtMillis + 1)
        val before = authority.canonicalDumpForTest()

        assertEquals(
            null,
            authority.advanceClaimedProviderCardDeletion(
                staleExpiry,
                ProviderCardDeletionStep.PROFILE_ERASED,
                clock.nowMillis(),
            ),
        )
        assertEquals(
            null,
            authority.failClaimedProviderCardDeletion(
                staleExpiry,
                ProviderCardDeletionFailure.PROFILE_ERASURE_FAILED,
                clock.nowMillis(),
            ),
        )
        assertArrayEquals(before, authority.canonicalDumpForTest())
        authority.close()
    }

    @Test
    fun synchronousOwnerFinishingAtExactExpiryCannotAdvance() {
        val name = database("sync-expiry")
        val authority = MainProcessAccountAuthority.open(context, name)
        val selected = id(6)
        authority.register(seed(selected))
        val clock = MutableDeletionClock(100L)
        var bytesAtExpiry: ByteArray? = null
        val coordinator = ProviderCardDeletionCoordinator(
            authority,
            ExactCredentialEraser {
                clock.value = 60_100L
                bytesAtExpiry = authority.canonicalDumpForTest()
                true
            },
            ImmediateProfileEraser,
            NoProviderCleanup,
            ExactCardArtifactEraser { true },
            CompatibilityProjectionClearer { true },
            clock = clock,
        )

        val result = coordinator.delete(selected)

        assertTrue(result is ProviderCardDeletionResult.InProgress)
        assertEquals(ProviderCardDeletionStep.PRIMARY_CLEARED, authority.providerCardDeletion(selected)?.step)
        assertArrayEquals(requireNotNull(bytesAtExpiry), authority.canonicalDumpForTest())
        authority.close()
    }

    @Test
    fun expiredExternalClaimIsRecoveredOnceAndLateOldOwnerCannotAdvance() {
        val name = database("lease-recovery")
        val authority = MainProcessAccountAuthority.open(context, name)
        val selected = id(3)
        authority.register(seed(selected))
        val clock = MutableDeletionClock(100L)
        val crashedProfile = BlockingNonCoalescingProfileEraser()
        val first = coordinator(authority, crashedProfile, clock)

        assertTrue(first.delete(selected) is ProviderCardDeletionResult.InProgress)
        assertEquals(1, crashedProfile.calls.get())
        assertTrue(coordinator(authority, ImmediateProfileEraser, clock).delete(selected) is ProviderCardDeletionResult.InProgress)
        clock.value = 60_101L
        assertTrue(coordinator(authority, ImmediateProfileEraser, clock).delete(selected) is ProviderCardDeletionResult.Completed)
        crashedProfile.complete(ProfileDataErasureResult.Completed)

        assertEquals(ProviderCardDeletionStep.ERASED, authority.providerCardDeletion(selected)?.step)
        assertEquals(AccountDeletionState.ERASED, authority.catalog(0, 10).records.single().deletionState)
        authority.close()
    }

    @Test
    fun staleClaimTokenRevisionAndAuthorityVersionEachLoseWithoutMutation() {
        val name = database("stale-claim")
        val authority = MainProcessAccountAuthority.open(context, name)
        val selected = id(4)
        authority.register(seed(selected))
        val clock = MutableDeletionClock(200L)
        val profile = BlockingNonCoalescingProfileEraser()
        assertTrue(coordinator(authority, profile, clock).delete(selected) is ProviderCardDeletionResult.InProgress)
        val record = requireNotNull(authority.providerCardDeletion(selected))
        val owner = raw(name).use { db ->
            db.rawQuery(
                "SELECT claim_owner,claim_expires_at FROM provider_card_deletion_journal",
                null,
            ).use { cursor ->
                assertTrue(cursor.moveToFirst())
                ProviderCardDeletionOwnerToken.parse(cursor.getString(0)) to cursor.getLong(1)
            }
        }
        val valid = ProviderCardDeletionClaim(record, owner.first, owner.second)
        val staleClaims = listOf(
            valid.copy(owner = ProviderCardDeletionOwnerToken.parse("0".repeat(64))),
            valid.copy(record = record.copy(journalRevision = record.journalRevision + 1)),
            valid.copy(record = record.copy(authorityVersion = DisplayVersion.of(record.authorityVersion.value + 1))),
        )

        staleClaims.forEach { stale ->
            assertEquals(
                null,
                authority.advanceClaimedProviderCardDeletion(
                    stale,
                    ProviderCardDeletionStep.PROFILE_ERASED,
                    clock.nowMillis(),
                ),
            )
            assertEquals(
                null,
                authority.failClaimedProviderCardDeletion(
                    stale,
                    ProviderCardDeletionFailure.PROFILE_ERASURE_FAILED,
                    clock.nowMillis(),
                ),
            )
            assertEquals(record, authority.providerCardDeletion(selected))
        }
        authority.close()
    }

    @Test
    fun twoAuthoritiesCannotInvokeBlockingNonCoalescingExternalProfileEraseTwice() {
        val name = database("claim")
        val firstAuthority = MainProcessAccountAuthority.open(context, name)
        val secondAuthority = MainProcessAccountAuthority.open(context, name)
        val selected = id(1)
        firstAuthority.register(seed(selected))
        val profile = BlockingNonCoalescingProfileEraser()
        val first = coordinator(firstAuthority, profile)
        val second = coordinator(secondAuthority, profile)
        try {
            assertEquals(
                ProviderCardDeletionStep.CREDENTIAL_ERASED,
                (first.delete(selected) as ProviderCardDeletionResult.InProgress).record.step,
            )
            assertEquals(
                ProviderCardDeletionStep.CREDENTIAL_ERASED,
                (second.delete(selected) as ProviderCardDeletionResult.InProgress).record.step,
            )
            assertEquals(1, profile.calls.get())
            profile.complete(ProfileDataErasureResult.Completed)
            assertEquals(ProviderCardDeletionStep.ERASED, firstAuthority.providerCardDeletion(selected)?.step)
            assertEquals(1, profile.calls.get())
        } finally {
            firstAuthority.close()
            secondAuthority.close()
        }
    }

    private fun verifyLateProfileCompletionIsFenced(
        completionTime: Long,
        completion: ProfileDataErasureResult,
    ) {
        val name = database("late-profile-$completionTime-${completion::class.simpleName}")
        val authority = MainProcessAccountAuthority.open(context, name)
        val selected = id((completionTime % 1000).toInt() + 20)
        authority.register(seed(selected))
        val clock = MutableDeletionClock(100L)
        val oldProfile = BlockingNonCoalescingProfileEraser()
        val coordinatorA = coordinator(authority, oldProfile, clock)
        assertTrue(coordinatorA.delete(selected) is ProviderCardDeletionResult.InProgress)
        clock.value = completionTime
        val before = authority.canonicalDumpForTest()
        val recordBefore = authority.providerCardDeletion(selected)
        val versionBefore = authority.displayVersion()

        oldProfile.complete(completion)

        assertArrayEquals(before, authority.canonicalDumpForTest())
        assertEquals(recordBefore, authority.providerCardDeletion(selected))
        assertEquals(versionBefore, authority.displayVersion())
        assertTrue(coordinator(authority, ImmediateProfileEraser, clock).delete(selected) is ProviderCardDeletionResult.Completed)
        val recovered = authority.canonicalDumpForTest()
        oldProfile.complete(completion)
        assertArrayEquals(recovered, authority.canonicalDumpForTest())
        authority.close()
    }

    private fun readClaim(
        name: String,
        record: ProviderCardDeletionRecord,
    ): ProviderCardDeletionClaim = raw(name).use { db ->
        db.rawQuery(
            "SELECT claim_owner,claim_expires_at FROM provider_card_deletion_journal",
            null,
        ).use { cursor ->
            assertTrue(cursor.moveToFirst())
            ProviderCardDeletionClaim(
                record,
                ProviderCardDeletionOwnerToken.parse(cursor.getString(0)),
                cursor.getLong(1),
            )
        }
    }

    private fun coordinator(
        authority: MainProcessAccountAuthority,
        profile: ExactProfileEraser,
        clock: ProviderCardDeletionClock = ProviderCardDeletionClock.SYSTEM,
    ) = ProviderCardDeletionCoordinator(
        authority = authority,
        credentials = ExactCredentialEraser { true },
        profiles = profile,
        providerCleanup = object : ProviderSpecificAccountCleanup {
            override fun supports(providerId: ProviderId) = false
            override fun erase(accountId: ProviderAccountId) = true
        },
        artifacts = ExactCardArtifactEraser { true },
        compatibility = CompatibilityProjectionClearer { true },
        clock = clock,
    )

    private fun seed(id: ProviderAccountId) = AuthorityAccountSeed(
        account = AccountRecord(
            id = id,
            state = AccountState.ACTIVE,
            authState = AccountAuthState.SIGNED_OUT,
            deletionState = AccountDeletionState.NONE,
            generation = AccountGeneration.of(1),
            sessionRevision = SessionRevision.of(1),
        ),
        snapshot = ProviderUsageSnapshot(
            providerId = id.providerId,
            connectionState = ProviderConnectionState.DISCONNECTED,
            updatedAt = "2026-08-28T00:00:00Z",
            statusUpdatedAt = "2026-08-28T00:00:00Z",
        ),
    )

    private fun database(label: String): String =
        "provider-delete-correction-red-$label-${counter.incrementAndGet()}.db".also {
            databases += it
            context.deleteDatabase(it)
        }

    private fun raw(name: String): SQLiteDatabase = SQLiteDatabase.openDatabase(
        context.getDatabasePath(name).path,
        null,
        SQLiteDatabase.OPEN_READWRITE,
    )

    private fun id(index: Int) = ProviderAccountId(
        ProviderId.CLAUDE,
        AccountKey.parseOpaque("acct_${index.toString(16).padStart(32, '0')}"),
    )

    private class BlockingNonCoalescingProfileEraser : ExactProfileEraser {
        val calls = AtomicInteger()
        private var callback: ExactProfileErasureCallback? = null
        override fun erase(accountId: ProviderAccountId, callback: ExactProfileErasureCallback): Boolean {
            calls.incrementAndGet()
            this.callback = callback
            return true
        }
        fun complete(result: ProfileDataErasureResult) = requireNotNull(callback).complete(result)
    }

    private object NoProviderCleanup : ProviderSpecificAccountCleanup {
        override fun supports(providerId: ProviderId) = false
        override fun erase(accountId: ProviderAccountId) = true
    }

    private object ImmediateProfileEraser : ExactProfileEraser {
        override fun erase(accountId: ProviderAccountId, callback: ExactProfileErasureCallback): Boolean {
            callback.complete(ProfileDataErasureResult.Completed)
            return true
        }
    }

    private class MutableDeletionClock(var value: Long) : ProviderCardDeletionClock {
        override fun nowMillis() = value
    }

    private companion object {
        val counter = AtomicInteger()
    }
}
