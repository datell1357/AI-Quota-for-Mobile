package com.aiquota.mobile.providers

import com.aiquota.mobile.accounts.AccountGeneration
import com.aiquota.mobile.accounts.AccountKey
import com.aiquota.mobile.accounts.DisplayVersion
import com.aiquota.mobile.accounts.ProviderAccountId
import com.aiquota.mobile.accounts.SessionRevision
import com.aiquota.mobile.local.ProviderConnectionState
import com.aiquota.mobile.local.ProviderId
import com.aiquota.mobile.local.ProviderUsageLine
import com.aiquota.mobile.local.ProviderUsageSnapshot
import java.time.Instant
import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Test

class ProviderCardNotificationPolicyExactTest {
    private val codexA = account(1)
    private val codexB = account(2)
    private val resetAt = Instant.parse("2026-08-29T00:00:00Z")

    @Test
    fun thresholdTransitionsRemainIndependent_whenSiblingCardsShareLineAndThreshold() {
        // Given
        val keyA = ProviderAccountLineKey(codexA, "primary:window")
        val keyB = ProviderAccountLineKey(codexB, "primary:window")
        val input = ThresholdNotificationEvaluation(
            cards = listOf(card(codexA, "Codex", 0.05f), card(codexB, "Work", 0.05f)),
            enabledAccounts = setOf(codexA, codexB),
            thresholdPercents = mapOf(codexA to 5, codexB to 5),
            storedArmed = mapOf(keyA to true, keyB to true),
        )

        // When
        val result = ProviderUsageThresholdNotificationPolicy.evaluate(input)

        // Then
        assertEquals(setOf(codexA, codexB), result.notifications.map { it.accountId }.toSet())
        assertEquals(false, result.armed[keyA])
        assertEquals(false, result.armed[keyB])
    }

    @Test
    fun resetTransitionsRemainIndependent_whenSiblingCardsShareLineAndResetInstant() {
        // Given
        val keyA = ProviderAccountLineKey(codexA, "primary:window")
        val keyB = ProviderAccountLineKey(codexB, "primary:window")
        val input = ResetNotificationEvaluation(
            cards = listOf(
                card(codexA, "Codex", 0.8f).withReset(resetAt.toString()),
                card(codexB, "Work", 0.7f).withReset(resetAt.toString()),
            ),
            enabledAccounts = setOf(codexA, codexB),
            storedPending = mapOf(keyA to resetAt.toEpochMilli(), keyB to resetAt.toEpochMilli()),
            lastNotified = emptyMap(),
            now = resetAt.plusSeconds(1),
        )

        // When
        val result = ProviderResetNotificationPolicy.evaluate(input)

        // Then
        assertEquals(setOf(codexA, codexB), result.notifications.map { it.accountId }.toSet())
        assertEquals(resetAt.toEpochMilli(), result.notified[keyA])
        assertEquals(resetAt.toEpochMilli(), result.notified[keyB])
    }

    @Test
    fun aliasIsDisplayOnly_whenCardIsRenamedAndReordered() {
        // Given
        val keyB = ProviderAccountLineKey(codexB, "primary:window")
        val renamed = card(codexB, "Personal Codex", 0.05f)
        val input = ThresholdNotificationEvaluation(
            cards = listOf(renamed, card(codexA, "Codex", 0.7f)),
            enabledAccounts = setOf(codexA, codexB),
            thresholdPercents = mapOf(codexA to 5, codexB to 5),
            storedArmed = mapOf(keyB to true),
        )

        // When
        val event = ProviderUsageThresholdNotificationPolicy.evaluate(input).notifications.single()

        // Then
        assertEquals(codexB, event.accountId)
        assertEquals("Personal Codex", event.alias)
        assertEquals(ProviderId.CODEX, event.providerId)
        assertEquals(keyB, event.accountLineKey)
    }

    @Test
    fun malformedControlLineCannotEnterExactPolicyState() {
        // Given / When
        val failure = runCatching { ProviderAccountLineKey(codexA, "primary\u0000window") }

        // Then
        assertTrue(failure.isFailure)
    }

    /**
     * 같은 provider에 카드가 둘 이상일 때만 알림 제목에 계정 별칭을 붙인다. 단일 계정 사용자는
     * 프로덕션과 같은 문구를 그대로 본다.
     */
    @Test
    fun siblingCardsAskForAliasPrefix_whileASoleCardKeepsTheProductionTitle() {
        // Given: 같은 provider 카드 두 장.
        val keyA = ProviderAccountLineKey(codexA, "primary:window")
        val keyB = ProviderAccountLineKey(codexB, "primary:window")
        val siblings = ThresholdNotificationEvaluation(
            cards = listOf(card(codexA, "Codex", 0.05f), card(codexB, "Work", 0.05f)),
            enabledAccounts = setOf(codexA, codexB),
            thresholdPercents = mapOf(codexA to 5, codexB to 5),
            storedArmed = mapOf(keyA to true, keyB to true),
        )

        // When
        val siblingResult = ProviderUsageThresholdNotificationPolicy.evaluate(siblings)

        // Then: 두 장 모두 별칭으로 구분한다.
        assertTrue(siblingResult.notifications.all { it.disambiguateAccount })

        // Given: 카드가 한 장뿐일 때.
        val soleCard = ThresholdNotificationEvaluation(
            cards = listOf(card(codexA, "Codex", 0.05f)),
            enabledAccounts = setOf(codexA),
            thresholdPercents = mapOf(codexA to 5),
            storedArmed = mapOf(keyA to true),
        )

        // When
        val soleResult = ProviderUsageThresholdNotificationPolicy.evaluate(soleCard)

        // Then: 별칭을 붙이지 않는다.
        assertEquals(listOf(false), soleResult.notifications.map { it.disambiguateAccount })
    }

    @Test
    fun resetNotificationsCarryTheSameAliasDisambiguationRule() {
        // Given
        val keyA = ProviderAccountLineKey(codexA, "primary:window")
        val keyB = ProviderAccountLineKey(codexB, "primary:window")
        val siblings = ResetNotificationEvaluation(
            cards = listOf(
                card(codexA, "Codex", 0.8f).withReset(resetAt.toString()),
                card(codexB, "Work", 0.7f).withReset(resetAt.toString()),
            ),
            enabledAccounts = setOf(codexA, codexB),
            storedPending = mapOf(keyA to resetAt.toEpochMilli(), keyB to resetAt.toEpochMilli()),
            lastNotified = emptyMap(),
            now = resetAt.plusSeconds(1),
        )
        val soleCard = ResetNotificationEvaluation(
            cards = listOf(card(codexA, "Codex", 0.8f).withReset(resetAt.toString())),
            enabledAccounts = setOf(codexA),
            storedPending = mapOf(keyA to resetAt.toEpochMilli()),
            lastNotified = emptyMap(),
            now = resetAt.plusSeconds(1),
        )

        // When / Then
        assertTrue(ProviderResetNotificationPolicy.evaluate(siblings).notifications.all { it.disambiguateAccount })
        assertEquals(
            listOf(false),
            ProviderResetNotificationPolicy.evaluate(soleCard).notifications.map { it.disambiguateAccount },
        )
    }

    private fun card(
        accountId: ProviderAccountId,
        alias: String,
        remaining: Float,
    ) = ProviderCardNotificationSnapshot(
        accountId = accountId,
        alias = alias,
        generation = AccountGeneration.of(3),
        sessionRevision = SessionRevision.of(4),
        version = DisplayVersion.of(9),
        snapshot = ProviderUsageSnapshot(
            providerId = ProviderId.CODEX,
            connectionState = ProviderConnectionState.CONNECTED,
            lines = listOf(
                ProviderUsageLine(
                    label = "Primary window",
                    remainingPercent = remaining,
                    key = "primary:window",
                )
            ),
        ),
    )

    private fun ProviderCardNotificationSnapshot.withReset(resetsAt: String) = copy(
        snapshot = snapshot.copy(lines = snapshot.lines.map { it.copy(resetsAt = resetsAt) }),
    )

    private fun account(index: Int) = ProviderAccountId(
        ProviderId.CODEX,
        AccountKey.parseOpaque("acct_${index.toString(16).padStart(32, '0')}"),
    )
}
