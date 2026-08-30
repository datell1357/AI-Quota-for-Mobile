package com.aiquota.mobile.providers

import com.aiquota.mobile.local.ProviderId
import java.nio.charset.StandardCharsets
import java.nio.file.Files
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Assume.assumeTrue
import org.junit.Test

class ProviderWebCollectorScriptsTest {
    @Test
    fun collectorAndLoginPageAdmissionRejectHttp() {
        assertFalse(ProviderWebCollectorScripts.isRefreshLoginPage(ProviderId.CLAUDE, "http://claude.ai/login"))
        assertFalse(
            ProviderWebCollectorScripts.isRefreshLoginPage(
                ProviderId.CODEX,
                "http://chatgpt.com/",
                "Sign in",
            )
        )
        assertFalse(
            ProviderWebCollectorScripts.shouldRunCollector(
                ProviderId.CLAUDE,
                "http://claude.ai/new",
                mapOf("lastActiveOrg" to "org"),
                "Claude",
            )
        )
        assertFalse(
            ProviderWebCollectorScripts.shouldRunCollectorFromResource(
                ProviderId.CODEX,
                "http://chatgpt.com/",
                "https://chatgpt.com/backend-api/me",
            )
        )
        assertFalse(
            ProviderWebCollectorScripts.shouldAcceptCollectorError(
                ProviderId.CODEX,
                "http://chatgpt.com/",
                """{"provider":"codex","errorKind":"codex_auth_required"}""",
            )
        )
        assertFalse(
            ProviderWebCollectorScripts.isRefreshLoginPage(
                ProviderId.CODEX,
                "https://evil.chatgpt.com/auth/login",
            )
        )
        assertFalse(
            ProviderWebCollectorScripts.shouldRunCollectorOnResource(
                ProviderId.CLAUDE,
                "https://evil.claude.ai/api/organizations",
            )
        )
        assertFalse(
            ProviderWebCollectorScripts.shouldRunCollectorOnResource(
                ProviderId.CODEX,
                "https://evil.chatgpt.com/backend-api/me",
            )
        )
    }

    @Test
    fun collectorRunsOnlyAfterProviderShellsAreReached() {
        assertFalse(ProviderWebCollectorScripts.shouldRunCollector(ProviderId.CLAUDE, "https://claude.ai/new", mapOf("lastActiveOrg" to "org_123"), ""))
        assertTrue(ProviderWebCollectorScripts.shouldRunCollector(ProviderId.CLAUDE, "about:blank", emptyMap(), ""))
        assertFalse(ProviderWebCollectorScripts.shouldRunCollector(ProviderId.CODEX, "https://chatgpt.com/", emptyMap(), "ChatGPT"))
        assertTrue(ProviderWebCollectorScripts.shouldRunCollector(ProviderId.CODEX, "about:blank", emptyMap(), ""))
        assertTrue(ProviderWebCollectorScripts.shouldRunCollector(ProviderId.GEMINI, "about:blank", emptyMap(), ""))
        assertTrue(ProviderWebCollectorScripts.shouldRunCollector(ProviderId.COPILOT, "about:blank", emptyMap(), ""))
        assertTrue(ProviderWebCollectorScripts.shouldRunCollector(ProviderId.GLM, "about:blank", emptyMap(), ""))
        assertFalse(ProviderWebCollectorScripts.shouldRunCollector(ProviderId.COPILOT, "https://github.com/settings/copilot", emptyMap(), ""))
        assertFalse(ProviderWebCollectorScripts.shouldRunCollector(ProviderId.COPILOT, "https://github.com/settings/billing/premium_requests_usage", emptyMap(), ""))
        assertTrue(ProviderWebCollectorScripts.shouldRunCollector(ProviderId.CURSOR, "about:blank", emptyMap(), ""))
        assertFalse(ProviderWebCollectorScripts.shouldRunCollector(ProviderId.GLM, "https://z.ai/manage-apikey/coding-plan/personal/my-plan", emptyMap(), ""))
        assertFalse(ProviderWebCollectorScripts.shouldRunCollector(ProviderId.GLM, "https://chat.z.ai/", emptyMap(), "Coding Plan Usage"))
        assertTrue(ProviderWebCollectorScripts.shouldRunCollector(ProviderId.OPENCODE, "about:blank", emptyMap(), ""))

        assertFalse(ProviderWebCollectorScripts.shouldRunCollector(ProviderId.CLAUDE, "https://claude.ai/login", emptyMap(), ""))
        assertFalse(ProviderWebCollectorScripts.shouldRunCollector(ProviderId.CLAUDE, "https://claude.ai/login", mapOf("lastActiveOrg" to "org_123"), "Claude"))
        assertFalse(ProviderWebCollectorScripts.shouldRunCollector(ProviderId.CODEX, "https://chatgpt.com/auth/login", emptyMap(), "ChatGPT"))
        assertFalse(ProviderWebCollectorScripts.shouldRunCollector(ProviderId.CODEX, "https://chatgpt.com/", emptyMap(), ""))
        assertFalse(ProviderWebCollectorScripts.shouldRunCollector(ProviderId.CODEX, "https://chatgpt.com/", emptyMap(), "로그인 또는 회원가입\nGoogle 계정으로 계속하기"))
        assertFalse(ProviderWebCollectorScripts.shouldRunCollector(ProviderId.CODEX, "https://chatgpt.com/", emptyMap(), "ChatGPT\n로그인\n무료로 회원 가입\n지금 무슨 생각을 하시나요?"))
        assertFalse(ProviderWebCollectorScripts.shouldRunCollector(ProviderId.CODEX, "https://admin.openai.com/analytics/codex", emptyMap(), "Codex token usage"))
        assertFalse(ProviderWebCollectorScripts.shouldRunCollector(ProviderId.GEMINI, "https://accounts.google.com/signin", emptyMap(), ""))
        assertFalse(ProviderWebCollectorScripts.shouldRunCollector(ProviderId.GEMINI, "https://gemini.google.com/app", emptyMap(), "Gemini"))
        assertFalse(ProviderWebCollectorScripts.shouldRunCollector(ProviderId.GEMINI, "https://gemini.google.com/usage", emptyMap(), "Gemini usage"))
        assertFalse(ProviderWebCollectorScripts.shouldRunCollector(ProviderId.COPILOT, "https://github.com/login", emptyMap(), ""))
        assertFalse(ProviderWebCollectorScripts.shouldRunCollector(ProviderId.COPILOT, "https://github.com/", mapOf("logged_in" to "yes"), ""))
        assertFalse(ProviderWebCollectorScripts.shouldRunCollector(ProviderId.ANTIGRAVITY, "about:blank", emptyMap(), ""))
        assertFalse(ProviderWebCollectorScripts.shouldRunCollector(ProviderId.ANTIGRAVITY, "https://accounts.google.com/signin", emptyMap(), ""))
        assertFalse(ProviderWebCollectorScripts.shouldRunCollector(ProviderId.ANTIGRAVITY, "https://antigravity.google/docs/plans", emptyMap(), "Antigravity"))
        assertFalse(ProviderWebCollectorScripts.shouldRunCollector(ProviderId.OPENCODE, "https://opencode.ai/auth", emptyMap(), "OpenCode Go usage limits"))
        assertFalse(ProviderWebCollectorScripts.shouldRunCollector(ProviderId.OPENCODE, "https://opencode.ai/zen/go/usage", emptyMap(), "Weekly limit"))
        assertFalse(ProviderWebCollectorScripts.shouldRunCollector(ProviderId.OPENCODE, "https://opencode.ai/workspace/wrk_123/go", emptyMap(), "롤링 사용량"))
        assertFalse(ProviderWebCollectorScripts.shouldRunCollector(ProviderId.CURSOR, "https://cursor.com/dashboard", emptyMap(), ""))
        assertFalse(ProviderWebCollectorScripts.shouldRunCollector(ProviderId.CURSOR, "https://api.workos.com/sso/authorize", emptyMap(), ""))
        assertFalse(ProviderWebCollectorScripts.shouldRunCollector(ProviderId.GLM, "https://z.ai/login", emptyMap(), "Login"))
        assertFalse(ProviderWebCollectorScripts.shouldRunCollector(ProviderId.OPENCODE, "https://opencode.ai/docs/go/", emptyMap(), "OpenCode Go"))
        assertFalse(ProviderWebCollectorScripts.shouldRunCollector(ProviderId.OPENCODE, "https://opencode.ai/auth", emptyMap(), ""))
        assertFalse(ProviderWebCollectorScripts.shouldRunCollector(ProviderId.OPENCODE, "https://opencode.ai/auth", emptyMap(), "Sign in to OpenCode"))
    }

    @Test
    fun hiddenRefreshDetectsProviderLoginPages() {
        assertTrue(ProviderWebCollectorScripts.isRefreshLoginPage(ProviderId.CLAUDE, "https://claude.ai/login"))
        assertTrue(ProviderWebCollectorScripts.isRefreshLoginPage(ProviderId.CODEX, "https://chatgpt.com/auth/login"))
        assertTrue(ProviderWebCollectorScripts.isRefreshLoginPage(ProviderId.CODEX, "https://chatgpt.com/", "로그인 또는 회원가입"))
        assertTrue(ProviderWebCollectorScripts.isRefreshLoginPage(ProviderId.CODEX, "https://chatgpt.com/", "ChatGPT\n로그인\n무료로 회원 가입\n지금 무슨 생각을 하시나요?"))
        assertTrue(ProviderWebCollectorScripts.isRefreshLoginPage(ProviderId.CODEX, "https://auth.openai.com/authorize"))
        assertTrue(ProviderWebCollectorScripts.isRefreshLoginPage(ProviderId.COPILOT, "https://github.com/login"))
        assertTrue(ProviderWebCollectorScripts.isRefreshLoginPage(ProviderId.COPILOT, "https://github.com/sessions/two-factor"))
        assertTrue(ProviderWebCollectorScripts.isRefreshLoginPage(ProviderId.ANTIGRAVITY, "https://accounts.google.com/signin"))
        assertFalse(ProviderWebCollectorScripts.isRefreshLoginPage(ProviderId.CURSOR, "https://api.workos.com/sso/authorize"))
        assertTrue(ProviderWebCollectorScripts.isRefreshLoginPage(ProviderId.CURSOR, "https://api.workos.com/sso/authorize", "Sign in to Cursor"))
        assertTrue(ProviderWebCollectorScripts.isRefreshLoginPage(ProviderId.CURSOR, "https://github.com/login"))
        assertTrue(ProviderWebCollectorScripts.isRefreshLoginPage(ProviderId.GLM, "https://z.ai/login"))
        assertTrue(ProviderWebCollectorScripts.isRefreshLoginPage(ProviderId.OPENCODE, "https://opencode.ai/auth", "Sign in to OpenCode"))
        assertFalse(ProviderWebCollectorScripts.isRefreshLoginPage(ProviderId.OPENCODE, "https://auth.opencode.ai/authorize"))
        assertTrue(ProviderWebCollectorScripts.isRefreshLoginPage(ProviderId.OPENCODE, "https://auth.opencode.ai/authorize", "Sign in to OpenCode"))
        assertTrue(ProviderWebCollectorScripts.isRefreshLoginPage(ProviderId.GEMINI, "https://gemini.google.com/app", "Gemini\n3.5 Flash\n로그인\nGemini와의 대화\n개인 AI 어시스턴트인 Gemini를 만나 보세요"))
        assertTrue(ProviderWebCollectorScripts.isRefreshLoginPage(ProviderId.GEMINI, "https://gemini.google.com/usage", "Gemini\n로그인\nGemini와의 대화\n개인 AI 어시스턴트인 Gemini를 만나 보세요"))

        assertFalse(ProviderWebCollectorScripts.isRefreshLoginPage(ProviderId.CLAUDE, "https://claude.ai/new"))
        assertFalse(ProviderWebCollectorScripts.isRefreshLoginPage(ProviderId.CODEX, "https://chatgpt.com/"))
        assertFalse(ProviderWebCollectorScripts.isRefreshLoginPage(ProviderId.COPILOT, "https://github.com/settings/copilot"))
        assertFalse(ProviderWebCollectorScripts.isRefreshLoginPage(ProviderId.ANTIGRAVITY, "https://antigravity.google/docs/plans"))
        assertFalse(ProviderWebCollectorScripts.isRefreshLoginPage(ProviderId.CURSOR, "https://cursor.com/dashboard"))
        assertFalse(ProviderWebCollectorScripts.isRefreshLoginPage(ProviderId.GLM, "https://z.ai/manage-apikey/coding-plan/personal/my-plan"))
        assertFalse(ProviderWebCollectorScripts.isRefreshLoginPage(ProviderId.OPENCODE, "https://opencode.ai/auth", "OpenCode Go usage limits"))
        assertFalse(ProviderWebCollectorScripts.isRefreshLoginPage(ProviderId.GEMINI, "https://gemini.google.com/usage", "Current usage\nUsage limit\n5-hour limit"))
    }

    @Test
    fun collectorAcceptsAboutBlankOnlyForNativeJsonProviders() {
        assertTrue(ProviderWebCollectorScripts.shouldAcceptCollectorPayload(ProviderId.CLAUDE, "about:blank"))
        assertTrue(ProviderWebCollectorScripts.shouldAcceptCollectorPayload(ProviderId.CODEX, "about:blank"))
        assertTrue(ProviderWebCollectorScripts.shouldAcceptCollectorPayload(ProviderId.GEMINI, "about:blank"))
        assertTrue(ProviderWebCollectorScripts.shouldAcceptCollectorPayload(ProviderId.COPILOT, "about:blank"))
        assertTrue(ProviderWebCollectorScripts.shouldAcceptCollectorPayload(ProviderId.GLM, "about:blank"))
        assertTrue(ProviderWebCollectorScripts.shouldAcceptCollectorPayload(ProviderId.OPENCODE, "about:blank"))
        assertTrue(ProviderWebCollectorScripts.shouldAcceptCollectorPayload(ProviderId.CURSOR, "about:blank"))
        assertFalse(ProviderWebCollectorScripts.shouldAcceptCollectorPayload(ProviderId.CLAUDE, "https://claude.ai/new"))
        assertFalse(ProviderWebCollectorScripts.shouldAcceptCollectorPayload(ProviderId.CODEX, "https://chatgpt.com/codex/settings/usage"))
        assertFalse(ProviderWebCollectorScripts.shouldAcceptCollectorPayload(ProviderId.COPILOT, "https://github.com/settings/copilot/features"))
        assertFalse(ProviderWebCollectorScripts.shouldAcceptCollectorPayload(ProviderId.ANTIGRAVITY, "about:blank"))
        assertFalse(ProviderWebCollectorScripts.shouldAcceptCollectorPayload(ProviderId.CURSOR, "https://cursor.com/dashboard"))
    }

    @Test
    fun aboutBlankNativeUsagePayloadPolicyIncludesOnlyScopedProviders() {
        listOf(ProviderId.CLAUDE, ProviderId.CODEX, ProviderId.GEMINI, ProviderId.COPILOT, ProviderId.GLM, ProviderId.OPENCODE, ProviderId.CURSOR).forEach { providerId ->
            assertTrue(ProviderAboutBlankCollectorPolicy.isEnabled(providerId))
        }
        listOf(ProviderId.ANTIGRAVITY).forEach { providerId ->
            assertFalse(ProviderAboutBlankCollectorPolicy.isEnabled(providerId))
        }
    }

    @Test
    fun scopedProvidersBuildOnlyNativeUsagePayloadCollector() {
        mapOf(
            ProviderId.CODEX to "about:blank",
            ProviderId.GEMINI to "about:blank",
            ProviderId.COPILOT to "about:blank",
            ProviderId.GLM to "about:blank",
            ProviderId.OPENCODE to "about:blank",
            ProviderId.CURSOR to "about:blank"
        ).forEach { (providerId, pageUrl) ->
            val script = ProviderWebCollectorScripts.build(providerId, emptyMap(), "", pageUrl = pageUrl)

            assertTrue(script.contains("fetchNativeUsagePayload"))
            assertTrue(script.contains("collectorMode"))
            assertFalse(script.contains("__AIQuotaGlmNetworkRows"))
            assertFalse(script.contains("visible-dom"))
            assertTrue(script.contains("native-bridge"))
            assertFalse(script.contains("parseCodexUsagePayload"))
            assertFalse(script.contains("extractCodexVisibleDomUsage"))
            assertFalse(script.contains("scanClaudePageState"))
            assertFalse(script.contains("__AIQuotaCursorNetworkRows"))
            assertFalse(script.contains("scanCursorPageState"))
            assertFalse(script.contains("pushCursorNetworkRow"))
            assertFalse(script.contains("AIQuotaCodex collector started"))
            assertFalse(script.contains("AIQuotaCopilot collector_start"))
            assertFalse(script.contains("__AIQuotaOpenCodeRows"))
            assertFalse(script.contains("collectOpenCode"))
            assertFalse(script.contains("document.documentElement"))
            assertFalse(script.contains("document.scripts"))
            assertFalse(script.contains("localStorage"))
            assertFalse(script.contains("sessionStorage"))
            assertFalse(script.contains("rawText"))
        }
    }

    @Test
    fun claudeAboutBlankCollectorUsesApiJsonFetchWithoutNativePayloadOrPageState() {
        val script = ProviderWebCollectorScripts.build(ProviderId.CLAUDE, emptyMap(), "", pageUrl = "about:blank")

        assertTrue(script.contains("https://claude.ai/api/organizations"))
        assertTrue(script.contains("/subscription_details"))
        assertTrue(script.contains("/usage"))
        assertTrue(script.contains("credentials: \"include\""))
        assertTrue(script.contains("aboutblank-js-fetch"))
        assertTrue(script.contains("normalizeClaudeOrgId"))
        assertFalse(script.contains("orgFromText(value) || value"))
        assertFalse(script.contains("c.fetchNativeUsagePayload()"))
        assertFalse(script.contains("__AIQuotaClaudeNetworkRows"))
        assertFalse(script.contains("installClaudeNetworkHook"))
        assertFalse(script.contains("scanClaudePageState"))
        assertFalse(script.contains("scanClaudeUsageText"))
        assertFalse(script.contains("document.documentElement"))
        assertFalse(script.contains("document.scripts"))
        assertFalse(script.contains("localStorage"))
        assertFalse(script.contains("sessionStorage"))
        assertFalse(script.contains("window.__NEXT_DATA__"))
        assertFalse(script.contains("c.rows()"))
        assertFalse(script.contains("c.text()"))
        assertFalse(script.contains("visible-dom"))
    }
    @Test
    fun claudeAboutBlankDebugPlanStructureCallbackUsesOnlyFixedPaths() {
        val script = ProviderWebCollectorScripts.claudeAboutBlankApiPayload(
            planStructureDebugCallbackEnabled = true
        )
        val callback = script
            .substringAfter("var claudePlanStructureContainerKeys = [")
            .substringBefore("function isRejectedClaudePlanValue")

        assertTrue(script.contains("var planStructureDebugCallbackEnabled = true;"))
        assertTrue(script.contains("postClaudeSubscriptionDetailsPlanStructure(subscription && subscription.json);"))
        assertTrue(
            script.indexOf("results.subscription = subscription;") <
                script.indexOf("postClaudeSubscriptionDetailsPlanStructure(subscription && subscription.json);")
        )
        assertTrue(callback.contains("if (!planStructureDebugCallbackEnabled || !c.postClaudeSubscriptionDetailsPlanStructure) return;"))
        assertTrue(callback.contains("routeId: \"claude_subscription_details\""))
        assertTrue(callback.contains("requestCountDelta: 0"))
        assertTrue(callback.contains("rootKeyCount: rootIsObject ? Object.keys(source).length : 0"))
        assertTrue(callback.contains("c.postClaudeSubscriptionDetailsPlanStructure(JSON.stringify({"))
        listOf(
            "subscription",
            "subscription_details",
            "subscriptionDetails",
            "billing",
            "plan_info",
            "planInfo",
            "plan",
            "plan_name",
            "planName",
            "plan_type",
            "planType",
            "subscription_plan",
            "subscriptionPlan",
            "tier",
            "membershipType",
            "product_name",
            "productName"
        ).forEach { fixedPathSegment ->
            assertTrue(callback.contains("\"$fixedPathSegment\""))
        }
        assertFalse(callback.contains("document."))
        assertFalse(callback.contains("pageText"))
        assertFalse(callback.contains("innerText"))
        assertFalse(callback.contains("textContent"))
        assertFalse(callback.contains("response."))
        assertFalse(callback.contains("rawBody"))
        assertFalse(callback.contains("rawPayload"))
        assertFalse(callback.contains("JSON.stringify(source)"))
        assertFalse(callback.contains("fetch("))
        assertFalse(callback.contains("JSON.parse"))
        assertFalse(callback.contains("String("))
        assertFalse(callback.contains("Object.keys(source).forEach"))
    }

    @Test
    fun claudeAboutBlankCollectorSkipsRejectedPlanValuesBeforeLaterValidTier() {
        val script = ProviderWebCollectorScripts.build(ProviderId.CLAUDE, emptyMap(), "", pageUrl = "about:blank")

        assertTrue(script.contains("function firstClaudePlanValue(json, keys)"))
        assertTrue(script.contains("function collectClaudePlanValues(value, key, depth, values)"))
        assertTrue(script.contains("collectClaudePlanValues(json, keys[i], 0, values)"))
        assertTrue(script.contains("function isRejectedClaudePlanValue(value)"))
        assertTrue(script.contains("/^\\d{4}[-/]\\d{1,2}[-/]\\d{1,2}(?:[T\\s].*)?$/.test(text)"))
        assertTrue(script.contains("jan(uary)?|feb(ruary)?|mar(ch)?|apr(il)?|may|jun(e)?|jul(y)?|aug(ust)?|sep(t|tember)?|oct(ober)?|nov(ember)?|dec(ember)?"))
        assertTrue(script.contains("reset|resets|renew|renews|renewal|billing\\s*(window|period|cycle)"))
        assertTrue(script.contains("/^\\d+(?:[.,]\\d+)?$/.test(text)"))
        assertTrue(script.contains("compact === \"unknown\""))
        assertTrue(script.contains("compact === \"claudeunknown\""))
        assertTrue(script.contains("plan: firstClaudePlanValue(results.subscription && results.subscription.json"))
        assertFalse(script.contains("plan: firstString(results.subscription && results.subscription.json"))
    }

    @Test
    fun claudeAboutBlankCollectorReplaysCapturedFetchHeaders() {
        val script = ProviderWebCollectorScripts.build(
            ProviderId.CLAUDE,
            emptyMap(),
            "",
            pageUrl = "about:blank",
            providerRequestHeaders = mapOf(
                "Authorization" to "Bearer test",
                "x-activity-session-id" to "activity",
                "anthropic-client-platform" to "web"
            )
        )

        assertTrue(script.contains("var replayHeaders = {"))
        assertTrue(script.contains("\"Authorization\":\"Bearer test\""))
        assertTrue(script.contains("\"x-activity-session-id\":\"activity\""))
        assertTrue(script.contains("\"anthropic-client-platform\":\"web\""))
        assertTrue(script.contains("headers: claudeRequestHeaders()"))
    }

    @Test
    fun scopedProvidersRejectNonAboutBlankCollectorPages() {
        mapOf(
            ProviderId.CLAUDE to "https://claude.ai/new",
            ProviderId.CODEX to "https://chatgpt.com/codex/settings/usage",
            ProviderId.GEMINI to "https://gemini.google.com/usage",
            ProviderId.COPILOT to "https://github.com/settings/copilot/features",
            ProviderId.OPENCODE to "https://opencode.ai/workspace/wrk_123/go",
            ProviderId.CURSOR to "https://cursor.com/dashboard"
        ).forEach { (providerId, pageUrl) ->
            assertFalse(ProviderWebCollectorScripts.shouldRunCollector(providerId, pageUrl, mapOf("lastActiveOrg" to "org"), "Claude usage"))
            val script = ProviderWebCollectorScripts.build(providerId, emptyMap(), "", pageUrl = pageUrl)

            assertFalse(script.contains("fetchNativeUsagePayload"))
            assertFalse(script.contains("scanClaudePageState"))
            assertFalse(script.contains("extractCodexVisibleDomUsage"))
            assertFalse(script.contains("AIQuotaCopilot collector_start"))
            assertFalse(script.contains("__AIQuotaOpenCodeRows"))
            assertFalse(script.contains("__AIQuotaCursorNetworkRows"))
            assertFalse(script.contains("scanCursorPageState"))
        }
    }

    @Test
    fun scopedProvidersDoNotFallBackToLegacyCollectorsWhenPageUrlIsMissing() {
        listOf(ProviderId.CLAUDE, ProviderId.CODEX, ProviderId.GEMINI, ProviderId.COPILOT, ProviderId.OPENCODE, ProviderId.CURSOR).forEach { providerId ->
            val script = ProviderWebCollectorScripts.build(providerId, emptyMap(), "", pageUrl = "")

            assertFalse(script.contains("fetchNativeUsagePayload"))
            assertFalse(script.contains("scanClaudePageState"))
            assertFalse(script.contains("extractCodexVisibleDomUsage"))
            assertFalse(script.contains("parseCodexUsagePayload"))
            assertFalse(script.contains("AIQuotaCopilot collector_start"))
            assertFalse(script.contains("__AIQuotaOpenCodeRows"))
            assertFalse(script.contains("__AIQuotaCursorNetworkRows"))
            assertFalse(script.contains("scanCursorPageState"))
            assertFalse(script.contains("window.fetch"))
            assertFalse(script.contains("XMLHttpRequest"))
        }
    }

    @Test
    fun codexInteractiveNativeCollectorBypassesStartTtlForUsageRetry() {
        val interactiveScript = ProviderWebCollectorScripts.build(
            providerId = ProviderId.CODEX,
            cookies = emptyMap(),
            geminiCollectorAsset = "",
            pageUrl = "https://chatgpt.com/",
            awaitInteractiveLoginUsage = true
        )
        val backgroundScript = ProviderWebCollectorScripts.build(
            providerId = ProviderId.CODEX,
            cookies = emptyMap(),
            geminiCollectorAsset = "",
            pageUrl = "about:blank"
        )

        assertFalse(interactiveScript.contains("__AIQuotaStartProviderCollector(\"codex\", true)"))
        assertFalse(interactiveScript.contains("parseCodexUsagePayload"))
        assertTrue(backgroundScript.contains("__AIQuotaStartProviderCollector(\"codex\", false)"))
    }

    @Test
    fun serviceCollectorReinjectsOnlyProvidersThatNeedPageSettlePasses() {
        assertTrue(ProviderWebCollectorScripts.shouldAllowCollectorReinjection(ProviderId.CLAUDE))
        assertFalse(ProviderWebCollectorScripts.shouldAllowCollectorReinjection(ProviderId.OPENCODE))
        assertTrue(ProviderWebCollectorScripts.shouldAllowCollectorReinjection(ProviderId.COPILOT))
        assertFalse(ProviderWebCollectorScripts.shouldAllowCollectorReinjection(ProviderId.CURSOR))
        assertTrue(ProviderWebCollectorScripts.shouldAllowCollectorReinjection(ProviderId.GLM))
        assertTrue(ProviderWebCollectorScripts.shouldAllowCollectorReinjection(ProviderId.GEMINI))
        assertFalse(ProviderWebCollectorScripts.shouldAllowCollectorReinjection(ProviderId.CODEX))
        assertFalse(ProviderWebCollectorScripts.shouldAllowCollectorReinjection(ProviderId.ANTIGRAVITY))
    }

    @Test
    fun collectorScriptsExposeOnlyProviderSafeCookiesToPageJavascript() {
        val cookies = mapOf(
            "lastActiveOrg" to "org_123",
            "aiquota_sensitive_cookie_name" to "cookie_secret_xyz"
        )

        val glm = ProviderWebCollectorScripts.build(ProviderId.GLM, cookies, "")
        assertFalse(glm.contains("cookie_secret_xyz"))
        assertFalse(glm.contains("aiquota_sensitive_cookie_name"))
        assertFalse(glm.contains("\"lastActiveOrg\":\"org_123\""))

        val claude = ProviderWebCollectorScripts.build(ProviderId.CLAUDE, cookies, "", pageUrl = "about:blank")
        assertTrue(claude.contains("\"lastActiveOrg\":\"org_123\""))
        assertFalse(claude.contains("cookie_secret_xyz"))
        assertFalse(claude.contains("aiquota_sensitive_cookie_name"))
    }

    @Test
    fun glmVisibleDomCollectorIsNoLongerRouted() {
        assertFalse(ProviderWebCollectorScripts.shouldRunCollector(ProviderId.GLM, "https://z.ai/manage-apikey/coding-plan/personal/usage", emptyMap(), "GLM Coding Plan Usage"))
        assertFalse(ProviderWebCollectorScripts.shouldRunCollector(ProviderId.GLM, "https://z.ai/manage-apikey/coding-plan/personal/my-plan", emptyMap(), "GLM Coding Plan Usage"))
        assertFalse(ProviderWebCollectorScripts.shouldAcceptCollectorPayload(ProviderId.GLM, "https://z.ai/manage-apikey/coding-plan/personal/usage"))
    }

    @Test
    fun glmLoginPageTextBlocksNativeCollectionStart() {
        assertTrue(
            ProviderWebCollectorScripts.isRefreshLoginPage(
                ProviderId.GLM,
                "https://z.ai/manage-apikey/coding-plan/personal/my-plan",
                "GLM Coding Plan Log in with Google"
            )
        )
        assertTrue(
            ProviderWebCollectorScripts.isRefreshLoginPage(
                ProviderId.GLM,
                "https://z.ai/manage-apikey/coding-plan/personal/usage",
                "로그인 후 이용해 주세요"
            )
        )
    }

    @Test
    fun glmAboutBlankCollectorDoesNotIncludeLegacyDomFallbacks() {
        val glm = ProviderWebCollectorScripts.build(ProviderId.GLM, emptyMap(), "", pageUrl = "about:blank")

        assertTrue(glm.contains("fetchNativeUsagePayload"))
        assertFalse(glm.contains("__AIQuotaGlmNetworkRows"))
        assertFalse(glm.contains("webview-network"))
        assertFalse(glm.contains("visible-dom"))
        assertFalse(glm.contains("document.documentElement"))
        assertFalse(glm.contains("document.scripts"))
        assertFalse(glm.contains("localStorage"))
        assertFalse(glm.contains("sessionStorage"))
    }

    @Test
    fun opencodeAboutBlankCollectorUsesNativeBridgeOnly() {
        val opencode = ProviderWebCollectorScripts.build(ProviderId.OPENCODE, emptyMap(), "", pageUrl = "about:blank")

        assertTrue(opencode.contains("fetchNativeUsagePayload"))
        assertTrue(opencode.contains("native-bridge"))
        assertFalse(opencode.contains("__AIQuotaOpenCodeRows"))
        assertFalse(opencode.contains("visible-dom"))
        assertFalse(opencode.contains("document.documentElement"))
        assertFalse(opencode.contains("document.scripts"))
        assertFalse(opencode.contains("localStorage"))
        assertFalse(opencode.contains("sessionStorage"))
        assertFalse(opencode.contains("XMLHttpRequest.prototype"))
        assertFalse(opencode.contains("window.fetch = function"))
    }

    @Test
    fun geminiCollectorRunsOnlyOnAboutBlankNativeBridge() {
        assertTrue(ProviderWebCollectorScripts.shouldRunCollector(ProviderId.GEMINI, "about:blank", emptyMap(), ""))
        assertFalse(ProviderWebCollectorScripts.shouldRunCollector(ProviderId.GEMINI, "https://gemini.google.com/app", emptyMap(), "Gemini"))
        assertFalse(ProviderWebCollectorScripts.shouldRunCollector(ProviderId.GEMINI, "https://gemini.google.com/usage", emptyMap(), "Gemini usage"))
        assertFalse(ProviderWebCollectorScripts.shouldRunCollectorOnResource(ProviderId.GEMINI, "https://gemini.google.com/app"))
        assertFalse(ProviderWebCollectorScripts.shouldRunCollectorOnResource(ProviderId.GEMINI, "https://gemini.google.com/usage"))

        assertFalse(ProviderWebCollectorScripts.shouldRunCollector(ProviderId.GEMINI, "https://accounts.google.com/signin", emptyMap(), ""))
        assertFalse(ProviderWebCollectorScripts.shouldAcceptCollectorPayload(ProviderId.GEMINI, "https://accounts.google.com/signin"))
        assertFalse(ProviderWebCollectorScripts.shouldAcceptCollectorPayload(ProviderId.GEMINI, "https://gemini.google.com/app"))
        assertTrue(ProviderWebCollectorScripts.shouldAcceptCollectorPayload(ProviderId.GEMINI, "about:blank"))
    }

    @Test
    fun opencodeCollectorRunsOnConsoleUsageResourcesOnly() {
        assertTrue(ProviderWebCollectorScripts.shouldRunCollectorOnResource(ProviderId.OPENCODE, "https://opencode.ai/zen/go/usage"))
        assertTrue(ProviderWebCollectorScripts.shouldRunCollectorOnResource(ProviderId.OPENCODE, "https://opencode.ai/workspace/wrk_123/go"))
        assertTrue(ProviderWebCollectorScripts.shouldRunCollectorOnResource(ProviderId.OPENCODE, "https://opencode.ai/billing/credits"))
        assertTrue(ProviderWebCollectorScripts.shouldRunCollectorOnResource(ProviderId.OPENCODE, "https://opencode.ai/_server?id=7abeebee372f304e050aaaf92be863f4a86490e382f8c79db68fd94040d691b4&args=%5B%22wrk_123%22%5D"))
        assertTrue(ProviderWebCollectorScripts.shouldAcceptCollectorPayload(ProviderId.OPENCODE, "about:blank"))

        assertFalse(ProviderWebCollectorScripts.shouldRunCollectorOnResource(ProviderId.OPENCODE, "https://opencode.ai/docs/go/"))
        assertFalse(ProviderWebCollectorScripts.shouldAcceptCollectorPayload(ProviderId.OPENCODE, "https://opencode.ai/workspace/wrk_123/go"))
        assertFalse(ProviderWebCollectorScripts.shouldAcceptCollectorPayload(ProviderId.OPENCODE, "https://opencode.ai/auth"))
        assertFalse(ProviderWebCollectorScripts.shouldAcceptCollectorPayload(ProviderId.OPENCODE, "https://opencode.ai/docs/go/"))
    }

@Test
    fun googleCollectorsDoNotDependOnOauthClientRefreshFallback() {
        val gemini = ProviderWebCollectorScripts.build(ProviderId.GEMINI, emptyMap(), "")
        val antigravity = ProviderWebCollectorScripts.build(ProviderId.ANTIGRAVITY, emptyMap(), "")

        assertFalse(gemini.contains("bridgeRequiresGoogleRelogin"))
        assertFalse(gemini.contains("OAuth login must be refreshed"))
        assertFalse(antigravity.contains("bridgeRequiresGoogleRelogin"))
        assertFalse(antigravity.contains("OAuth login must be refreshed"))
    }

    @Test
    fun claudeCollectorCanStartFromAuthenticatedSpaApiResources() {
        assertTrue(ProviderWebCollectorScripts.shouldRunCollectorOnResource(ProviderId.CLAUDE, "https://claude.ai/api/account_profile"))
        assertTrue(ProviderWebCollectorScripts.shouldRunCollectorOnResource(ProviderId.CLAUDE, "https://claude.ai/api/organizations/org_123/subscription_details?cached=true"))
        assertTrue(ProviderWebCollectorScripts.shouldRunCollectorOnResource(ProviderId.CLAUDE, "https://claude.ai/api/bootstrap/org_123/current_user_access"))

        assertFalse(ProviderWebCollectorScripts.shouldRunCollectorOnResource(ProviderId.CLAUDE, "https://claude.ai/login"))
        assertFalse(ProviderWebCollectorScripts.shouldRunCollectorOnResource(ProviderId.CLAUDE, "https://accounts.google.com/signin/v2/challenge/sms"))
    }

    @Test
    fun collectorNetworkTrustBoundaryRequiresHttpsAndExactClaudeHost() {
        assertTrue(ProviderWebCollectorScripts.shouldRunCollectorOnResource(ProviderId.CLAUDE, "https://www.claude.ai/api/organizations"))
        assertTrue(ProviderWebCollectorScripts.isRefreshLoginPage(ProviderId.CLAUDE, "https://www.claude.ai/login"))

        assertFalse(ProviderWebCollectorScripts.shouldRunCollectorOnResource(ProviderId.CLAUDE, "https://evilclaude.ai/api/organizations"))
        assertFalse(ProviderWebCollectorScripts.isRefreshLoginPage(ProviderId.CLAUDE, "https://evilclaude.ai/login"))
        assertFalse(ProviderWebCollectorScripts.shouldAcceptCollectorPayload(ProviderId.CLAUDE, "https://evilclaude.ai/new"))

        listOf(
            ProviderId.CLAUDE to "http://claude.ai/api/organizations",
            ProviderId.CODEX to "http://chatgpt.com/backend-api/wham/usage",
            ProviderId.GLM to "http://api.z.ai/api/monitor/usage/quota/limit",
            ProviderId.OPENCODE to "http://opencode.ai/billing/credits",
            ProviderId.CURSOR to "http://cursor.com/api/usage",
            ProviderId.COPILOT to "http://github.com/github-copilot/chat/entitlement",
        ).forEach { (providerId, url) ->
            assertFalse(
                "collector must reject non-HTTPS resource for ${providerId.storageId}",
                ProviderWebCollectorScripts.shouldRunCollectorOnResource(providerId, url)
            )
        }
        assertFalse(ProviderWebCollectorScripts.shouldAcceptCollectorPayload(ProviderId.CLAUDE, "http://claude.ai/new"))
    }

    @Test
    fun codexCollectorCanStartFromAuthenticatedChatGptResources() {
        assertFalse(ProviderWebCollectorScripts.shouldRunCollectorOnResource(ProviderId.CODEX, "https://chatgpt.com/backend-api/codex/api/codex/usage"))
        assertFalse(ProviderWebCollectorScripts.shouldRunCollectorOnResource(ProviderId.CODEX, "https://chatgpt.com/backend-api/api/codex/usage"))
        assertTrue(ProviderWebCollectorScripts.shouldRunCollectorOnResource(ProviderId.CODEX, "https://chatgpt.com/backend-api/wham/usage"))
        assertTrue(ProviderWebCollectorScripts.shouldRunCollectorOnResource(ProviderId.CODEX, "https://chatgpt.com/backend-api/me"))
        assertTrue(ProviderWebCollectorScripts.shouldRunCollectorOnResource(ProviderId.CODEX, "https://chatgpt.com/backend-api/accounts/check/v4-2023-04-27"))
        assertTrue(ProviderWebCollectorScripts.shouldRunCollectorOnResource(ProviderId.CODEX, "https://chatgpt.com/backend-api/subscriptions?account_id=301d47ae-f627-4ddc-b2c2-330419bdc6ba"))
        assertTrue(ProviderWebCollectorScripts.shouldRunCollectorOnResource(ProviderId.CODEX, "https://chatgpt.com/codex/cloud/settings/analytics"))

        assertFalse(ProviderWebCollectorScripts.shouldRunCollectorFromResource(ProviderId.CODEX, "https://chatgpt.com/auth/login", "https://chatgpt.com/backend-api/me"))
        assertFalse(ProviderWebCollectorScripts.shouldRunCollectorFromResource(ProviderId.CODEX, "https://chatgpt.com/", "https://chatgpt.com/backend-api/me"))
    }

    @Test
    fun cursorCollectorOnlyAcceptsResourceTriggeredCollectionOnAboutBlank() {
        assertTrue(ProviderWebCollectorScripts.shouldRunCollectorOnResource(ProviderId.CURSOR, "https://cursor.com/api/usage?user=user_123"))
        assertTrue(ProviderWebCollectorScripts.shouldRunCollectorOnResource(ProviderId.CURSOR, "https://cursor.com/api/usage-summary"))
        assertTrue(ProviderWebCollectorScripts.shouldRunCollectorFromResource(ProviderId.CURSOR, "about:blank", "https://cursor.com/api/usage?user=user_123"))
        assertFalse(ProviderWebCollectorScripts.shouldRunCollectorFromResource(ProviderId.CURSOR, "https://cursor.com/dashboard", "https://cursor.com/api/usage?user=user_123"))
        assertFalse(ProviderWebCollectorScripts.shouldRunCollectorFromResource(ProviderId.CURSOR, "https://cursor.com/login", "https://cursor.com/api/usage?user=user_123"))
    }

    @Test
    fun copilotCollectorCanStartFromBillingResources() {
        assertTrue(ProviderWebCollectorScripts.shouldRunCollectorOnResource(ProviderId.COPILOT, "https://github.com/github-copilot/chat/entitlement"))
        assertTrue(ProviderWebCollectorScripts.shouldRunCollectorOnResource(ProviderId.COPILOT, "https://github.com/github-copilot/chat/token"))
        assertFalse(ProviderWebCollectorScripts.shouldRunCollectorOnResource(ProviderId.COPILOT, "https://github.com/settings/billing/premium_requests_usage"))
        assertFalse(ProviderWebCollectorScripts.shouldRunCollectorOnResource(ProviderId.COPILOT, "https://github.com/settings/billing/copilot_usage_card?customer_id=abc123&period=3&query="))
        assertTrue(ProviderWebCollectorScripts.shouldRunCollectorOnResource(ProviderId.COPILOT, "https://github.com/copilot_internal/user"))
        assertTrue(
            ProviderWebCollectorScripts.shouldRunCollectorFromResource(
                ProviderId.COPILOT,
                "about:blank",
                "https://github.com/github-copilot/chat/entitlement"
            )
        )
        assertFalse(
            ProviderWebCollectorScripts.shouldRunCollectorFromResource(
                ProviderId.COPILOT,
                "https://github.com/settings/billing/premium_requests_usage",
                "https://github.com/settings/billing/copilot_usage_card?customer_id=abc123&period=3&query="
            )
        )
        assertFalse(
            ProviderWebCollectorScripts.shouldRunCollectorFromResource(
                ProviderId.COPILOT,
                "https://github.com/login",
                "https://github.com/settings/billing/premium_requests_usage"
            )
        )
    }

    @Test
    fun claudeResourceTriggerDoesNotStartCollectorWhileMainPageIsLogin() {
        assertFalse(
            ProviderWebCollectorScripts.shouldRunCollectorFromResource(
                ProviderId.CLAUDE,
                "https://claude.ai/login",
                "https://claude.ai/api/bootstrap/org_123/current_user_access"
            )
        )
        assertFalse(
            ProviderWebCollectorScripts.shouldRunCollectorFromResource(
                ProviderId.CLAUDE,
                "https://claude.ai/new",
                "https://claude.ai/api/bootstrap/org_123/current_user_access"
            )
        )
    }

    @Test
    fun claudeCollectorPayloadIsIgnoredOnLoginOrGooglePages() {
        assertFalse(ProviderWebCollectorScripts.shouldAcceptCollectorPayload(ProviderId.CLAUDE, "https://claude.ai/login"))
        assertFalse(ProviderWebCollectorScripts.shouldAcceptCollectorPayload(ProviderId.CLAUDE, "https://accounts.google.com/signin/v2/challenge/sms"))
        assertFalse(ProviderWebCollectorScripts.shouldAcceptCollectorPayload(ProviderId.CLAUDE, "https://claude.ai/new"))
    }

    @Test
    fun collectorBridgePayloadsAndErrorsAreAcceptedOnlyFromTrustedProviderPages() {
        assertFalse(ProviderWebCollectorScripts.shouldAcceptCollectorPayload(ProviderId.CODEX, "https://chatgpt.com/", """{"provider":"codex"}"""))
        assertFalse(ProviderWebCollectorScripts.shouldAcceptCollectorPayload(ProviderId.CODEX, "https://chatgpt.com/", """{"provider":"claude"}"""))
        assertFalse(ProviderWebCollectorScripts.shouldAcceptCollectorPayload(ProviderId.CODEX, "https://example.com/", """{"provider":"codex"}"""))
        assertTrue(ProviderWebCollectorScripts.shouldAcceptCollectorError(ProviderId.CODEX, "https://chatgpt.com/", """{"provider":"codex","errorKind":"codex_auth_required"}"""))
        assertTrue(ProviderWebCollectorScripts.shouldAcceptCollectorError(ProviderId.CODEX, "https://chatgpt.com/", """{"provider":"codex","errorKind":"codex_usage_unavailable"}"""))
        assertFalse(ProviderWebCollectorScripts.shouldAcceptCollectorError(ProviderId.CODEX, "https://chatgpt.com/", """{"provider":"claude","errorKind":"codex_usage_unavailable"}"""))
        assertFalse(ProviderWebCollectorScripts.shouldAcceptCollectorError(ProviderId.CODEX, "https://chatgpt.com/", """{"provider":"codex","errorKind":"collector_error"}"""))

        assertFalse(ProviderWebCollectorScripts.shouldAcceptCollectorError(ProviderId.CLAUDE, "https://claude.ai/new"))
        assertTrue(ProviderWebCollectorScripts.shouldAcceptCollectorError(ProviderId.CLAUDE, "https://claude.ai/login"))
        assertFalse(ProviderWebCollectorScripts.shouldAcceptCollectorError(ProviderId.CLAUDE, "https://example.com/login"))
    }

@Test
    fun cursorCollectorPostsNativeBridgePayloadOnAboutBlank() {
        val node = nodeCommandOrNull()
        assumeTrue("node is required for injected Cursor runtime checks", node != null)

        val cursor = ProviderWebCollectorScripts.build(ProviderId.CURSOR, emptyMap(), "", pageUrl = "about:blank")
        val path = Files.createTempFile("ai-quota-cursor-runtime", ".js")
        val runtime = """
            const posted = [];
            const errors = [];
            const timers = [];
            global.window = global;
            global.location = { pathname: "", href: "about:blank" };
            global.document = {
              title: "Cursor",
              documentElement: { innerText: "" },
              scripts: [],
              querySelector: () => null,
              getElementById: () => null
            };
            const nativePayload = {
              ok: true,
              payload: {
                provider: "cursor",
                membershipType: "Pro",
                billingCycleEnd: 1781677951075,
                planUsage: {
                  totalPercentUsed: 6,
                  autoPercentUsed: 3,
                  apiPercentUsed: 1,
                  resetAt: 1781677951075,
                  breakdown: {
                    onDemand: { remaining: 19, limit: 20 }
                  }
                },
                requestUsage: {
                  premium: { numRequests: 12, maxRequestUsage: 100 }
                }
              }
            };
            class StorageMock {
              constructor(values) { this.values = values || {}; this.keys = Object.keys(this.values); this.length = this.keys.length; }
              key(index) { return this.keys[index] || null; }
              getItem(key) { return this.values[key] || ""; }
            }
            global.localStorage = new StorageMock({});
            global.sessionStorage = new StorageMock({});
            global.AIQuotaCollectorBridge = {
              postUsagePayload: (value) => posted.push(JSON.parse(value)),
              postCollectorError: (value) => errors.push(JSON.parse(value)),
              fetchProviderUsagePayload: () => JSON.stringify(nativePayload)
            };
            global.fetch = async function() {
              return {
                ok: false,
                status: 404,
                clone() { return { text: async () => "{}" }; },
                text: async () => "{}"
              };
            };
            global.XMLHttpRequest = function() {};
            global.XMLHttpRequest.prototype = {
              open() {},
              send() {},
              addEventListener() {}
            };
            global.setTimeout = function(fn) {
              timers.push(fn);
              return timers.length;
            };
            global.clearTimeout = function() {};
            $cursor
            (async function() {
              for (let i = 0; i < 14 && posted.length === 0 && errors.length === 0; i += 1) {
                while (timers.length > 0) timers.shift()();
                await Promise.resolve();
                await new Promise((resolve) => setImmediate(resolve));
              }
              if (posted.length === 0) {
                console.error(JSON.stringify({ posted, errors }));
                process.exit(1);
              }
              const payload = posted[0];
              if (payload.collectorMode !== "native-bridge") {
                console.error(JSON.stringify(payload));
                process.exit(1);
              }
              if (payload.membershipType !== "Pro") {
                console.error(JSON.stringify(payload));
                process.exit(1);
              }
              if (!payload.planUsage || payload.planUsage.totalPercentUsed !== 6) {
                console.error(JSON.stringify(payload));
                process.exit(1);
              }
              if (payload.planUsage.autoPercentUsed !== 3 || payload.planUsage.apiPercentUsed !== 1) {
                console.error(JSON.stringify(payload.planUsage));
                process.exit(1);
              }
              if (!payload.planUsage.breakdown || !payload.planUsage.breakdown.onDemand) {
                console.error(JSON.stringify(payload.planUsage));
                process.exit(1);
              }
              const requestBuckets = payload.requestUsage ? Object.values(payload.requestUsage) : [];
              if (!requestBuckets.some((bucket) => bucket && bucket.numRequests === 12 && bucket.maxRequestUsage === 100)) {
                console.error(JSON.stringify(payload));
                process.exit(1);
              }
            })();
        """.trimIndent()
        try {
            Files.write(path, runtime.toByteArray(StandardCharsets.UTF_8))
            val process = ProcessBuilder(node!!, path.toString()).redirectErrorStream(true).start()
            val output = process.inputStream.bufferedReader(StandardCharsets.UTF_8).use { it.readText() }
            assertTrue("Cursor native bridge payload was not posted:\n$output", process.waitFor() == 0)
        } finally {
            Files.deleteIfExists(path)
        }
    }

@Test
    fun latePayloadFromPreviousProviderIsIgnoredByCurrentRefreshJob() {
        val claudePayload = """{"provider":"claude","lines":[{"label":"Claude Session","remainingPercent":0.6}]}"""
        val codexPayload = """{"provider":"codex","lines":[{"label":"Codex Session","remainingPercent":0.5}]}"""

        assertFalse(
            ProviderWebCollectorScripts.shouldAcceptCollectorPayload(
                ProviderId.CODEX,
                "https://chatgpt.com/",
                claudePayload
            )
        )
        assertFalse(
            ProviderWebCollectorScripts.shouldAcceptCollectorPayload(
                ProviderId.CODEX,
                "https://chatgpt.com/",
                codexPayload
            )
        )
    }

@Test
    fun codexAboutBlankCollectorUsesOnlyNativeUsagePayloadBridge() {
        val codex = ProviderWebCollectorScripts.build(
            providerId = ProviderId.CODEX,
            cookies = emptyMap(),
            geminiCollectorAsset = "",
            pageUrl = "about:blank"
        )

        assertTrue(codex.contains("c.fetchNativeUsagePayload()"))
        assertFalse(codex.contains("c.fetchJson(\"https://chatgpt.com/backend-api/wham/usage\")"))
        assertFalse(codex.contains("c.fetchJson(\"https://chatgpt.com/codex/cloud/settings/analytics\")"))
        assertFalse(codex.contains("parseCodexFetchedPayload"))
    }

@Test
    fun codexInteractiveLoginCollectorWaitsForTrustedUsagePayloadBeforeReturning() {
        val codex = ProviderWebCollectorScripts.build(
            providerId = ProviderId.CODEX,
            cookies = emptyMap(),
            geminiCollectorAsset = "",
            pageUrl = "about:blank",
            awaitInteractiveLoginUsage = true
        )

        assertTrue(codex.contains("awaitInteractiveLoginUsage: true"))
        assertTrue(codex.contains("__AIQuotaStartProviderCollector(\"codex\", true)"))
        assertTrue(codex.contains("fetchNativeUsagePayload"))
        assertTrue(codex.contains("codex_usage_unavailable"))
        assertFalse(codex.contains("continueCodexInteractiveLoginUntilUsagePayload"))
        assertFalse(codex.contains("AIQuotaCodex awaiting usage payload"))
    }

@Test
    fun cursorCollectorAcceptsRemainingFractionAliasAtResetBoundary() {
        val node = nodeCommandOrNull()
        assumeTrue("node is required for injected Cursor runtime checks", node != null)

        val cursor = ProviderWebCollectorScripts.build(ProviderId.CURSOR, emptyMap(), "", pageUrl = "about:blank")
        val path = Files.createTempFile("ai-quota-cursor-remaining-fraction-runtime", ".js")
        val runtime = """
            const posted = [];
            const timers = [];
            global.window = global;
            global.location = { pathname: "", href: "about:blank" };
            global.document = {
              title: "Cursor",
              documentElement: { innerText: "" },
              scripts: [],
              querySelector: () => null,
              getElementById: () => null
            };
            const nativePayload = {
              ok: true,
              payload: {
                provider: "cursor",
                membershipType: "Pro",
                planUsage: { remaining_fraction: 1 }
              }
            };
            class StorageMock {
              constructor(values) { this.values = values || {}; this.keys = Object.keys(this.values); this.length = this.keys.length; }
              key(index) { return this.keys[index] || null; }
              getItem(key) { return this.values[key] || ""; }
            }
            global.localStorage = new StorageMock({});
            global.sessionStorage = new StorageMock({});
            global.AIQuotaCollectorBridge = {
              postUsagePayload: (value) => posted.push(JSON.parse(value)),
              postCollectorError: () => {},
              fetchProviderUsagePayload: () => JSON.stringify(nativePayload)
            };
            global.fetch = async function() {
              return {
                ok: false,
                status: 404,
                clone() { return { text: async () => "{}" }; },
                text: async () => "{}",
                json: async () => ({})
              };
            };
            global.XMLHttpRequest = function() {};
            global.XMLHttpRequest.prototype = {
              open() {},
              send() {},
              addEventListener() {}
            };
            global.setTimeout = function(fn) {
              timers.push(fn);
              return timers.length;
            };
            global.clearTimeout = function() {};
            $cursor
            (async function() {
              for (let i = 0; i < 14 && posted.length === 0; i += 1) {
                while (timers.length > 0) timers.shift()();
                await Promise.resolve();
                await new Promise((resolve) => setImmediate(resolve));
              }
              if (posted.length === 0) {
                console.error(JSON.stringify({ posted }));
                process.exit(1);
              }
              if (!posted[0].planUsage || posted[0].planUsage.remaining_fraction !== 1) {
                console.error(JSON.stringify(posted[0]));
                process.exit(1);
              }
            })();
        """.trimIndent()
        try {
            Files.write(path, runtime.toByteArray(StandardCharsets.UTF_8))
            val process = ProcessBuilder(node!!, path.toString()).redirectErrorStream(true).start()
            val output = process.inputStream.bufferedReader(StandardCharsets.UTF_8).use { it.readText() }
            assertTrue("Cursor remaining fraction alias was not accepted:\n$output", process.waitFor() == 0)
        } finally {
            Files.deleteIfExists(path)
        }
    }

    @Test
    fun collectorScriptsAreValidJavaScriptForRuntimeInjection() {
        val node = nodeCommandOrNull()
        assumeTrue("node is required for injected JavaScript syntax checks", node != null)

        val scripts = mapOf(
            "claude" to ProviderWebCollectorScripts.build(
                ProviderId.CLAUDE,
                mapOf("lastActiveOrg" to "org_123"),
                "",
                pageUrl = "about:blank"
            ),
            "codex" to ProviderWebCollectorScripts.build(ProviderId.CODEX, emptyMap(), "", pageUrl = "about:blank"),
            "glm" to ProviderWebCollectorScripts.build(ProviderId.GLM, emptyMap(), "", pageUrl = "about:blank"),
            "opencode" to ProviderWebCollectorScripts.build(ProviderId.OPENCODE, emptyMap(), "", pageUrl = "about:blank"),
            "gemini" to ProviderWebCollectorScripts.build(
                ProviderId.GEMINI,
                emptyMap(),
                "",
                pageUrl = "about:blank"
            ),
            "copilot" to ProviderWebCollectorScripts.build(ProviderId.COPILOT, emptyMap(), "", pageUrl = "about:blank"),
            "cursor" to ProviderWebCollectorScripts.build(ProviderId.CURSOR, emptyMap(), "", pageUrl = "about:blank")
        )

        scripts.forEach { (provider, script) ->
            assertValidJavaScript(node!!, provider, script)
        }
    }

    private fun nodeCommandOrNull(): String? {
        return runCatching {
            val process = ProcessBuilder("node", "--version").redirectErrorStream(true).start()
            if (process.waitFor() == 0) "node" else null
        }.getOrNull()
    }

private fun assertValidJavaScript(node: String, provider: String, script: String) {
        val path = Files.createTempFile("ai-quota-$provider-collector", ".js")
        try {
            Files.write(path, script.toByteArray(StandardCharsets.UTF_8))
            val process = ProcessBuilder(node, "--check", path.toString()).redirectErrorStream(true).start()
            val output = process.inputStream.bufferedReader(StandardCharsets.UTF_8).use { it.readText() }
            assertTrue("$provider collector JS is invalid:\n$output", process.waitFor() == 0)
        } finally {
            Files.deleteIfExists(path)
        }
    }
}
