package com.aiquota.mobile.accounts

import android.content.Context
import androidx.test.core.app.ApplicationProvider
import com.aiquota.mobile.local.ProviderId
import com.aiquota.mobile.notification.ProviderNotificationArtifacts
import com.aiquota.mobile.notification.ProviderNotificationIdentityRepository
import com.aiquota.mobile.notification.ProviderNotificationKind
import com.aiquota.mobile.providers.ProviderAccountLineKey
import com.aiquota.mobile.providers.ProviderResetNotificationStateRepository
import com.aiquota.mobile.providers.ProviderUsageThresholdNotificationStateRepository
import org.junit.After
import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Before
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner

@RunWith(RobolectricTestRunner::class)
class ProviderNotificationDeletionIntegrationTest {
    private lateinit var context: Context
    private val a = account(1)
    private val b = account(2)
    private val lineA = ProviderAccountLineKey(a, "quota")
    private val lineB = ProviderAccountLineKey(b, "quota")

    @Before
    fun setUp() {
        context = ApplicationProvider.getApplicationContext()
        clear()
    }

    @After
    fun tearDown() = clear()

    @Test
    fun exactDeletionClearsOnlyBIdentityAndNotificationState_acrossIdempotentRestart() {
        // Given
        val identities = ProviderNotificationIdentityRepository(context)
        val identityA = identities.identity(ProviderNotificationKind.THRESHOLD, lineA)
        identities.identity(ProviderNotificationKind.THRESHOLD, lineB)
        val reset = ProviderResetNotificationStateRepository(context)
        val threshold = ProviderUsageThresholdNotificationStateRepository(context)
        assertTrue(reset.writeExact(mapOf(lineA to 10L, lineB to 20L), mapOf(lineA to 9L, lineB to 19L)))
        assertTrue(threshold.writeExactArmed(mapOf(lineA to true, lineB to false)))

        // When
        val erased = ConservativeNotificationArtifactStore(context).eraseExact(b)
        val erasedAgain = ConservativeNotificationArtifactStore(context).eraseExact(b)

        // Then
        assertTrue(erased)
        assertTrue(erasedAgain)
        assertEquals(mapOf(lineA to 10L), ProviderResetNotificationStateRepository(context).readExactPending())
        assertEquals(mapOf(lineA to true), ProviderUsageThresholdNotificationStateRepository(context).readExactArmed())
        assertEquals(listOf(identityA), ProviderNotificationIdentityRepository(context).identitiesExact(a))
        assertEquals(
            identityA,
            ProviderNotificationIdentityRepository(context).identity(ProviderNotificationKind.THRESHOLD, lineA),
        )
        assertTrue(ProviderNotificationIdentityRepository(context).identitiesExact(b).isEmpty())
    }

    private fun account(index: Int) = ProviderAccountId(
        ProviderId.CODEX,
        AccountKey.parseOpaque("acct_${index.toString(16).padStart(32, '0')}"),
    )

    private fun clear() {
        listOf(
            "ai_quota_provider_notification_identity",
            "ai_quota_reset_notifications",
            "ai_quota_usage_threshold_notifications",
        ).forEach { context.getSharedPreferences(it, Context.MODE_PRIVATE).edit().clear().commit() }
    }
}
