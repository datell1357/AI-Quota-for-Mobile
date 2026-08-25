package com.aiquota.mobile.local

import android.content.Context
import androidx.test.core.app.ApplicationProvider
import java.lang.reflect.Modifier
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Before
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner

@RunWith(RobolectricTestRunner::class)
class LegacyProviderUsageSnapshotCharacterizationTest {
    private lateinit var context: Context

    @Before
    fun clearLegacyStorage() {
        context = ApplicationProvider.getApplicationContext()
        context.getSharedPreferences("ai_quota_local_usage", Context.MODE_PRIVATE)
            .edit()
            .clear()
            .commit()
    }

    @Test
    fun legacySnapshotsRemainProviderOnlyAndLastSameProviderWins() {
        val repository = LocalUsageRepository(context)
        val claudeA = snapshot(ProviderId.CLAUDE, "claude-a", 0.80f)
        val codexA = snapshot(ProviderId.CODEX, "codex-a", 0.60f)
        val claudeB = snapshot(ProviderId.CLAUDE, "claude-b", 0.40f)

        repository.saveSnapshots(listOf(claudeA, codexA, claudeB))

        assertEquals(listOf(ProviderId.CLAUDE, ProviderId.CODEX), repository.readSnapshots().map { it.providerId })
        assertEquals(listOf("claude-b", "codex-a"), repository.readSnapshots().map { it.account })
        val persistedFields = ProviderUsageSnapshot::class.java.declaredFields
            .filterNot { Modifier.isStatic(it.modifiers) }
            .map { it.name }
            .toSet()
        assertFalse("legacy snapshot must not gain an account key", "accountKey" in persistedFields)
        assertFalse("legacy snapshot must not gain a generation", "generation" in persistedFields)
        assertFalse("legacy snapshot must not gain a session revision", "sessionRevision" in persistedFields)
    }

    private fun snapshot(providerId: ProviderId, account: String, remaining: Float) =
        ProviderUsageSnapshot(
            providerId = providerId,
            connectionState = ProviderConnectionState.CONNECTED,
            account = account,
            updatedAt = "2026-08-25T00:00:00Z",
            statusUpdatedAt = "2026-08-25T00:00:00Z",
            lines = listOf(ProviderUsageLine(label = "Quota", remainingPercent = remaining))
        )
}
