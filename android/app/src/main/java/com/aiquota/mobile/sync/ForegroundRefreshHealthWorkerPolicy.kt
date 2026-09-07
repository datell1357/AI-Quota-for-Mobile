package com.aiquota.mobile.sync

object ForegroundRefreshHealthWorkerPolicy {
    private const val MAX_START_ATTEMPTS = 3

    fun shouldRetryStartFailure(runAttemptCount: Int): Boolean {
        return runAttemptCount < MAX_START_ATTEMPTS - 1
    }

    fun shouldRestart(
        shouldRunForegroundLoop: Boolean,
        heartbeatStale: Boolean
    ): Boolean {
        return shouldRunForegroundLoop && heartbeatStale
    }
}
