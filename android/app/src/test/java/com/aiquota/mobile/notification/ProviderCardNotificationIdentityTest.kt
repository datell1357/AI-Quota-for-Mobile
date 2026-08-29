package com.aiquota.mobile.notification

import android.content.Context
import androidx.test.core.app.ApplicationProvider
import com.aiquota.mobile.MainActivity
import com.aiquota.mobile.accounts.AccountGeneration
import com.aiquota.mobile.accounts.AccountKey
import com.aiquota.mobile.accounts.DisplayVersion
import com.aiquota.mobile.accounts.ProviderAccountId
import com.aiquota.mobile.accounts.SessionRevision
import com.aiquota.mobile.local.ProviderId
import com.aiquota.mobile.providers.ProviderAccountLineKey
import com.aiquota.mobile.providers.ProviderUsageThresholdNotification
import com.aiquota.mobile.ui.AppRoute
import java.util.concurrent.CountDownLatch
import java.util.concurrent.Executors
import java.util.concurrent.TimeUnit
import org.junit.After
import org.junit.Assert.assertEquals
import org.junit.Assert.assertNotEquals
import org.junit.Assert.assertTrue
import org.junit.Before
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner
import org.robolectric.Shadows.shadowOf

@RunWith(RobolectricTestRunner::class)
class ProviderCardNotificationIdentityTest {
    private lateinit var context: Context

    @Before
    fun setUp() {
        context = ApplicationProvider.getApplicationContext()
        clear()
    }

    @After
    fun tearDown() = clear()

    @Test
    fun siblingsReceiveDistinctStableIdentity_whenLineKeysMatchAcrossRestart() {
        // Given
        val a = ProviderAccountLineKey(account(1), "primary:window")
        val b = ProviderAccountLineKey(account(2), "primary:window")
        val repository = ProviderNotificationIdentityRepository(context)

        // When
        val thresholdA = repository.identity(ProviderNotificationKind.THRESHOLD, a)
        val thresholdB = repository.identity(ProviderNotificationKind.THRESHOLD, b)
        val resetA = repository.identity(ProviderNotificationKind.RESET, a)
        val restartedB = ProviderNotificationIdentityRepository(context)
            .identity(ProviderNotificationKind.THRESHOLD, b)

        // Then
        assertNotEquals(thresholdA.tag, thresholdB.tag)
        assertNotEquals(thresholdA.notificationId, thresholdB.notificationId)
        assertNotEquals(thresholdA.data, thresholdB.data)
        assertNotEquals(thresholdA.requestCode, thresholdB.requestCode)
        assertNotEquals(thresholdA, resetA)
        assertEquals(thresholdB, restartedB)
    }

    @Test
    fun detailPendingIntentsRouteExactCards_andRemainDistinctForStaleB() {
        // Given
        val repository = ProviderNotificationIdentityRepository(context)
        val identityA = repository.identity(ProviderNotificationKind.THRESHOLD, ProviderAccountLineKey(account(1), "quota"))
        val identityB = repository.identity(ProviderNotificationKind.THRESHOLD, ProviderAccountLineKey(account(2), "quota"))

        // When
        val pendingA = ProviderNotificationDetailIntent.pendingIntent(context, identityA)
        val pendingB = ProviderNotificationDetailIntent.pendingIntent(context, identityB)
        val intentA = shadowOf(pendingA).savedIntent
        val intentB = shadowOf(pendingB).savedIntent

        // Then
        assertNotEquals(intentA.data, intentB.data)
        assertEquals(account(1), (MainActivity.routeFromIntent(intentA) { null } as AppRoute.ProviderDetail).accountId)
        val exactB = MainActivity.routeFromIntent(intentB) { null }
        assertEquals(account(2), (exactB as AppRoute.ProviderDetail).accountId)
        assertEquals(AppRoute.Home, exactB.resolveAgainst(setOf(account(1))))
    }

    @Test
    fun allocationHandlesDeterministicIntegerHashCollision_withoutMergingCards() {
        // Given
        val repository = ProviderNotificationIdentityRepository(context) { 41 }
        val a = ProviderAccountLineKey(account(1), "same")
        val b = ProviderAccountLineKey(account(2), "same")

        // When
        val identityA = repository.identity(ProviderNotificationKind.RESET, a)
        val identityB = repository.identity(ProviderNotificationKind.RESET, b)

        // Then
        assertEquals(41, identityA.notificationId)
        assertEquals(42, identityB.notificationId)
        assertNotEquals(identityA.tag, identityB.tag)
    }

    @Test
    fun zeroOneAndOneThousandCardsAllocateUniqueStableIds_withUnicodeAndLongLines() {
        // Given
        val repository = ProviderNotificationIdentityRepository(context)
        val keys = (1..1_000).map { index ->
            val suffix = if (index == 1) "사용량:" + "장".repeat(250) else "line:$index"
            ProviderAccountLineKey(account(index), suffix)
        }

        // When
        val empty = emptyList<ProviderNotificationIdentity>()
        val identities = keys.map { repository.identity(ProviderNotificationKind.THRESHOLD, it) }
        val restarted = ProviderNotificationIdentityRepository(context)
        val replay = keys.map { restarted.identity(ProviderNotificationKind.THRESHOLD, it) }

        // Then
        assertTrue(empty.isEmpty())
        assertEquals(1_000, identities.map { it.notificationId }.toSet().size)
        assertEquals(1_000, identities.map { it.tag }.toSet().size)
        assertEquals(identities, replay)
    }

    @Test
    fun visibleCardLabelUsesAliasAndExplicitProviderIdentity() {
        // Given / When / Then
        assertEquals("Codex", cardProviderLabel("Codex", ProviderId.CODEX))
        assertEquals("Work · Codex", cardProviderLabel("Work", ProviderId.CODEX))
    }

    @Test
    fun machineLineKeysDoNotNormalizeDistinctUnicodeSequences() {
        // Given
        val repository = ProviderNotificationIdentityRepository(context)
        val composed = ProviderAccountLineKey(account(1), "caf\u00e9")
        val decomposed = ProviderAccountLineKey(account(1), "cafe\u0301")

        // When
        val first = repository.identity(ProviderNotificationKind.THRESHOLD, composed)
        val second = repository.identity(ProviderNotificationKind.THRESHOLD, decomposed)

        // Then
        assertNotEquals(first.tag, second.tag)
        assertNotEquals(first.notificationId, second.notificationId)
    }

    @Test
    fun concurrentSiblingAllocationRemainsDistinct_withoutLostRegistryState() {
        // Given
        val ready = CountDownLatch(2)
        val start = CountDownLatch(1)
        val executor = Executors.newFixedThreadPool(2)
        val keys = listOf(ProviderAccountLineKey(account(1), "quota"), ProviderAccountLineKey(account(2), "quota"))
        val futures = keys.map { key ->
            executor.submit<ProviderNotificationIdentity> {
                ready.countDown()
                check(start.await(5, TimeUnit.SECONDS))
                ProviderNotificationIdentityRepository(context).identity(ProviderNotificationKind.RESET, key)
            }
        }
        assertTrue(ready.await(5, TimeUnit.SECONDS))

        // When
        start.countDown()
        val identities = futures.map { it.get(5, TimeUnit.SECONDS) }
        executor.shutdownNow()

        // Then
        assertEquals(2, identities.map { it.notificationId }.toSet().size)
        assertEquals(2, ProviderNotificationIdentityRepository(context).identitiesExact(account(1)).size +
            ProviderNotificationIdentityRepository(context).identitiesExact(account(2)).size)
    }

    @Test
    fun postedAliasMetadataRemainsExactAcrossRestartAndSelectedClear() {
        // Given
        val a = account(1)
        val b = account(2)
        val repository = ProviderPostedNotificationRepository(context)
        val eventA = threshold(a, "Codex")
        val eventB = threshold(b, "Work")
        assertTrue(repository.save(PostedProviderNotification.Threshold(eventA)))
        assertTrue(repository.save(PostedProviderNotification.Threshold(eventB)))

        // When
        val restarted = ProviderPostedNotificationRepository(context)
        val readB = restarted.readExact(b)
        assertTrue(restarted.clearExact(b))

        // Then
        assertEquals(listOf("Work"), readB.map { it.alias })
        assertTrue(restarted.readExact(b).isEmpty())
        assertEquals(listOf("Codex"), restarted.readExact(a).map { it.alias })
    }

    @Test
    fun exactRemovalReturnsOnlySelectedCardIdentities_andIsIdempotentAcrossRestart() {
        // Given
        val repository = ProviderNotificationIdentityRepository(context)
        val a = account(1)
        val b = account(2)
        val identityA = repository.identity(ProviderNotificationKind.THRESHOLD, ProviderAccountLineKey(a, "quota"))
        val identityB = repository.identity(ProviderNotificationKind.RESET, ProviderAccountLineKey(b, "quota"))

        // When
        val removed = repository.removeExact(b)
        val removedAgain = ProviderNotificationIdentityRepository(context).removeExact(b)

        // Then
        assertEquals(listOf(identityB), removed)
        assertTrue(removedAgain.isEmpty())
        assertEquals(listOf(identityA), repository.identitiesExact(a))
        assertEquals(identityA, repository.identity(ProviderNotificationKind.THRESHOLD, ProviderAccountLineKey(a, "quota")))
    }

    private fun threshold(id: ProviderAccountId, alias: String) = ProviderUsageThresholdNotification(
        ProviderAccountLineKey(id, "quota"),
        alias,
        "Quota",
        0,
        5,
        AccountGeneration.of(1),
        SessionRevision.of(1),
        DisplayVersion.of(1),
    )

    private fun account(index: Int) = ProviderAccountId(
        ProviderId.CODEX,
        AccountKey.parseOpaque("acct_${index.toString(16).padStart(32, '0')}"),
    )

    private fun clear() {
        context.getSharedPreferences("ai_quota_provider_notification_identity", Context.MODE_PRIVATE)
            .edit().clear().commit()
    }
}
