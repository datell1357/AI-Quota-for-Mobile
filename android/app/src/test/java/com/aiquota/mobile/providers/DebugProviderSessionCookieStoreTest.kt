package com.aiquota.mobile.providers

import java.io.File
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test

class DebugProviderSessionCookieStoreTest {
    @Test
    fun debugCookieSnapshotsAreDebugOnlyAndEncrypted() {
        val source = File("src/main/java/com/aiquota/mobile/providers/DebugProviderSessionCookieStore.kt").readText()

        assertTrue(source.contains("if (!BuildConfig.DEBUG) return"))
        assertTrue(source.contains("SecureStringStore(context, PREFS).putString"))
        assertTrue(source.contains("getExternalFilesDir(EXTERNAL_DIR)"))
        assertTrue(source.contains("debug-session-cookies"))
        assertTrue(source.contains("debugCookieRestore=true"))
        assertFalse(source.contains("Log.i(TAG, payload.toString())"))
        assertFalse(source.contains("Log.d(TAG, payload.toString())"))
    }

    @Test
    fun cookieHeaderSplitsIntoSetCookiePairs() {
        assertTrue(
            DebugProviderSessionCookieStore.cookiePairsForTest("a=1; b=two; invalid; c=3")
                .containsAll(listOf("a=1", "b=two", "c=3"))
        )
        assertFalse(DebugProviderSessionCookieStore.cookiePairsForTest("a=1; invalid").contains("invalid"))
    }

    @Test
    fun restorableCookieHeadersKeepSecureSessionCookiePrefixes() {
        val headers = DebugProviderSessionCookieStore.restorableCookieHeadersForTest(
            "__Secure-next-auth.session-token.0=part0; __Host-next-auth.csrf-token=csrf; oai-did=device",
            "https://chatgpt.com"
        )

        assertTrue(headers.contains("__Secure-next-auth.session-token.0=part0; Secure; Path=/"))
        assertTrue(headers.contains("__Host-next-auth.csrf-token=csrf; Secure; Path=/"))
        assertTrue(headers.contains("oai-did=device; Secure; Path=/"))
    }

    @Test
    fun failedDebugCookieSnapshotsAreNotRestorableQaSessions() {
        val failed = """
            {"provider":"codex","reason":"background_webview_non_auth_failure","cookies":[{"url":"https://chatgpt.com","cookieHeader":"a=1"}]}
        """.trimIndent()
        val successful = """
            {"provider":"codex","reason":"trusted_usage_payload","cookies":[{"url":"https://chatgpt.com","cookieHeader":"a=1"}]}
        """.trimIndent()

        assertFalse(DebugProviderSessionCookieStore.isRestorableSnapshotForTest(failed))
        assertTrue(DebugProviderSessionCookieStore.isRestorableSnapshotForTest(successful))
    }

    @Test
    fun debugSnapshotSerializesOnlyCodexNativeAuthContextMetadataAndValuesNeededForReplay() {
        val payload = DebugProviderSessionCookieStore.snapshotPayloadForTest(
            providerId = "codex",
            reason = "trusted_usage_payload",
            cookies = listOf("https://chatgpt.com" to "a=1"),
            nativeAuthContext = mapOf(
                "chatgpt.com/backend-api/wham/usage" to mapOf(
                    "Authorization" to "Bearer auth",
                    "ChatGPT-Account-ID" to "account",
                    "OAI-Session-Id" to "session",
                    "Cookie" to "must-not-store"
                ),
                "chatgpt.com/backend-api/me" to mapOf("Accept" to "application/json")
            )
        )

        assertEquals(
            mapOf(
                "chatgpt.com/backend-api/wham/usage" to mapOf(
                    "Authorization" to "Bearer auth",
                    "ChatGPT-Account-ID" to "account",
                    "OAI-Session-Id" to "session"
                )
            ),
            DebugProviderSessionCookieStore.nativeAuthContextForTest(payload)
        )
        assertFalse(payload.contains("must-not-store"))
        assertFalse(payload.contains("application/json"))
    }

    @Test
    fun webLoginActivityCapturesDebugCookiesAtSessionReachedBoundaries() {
        val source = File("src/main/java/com/aiquota/mobile/providers/WebLoginActivity.kt").readText()

        assertTrue(source.contains("DebugProviderSessionCookieStore.restore(applicationContext, providerId, cookieManager, \"login_start\")"))
        assertTrue(source.contains("captureDebugProviderSessionCookies(\"trusted_usage_payload\", includeNativeAuthContext = true)"))
        assertTrue(source.contains("captureDebugProviderSessionCookies(\"login_complete_navigation\")"))
        assertTrue(source.contains("captureDebugProviderSessionCookies(\"codex_post_login_redirect\")"))
        assertTrue(source.contains("captureDebugProviderSessionCookies(\"google_usage_pending\")"))
    }

    @Test
    fun backgroundRefreshRestoresAndCapturesDebugCookies() {
        val source = File("src/main/java/com/aiquota/mobile/providers/ProviderBackgroundRefreshService.kt").readText()
        val storeSource = File("src/main/java/com/aiquota/mobile/providers/DebugProviderSessionCookieStore.kt").readText()

        assertTrue(source.contains("DebugProviderSessionCookieStore.restore(applicationContext, providerId, cookieManager, \"background_collection\")"))
        assertTrue(source.contains("restoreCodexDebugNativeAuthContext(providerId)"))
        assertTrue(source.contains("DebugProviderSessionCookieStore.restoreNativeAuthContext(applicationContext, providerId)"))
        assertTrue(source.contains("codexNativeFetchHeaders.putAll(restoredHeaders)"))
        assertTrue(source.contains("DebugProviderSessionCookieStore.capture("))
        assertTrue(storeSource.contains("exportExternal: Boolean = true"))
        assertTrue(storeSource.contains("val shouldExportExternal = exportExternal && isRestorableSnapshotReason(reason)"))
        assertTrue(storeSource.contains("if (shouldExportExternal)"))
        assertTrue(source.contains("\"background_native_snapshot\""))
        assertTrue(source.contains("\"background_webview_snapshot\""))
        assertTrue(source.contains("\"background_webview_non_auth_failure\""))
        assertTrue(source.contains("exportExternal = false"))
    }

    @Test
    fun debugProviderRefreshReceiverIsOnlyInDebugManifest() {
        val debugManifest = File("src/debug/AndroidManifest.xml").readText()
        val mainManifest = File("src/main/AndroidManifest.xml").readText()
        val refreshSource = File("src/debug/java/com/aiquota/mobile/debug/ProviderRefreshDebugReceiver.kt").readText()
        val loginSource = File("src/debug/java/com/aiquota/mobile/debug/ProviderLoginDebugActivity.kt").readText()

        assertTrue(debugManifest.contains(".debug.ProviderRefreshDebugReceiver"))
        assertTrue(debugManifest.contains(".debug.ProviderLoginDebugActivity"))
        assertTrue(debugManifest.contains("com.aiquota.mobile.debug.REFRESH_PROVIDER"))
        assertFalse(mainManifest.contains(".debug.ProviderRefreshDebugReceiver"))
        assertFalse(mainManifest.contains(".debug.ProviderLoginDebugActivity"))
        assertTrue(refreshSource.contains("ContextCompat.startForegroundService"))
        assertTrue(refreshSource.contains("ProviderBackgroundRefreshService.createRefreshIntent"))
        assertTrue(refreshSource.contains("ProviderId.fromStorageId"))
        assertTrue(loginSource.contains("WebLoginActivity.createIntent"))
        assertTrue(loginSource.contains("ProviderId.fromStorageId"))
    }

    @Test
    fun debugProviderStateResetReceiverDisconnectsScopedProvidersWithoutClearingData() {
        val debugManifest = File("src/debug/AndroidManifest.xml").readText()
        val mainManifest = File("src/main/AndroidManifest.xml").readText()
        val resetSource = File("src/debug/java/com/aiquota/mobile/debug/ProviderStateDebugReceiver.kt").readText()

        assertTrue(debugManifest.contains(".debug.ProviderStateDebugReceiver"))
        assertTrue(debugManifest.contains("com.aiquota.mobile.debug.RESET_PROVIDER"))
        assertFalse(mainManifest.contains("ProviderStateDebugReceiver"))
        assertTrue(resetSource.contains("ACTION_RESET_PROVIDER"))
        assertTrue(resetSource.contains("LocalUsageRepository(appContext).markSessionExpired"))
        assertTrue(resetSource.contains("listOf(ProviderId.CLAUDE, ProviderId.CODEX, ProviderId.GEMINI, ProviderId.COPILOT)"))
        assertFalse(resetSource.contains("pm clear"))
        assertFalse(resetSource.contains("clearProviderWebSession"))
    }
}
