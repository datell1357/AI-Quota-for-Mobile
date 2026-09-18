package com.aiquota.mobile.providers

import com.aiquota.mobile.accounts.AccountGeneration
import com.aiquota.mobile.accounts.AccountKey
import com.aiquota.mobile.accounts.DisplayVersion
import com.aiquota.mobile.accounts.ProviderAccountId
import com.aiquota.mobile.accounts.SessionRevision
import com.aiquota.mobile.local.ProviderConnectionState
import com.aiquota.mobile.local.ProviderId
import com.aiquota.mobile.local.ProviderRefreshState
import com.aiquota.mobile.local.ProviderUsageLine
import com.aiquota.mobile.local.ProviderUsageSnapshot
import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Test

class ProviderUsageThresholdNotificationPolicyTest {
    private val accountId = ProviderAccountId(ProviderId.CLAUDE, AccountKey.reservedDefault())
    private val key = ProviderAccountLineKey(accountId, "claude:session")

    @Test
    fun aboveThresholdArmsWithoutNotifying() {
        val result = evaluate(0.8f, emptyMap())
        assertTrue(result.notifications.isEmpty())
        assertEquals(true, result.armed[key])
    }

    @Test
    fun droppingToThresholdNotifiesOnceAndDisarms() {
        val result = evaluate(0.05f, mapOf(key to true))
        assertEquals(1, result.notifications.size)
        assertEquals(5, result.notifications.single().thresholdPercent)
        assertEquals(false, result.armed[key])
    }

    @Test
    fun stayingLowDoesNotNotifyAgain() {
        val result = evaluate(0.03f, mapOf(key to false))
        assertTrue(result.notifications.isEmpty())
        assertEquals(false, result.armed[key])
    }

    @Test
    fun smallOscillationDoesNotRearmButSufficientRecoveryDoes() {
        var armed = emptyMap<ProviderAccountLineKey, Boolean>()
        val counts = listOf(6, 5, 6, 5, 7, 5, 8, 5).map { percent ->
            val result = evaluate(percent / 100f, armed)
            armed = result.armed
            result.notifications.size
        }
        assertEquals(listOf(0, 1, 0, 0, 0, 0, 0, 1), counts)
    }

    @Test
    fun recoveryMarginStillAllowsFullRecoveryAtHighThreshold() {
        val input = evaluation(card(1f), mapOf(key to false)).copy(thresholdPercents = mapOf(accountId to 99))
        assertEquals(true, ProviderUsageThresholdNotificationPolicy.evaluate(input).armed[key])
    }

    @Test
    fun recoveringAboveThresholdReArms() {
        val result = evaluate(1f, mapOf(key to false))
        assertTrue(result.notifications.isEmpty())
        assertEquals(true, result.armed[key])
    }

    @Test
    fun firstObservationAlreadyLowIsSuppressed() {
        val result = evaluate(0.02f, emptyMap())
        assertTrue(result.notifications.isEmpty())
        assertEquals(false, result.armed[key])
    }

    @Test
    fun disabledCardIsIgnored() {
        val input = evaluation(card(0.05f), mapOf(key to true)).copy(enabledAccounts = emptySet())
        val result = ProviderUsageThresholdNotificationPolicy.evaluate(input)
        assertTrue(result.notifications.isEmpty())
        assertEquals(true, result.armed[key])
    }

    @Test
    fun refreshingAndDisconnectedCardsAreSkipped() {
        val refreshing = ProviderUsageThresholdNotificationPolicy.evaluate(
            evaluation(card(0.05f, refresh = ProviderRefreshState.REFRESHING), mapOf(key to true)),
        )
        val disconnected = ProviderUsageThresholdNotificationPolicy.evaluate(
            evaluation(card(0.05f, connection = ProviderConnectionState.DISCONNECTED), mapOf(key to true)),
        )
        assertTrue(refreshing.notifications.isEmpty())
        assertTrue(disconnected.notifications.isEmpty())
    }

    @Test
    fun linesTrackIndependentlyWithinOneCard() {
        val weekly = ProviderAccountLineKey(accountId, "claude:weekly")
        val card = card(0.04f).copy(
            snapshot = card(0.04f).snapshot.copy(
                lines = listOf(
                    ProviderUsageLine("Session", 0.04f, key = key.lineKey),
                    ProviderUsageLine("Weekly", 0.5f, key = weekly.lineKey),
                )
            )
        )
        val result = ProviderUsageThresholdNotificationPolicy.evaluate(
            evaluation(card, mapOf(key to true, weekly to true)),
        )
        assertEquals(listOf(key.lineKey), result.notifications.map { it.lineKey })
        assertEquals(false, result.armed[key])
        assertEquals(true, result.armed[weekly])
    }

    private fun evaluate(
        remaining: Float,
        armed: Map<ProviderAccountLineKey, Boolean>,
    ) = ProviderUsageThresholdNotificationPolicy.evaluate(evaluation(card(remaining), armed))

    private fun evaluation(
        card: ProviderCardNotificationSnapshot,
        armed: Map<ProviderAccountLineKey, Boolean>,
    ) = ThresholdNotificationEvaluation(
        listOf(card),
        setOf(accountId),
        mapOf(accountId to 5),
        armed,
    )

    private fun card(
        remaining: Float,
        connection: ProviderConnectionState = ProviderConnectionState.CONNECTED,
        refresh: ProviderRefreshState = ProviderRefreshState.IDLE,
    ) = ProviderCardNotificationSnapshot(
        accountId,
        "Claude",
        AccountGeneration.of(1),
        SessionRevision.of(1),
        DisplayVersion.of(1),
        ProviderUsageSnapshot(
            ProviderId.CLAUDE,
            connectionState = connection,
            refreshState = refresh,
            lines = listOf(ProviderUsageLine("Session", remaining, key = key.lineKey)),
        ),
    )
}
