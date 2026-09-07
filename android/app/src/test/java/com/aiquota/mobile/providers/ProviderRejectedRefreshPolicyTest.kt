package com.aiquota.mobile.providers

import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test

class ProviderRejectedRefreshPolicyTest {
    @Test
    fun rejectedRequestStopsOnlyIdleService() {
        assertTrue(ProviderRejectedRefreshPolicy.stopAfterRejectedRequest(false, false))
        assertFalse(ProviderRejectedRefreshPolicy.stopAfterRejectedRequest(true, false))
        assertFalse(ProviderRejectedRefreshPolicy.stopAfterRejectedRequest(false, true))
    }

    @Test
    fun activeRefreshSurvivesRejectedRequest() {
        assertFalse(ProviderRejectedRefreshPolicy.stopAfterRejectedRequest(true, true))
    }

    @Test
    fun rejectionPrecedesForegroundStartAndDoesNotMutatePendingWork() {
        val source = java.io.File("src/main/java/com/aiquota/mobile/providers/ProviderBackgroundRefreshService.kt").readText()
        val command = source.substringAfter("override fun onStartCommand").substringBefore("override fun onDestroy")
        assertTrue(command.indexOf("target == ProviderServiceIntentTarget.Rejected") < command.indexOf("requestImmediateRefresh(intent)"))
        val rejection = command.substringAfter("if (target == ProviderServiceIntentTarget.Rejected)").substringBefore("requestImmediateRefresh(intent)")
        assertFalse(rejection.contains("pendingManual"))
        assertFalse(rejection.contains("pendingExact"))
        assertFalse(rejection.contains("startForegroundNotification"))
        assertFalse(rejection.contains("recordStarted"))
        assertTrue(rejection.contains("clearWidgetRefresh"))
    }
}
