package com.aiquota.mobile.ui

import java.io.File
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test

class AIQuotaAppShellAuthRoutingTest {
    @Test
    fun exactConnectRetainsAccountLifecycleAndCannotUseProviderCompatibilityFallback() {
        val source = File("src/main/java/com/aiquota/mobile/ui/AIQuotaAppShell.kt").readText()
        val exactConnect = source.substringAfter("fun connectExactCard")
            .substringBefore("fun disconnectProvider")

        assertFalse(exactConnect.contains("connectProvider("))
        assertFalse(exactConnect.contains("compatibilityAccount("))
        assertTrue(exactConnect.contains("ProviderCollectionCaches.invalidate(accountId.providerId)"))
        assertTrue(exactConnect.contains("providerSessionResetter.awaitProviderWebSessionCleanup(accountId.providerId)"))
        assertTrue(exactConnect.contains("WebLoginActivity.createIntent(launchContext, accountId, startUrl)"))
    }

    @Test
    fun exactConnectSchedulesTransientStateExpiryAfterStartingExactCard() {
        val source = File("src/main/java/com/aiquota/mobile/ui/AIQuotaAppShell.kt").readText()
        val exactConnect = source.substringAfter("fun connectExactCard")
            .substringBefore("fun disconnectProvider")

        val writeIndex = exactConnect.indexOf(
            "cardRuntime.writeSnapshot(\n            accountId,\n            card.displayRecord.snapshot.copy("
        )
        val scheduleIndex = exactConnect.indexOf("scheduleTransientStateExpiryRefresh()")
        assertTrue(writeIndex >= 0)
        assertTrue(scheduleIndex > writeIndex)
    }

    @Test
    fun copilotMissingNativePayloadDoesNotBypassRecoverableFailurePolicy() {
        val source = File("src/main/java/com/aiquota/mobile/ui/AIQuotaAppShell.kt").readText()

        assertFalse(
            "Copilot null native payload must stay recoverable unless an explicit auth failure is reported.",
            Regex("""else\s+if\s*\(\s*job\.providerId\s*==\s*ProviderId\.COPILOT\s*\)\s*\{\s*localUsageRepository\.markInteractiveAuthRequired""")
                .containsMatchIn(source)
        )
    }

    @Test
    fun googleRefreshingFallbackTimeoutIsScheduledByAppShell() {
        val source = File("src/main/java/com/aiquota/mobile/ui/AIQuotaAppShell.kt").readText()
        val scheduler = source.substringAfter("fun scheduleTransientStateExpiryRefresh")
            .substringBefore("fun saveProviderSnapshot")

        assertTrue(scheduler.contains("GOOGLE_REFRESH_STATE_MAX_MILLIS"))
        assertTrue(source.contains("private const val GOOGLE_REFRESH_STATE_MAX_MILLIS = 90_000L"))
    }

    @Test
    fun storedRefreshingSnapshotsArePolledUntilRepositoryExpiresThem() {
        val source = File("src/main/java/com/aiquota/mobile/ui/AIQuotaAppShell.kt").readText()

        assertTrue(source.contains("while (snapshots.any { it.refreshState == ProviderRefreshState.REFRESHING })"))
        assertTrue(source.contains("TRANSIENT_STATE_POLL_MILLIS"))
    }
}
