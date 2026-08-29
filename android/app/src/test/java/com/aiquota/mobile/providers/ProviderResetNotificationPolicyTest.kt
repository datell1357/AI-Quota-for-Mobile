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
import java.time.Instant
import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Test

class ProviderResetNotificationPolicyTest {
    private val resetAt = Instant.parse("2026-05-21T00:00:00Z")
    private val accountId = ProviderAccountId(ProviderId.CLAUDE, AccountKey.reservedDefault())
    private val key = ProviderAccountLineKey(accountId, "claude:session")

    @Test
    fun watchesFutureResetWithoutNotifying() {
        val result = evaluate(emptyMap(), emptyMap(), resetAt.minusSeconds(60))
        assertTrue(result.notifications.isEmpty())
        assertEquals(resetAt.toEpochMilli(), result.pending[key])
    }

    @Test
    fun notifiesOnceWhenWallClockCrossesWatchedReset() {
        val first = evaluate(mapOf(key to resetAt.toEpochMilli()), emptyMap(), resetAt.plusSeconds(1))
        assertEquals(listOf(key.lineKey), first.notifications.map { it.lineKey })
        assertEquals(resetAt.toEpochMilli(), first.notified[key])
        val second = evaluate(first.pending, first.notified, resetAt.plusSeconds(2))
        assertTrue(second.notifications.isEmpty())
    }

    @Test
    fun suppressesResetAlreadyPastOnFirstObservation() {
        val result = evaluate(emptyMap(), emptyMap(), resetAt.plusSeconds(5))
        assertTrue(result.notifications.isEmpty())
        assertEquals(resetAt.toEpochMilli(), result.notified[key])
    }

    @Test
    fun storedResetNotifiesWhenProviderDropsTimestamp() {
        val result = ProviderResetNotificationPolicy.evaluate(
            input(mapOf(key to resetAt.toEpochMilli()), emptyMap(), resetAt.plusSeconds(1)).copy(
                cards = listOf(card(resetsAt = null)),
            ),
        )
        assertEquals(1, result.notifications.size)
    }

    @Test
    fun subSecondJitterDoesNotRenotify() {
        val value = resetAt.toEpochMilli()
        val result = ProviderResetNotificationPolicy.evaluate(
            input(mapOf(key to value), mapOf(key to value), resetAt.plusSeconds(30)).copy(
                cards = listOf(card(resetsAt = "2026-05-21T00:00:00.481230Z")),
            ),
        )
        assertTrue(result.notifications.isEmpty())
    }

    @Test
    fun disabledRefreshingAndDisconnectedCardsAreIgnored() {
        val pending = mapOf(key to resetAt.toEpochMilli())
        val disabled = ProviderResetNotificationPolicy.evaluate(
            input(pending, emptyMap(), resetAt.plusSeconds(1)).copy(enabledAccounts = emptySet()),
        )
        val refreshing = ProviderResetNotificationPolicy.evaluate(
            input(pending, emptyMap(), resetAt.plusSeconds(1)).copy(
                cards = listOf(card(refresh = ProviderRefreshState.REFRESHING)),
            ),
        )
        val disconnected = ProviderResetNotificationPolicy.evaluate(
            input(pending, emptyMap(), resetAt.plusSeconds(1)).copy(
                cards = listOf(card(connection = ProviderConnectionState.DISCONNECTED)),
            ),
        )
        assertTrue(disabled.notifications.isEmpty())
        assertTrue(refreshing.notifications.isEmpty())
        assertTrue(disconnected.notifications.isEmpty())
    }

    @Test
    fun linesNotifyIndependentlyWithinOneCard() {
        val weekly = ProviderAccountLineKey(accountId, "claude:weekly")
        val card = card().copy(
            snapshot = card().snapshot.copy(lines = listOf(
                ProviderUsageLine("Session", 0.5f, key = key.lineKey, resetsAt = resetAt.toString()),
                ProviderUsageLine("Weekly", 0.5f, key = weekly.lineKey, resetsAt = resetAt.toString()),
            ))
        )
        val result = ProviderResetNotificationPolicy.evaluate(
            ResetNotificationEvaluation(
                listOf(card),
                setOf(accountId),
                mapOf(key to resetAt.toEpochMilli(), weekly to resetAt.toEpochMilli()),
                emptyMap(),
                resetAt.plusSeconds(1),
            )
        )
        assertEquals(setOf(key.lineKey, weekly.lineKey), result.notifications.map { it.lineKey }.toSet())
    }

    private fun evaluate(
        pending: Map<ProviderAccountLineKey, Long>,
        notified: Map<ProviderAccountLineKey, Long>,
        now: Instant,
    ) = ProviderResetNotificationPolicy.evaluate(input(pending, notified, now))

    private fun input(
        pending: Map<ProviderAccountLineKey, Long>,
        notified: Map<ProviderAccountLineKey, Long>,
        now: Instant,
    ) = ResetNotificationEvaluation(
        listOf(card()),
        setOf(accountId),
        pending,
        notified,
        now,
    )

    private fun card(
        resetsAt: String? = resetAt.toString(),
        refresh: ProviderRefreshState = ProviderRefreshState.IDLE,
        connection: ProviderConnectionState = ProviderConnectionState.CONNECTED,
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
            lines = listOf(ProviderUsageLine("Session", 0.5f, key = key.lineKey, resetsAt = resetsAt)),
        ),
    )
}
