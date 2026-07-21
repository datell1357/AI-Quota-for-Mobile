package com.aiquota.mobile.debug

import android.content.BroadcastReceiver
import android.content.Context
import android.content.Intent
import android.util.Log
import com.aiquota.mobile.providers.ClaudeSessionPrimer

/**
 * Debug-only: forces the Claude auto wake-up send path immediately, bypassing the reset-boundary
 * policy, so the chat API call can be verified without waiting for a real reset.
 *
 *   adb shell am broadcast -a com.aiquota.mobile.debug.FORCE_CLAUDE_PRIME \
 *     -n com.aiquota.mobile/.debug.DebugClaudePrimeReceiver
 *
 * This sends a real message on the signed-in Claude account and consumes a little quota.
 */
class DebugClaudePrimeReceiver : BroadcastReceiver() {
    override fun onReceive(context: Context, intent: Intent?) {
        if (intent?.action != ACTION_FORCE_CLAUDE_PRIME) return
        val appContext = context.applicationContext
        val pendingResult = goAsync()
        Thread {
            try {
                val result = ClaudeSessionPrimer.prime(appContext)
                Log.i(TAG, "debugClaudePrime ok=${result.ok} detail=${result.detail}")
            } catch (error: Throwable) {
                Log.w(TAG, "debugClaudePrime failed=${error.javaClass.simpleName}", error)
            } finally {
                pendingResult.finish()
            }
        }.start()
    }

    companion object {
        const val ACTION_FORCE_CLAUDE_PRIME = "com.aiquota.mobile.debug.FORCE_CLAUDE_PRIME"
        private const val TAG = "AIQuotaDebugPrime"
    }
}
