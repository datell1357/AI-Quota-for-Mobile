package com.aiquota.mobile.sync

import org.junit.Assert.assertFalse
import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Test
import kotlinx.coroutines.CancellationException
import kotlinx.coroutines.runBlocking

class ForegroundRefreshHealthWorkerPolicyTest {
    @Test
    fun startFailureRetriesOnlyWithinBoundedAttemptWindow() {
        assertTrue(ForegroundRefreshHealthWorkerPolicy.shouldRetryStartFailure(runAttemptCount = 0))
        assertTrue(ForegroundRefreshHealthWorkerPolicy.shouldRetryStartFailure(runAttemptCount = 1))
        assertFalse(ForegroundRefreshHealthWorkerPolicy.shouldRetryStartFailure(runAttemptCount = 2))
    }

    @Test
    fun disabledOrIneligibleMonitoringNeverRequestsRestart() {
        assertFalse(
            ForegroundRefreshHealthWorkerPolicy.shouldRestart(
                shouldRunForegroundLoop = false,
                heartbeatStale = true
            )
        )
        assertFalse(
            ForegroundRefreshHealthWorkerPolicy.shouldRestart(
                shouldRunForegroundLoop = true,
                heartbeatStale = false
            )
        )
    }

    @Test
    fun startFailureReturnsRetryThenFailureAtBound() = runBlocking {
        var logged = 0
        val retry = executeHealthCheck(0, { error("start denied") }) { logged++ }
        val failure = executeHealthCheck(2, { error("start denied") }) { logged++ }
        assertTrue(retry.toString().contains("Retry"))
        assertTrue(failure.toString().contains("Failure"))
        assertEquals(2, logged)
    }

    @Test(expected = CancellationException::class)
    fun cancellationIsNotConvertedToRetry() = runBlocking {
        executeHealthCheck(0, { throw CancellationException("cancelled") }) { }
        Unit
    }
}
