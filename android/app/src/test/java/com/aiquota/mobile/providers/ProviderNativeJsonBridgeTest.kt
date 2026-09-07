package com.aiquota.mobile.providers

import com.aiquota.mobile.accounts.ExactProfileCookieSource
import com.aiquota.mobile.local.ProviderId
import java.io.File
import java.io.ByteArrayInputStream
import java.net.HttpURLConnection
import java.net.URL
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertNull
import org.junit.Assert.assertTrue
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner
import org.robolectric.annotation.Config

@RunWith(RobolectricTestRunner::class)
@Config(application = android.app.Application::class, sdk = [28])
class ProviderNativeJsonBridgeTest {
    @Test
    fun nativeJsonBridgeNeverForwardsCredentialsAcrossAutomaticRedirects() {
        val source = File("src/main/java/com/aiquota/mobile/providers/ProviderNativeJsonBridge.kt").readText()

        assertTrue(source.contains("instanceFollowRedirects = false"))
        assertTrue(source.contains("MAX_REDIRECTS"))
    }

    @Test
    fun releasedProvidersMayFollowOnlySameOriginAllowlistedHttpsRedirects() {
        assertTrue(
            ProviderNativeJsonBridge.canFollowRedirectForTest(
                ProviderId.OPENCODE,
                "https://opencode.ai/zen/go/usage",
                "https://opencode.ai/zen/go/usage?refresh=1",
            )
        )
        assertFalse(
            ProviderNativeJsonBridge.canFollowRedirectForTest(
                ProviderId.OPENCODE,
                "https://opencode.ai/zen/go/usage",
                "https://www.opencode.ai/zen/go/usage",
            )
        )
        assertFalse(
            ProviderNativeJsonBridge.canFollowRedirectForTest(
                ProviderId.OPENCODE,
                "https://opencode.ai/zen/go/usage",
                "http://opencode.ai/zen/go/usage",
            )
        )
    }

    @Test
    fun claudeAndCodexNeverFollowRedirects() {
        assertFalse(
            ProviderNativeJsonBridge.canFollowRedirectForTest(
                ProviderId.CLAUDE,
                "https://claude.ai/api/organizations",
                "https://claude.ai/api/organizations/me",
            )
        )
        assertFalse(
            ProviderNativeJsonBridge.canFollowRedirectForTest(
                ProviderId.CODEX,
                "https://chatgpt.com/backend-api/wham/usage",
                "https://chatgpt.com/backend-api/subscriptions",
            )
        )
    }

    @Test
    fun transportFollowsRelativeRedirectAndRebuildsCookiePerHop() {
        val seen = mutableListOf<Pair<String, String?>>()
        val seenCookies = mutableListOf<String>()
        val responses = ArrayDeque<Pair<Int, String?>>(listOf(302 to "?refresh=1", 200 to null))
        val request = ProviderNativeJsonRequest(
            ProviderId.OPENCODE,
            "https://opencode.ai/zen/go/usage",
            "test-agent",
            emptyMap(),
            ExactProfileCookieSource { url, _ -> "session=$url" },
        )
        val result = ProviderNativeJsonBridge.fetchJsonForTest(request) { url ->
            val (status, location) = responses.removeFirst()
            object : HttpURLConnection(url) {
                override fun disconnect() = Unit
                override fun usingProxy() = false
                override fun connect() = Unit
                override fun getResponseCode() = status
                override fun getHeaderField(name: String) = if (name.equals("Location", true)) location else null
                override fun getInputStream() = ByteArrayInputStream("{}".toByteArray())
                override fun getErrorStream() = ByteArrayInputStream(ByteArray(0))
                override fun setRequestProperty(name: String, value: String) {
                    if (name.equals("Cookie", true)) seenCookies += value
                }
                init { seen += url.toString() to null }
            }
        }
        assertTrue(result.contains("\"ok\":true"))
        assertEquals(2, seen.size)
        assertEquals(2, seenCookies.size)
        assertTrue(seenCookies[0] != seenCookies[1])
    }

    @Test
    fun transportStopsAtThreeRedirectsAndDisconnectsEveryConnection() {
        var opened = 0
        var closed = 0
        val request = ProviderNativeJsonRequest(
            ProviderId.OPENCODE, "https://opencode.ai/zen/go/usage", "test", emptyMap(),
            ExactProfileCookieSource { _, _ -> null },
        )
        val result = ProviderNativeJsonBridge.fetchJsonForTest(request) { url ->
            opened++
            object : HttpURLConnection(url) {
                override fun connect() = Unit
                override fun usingProxy() = false
                override fun disconnect() { closed++ }
                override fun getResponseCode() = 302
                override fun getHeaderField(name: String) = if (name == "Location") "?hop=$opened" else null
                override fun getErrorStream() = ByteArrayInputStream("blocked".toByteArray())
            }
        }
        assertEquals(4, opened)
        assertEquals(opened, closed)
        assertEquals(302, org.json.JSONObject(result).getInt("status"))
        assertFalse(org.json.JSONObject(result).getBoolean("ok"))
    }

    @Test
    fun transportNeverOpensDisallowedRedirectTargets() {
        listOf(
            ProviderId.OPENCODE to "https://elsewhere.example/usage",
            ProviderId.OPENCODE to "http://opencode.ai/zen/go/usage",
            ProviderId.OPENCODE to "https://opencode.ai/auth",
            ProviderId.CLAUDE to "https://claude.ai/api/organizations/me",
            ProviderId.CODEX to "https://chatgpt.com/backend-api/subscriptions",
        ).forEach { (provider, target) ->
            val start = when (provider) {
                ProviderId.CLAUDE -> "https://claude.ai/api/organizations"
                ProviderId.CODEX -> "https://chatgpt.com/backend-api/wham/usage"
                else -> "https://opencode.ai/zen/go/usage"
            }
            var opened = 0
            var closed = 0
            val result = ProviderNativeJsonBridge.fetchJsonForTest(
                ProviderNativeJsonRequest(provider, start, "test", mapOf("Authorization" to "test-only"),
                    ExactProfileCookieSource { _, _ -> "test-only" }),
            ) { url ->
                opened++
                object : HttpURLConnection(url) {
                    override fun connect() = Unit
                    override fun usingProxy() = false
                    override fun disconnect() { closed++ }
                    override fun getResponseCode() = 302
                    override fun getHeaderField(name: String) = if (name == "Location") target else null
                    override fun getErrorStream() = ByteArrayInputStream("original-body".toByteArray())
                }
            }
            assertEquals(target, 1, opened)
            assertEquals(1, closed)
            assertTrue(result.contains("original-body"))
        }
    }

    @Test
    fun nativeJsonBridgeAllowsScopedProviderEndpoints() {
        assertTrue(ProviderNativeJsonBridge.isAllowedJsonUrl(ProviderId.CLAUDE, "https://claude.ai/api/organizations"))
        assertTrue(ProviderNativeJsonBridge.isAllowedJsonUrl(ProviderId.CLAUDE, "https://claude.ai/api/organizations/me"))
        assertTrue(ProviderNativeJsonBridge.isAllowedJsonUrl(ProviderId.CLAUDE, "https://claude.ai/api/organizations/org_123/usage"))
        assertTrue(ProviderNativeJsonBridge.isAllowedJsonUrl(ProviderId.CODEX, "https://chatgpt.com/api/auth/session"))
        assertTrue(ProviderNativeJsonBridge.isAllowedJsonUrl(ProviderId.CODEX, "https://chatgpt.com/backend-api/subscriptions"))
        assertTrue(ProviderNativeJsonBridge.isAllowedJsonUrl(ProviderId.CODEX, "https://chatgpt.com/backend-api/wham/usage"))
        assertTrue(ProviderNativeJsonBridge.isAllowedJsonUrl(ProviderId.CODEX, "https://chatgpt.com/codex/cloud/settings/analytics"))
        assertFalse(ProviderNativeJsonBridge.isAllowedJsonUrl(ProviderId.GEMINI, "https://gemini.google.com/usage"))
        assertTrue(ProviderNativeJsonBridge.isAllowedJsonUrl(ProviderId.OPENCODE, "https://opencode.ai/workspace/wrk_123/go"))
        assertTrue(ProviderNativeJsonBridge.isAllowedJsonUrl(ProviderId.OPENCODE, "https://opencode.ai/zen/go/usage"))
        assertTrue(ProviderNativeJsonBridge.isAllowedJsonUrl(ProviderId.OPENCODE, "https://opencode.ai/billing/credits"))
        assertTrue(ProviderNativeJsonBridge.isAllowedJsonUrl(ProviderId.OPENCODE, "https://opencode.ai/_server?id=7abeebee372f304e050aaaf92be863f4a86490e382f8c79db68fd94040d691b4&args=%5B%22wrk_123%22%5D"))
        assertTrue(ProviderNativeJsonBridge.isAllowedJsonUrl(ProviderId.COPILOT, "https://github.com/github-copilot/chat/entitlement"))
        assertTrue(ProviderNativeJsonBridge.isAllowedJsonUrl(ProviderId.COPILOT, "https://api.github.com/copilot_internal/user"))
        assertFalse(ProviderNativeJsonBridge.isAllowedJsonUrl(ProviderId.CLAUDE, "https://firebase.googleapis.com/relay"))
        assertFalse(ProviderNativeJsonBridge.isAllowedJsonUrl(ProviderId.CODEX, "https://admin.openai.com/analytics/codex"))
        assertFalse(ProviderNativeJsonBridge.isAllowedJsonUrl(ProviderId.OPENCODE, "https://opencode.ai/auth"))
        assertFalse(ProviderNativeJsonBridge.isAllowedJsonUrl(ProviderId.OPENCODE, "https://opencode.ai/docs/go/"))
        assertFalse(ProviderNativeJsonBridge.isAllowedJsonUrl(ProviderId.COPILOT, "https://github.com/settings/profile"))
    }

    @Test
    fun nativeJsonBridgeExcludesNonScopedProvidersAndAllowsCursorNativeEndpoint() {
        assertFalse(ProviderNativeJsonBridge.isAllowedJsonUrl(ProviderId.ANTIGRAVITY, "https://antigravity.google/usage"))
        assertTrue(ProviderNativeJsonBridge.isAllowedJsonUrl(ProviderId.GLM, "https://api.z.ai/api/monitor/usage/quota/limit"))
        assertTrue(ProviderNativeJsonBridge.isAllowedJsonUrl(ProviderId.CURSOR, "https://cursor.com/api/usage"))
        assertFalse(ProviderNativeJsonBridge.isAllowedJsonUrl(ProviderId.CURSOR, "https://cursor.com/settings"))
    }

    @Test
    fun nativeJsonBridgeRejectsNonHttpsAndLookalikeClaudeHosts() {
        assertFalse(
            ProviderNativeJsonBridge.isAllowedJsonUrl(
                ProviderId.CLAUDE,
                "https://evilclaude.ai/api/organizations"
            )
        )
        assertFalse(
            ProviderNativeJsonBridge.isAllowedJsonUrl(
                ProviderId.CLAUDE,
                "http://claude.ai/api/organizations"
            )
        )
        listOf(
            ProviderId.CODEX to "http://chatgpt.com/backend-api/wham/usage",
            ProviderId.GLM to "http://api.z.ai/api/monitor/usage/quota/limit",
            ProviderId.OPENCODE to "http://opencode.ai/billing/credits",
            ProviderId.CURSOR to "http://cursor.com/api/usage",
            ProviderId.COPILOT to "http://github.com/github-copilot/chat/entitlement",
        ).forEach { (providerId, url) ->
            assertFalse(
                "native bridge must reject non-HTTPS endpoint for ${providerId.storageId}",
                ProviderNativeJsonBridge.isAllowedJsonUrl(providerId, url)
            )
        }
    }

    @Test
    fun nativeJsonBridgeFallsBackToOriginCookieWhenPathCookieIsBlank() {
        assertEquals(
            "auth=origin",
            ProviderNativeJsonBridge.firstNonBlankCookieForTest("", "auth=origin")
        )
        assertEquals(
            "auth=path",
            ProviderNativeJsonBridge.firstNonBlankCookieForTest("auth=path", "auth=origin")
        )
        assertNull(ProviderNativeJsonBridge.firstNonBlankCookieForTest("", ""))
    }

    @Test
    fun exactClaudeAndCodexRequestsUseOnlySelectedProfileCookieWithExactHeaders() {
        val profileA = ExactProfileCookieSource { _, _ -> "profile_session=A" }
        val profileB = ExactProfileCookieSource { _, _ -> "profile_session=B" }
        val cases = listOf(
            Triple(ProviderId.CLAUDE, "https://claude.ai/api/organizations", profileA),
            Triple(ProviderId.CODEX, "https://chatgpt.com/backend-api/wham/usage", profileB),
        )

        cases.forEach { (providerId, url, selected) ->
            val headers = ProviderNativeJsonBridge.assembledHeadersForTest(
                ProviderNativeJsonRequest(
                    providerId,
                    url,
                    "task14-agent",
                    mapOf("Authorization" to "Bearer B"),
                    selected,
                )
            )

            assertEquals("Bearer B", headers["Authorization"])
            assertEquals(
                if (providerId == ProviderId.CLAUDE) "profile_session=A" else "profile_session=B",
                headers["Cookie"],
            )
            assertFalse(headers.values.any { it.contains("default_session") })
        }
    }

    @Test
    fun exactClaudeAndCodexRequestsOmitCookieWhenSelectedProfileHasNone() {
        val emptySelectedProfile = ExactProfileCookieSource { _, _ -> null }
        listOf(
            ProviderId.CLAUDE to "https://claude.ai/api/organizations",
            ProviderId.CODEX to "https://chatgpt.com/backend-api/wham/usage",
        ).forEach { (providerId, url) ->
            val headers = ProviderNativeJsonBridge.assembledHeadersForTest(
                ProviderNativeJsonRequest(
                    providerId,
                    url,
                    "task14-agent",
                    mapOf("Authorization" to "Bearer B"),
                    emptySelectedProfile,
                )
            )

            assertEquals("Bearer B", headers["Authorization"])
            assertFalse(headers.keys.any { it.equals("Cookie", ignoreCase = true) })
        }
    }

    @Test
    fun nativeJsonBridgeWrapsArrayResponsesAsJson() {
        val wrapped = ProviderNativeJsonBridge.wrappedResponse(
            "https://claude.ai/api/organizations",
            200,
            """[{"uuid":"org_123"}]"""
        )

        assertTrue(wrapped.optBoolean("ok"))
        assertEquals("org_123", wrapped.getJSONArray("json").getJSONObject(0).getString("uuid"))
    }

    @Test
    fun nativeJsonBridgeKeepsRawTextOnlyForNonJsonResponses() {
        val wrapped = ProviderNativeJsonBridge.wrappedResponse(
            "https://claude.ai/api/organizations",
            200,
            "not-json"
        )

        assertEquals("not-json", wrapped.getJSONObject("json").getString("rawText"))
    }
}
