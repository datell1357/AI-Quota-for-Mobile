package com.aiquota.mobile.providers

import java.io.File
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test

class AntigravityOAuthErrorPolicyTest {
    @Test
    fun expiredOAuthStateRequiresFreshSignIn() {
        // The gateway maps OAUTH_STATE_EXPIRED to HttpsError("invalid-argument", code), so the
        // code arrives as the client exception message.
        assertTrue(AntigravityOAuthErrorPolicy.requiresFreshSignIn(Exception("OAUTH_STATE_EXPIRED")))
        assertTrue(AntigravityOAuthErrorPolicy.requiresFreshSignIn(Exception("OAUTH_STATE_CONSUMED")))
        assertTrue(AntigravityOAuthErrorPolicy.requiresFreshSignIn(Exception("OAUTH_STATE_NOT_FOUND")))
        assertTrue(AntigravityOAuthErrorPolicy.requiresFreshSignIn(Exception("OAUTH_STATE_INVALID")))
        assertTrue(
            AntigravityOAuthErrorPolicy.requiresFreshSignIn(Exception("OAUTH_CALLBACK_QUERY_REQUIRED"))
        )
    }

    @Test
    fun collectionFailuresDoNotRequireFreshSignIn() {
        assertFalse(AntigravityOAuthErrorPolicy.requiresFreshSignIn(null))
        assertFalse(AntigravityOAuthErrorPolicy.requiresFreshSignIn(Exception()))
        assertFalse(
            AntigravityOAuthErrorPolicy.requiresFreshSignIn(Exception("GOOGLE_TOKEN_EXCHANGE_FAILED:502"))
        )
        assertFalse(AntigravityOAuthErrorPolicy.requiresFreshSignIn(Exception("ANTIGRAVITY_OAUTH_FAILED")))
    }

    /**
     * An expired state means no credential was stored, so leaving the provider in a
     * pending-retry state would schedule refreshes that can never succeed.
     */
    @Test
    fun expiredSignInDisconnectsInsteadOfPendingRetry() {
        val activity = File(
            "src/main/java/com/aiquota/mobile/providers/AntigravityLoopbackOAuthActivity.kt"
        ).readText()

        assertTrue(activity.contains("AntigravityOAuthErrorPolicy.requiresFreshSignIn"))
        assertTrue(activity.contains("repository.markSessionExpired("))
        assertFalse(
            AntigravityOAuthErrorPolicy.SIGN_IN_RESTART_MESSAGE
                .contains("usage payload", ignoreCase = true)
        )
    }
}
