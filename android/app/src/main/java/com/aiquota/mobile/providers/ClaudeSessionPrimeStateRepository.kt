package com.aiquota.mobile.providers

import android.content.Context

/**
 * Tracks the Claude 5-hour reset boundary the auto-prime feature is waiting to cross,
 * plus which boundary was already primed, so we prime once when wall-clock passes the
 * last-known future reset time (rather than requiring the API to report a past reset).
 */
class ClaudeSessionPrimeStateRepository(context: Context) {
    private val preferences = context.applicationContext
        .getSharedPreferences(PREFERENCES_NAME, Context.MODE_PRIVATE)

    fun pendingResetMillis(): Long? {
        return preferences.getLong(KEY_PENDING_RESET_MILLIS, -1L).takeIf { it > 0L }
    }

    fun savePendingResetMillis(value: Long?) {
        preferences.edit()
            .putLong(KEY_PENDING_RESET_MILLIS, value ?: -1L)
            .apply()
    }

    fun lastPrimedResetMillis(): Long? {
        return preferences.getLong(KEY_LAST_PRIMED_RESET_MILLIS, -1L).takeIf { it > 0L }
    }

    fun recordPrimed(resetMillis: Long) {
        preferences.edit()
            .putLong(KEY_LAST_PRIMED_RESET_MILLIS, resetMillis)
            .apply()
    }

    private companion object {
        const val PREFERENCES_NAME = "ai_quota_claude_prime_state"
        const val KEY_PENDING_RESET_MILLIS = "pending_reset_millis"
        const val KEY_LAST_PRIMED_RESET_MILLIS = "last_primed_reset_millis"
    }
}
