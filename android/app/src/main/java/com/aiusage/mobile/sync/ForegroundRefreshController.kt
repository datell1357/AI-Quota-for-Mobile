package com.aiusage.mobile.sync

import android.content.Context
import android.content.Intent
import android.os.Build
import androidx.core.content.ContextCompat

class ForegroundRefreshController(private val context: Context) {
    private val preferences = context.getSharedPreferences(PREFS, Context.MODE_PRIVATE)

    fun preciseRefreshEnabled(): Boolean {
        return preferences.getBoolean(KEY_PRECISE_REFRESH_ENABLED, false)
    }

    fun setPreciseRefreshEnabled(enabled: Boolean) {
        preferences.edit().putBoolean(KEY_PRECISE_REFRESH_ENABLED, enabled).apply()
        if (enabled) {
            startPreciseRefresh()
        } else {
            stopPreciseRefresh()
        }
    }

    fun preciseRefreshPromptSeen(): Boolean {
        return preferences.getBoolean(KEY_PRECISE_REFRESH_PROMPT_SEEN, false)
    }

    fun markPreciseRefreshPromptSeen() {
        preferences.edit().putBoolean(KEY_PRECISE_REFRESH_PROMPT_SEEN, true).apply()
    }

    fun startPreciseRefresh() {
        val intent = Intent(context, ForegroundRefreshService::class.java)
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
            ContextCompat.startForegroundService(context, intent)
        } else {
            context.startService(intent)
        }
    }

    fun stopPreciseRefresh() {
        context.stopService(Intent(context, ForegroundRefreshService::class.java))
    }

    fun syncServiceState() {
        if (preciseRefreshEnabled()) {
            startPreciseRefresh()
        } else {
            stopPreciseRefresh()
        }
    }

    companion object {
        private const val PREFS = "ai_usage_foreground_refresh"
        const val KEY_PRECISE_REFRESH_ENABLED = "precise_refresh_enabled"
        const val KEY_PRECISE_REFRESH_PROMPT_SEEN = "precise_refresh_prompt_seen"
    }
}
