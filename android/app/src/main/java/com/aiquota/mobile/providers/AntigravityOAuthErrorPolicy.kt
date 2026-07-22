package com.aiquota.mobile.providers

/**
 * The Firebase gateway reports OAuth problems as the error code in the exception message.
 *
 * These codes all mean the sign-in attempt itself is no longer usable — most often because the
 * authorization page sat open past the gateway's ten minute state lifetime. No credential was
 * stored, so background collection cannot recover; only a fresh sign-in can.
 */
object AntigravityOAuthErrorPolicy {
    const val SIGN_IN_RESTART_MESSAGE = "Antigravity sign-in expired. Please connect again."

    private val SIGN_IN_RESTART_CODES = setOf(
        "OAUTH_STATE_EXPIRED",
        "OAUTH_STATE_NOT_FOUND",
        "OAUTH_STATE_CONSUMED",
        "OAUTH_STATE_INVALID",
        "OAUTH_CALLBACK_QUERY_REQUIRED"
    )

    fun requiresFreshSignIn(error: Throwable?): Boolean {
        val message = error?.message ?: return false
        return SIGN_IN_RESTART_CODES.any { message.contains(it) }
    }
}
