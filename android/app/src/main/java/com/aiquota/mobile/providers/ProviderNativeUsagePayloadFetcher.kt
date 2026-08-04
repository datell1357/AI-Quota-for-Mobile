package com.aiquota.mobile.providers

import android.util.Log
import com.aiquota.mobile.local.ProviderId
import java.net.URLEncoder
import java.nio.charset.StandardCharsets
import java.util.Locale
import org.json.JSONArray
import org.json.JSONObject
import org.json.JSONTokener

internal typealias NativeJsonFetcher = (ProviderId, String, String, Map<String, String>) -> String
internal typealias CursorJsonFetcher = (String, String?) -> String

internal typealias GrokJsonFetcher = (String, String?) -> String

internal typealias KimiJsonFetcher = (String, String?) -> String

internal typealias KiroJsonFetcher = (String, String?) -> String

object ProviderNativeUsagePayloadFetcher {
    fun bridgeUsagePayload(
        providerId: ProviderId,
        userAgent: String = ProviderWebViewUserAgent.loginUserAgent(),
        cookieHeaderForUrl: (String) -> String? = { null },
        bridgePageUrl: String? = null,
        geminiRpcIds: List<String> = emptyList(),
        requestHeadersForUrl: (String) -> Map<String, String> = { emptyMap() }
    ): String {
        return bridgeUsagePayload(providerId, userAgent, requestHeadersForUrl, cookieHeaderForUrl, bridgePageUrl, geminiRpcIds, ProviderNativeJsonBridge::fetchJson)
    }

    internal fun codexUsagePayloadForTest(
        userAgent: String,
        requestHeadersForUrl: (String) -> Map<String, String>,
        fetchJson: NativeJsonFetcher
    ): String? {
        return fetchCodexPayload(userAgent, requestHeadersForUrl, fetchJson).payload
    }

    private fun bridgeUsagePayload(
        providerId: ProviderId,
        userAgent: String,
        requestHeadersForUrl: (String) -> Map<String, String>,
        cookieHeaderForUrl: (String) -> String?,
        bridgePageUrl: String?,
        geminiRpcIds: List<String>,
        fetchJson: NativeJsonFetcher
    ): String {
        if (!ProviderAboutBlankCollectorPolicy.isEnabled(providerId)) {
            return bridgeError(providerId, "provider_not_allowlisted")
        }
        val startedNanos = System.nanoTime()
        val result = when (providerId) {
            ProviderId.CLAUDE -> fetchClaudePayload(userAgent, requestHeadersForUrl, fetchJson)
            ProviderId.CODEX -> fetchCodexPayload(userAgent, requestHeadersForUrl, fetchJson)
            ProviderId.GEMINI -> {
                val usagePageUrl = GeminiUsagePageRoutes.canonicalUsageUrl(bridgePageUrl.orEmpty())
                    ?: GEMINI_USAGE_PAGE_URL
                fetchGeminiPayload(userAgent, cookieHeaderForUrl(usagePageUrl), usagePageUrl, geminiRpcIds)
            }
            ProviderId.GLM -> fetchGlmPayload(cookieHeaderForUrl, requestHeadersForUrl)
            ProviderId.OPENCODE -> fetchOpenCodePayload(userAgent, bridgePageUrl, fetchJson)
            ProviderId.CURSOR -> fetchCursorPayload()
            ProviderId.GROK -> fetchGrokPayload()
            ProviderId.KIMI -> fetchKimiPayload()
            ProviderId.KIRO -> fetchKiroPayload()
            ProviderId.COPILOT -> NativePayloadResult(
                payload = CopilotNativeUsageFetcher.fetchUsagePayload(),
                diagnostic = "copilot_usage_unavailable"
            )
            else -> NativePayloadResult(payload = null, diagnostic = "provider_mismatch")
        }
        return bridgeResult(providerId, result, elapsedMillisSince(startedNanos))
    }

    fun bridgeCodexFetchedPayload(rawText: String, plan: String?, accountId: String?, account: String?): String {
        val payload = codexFetchedPayload(rawText, plan, accountId, account)
            ?: return bridgeResult(
                ProviderId.CODEX,
                NativePayloadResult(null, "codex_usage_unavailable")
            )
        return bridgeResult(
            ProviderId.CODEX,
            verifiedPayload(ProviderId.CODEX, payload, "codex_usage_unavailable", emptyList())
        )
    }

    internal fun codexFetchedPayloadForTest(rawText: String, plan: String?, accountId: String?, account: String?): JSONObject? {
        return codexFetchedPayload(rawText, plan, accountId, account)
    }

    internal fun openCodeUsagePayloadForTest(
        userAgent: String,
        bridgePageUrl: String?,
        fetchJson: NativeJsonFetcher
    ): String? {
        return fetchOpenCodePayload(userAgent, bridgePageUrl, fetchJson).payload
    }

    internal fun cursorUsagePayloadForTest(fetchJson: CursorJsonFetcher): String? {
        return fetchCursorPayload(fetchJson).payload
    }

    internal fun grokUsagePayloadForTest(fetchJson: GrokJsonFetcher): String? {
        return fetchGrokPayload(fetchJson).payload
    }

    internal fun kimiUsagePayloadForTest(fetchJson: KimiJsonFetcher): String? {
        return fetchKimiPayload(fetchJson).payload
    }

    internal fun kiroUsagePayloadForTest(fetchJson: KiroJsonFetcher): String? {
        return fetchKiroPayload(fetchJson).payload
    }

    internal fun kiroDiagnosticForTest(fetchJson: KiroJsonFetcher): String? {
        return fetchKiroPayload(fetchJson).diagnostic
    }

    private fun codexFetchedPayload(rawText: String, plan: String?, accountId: String?, account: String?): JSONObject? {
        val parsed = runCatching { JSONTokener(rawText).nextValue() }.getOrNull()
        val usage = codexUsageFromValue(parsed)
            ?: return null
        val payload = JSONObject()
            .put("provider", ProviderId.CODEX.storageId)
            .put("usage", usage)
        accountId?.takeIf { it.isNotBlank() }?.let { payload.put("accountId", it) }
        account?.takeIf { it.isNotBlank() }?.let { payload.put("account", it) }
        plan?.takeIf { it.isNotBlank() }?.let { payload.put("plan", it) }
        return payload
    }

    private fun fetchClaudePayload(
        userAgent: String,
        requestHeadersForUrl: (String) -> Map<String, String>,
        fetchJson: NativeJsonFetcher
    ): NativePayloadResult {
        val statuses = mutableListOf<String>()
        val organizations = fetchWrapped(
            ProviderId.CLAUDE,
            CLAUDE_ORGANIZATIONS_URL,
            statuses,
            userAgent,
            requestHeadersForUrl(CLAUDE_ORGANIZATIONS_URL),
            fetchJson
        )
        val accountProfile = fetchWrapped(
            ProviderId.CLAUDE,
            CLAUDE_ACCOUNT_PROFILE_URL,
            statuses,
            userAgent,
            requestHeadersForUrl(CLAUDE_ACCOUNT_PROFILE_URL),
            fetchJson
        )
        val orgId = claudeOrgId(organizations.jsonValue())
            ?: fetchWrapped(
                ProviderId.CLAUDE,
                CLAUDE_ORGANIZATIONS_ME_URL,
                statuses,
                userAgent,
                requestHeadersForUrl(CLAUDE_ORGANIZATIONS_ME_URL),
                fetchJson
            )
                .let { claudeOrgId(it.jsonValue()) }
            ?: claudeOrgId(accountProfile.jsonValue())
            ?: return NativePayloadResult(null, "claude_organization_unavailable", statuses)
        val encodedOrgId = encodePath(orgId)
        val subscriptionUrl = "https://claude.ai/api/organizations/$encodedOrgId/subscription_details"
        val subscription = fetchWrapped(
            ProviderId.CLAUDE,
            subscriptionUrl,
            statuses,
            userAgent,
            requestHeadersForUrl(subscriptionUrl),
            fetchJson
        )
        val usageUrl = "https://claude.ai/api/organizations/$encodedOrgId/usage"
        val usage = fetchWrapped(
            ProviderId.CLAUDE,
            usageUrl,
            statuses,
            userAgent,
            requestHeadersForUrl(usageUrl),
            fetchJson
        )
        val usageJson = usage.jsonObject() ?: return NativePayloadResult(null, "claude_usage_unavailable", statuses)
        val usagePayload = usageJson.optJSONObject("usage") ?: usageJson
        val payload = JSONObject()
            .put("provider", ProviderId.CLAUDE.storageId)
            .put("organizationId", orgId)
            .put("usage", usagePayload)
        findFirstString(accountProfile.jsonValue(), EMAIL_KEYS)?.let { payload.put("account", it) }
        val subscriptionSource = subscription.jsonValue()
        ProviderPlanProvenanceDiagnostics.logClaudeSubscriptionDetailsDebug(
            source = subscriptionSource,
            httpStatus = subscription.optInt("status", -1),
            byteCount = subscription.toString().toByteArray(StandardCharsets.UTF_8).size
        )
        val plan = claudePlan(subscriptionSource)
        ProviderPlanProvenanceDiagnostics.log(
            ProviderPlanProvenanceDiagnostics.Record(
                provider = "claude",
                endpointLabel = "claude_subscription_details",
                httpStatus = subscription.optInt("status", -1),
                keyPath = "${'$'}.subscription_details",
                jsonType = ProviderPlanProvenanceDiagnostics.jsonType(subscriptionSource),
                present = subscriptionSource != null && subscriptionSource != JSONObject.NULL,
                planPresent = plan != null,
                accountPresent = payload.has("account"),
                byteCount = subscription.toString().toByteArray(StandardCharsets.UTF_8).size,
                endpointCount = statuses.size,
                requestCountDelta = 0,
                transformTarget = "T3_CLAUDE_OBSERVED_CANDIDATE",
                fallbackPolicy = "PRESERVE_USAGE_WITHOUT_PLAN",
                protectedFlow = "ProviderNativeUsagePayloadFetcher.fetchClaudePayload",
                keyCount = ProviderPlanProvenanceDiagnostics.keyCount(subscriptionSource),
                itemCount = ProviderPlanProvenanceDiagnostics.itemCount(subscriptionSource)
            )
        )
        plan?.let { payload.put("plan", it) }
        return verifiedPayload(ProviderId.CLAUDE, payload, "claude_usage_unavailable", statuses)
    }

    private fun fetchCodexPayload(
        userAgent: String,
        requestHeadersForUrl: (String) -> Map<String, String>,
        fetchJson: NativeJsonFetcher
    ): NativePayloadResult {
        val statuses = mutableListOf<String>()
        val session = fetchWrapped(ProviderId.CODEX, CODEX_SESSION_URL, statuses, userAgent, requestHeadersForUrl(CODEX_SESSION_URL), fetchJson)
        val me = fetchWrapped(ProviderId.CODEX, CODEX_ME_URL, statuses, userAgent, requestHeadersForUrl(CODEX_ME_URL), fetchJson)
        val accountCheck = fetchWrapped(ProviderId.CODEX, CODEX_ACCOUNT_CHECK_URL, statuses, userAgent, requestHeadersForUrl(CODEX_ACCOUNT_CHECK_URL), fetchJson)
        val accountId = findFirstString(me.jsonValue(), CODEX_ACCOUNT_ID_KEYS)
            ?: findFirstString(accountCheck.jsonValue(), CODEX_ACCOUNT_ID_KEYS)
            ?: findFirstString(session.jsonValue(), CODEX_ACCOUNT_ID_KEYS)
        val subscriptionsUrl = accountId?.let { "$CODEX_SUBSCRIPTIONS_URL?account_id=${encodeQuery(it)}" } ?: CODEX_SUBSCRIPTIONS_URL
        // subscriptions는 plan 라벨만 공급한다. accounts/check·me에서 plan이 나오면 호출할 이유가 없고,
        // 계정 엔드포인트가 전부 차단된 사이클에서는 이 호출도 차단되어 얻을 게 없다. 실측상 차단 시
        // 이 엔드포인트만 약 11KB짜리 HTML 차단 페이지를 돌려주므로 건너뛰는 편이 데이터·배터리에 낫다.
        val planFromAccountEndpoints = findFirstString(accountCheck.jsonValue(), PLAN_KEYS)
            ?: findFirstString(me.jsonValue(), PLAN_KEYS)
        val accountEndpointsBlocked = listOf(session, me, accountCheck)
            .none { it.optInt("status", -1) in 200..299 }
        val subscriptions = if (planFromAccountEndpoints == null && !accountEndpointsBlocked) {
            fetchWrapped(
                ProviderId.CODEX,
                subscriptionsUrl,
                statuses,
                userAgent,
                requestHeadersForUrl(subscriptionsUrl),
                fetchJson
            )
        } else {
            statuses += "${urlStatusLabel(subscriptionsUrl)}:skipped:"
            JSONObject()
        }
        val whamUsage = fetchWrapped(
            ProviderId.CODEX,
            CODEX_WHAM_USAGE_URL,
            statuses,
            userAgent,
            requestHeadersForUrl(CODEX_WHAM_USAGE_URL),
            fetchJson
        )
        val usage = codexUsageFromValue(whamUsage.jsonValue())
            ?: return NativePayloadResult(null, "codex_usage_unavailable", statuses)
        val payload = JSONObject()
            .put("provider", ProviderId.CODEX.storageId)
            .put("usage", usage)
        accountId?.let { payload.put("accountId", it) }
        val accountEmail = findFirstString(me.jsonValue(), EMAIL_KEYS)
            ?: findFirstString(session.jsonValue(), EMAIL_KEYS)
            ?: findFirstString(accountCheck.jsonValue(), EMAIL_KEYS)
        accountEmail?.let { payload.put("account", it) }
        val plan = findFirstString(subscriptions.jsonValue(), PLAN_KEYS)
            ?: planFromAccountEndpoints
        listOf(
            "codex_subscriptions" to subscriptions,
            "codex_wham_usage" to whamUsage
        ).forEach { (endpointLabel, wrapped) ->
            val source = wrapped.jsonValue()
            ProviderPlanProvenanceDiagnostics.log(
                ProviderPlanProvenanceDiagnostics.Record(
                    provider = "codex",
                    endpointLabel = endpointLabel,
                    httpStatus = wrapped.optInt("status", -1),
                    keyPath = "${'$'}.$endpointLabel",
                    jsonType = ProviderPlanProvenanceDiagnostics.jsonType(source),
                    present = source != null && source != JSONObject.NULL,
                    planPresent = plan != null,
                    accountPresent = accountEmail != null || accountId != null,
                    byteCount = wrapped.toString().toByteArray(StandardCharsets.UTF_8).size,
                    endpointCount = statuses.size,
                    requestCountDelta = 0,
                    transformTarget = "T4_CODEX_OBSERVED_SOURCE",
                    fallbackPolicy = "PRESERVE_USAGE_WITHOUT_PLAN",
                    protectedFlow = "ProviderNativeUsagePayloadFetcher.fetchCodexPayload",
                    keyCount = ProviderPlanProvenanceDiagnostics.keyCount(source),
                    itemCount = ProviderPlanProvenanceDiagnostics.itemCount(source)
                )
            )
        }
        plan?.let { payload.put("plan", it) }
        return verifiedPayload(ProviderId.CODEX, payload, "codex_usage_unavailable", statuses)
    }

    private fun fetchGeminiPayload(
        userAgent: String,
        cookieHeader: String?,
        usagePageUrl: String,
        observedRpcIds: List<String>
    ): NativePayloadResult {
        val result = GeminiUsagePageNativeFetcher.fetchUsagePayload(userAgent, cookieHeader, usagePageUrl, observedRpcIds)
        val payload = result.payload
            ?: return NativePayloadResult(
                payload = null,
                diagnostic = result.diagnostic,
                statuses = result.statuses
            )
        val json = runCatching { JSONObject(payload) }
            .getOrElse {
                return NativePayloadResult(null, "gemini_usage_invalid", result.statuses)
            }
        return verifiedPayload(ProviderId.GEMINI, json, "gemini_usage_unavailable", result.statuses)
    }

    private fun fetchGlmPayload(
        cookieHeaderForUrl: (String) -> String?,
        requestHeadersForUrl: (String) -> Map<String, String>
    ): NativePayloadResult {
        val cookieHeader = GoogleWebSessionCodeAssistFetcher.mergeCookieHeaders(
            GlmProviderUrls.WEB_COOKIE_URLS.map { url ->
                runCatching { cookieHeaderForUrl(url) }.getOrNull()
            }
        )
        val result = GlmUsageFetcher.fetchUsagePayloadWithCookie(
            cookieHeader,
            requestHeaders = requestHeadersForUrl(GlmProviderUrls.API_QUOTA_URL)
        )
        val payload = result.payload
            ?: return NativePayloadResult(null, result.diagnostic)
        val json = runCatching { JSONObject(payload) }
            .getOrElse {
                return NativePayloadResult(null, "glm_usage_invalid")
            }
        return verifiedPayload(ProviderId.GLM, json, "glm_usage_unavailable", emptyList())
    }

    private fun fetchOpenCodePayload(
        userAgent: String,
        bridgePageUrl: String?,
        fetchJson: NativeJsonFetcher
    ): NativePayloadResult {
        val statuses = mutableListOf<String>()
        val targetUrl = openCodeNativeUsageUrl(bridgePageUrl)
        val response = fetchWrapped(ProviderId.OPENCODE, targetUrl, statuses, userAgent, emptyMap(), fetchJson)
        val rawText = response.rawText()
        val payload = openCodePayloadFromValue(response.jsonValue())
            ?: rawText?.let(::openCodePayloadFromText)
            ?: fetchOpenCodeServerSubscriptionPayload(userAgent, targetUrl, statuses, fetchJson)
            ?: return NativePayloadResult(
                null,
                "opencode_usage_unavailable",
                rawText?.let { statuses + openCodeTextMetadata(it) } ?: statuses
            )
        return verifiedPayload(ProviderId.OPENCODE, payload, "opencode_usage_unavailable", statuses)
    }

    private fun fetchCursorPayload(
        fetchJson: CursorJsonFetcher = CursorNativeUsageFetcher::fetchJson
    ): NativePayloadResult {
        val statuses = mutableListOf<String>()
        val payload = JSONObject().put("provider", ProviderId.CURSOR.storageId)
        CURSOR_NATIVE_PROBES.forEach { probe ->
            val response = fetchCursorWrapped(probe.url, probe.body, statuses, fetchJson)
            if (response.optBoolean("ok", false)) {
                gatherCursorUsageData(response.jsonValue(), payload, 0)
                val verified = verifiedPayload(ProviderId.CURSOR, payload, "cursor_usage_unavailable", statuses)
                if (verified.payload != null) return verified
            }
        }
        return verifiedPayload(ProviderId.CURSOR, payload, "cursor_usage_unavailable", statuses)
    }

    private fun fetchCursorWrapped(
        url: String,
        body: String?,
        statuses: MutableList<String>,
        fetchJson: CursorJsonFetcher
    ): JSONObject {
        val wrapped = runCatching { JSONObject(fetchJson(url, body)) }
            .getOrElse { JSONObject().put("ok", false).put("url", url).put("error", it.javaClass.simpleName) }
        statuses += "${urlStatusLabel(url)}:${wrapped.optInt("status", -1)}:${wrapped.optString("error")}"
        return wrapped
    }

    private fun gatherCursorUsageData(value: Any?, payload: JSONObject, depth: Int) {
        if (depth > MAX_JSON_DEPTH || value == null || value == JSONObject.NULL) return
        when (value) {
            is JSONObject -> {
                rememberCursorPlan(value, payload)
                value.opt("billingCycleStart")?.takeIf { it != JSONObject.NULL && !payload.has("billingCycleStart") }
                    ?.let { payload.put("billingCycleStart", it) }
                value.opt("billingCycleEnd")?.takeIf { it != JSONObject.NULL && !payload.has("billingCycleEnd") }
                    ?.let { payload.put("billingCycleEnd", it) }
                value.optJSONObject("planUsage")?.let { planUsage ->
                    if (!payload.has("planUsage")) {
                        cursorCopyUsage(planUsage)?.let { payload.put("planUsage", it) }
                    }
                }
                value.optJSONObject("individualUsage")?.let { individualUsage ->
                    if (!payload.has("individualUsage")) {
                        payload.put("individualUsage", JSONObject(individualUsage.toString()))
                    }
                }
                if (!payload.has("planUsage") && cursorHasPlanUsageMetric(value)) {
                    cursorCopyUsage(value)?.let { payload.put("planUsage", it) }
                }
                cursorCopyRequestBucket(value)?.let { bucket ->
                    val requestUsage = payload.optJSONObject("requestUsage") ?: JSONObject().also {
                        payload.put("requestUsage", it)
                    }
                    requestUsage.put("bucket_${requestUsage.length()}", bucket)
                }
                val keys = value.keys()
                while (keys.hasNext()) {
                    gatherCursorUsageData(value.opt(keys.next()), payload, depth + 1)
                }
            }
            is JSONArray -> {
                for (index in 0 until value.length()) {
                    gatherCursorUsageData(value.opt(index), payload, depth + 1)
                }
            }
        }
    }

    private fun rememberCursorPlan(source: JSONObject, payload: JSONObject) {
        cursorFirst(source, CURSOR_PLAN_KEYS)?.let { plan ->
            if (!payload.has("membershipType")) payload.put("membershipType", plan)
        }
        cursorFirst(source, CURSOR_ACCOUNT_KEYS)?.let { account ->
            if (!payload.has("email")) payload.put("email", account)
        }
    }

    private fun cursorCopyUsage(source: JSONObject): JSONObject? {
        val output = JSONObject()
        CURSOR_USAGE_KEYS.forEach { key ->
            source.opt(key)?.takeIf { it != JSONObject.NULL }?.let { value ->
                output.put(key, value)
            }
        }
        return output.takeIf { it.length() > 0 }
    }

    private fun cursorCopyRequestBucket(source: JSONObject): JSONObject? {
        val used = cursorFirstNumber(
            source,
            listOf("numRequests", "numRequestsTotal", "requestUsage", "currentRequestUsage", "requests", "used", "usage")
        ) ?: return null
        val limit = cursorFirstNumber(
            source,
            listOf("maxRequestUsage", "maxRequests", "requestLimit", "limit", "limitAmount")
        ) ?: return null
        return JSONObject()
            .put("numRequests", used)
            .put("maxRequestUsage", limit)
    }

    private fun cursorHasPlanUsageMetric(source: JSONObject): Boolean {
        return listOf(
            "totalPercentUsed",
            "totalSpend",
            "totalUsage",
            "autoPercentUsed",
            "auto_percent_used",
            "apiPercentUsed",
            "api_percent_used",
            "remainingPercent",
            "remaining_percent",
            "remainingFraction",
            "remaining_fraction",
            "breakdown",
            "usageBreakdown"
        ).any { key -> source.hasNonNull(key) }
    }

    private fun cursorFirst(source: JSONObject, keys: List<String>): String? {
        return keys.firstNotNullOfOrNull { key ->
            source.opt(key)
                ?.takeIf { it != JSONObject.NULL }
                ?.toString()
                ?.takeIf { it.isNotBlank() && it != "null" }
        }
    }

    private fun cursorFirstNumber(source: JSONObject, keys: List<String>): Double? {
        return keys.firstNotNullOfOrNull { key ->
            source.opt(key)
                ?.takeIf { it != JSONObject.NULL }
                ?.let(::cursorNumber)
        }
    }

    private fun cursorNumber(value: Any?): Double? {
        return when (value) {
            is Number -> value.toDouble()
            is String -> value.toDoubleOrNull()
            else -> null
        }?.takeIf { it.isFinite() }
    }

    private fun fetchGrokPayload(
        fetchJson: GrokJsonFetcher = GrokNativeUsageFetcher::fetchJson
    ): NativePayloadResult {
        val statuses = mutableListOf<String>()
        val buckets = JSONArray()
        GROK_NATIVE_PROBES.forEach { probe ->
            val response = fetchGrokWrapped(probe, statuses, fetchJson)
            if (!response.optBoolean("ok", false)) return@forEach
            val json = response.jsonValue() as? JSONObject ?: return@forEach
            grokBuckets(probe, json).forEach(buckets::put)
        }
        val payload = JSONObject()
            .put("provider", ProviderId.GROK.storageId)
            .put("buckets", buckets)
        return verifiedPayload(ProviderId.GROK, payload, "grok_usage_unavailable", statuses)
    }

    private fun fetchGrokWrapped(
        probe: GrokProbe,
        statuses: MutableList<String>,
        fetchJson: GrokJsonFetcher
    ): JSONObject {
        val wrapped = runCatching { JSONObject(fetchJson(GROK_RATE_LIMITS_URL, probe.body())) }
            .getOrElse {
                JSONObject().put("ok", false).put("url", GROK_RATE_LIMITS_URL).put("error", it.javaClass.simpleName)
            }
        statuses += "${urlStatusLabel(GROK_RATE_LIMITS_URL)}:${probe.label()}:" +
            "${wrapped.optInt("status", -1)}:${wrapped.optString("error")}"
        return wrapped
    }

    /** 한도 창 길이를 라벨에 드러내 2시간 한도임을 오해하지 않게 한다. */
    private fun grokLabel(probe: GrokProbe, source: JSONObject, effort: String?): String {
        val window = cursorNumber(source.opt("windowSizeSeconds"))?.toLong()
        val windowLabel = when {
            window == null || window <= 0L -> null
            window % 3600L == 0L -> "${window / 3600L}h limit"
            else -> "${window / 60L}m limit"
        }
        return listOfNotNull(probe.label(), effort?.let { "$it effort" }, windowLabel)
            .joinToString(" · ")
    }

    private fun grokBuckets(probe: GrokProbe, json: JSONObject): List<JSONObject> {
        return listOfNotNull(
            grokBucket(json, probe, null),
            grokBucket(json.optJSONObject("lowEffortRateLimits"), probe, "low"),
            grokBucket(json.optJSONObject("highEffortRateLimits"), probe, "high")
        )
    }

    private fun fetchKimiPayload(
        fetchJson: KimiJsonFetcher = KimiNativeUsageFetcher::fetchJson
    ): NativePayloadResult {
        val statuses = mutableListOf<String>()
        val wrapped = runCatching { JSONObject(fetchJson(KIMI_SUBSCRIPTION_STATS_URL, "{}")) }
            .getOrElse {
                JSONObject().put("ok", false).put("error", it.javaClass.simpleName)
            }
        statuses += "${urlStatusLabel(KIMI_SUBSCRIPTION_STATS_URL)}:" +
            "${wrapped.optInt("status", -1)}:${wrapped.optString("error")}"
        if (!wrapped.optBoolean("ok", false)) {
            return NativePayloadResult(null, "kimi_usage_unavailable", statuses)
        }
        val json = wrapped.jsonValue() as? JSONObject
            ?: return NativePayloadResult(null, "kimi_usage_unavailable", statuses)
        val entries = JSONArray()
        kimiEntries(json).forEach(entries::put)
        val payload = JSONObject()
            .put("provider", ProviderId.KIMI.storageId)
            .put("entries", entries)
        return verifiedPayload(ProviderId.KIMI, payload, "kimi_usage_unavailable", statuses)
    }

    private fun kimiEntries(json: JSONObject): List<JSONObject> {
        val output = mutableListOf<JSONObject>()
        kimiEntry(json.optJSONObject("subscriptionBalance"), "kimi:subscription", "Membership credits")
            ?.let(output::add)
        KIMI_RATE_LIMIT_KEYS.forEach { (field, label) ->
            kimiEntry(json.optJSONObject(field), "kimi:${field.lowercase(Locale.US)}", label)?.let(output::add)
        }
        json.optJSONArray("giftBalances")?.let { gifts ->
            for (index in 0 until gifts.length()) {
                kimiEntry(gifts.optJSONObject(index), "kimi:gift:$index", "Gift balance ${index + 1}")
                    ?.let(output::add)
            }
        }
        return output
    }

    private fun kimiEntry(source: JSONObject?, key: String, label: String): JSONObject? {
        if (source == null) return null
        val usedRatio = cursorNumber(source.opt("amountUsedRatio"))
            ?: cursorNumber(source.opt("usedRatio"))
            ?: return null
        val entry = JSONObject()
            .put("key", key)
            .put("label", label)
            .put("usedRatio", usedRatio)
        source.opt("expireTime")?.takeIf { it != JSONObject.NULL }?.let { entry.put("expireTime", it) }
        source.opt("resetTime")?.takeIf { it != JSONObject.NULL }?.let { entry.put("resetTime", it) }
        cursorNumber(source.opt("kimiCodeUsedRatio"))?.let { entry.put("kimiCodeUsedRatio", it) }
        return entry
    }

    private fun fetchKiroPayload(
        fetchJson: KiroJsonFetcher = KiroNativeUsageFetcher::fetchJson
    ): NativePayloadResult {
        val statuses = mutableListOf<String>()
        val wrapped = runCatching { JSONObject(fetchJson(KIRO_USAGE_URL, null)) }
            .getOrElse {
                JSONObject().put("ok", false).put("error", it.javaClass.simpleName)
            }
        statuses += "${urlStatusLabel(KIRO_USAGE_URL)}:" +
            "${wrapped.optInt("status", -1)}:${wrapped.optString("error")}"
        if (!wrapped.optBoolean("ok", false)) {
            val diagnostic = if (wrapped.optBoolean("authFailed", false)) {
                "kiro_session_expired"
            } else {
                "kiro_usage_unavailable"
            }
            return NativePayloadResult(null, diagnostic, statuses)
        }
        val json = wrapped.jsonValue() as? JSONObject
            ?: return NativePayloadResult(null, "kiro_usage_unavailable", statuses)
        val entries = JSONArray()
        kiroEntries(json).forEach(entries::put)
        val payload = JSONObject()
            .put("provider", ProviderId.KIRO.storageId)
            .put("entries", entries)
        json.optJSONObject("subscriptionInfo")?.let { subscription ->
            subscription.nonBlankString("subscriptionTitle")?.let { payload.put("plan", it) }
            subscription.nonBlankString("type")?.let { payload.put("planType", it) }
        }
        cursorNumber(json.opt("nextDateReset"))?.let { payload.put("resetsAt", it) }
        return verifiedPayload(ProviderId.KIRO, payload, "kiro_usage_unavailable", statuses)
    }

    private fun kiroEntries(json: JSONObject): List<JSONObject> {
        val breakdowns = json.optJSONArray("usageBreakdownList") ?: return emptyList()
        val fallbackReset = cursorNumber(json.opt("nextDateReset"))
        val output = mutableListOf<JSONObject>()
        for (index in 0 until breakdowns.length()) {
            val source = breakdowns.optJSONObject(index) ?: continue
            val used = cursorNumber(source.opt("currentUsageWithPrecision"))
                ?: cursorNumber(source.opt("currentUsage"))
                ?: continue
            val resourceType = source.nonBlankString("resourceType") ?: "usage"
            val entry = JSONObject()
                .put("key", "kiro:${resourceType.lowercase(Locale.US)}")
                .put(
                    "label",
                    source.nonBlankString("displayNamePlural")
                        ?: source.nonBlankString("displayName")
                        ?: resourceType
                )
                .put("used", used)
            val limit = cursorNumber(source.opt("usageLimitWithPrecision"))
                ?: cursorNumber(source.opt("usageLimit"))
            limit?.let { entry.put("limit", it) }
            (cursorNumber(source.opt("nextDateReset")) ?: fallbackReset)?.let { entry.put("resetsAt", it) }
            val overages = cursorNumber(source.opt("currentOveragesWithPrecision"))
                ?: cursorNumber(source.opt("currentOverages"))
            if (overages != null && overages > 0.0) entry.put("overages", overages)
            output += entry
        }
        return output
    }

    private fun JSONObject.nonBlankString(field: String): String? {
        return optString(field).takeIf { it.isNotBlank() && it != "null" }
    }

    private fun grokBucket(source: JSONObject?, probe: GrokProbe, effort: String?): JSONObject? {
        if (source == null) return null
        val remaining = cursorNumber(source.opt("remainingQueries")) ?: return null
        val bucket = JSONObject()
            .put("key", listOfNotNull("grok", probe.modelName, effort).joinToString(":"))
            .put("label", grokLabel(probe, source, effort))
            .put("remainingQueries", remaining)
        cursorNumber(source.opt("totalQueries"))?.let { bucket.put("totalQueries", it) }
        cursorNumber(source.opt("waitTimeSeconds"))?.let { bucket.put("waitTimeSeconds", it) }
        cursorNumber(source.opt("windowSizeSeconds"))?.let { bucket.put("windowSizeSeconds", it) }
        return bucket
    }

    private fun fetchOpenCodeServerSubscriptionPayload(
        userAgent: String,
        usageUrl: String,
        statuses: MutableList<String>,
        fetchJson: NativeJsonFetcher
    ): JSONObject? {
        val workspaceId = openCodeWorkspaceIdFromUrl(usageUrl) ?: return null
        val serverUrl = openCodeServerFunctionUrl(OPENCODE_SUBSCRIPTION_GET_ID, JSONArray().put(workspaceId))
        val response = fetchWrapped(
            ProviderId.OPENCODE,
            serverUrl,
            statuses,
            userAgent,
            openCodeServerHeaders(serverUrl, workspaceId),
            fetchJson
        )
        val payload = openCodeServerSubscriptionPayloadFromValue(response.jsonValue())
            ?: response.rawText()?.let(::openCodeServerSubscriptionPayloadFromText)
        if (payload == null) {
            response.rawText()?.let { statuses += openCodeServerTextMetadata(it) }
        }
        return payload
    }

    private fun openCodeServerFunctionUrl(id: String, args: JSONArray): String {
        return "https://opencode.ai/_server?id=$id&args=${encodeQuery(args.toString())}"
    }

    private fun openCodeServerHeaders(url: String, workspaceId: String): Map<String, String> {
        return mapOf(
            "Accept" to "text/x-component, text/javascript, application/json, */*",
            "Origin" to "https://opencode.ai",
            "Referer" to "https://opencode.ai/workspace/${encodePath(workspaceId)}/billing",
            "X-Requested-With" to "XMLHttpRequest",
            "X-Server-Id" to OPENCODE_SUBSCRIPTION_GET_ID,
            "X-Selected-Url" to url
        )
    }

    private fun openCodeWorkspaceIdFromUrl(url: String): String? {
        val uri = runCatching { java.net.URI(url) }.getOrNull() ?: return null
        val parts = uri.path.orEmpty().split('/').filter(String::isNotBlank)
        val workspaceIndex = parts.indexOf("workspace")
        return parts.getOrNull(workspaceIndex + 1)
            ?.takeIf { it.startsWith("wrk_") }
    }

    private fun openCodeNativeUsageUrl(bridgePageUrl: String?): String {
        val pageUrl = bridgePageUrl.orEmpty()
        return OpenCodeUsagePageRoutes.canonicalGoUsageUrlFrom(pageUrl)
            ?: pageUrl.takeIf { ProviderWebCollectorScripts.shouldRunCollectorOnResource(ProviderId.OPENCODE, it) }
            ?: OPENCODE_DEFAULT_USAGE_URL
    }

    private fun openCodePayloadFromText(text: String): JSONObject? {
        runCatching { JSONTokener(text).nextValue() }
            .getOrNull()
            ?.let(::openCodePayloadFromValue)
            ?.let { return it }
        openCodeServerSubscriptionPayloadFromText(text)?.let { return it }
        val values = openCodeJsonValuesFromText(text)
        if (values.isNotEmpty()) {
            val aggregate = JSONArray()
            values.forEach(aggregate::put)
            return openCodePayloadFromValue(aggregate)
        }
        return null
    }

    private fun openCodeServerSubscriptionPayloadFromText(text: String): JSONObject? {
        runCatching { JSONTokener(text).nextValue() }
            .getOrNull()
            ?.let(::openCodeServerSubscriptionPayloadFromValue)
            ?.let { return it }
        return openCodeSubscriptionUsageObjectFromText(text)
            ?.let(::openCodeServerSubscriptionPayloadFromValue)
    }

    private fun openCodeServerSubscriptionPayloadFromValue(value: Any?): JSONObject? {
        val source = openCodeSubscriptionUsageObject(value)
            ?: (value as? String)?.let(::openCodeSubscriptionUsageObjectFromText)
            ?: return null
        val limits = JSONArray()
        openCodeServerUsageLimit(
            source.optJSONObject("rollingUsage") ?: source.optJSONObject("rolling_usage"),
            "Go 5-Hour Limit"
        )?.let(limits::put)
        openCodeServerUsageLimit(
            source.optJSONObject("weeklyUsage") ?: source.optJSONObject("weekly_usage"),
            "Go Weekly Limit"
        )?.let(limits::put)
        if (limits.length() == 0) return null
        val data = JSONObject().put("limits", limits).put("plan", "Go")
        return JSONObject()
            .put("provider", ProviderId.OPENCODE.storageId)
            .put("source", "native-bridge")
            .put("collectorMode", "native-server-function")
            .put("plan", "Go")
            .put("data", data)
    }

    private fun openCodeServerUsageLimit(usage: JSONObject?, label: String): JSONObject? {
        val usedPercent = usage?.firstOptionalOpenCodeNumber(
            "usagePercent",
            "usage_percent",
            "usedPercent",
            "used_percent",
            "percentUsed",
            "percent_used"
        ) ?: return null
        val limit = JSONObject()
            .put("label", label)
            .put("used_percent", usedPercent.coerceIn(0.0, 100.0))
            .put("remaining_percent", (100.0 - usedPercent).coerceIn(0.0, 100.0))
        usage.firstOptionalOpenCodeNumber("resetInSec", "reset_in_sec", "resetSeconds", "reset_seconds")
            ?.let { seconds ->
                limit.put("reset_seconds", seconds)
                limit.put("resetText", openCodeResetText(seconds))
            }
        return limit
    }

    private fun JSONObject.firstOptionalOpenCodeNumber(vararg keys: String): Double? {
        keys.forEach { key ->
            opt(key)
                ?.takeIf { it != JSONObject.NULL }
                ?.let(::openCodeNumber)
                ?.let { return it }
        }
        return null
    }

    private fun openCodeSubscriptionUsageObject(value: Any?): JSONObject? {
        return findFirstObject(value, 0) { candidate ->
            candidate.optJSONObject("rollingUsage") != null ||
                candidate.optJSONObject("rolling_usage") != null ||
                candidate.optJSONObject("weeklyUsage") != null ||
                candidate.optJSONObject("weekly_usage") != null
        }
    }

    private fun openCodeSubscriptionUsageObjectFromText(text: String): JSONObject? {
        val rolling = openCodeUsageObjectFromText(text, "rollingUsage") ?: openCodeUsageObjectFromText(text, "rolling_usage")
        val weekly = openCodeUsageObjectFromText(text, "weeklyUsage") ?: openCodeUsageObjectFromText(text, "weekly_usage")
        if (rolling == null && weekly == null) return null
        return JSONObject().apply {
            rolling?.let { put("rollingUsage", it) }
            weekly?.let { put("weeklyUsage", it) }
        }
    }

    private fun openCodeUsageObjectFromText(text: String, key: String): JSONObject? {
        val keyIndex = text.indexOf(key)
        if (keyIndex < 0) return null
        val start = text.indexOf('{', keyIndex)
        if (start < 0) return null
        val end = balancedJsonEnd(text, start, '{', '}') ?: return null
        val normalized = text.substring(start, end + 1)
            .replace(Regex("""([A-Za-z_][A-Za-z0-9_]*)\s*:"""), "\"$1\":")
            .replace('\'', '"')
        return runCatching { JSONTokener(normalized).nextValue() as? JSONObject }.getOrNull()
    }

    private fun openCodeResetText(seconds: Double): String {
        val wholeSeconds = seconds.toLong().coerceAtLeast(0L)
        val days = wholeSeconds / 86_400L
        val hours = (wholeSeconds % 86_400L) / 3_600L
        val minutes = (wholeSeconds % 3_600L) / 60L
        val units = listOfNotNull(
            days.takeIf { it > 0L }?.let { "${it}d" },
            hours.takeIf { it > 0L }?.let { "${it}h" },
            minutes.takeIf { it > 0L }?.let { "${it}m" }
        )
        return if (units.isEmpty()) "Resets soon" else "Resets in ${units.take(2).joinToString(" ")}"
    }

    private fun openCodePayloadFromValue(value: Any?): JSONObject? {
        val data = JSONObject()
        val limits = JSONArray()
        val seenLimits = mutableSetOf<String>()
        gatherOpenCodeUsageData(value, data, limits, seenLimits, "", 0)
        if (limits.length() > 0) {
            data.put("limits", limits)
        }
        if (limits.length() == 0 && data.optJSONObject("credits") == null) return null
        findFirstString(value, OPENCODE_PLAN_KEYS)?.let { data.put("plan", it) }
        findFirstString(value, OPENCODE_ACCOUNT_KEYS)?.let { data.put("account", it) }
        val payload = JSONObject()
            .put("provider", ProviderId.OPENCODE.storageId)
            .put("source", "native-bridge")
            .put("data", data)
        findFirstString(value, OPENCODE_ACCOUNT_KEYS)?.let { payload.put("account", it) }
        findFirstString(value, OPENCODE_PLAN_KEYS)?.let { payload.put("plan", it) }
        return payload
    }

    private fun gatherOpenCodeUsageData(
        value: Any?,
        data: JSONObject,
        limits: JSONArray,
        seenLimits: MutableSet<String>,
        hint: String,
        depth: Int
    ) {
        if (depth > MAX_JSON_DEPTH || value == null || value == JSONObject.NULL) return
        when (value) {
            is JSONObject -> {
                openCodeLimitObject(value, hint)?.let { limit ->
                    val key = limit.optString("label").lowercase(Locale.US) + ":" + limit.toString()
                    if (seenLimits.add(key)) limits.put(limit)
                }
                openCodeCreditObject(value, hint)?.let { credits ->
                    val current = data.optJSONObject("credits")?.opt("balance")?.let(::openCodeNumber)
                    val next = credits.opt("balance")?.let(::openCodeNumber)
                    if (next != null && (current == null || next > current)) {
                        data.put("credits", credits)
                    }
                }
                val keys = value.keys()
                while (keys.hasNext()) {
                    val key = keys.next()
                    if (key.lowercase(Locale.US) in OPENCODE_SENSITIVE_KEYS) continue
                    gatherOpenCodeUsageData(value.opt(key), data, limits, seenLimits, key, depth + 1)
                }
            }
            is JSONArray -> {
                for (index in 0 until value.length()) {
                    gatherOpenCodeUsageData(value.opt(index), data, limits, seenLimits, hint, depth + 1)
                }
            }
        }
    }

    private fun openCodeLimitObject(candidate: JSONObject, hint: String): JSONObject? {
        if (isOpenCodeCreditHint(hint)) return null
        val label = candidate.optString("label")
            .ifBlank { candidate.optString("name") }
            .ifBlank { candidate.optString("title") }
            .ifBlank { candidate.optString("displayName") }
            .ifBlank { candidate.optString("display_name") }
            .ifBlank { candidate.optString("key") }
            .ifBlank { hint }
            .takeIf { it.isNotBlank() } ?: return null
        if (!hasOpenCodeUsageMetric(candidate)) return null
        return JSONObject(candidate.toString()).put("label", label)
    }

    private fun hasOpenCodeUsageMetric(candidate: JSONObject): Boolean {
        if (OPENCODE_LIMIT_PERCENT_KEYS.any { key -> candidate.hasNonNull(key) }) return true
        val hasAmount = OPENCODE_LIMIT_AMOUNT_KEYS.any { key -> candidate.hasNonNull(key) }
        val hasLimit = OPENCODE_LIMIT_TOTAL_KEYS.any { key -> candidate.hasNonNull(key) }
        return hasAmount && hasLimit
    }

    private fun openCodeCreditObject(candidate: JSONObject, hint: String): JSONObject? {
        val hasCreditContext = isOpenCodeCreditHint(hint)
        val balance = OPENCODE_CREDIT_KEYS.firstNotNullOfOrNull { key ->
            candidate.opt(key)
                ?.takeIf { it != JSONObject.NULL }
                ?.takeIf { hasCreditContext || key.lowercase(Locale.US).contains("credit") }
                ?.takeIf { openCodeNumber(it) != null }
        } ?: return null
        val credits = JSONObject().put("balance", openCodeNumber(balance))
        OPENCODE_CREDIT_LIMIT_KEYS.firstNotNullOfOrNull { key ->
            candidate.opt(key)
                ?.takeIf { it != JSONObject.NULL }
                ?.let(::openCodeNumber)
        }?.let { credits.put("limit", it) }
        return credits
    }

    private fun isOpenCodeCreditHint(value: String): Boolean {
        val hintText = value.lowercase(Locale.US)
        return hintText.contains("credit") ||
            hintText.contains("balance") ||
            hintText.contains("wallet") ||
            hintText.contains("zen")
    }

    private fun JSONObject.hasNonNull(key: String): Boolean {
        return has(key) && opt(key) != JSONObject.NULL && optString(key).isNotBlank()
    }

    private fun openCodeNumber(value: Any?): Double? {
        return when (value) {
            is Number -> value.toDouble()
            is String -> Regex("""-?\d+(?:\.\d+)?""").find(value.replace(",", ""))?.value?.toDoubleOrNull()
            else -> null
        }
    }

    private fun openCodeJsonValuesFromText(text: String): List<Any> {
        val values = mutableListOf<Any>()
        OPENCODE_SCRIPT_JSON_PATTERN.findAll(text).forEach { match ->
            parseOpenCodeJsonValue(htmlTextDecode(match.groupValues[1]))?.let(values::add)
        }
        OPENCODE_STATE_MARKERS.forEach { marker ->
            var searchFrom = 0
            while (values.size < MAX_OPENCODE_TEXT_JSON_VALUES) {
                val markerIndex = text.indexOf(marker, searchFrom)
                if (markerIndex < 0) break
                parseJsonContainerAtOrAfter(text, markerIndex + marker.length)?.let(values::add)
                searchFrom = markerIndex + marker.length
            }
        }
        OPENCODE_USAGE_CONTEXT_PATTERN.findAll(text).take(MAX_OPENCODE_CONTEXT_MATCHES).forEach { match ->
            parseJsonContainerBefore(text, match.range.first, '{')?.let(values::add)
            parseJsonContainerBefore(text, match.range.first, '[')?.let(values::add)
        }
        return values.take(MAX_OPENCODE_TEXT_JSON_VALUES)
    }

    private fun parseJsonContainerAtOrAfter(text: String, startIndex: Int): Any? {
        val objectStart = text.indexOf('{', startIndex)
        val arrayStart = text.indexOf('[', startIndex)
        val start = listOf(objectStart, arrayStart).filter { it >= 0 }.minOrNull() ?: return null
        return parseBalancedJsonContainer(text, start)
    }

    private fun parseJsonContainerBefore(text: String, index: Int, open: Char): Any? {
        var start = text.lastIndexOf(open, index)
        val floor = (index - OPENCODE_JSON_CONTEXT_WINDOW).coerceAtLeast(0)
        while (start >= floor) {
            parseBalancedJsonContainer(text, start)?.let { return it }
            start = text.lastIndexOf(open, start - 1)
        }
        return null
    }

    private fun parseBalancedJsonContainer(text: String, start: Int): Any? {
        val close = when (text.getOrNull(start)) {
            '{' -> '}'
            '[' -> ']'
            else -> return null
        }
        val end = balancedJsonEnd(text, start, text[start], close) ?: return null
        return parseOpenCodeJsonValue(htmlTextDecode(text.substring(start, end + 1)))
    }

    private fun parseOpenCodeJsonValue(text: String): Any? {
        return runCatching { JSONTokener(text.trim()).nextValue() }
            .getOrNull()
            ?.takeIf { it is JSONObject || it is JSONArray }
    }

    private fun balancedJsonEnd(value: String, start: Int, open: Char, close: Char): Int? {
        var depth = 0
        var inString = false
        var escaped = false
        for (index in start until value.length) {
            val char = value[index]
            if (inString) {
                when {
                    escaped -> escaped = false
                    char == '\\' -> escaped = true
                    char == '"' -> inString = false
                }
                continue
            }
            when (char) {
                '"' -> inString = true
                open -> depth += 1
                close -> {
                    depth -= 1
                    if (depth == 0) return index
                }
            }
        }
        return null
    }

    private fun htmlTextDecode(value: String): String {
        return value
            .replace("&quot;", "\"")
            .replace("&#34;", "\"")
            .replace("&#x22;", "\"")
            .replace("&amp;", "&")
            .replace("&lt;", "<")
            .replace("&gt;", ">")
    }

    private fun openCodeTextMetadata(text: String): String {
        return "opencode_text:" +
            "bytes=${text.length}:" +
            "html=${text.contains("<html", ignoreCase = true)}:" +
            "scriptJson=${OPENCODE_SCRIPT_JSON_PATTERN.findAll(text).count()}:" +
            "usageSignals=${OPENCODE_USAGE_CONTEXT_PATTERN.findAll(text).count()}:" +
            "stateMarkers=${OPENCODE_STATE_MARKERS.count { marker -> text.contains(marker) }}"
    }

    private fun openCodeServerTextMetadata(text: String): String {
        return "opencode_server_text:" +
            "bytes=${text.length}:" +
            "rollingUsage=${text.contains("rollingUsage")}:" +
            "weeklyUsage=${text.contains("weeklyUsage")}:" +
            "resetInSec=${text.contains("resetInSec")}"
    }

    private fun fetchWrapped(
        providerId: ProviderId,
        url: String,
        statuses: MutableList<String>,
        userAgent: String,
        requestHeaders: Map<String, String> = emptyMap(),
        fetchJson: NativeJsonFetcher = ProviderNativeJsonBridge::fetchJson
    ): JSONObject {
        val wrapped = runCatching { JSONObject(fetchJson(providerId, url, userAgent, requestHeaders)) }
            .getOrElse { JSONObject().put("ok", false).put("url", url).put("error", it.javaClass.simpleName) }
        statuses += "${urlStatusLabel(url)}:${wrapped.optInt("status", -1)}:${wrapped.optString("error")}"
        return wrapped
    }

    private fun verifiedPayload(
        providerId: ProviderId,
        payload: JSONObject,
        diagnostic: String,
        statuses: List<String>
    ): NativePayloadResult {
        val normalized = ProviderUsageNormalizer.normalize(
            providerId = providerId,
            rawPayload = payload.toString(),
            source = ProviderPayloadSource.NETWORK_RESPONSE
        )
        if (normalized == null) {
            return NativePayloadResult(null, "${diagnostic}_normalizer_rejected", statuses)
        }
        return NativePayloadResult(payload.toString(), "ok", statuses)
    }

    private fun bridgeResult(providerId: ProviderId, result: NativePayloadResult, elapsedMillis: Long? = null): String {
        val json = JSONObject()
            .put("ok", result.payload != null)
            .put("provider", providerId.storageId)
            .put("diagnostic", result.diagnostic)
            .put("statuses", JSONArray(result.statuses))
        result.payload?.let { payload ->
            json.put("payload", JSONTokener(payload).nextValue())
        }
        runCatching {
            val statusSummary = result.statuses.joinToString("|").take(500)
            val endpointCount = result.statuses.size
            val payloadBytes = result.payload?.toByteArray(StandardCharsets.UTF_8)?.size ?: 0
            Log.d(
                TAG,
                "nativeUsage provider=${providerId.storageId} ok=${result.payload != null} " +
                    "diagnostic=${result.diagnostic} elapsedMs=${elapsedMillis ?: -1} " +
                    "endpointCount=$endpointCount payloadBytes=$payloadBytes statuses=$statusSummary"
            )
        }
        return json.toString()
    }

    private fun elapsedMillisSince(startedNanos: Long): Long {
        return ((System.nanoTime() - startedNanos) / 1_000_000L).coerceAtLeast(0L)
    }

    private fun bridgeError(providerId: ProviderId, diagnostic: String): String {
        return JSONObject()
            .put("ok", false)
            .put("provider", providerId.storageId)
            .put("diagnostic", diagnostic)
            .toString()
    }

    private fun JSONObject.jsonValue(): Any? {
        return opt("json")
    }

    private fun JSONObject.jsonObject(): JSONObject? {
        return optJSONObject("json")
    }

    private fun JSONObject.rawText(): String? {
        return optJSONObject("json")?.optString("rawText")?.takeIf { it.isNotBlank() }
    }

    private fun claudeOrgId(value: Any?): String? {
        val values = mutableListOf<String>()
        collectStrings(value, CLAUDE_ORG_ID_KEYS, values, 0)
        return values.firstOrNull { it.startsWith("org_", ignoreCase = true) }
            ?: values.firstOrNull { it.isNotBlank() && it != "discoverable" && !it.all { char -> char.isDigit() } }
            ?: values.firstOrNull { it.isNotBlank() && it != "discoverable" }
    }

    private fun codexUsageFromValue(value: Any?): JSONObject? {
        return findFirstObject(value, 0) { candidate ->
            candidate.has("rate_limits") ||
                candidate.has("rate_limit") ||
                candidate.has("primary_window") ||
                candidate.has("secondary_window") ||
                candidate.optJSONArray("x") != null
        }?.let { usage -> usage.optJSONObject("usage") ?: usage }
    }

    private fun findFirstObject(value: Any?, depth: Int, predicate: (JSONObject) -> Boolean): JSONObject? {
        if (depth > MAX_JSON_DEPTH || value == null || value == JSONObject.NULL) return null
        return when (value) {
            is JSONObject -> {
                if (predicate(value)) {
                    value
                } else {
                    val keys = value.keys()
                    while (keys.hasNext()) {
                        findFirstObject(value.opt(keys.next()), depth + 1, predicate)?.let { return it }
                    }
                    null
                }
            }
            is JSONArray -> {
                for (index in 0 until value.length()) {
                    findFirstObject(value.opt(index), depth + 1, predicate)?.let { return it }
                }
                null
            }
            else -> null
        }
    }

    private fun findFirstString(value: Any?, keyNames: Set<String>): String? {
        val values = mutableListOf<String>()
        collectStrings(value, keyNames, values, 0)
        return values.firstOrNull { it.isNotBlank() && it != "null" }
    }

    private fun claudePlan(value: Any?): String? {
        return findFirstString(value, CLAUDE_SAFE_PLAN_KEYS)
            ?: findFirstString(value, CLAUDE_GENERIC_PLAN_KEYS)?.takeUnless(::isClaudeDateLikeGenericPlan)
    }

    private fun isClaudeDateLikeGenericPlan(value: String): Boolean {
        return CLAUDE_DATE_LIKE_GENERIC_PLAN_PATTERN.matches(value.trim())
    }

    private fun collectStrings(value: Any?, keyNames: Set<String>, output: MutableList<String>, depth: Int) {
        if (depth > MAX_JSON_DEPTH || value == null || value == JSONObject.NULL || output.size >= MAX_STRING_MATCHES) return
        when (value) {
            is JSONObject -> {
                val keys = value.keys()
                while (keys.hasNext()) {
                    val key = keys.next()
                    val child = value.opt(key)
                    if (keyNames.contains(key.lowercase(Locale.US))) {
                        when (child) {
                            is String -> output += child
                            is Number, is Boolean -> output += child.toString()
                        }
                    }
                    collectStrings(child, keyNames, output, depth + 1)
                }
            }
            is JSONArray -> {
                for (index in 0 until value.length()) {
                    collectStrings(value.opt(index), keyNames, output, depth + 1)
                }
            }
        }
    }

    private fun urlStatusLabel(url: String): String {
        return runCatching {
            val uri = java.net.URI(url)
            "${uri.host}${uri.path}"
        }.getOrDefault(url.take(80))
    }

    private fun encodePath(value: String): String {
        return URLEncoder.encode(value, StandardCharsets.UTF_8.name()).replace("+", "%20")
    }

    private fun encodeQuery(value: String): String {
        return URLEncoder.encode(value, StandardCharsets.UTF_8.name())
    }

    private data class NativePayloadResult(
        val payload: String?,
        val diagnostic: String,
        val statuses: List<String> = emptyList()
    )

    private const val TAG = "AIQuotaNativeUsage"
    private const val MAX_JSON_DEPTH = 16
    private const val MAX_STRING_MATCHES = 64

    private const val CLAUDE_ACCOUNT_PROFILE_URL = "https://claude.ai/api/account_profile"
    private const val CLAUDE_ORGANIZATIONS_URL = "https://claude.ai/api/organizations"
    private const val CLAUDE_ORGANIZATIONS_ME_URL = "https://claude.ai/api/organizations/me"

    private const val CODEX_SESSION_URL = "https://chatgpt.com/api/auth/session"
    private const val CODEX_ME_URL = "https://chatgpt.com/backend-api/me"
    private const val CODEX_ACCOUNT_CHECK_URL = "https://chatgpt.com/backend-api/accounts/check/v4-2023-04-27"
    private const val CODEX_SUBSCRIPTIONS_URL = "https://chatgpt.com/backend-api/subscriptions"
    private const val CODEX_WHAM_USAGE_URL = "https://chatgpt.com/backend-api/wham/usage"
    private const val GEMINI_USAGE_PAGE_URL = "https://gemini.google.com/usage"
    private const val GROK_RATE_LIMITS_URL = "https://grok.com/rest/rate-limits"
    private const val KIMI_SUBSCRIPTION_STATS_URL =
        "https://www.kimi.com/apiv2/kimi.gateway.membership.v2.MembershipService/GetSubscriptionStats"

    private val KIRO_USAGE_URL = "https://app.kiro.dev${KiroNativeUsageFetcher.USAGE_OPERATION_PATH}"

    private val KIMI_RATE_LIMIT_KEYS = listOf(
        "ratelimit5h" to "5h rate limit",
        "ratelimitCode5h" to "Kimi Code 5h",
        "ratelimit7d" to "7d rate limit",
        "ratelimitCode7d" to "Kimi Code 7d"
    )
    private const val CURSOR_STRIPE_URL = "https://cursor.com/api/auth/stripe"
    private const val CURSOR_USAGE_URL = "https://cursor.com/api/usage"
    private const val CURSOR_AUTH_USAGE_URL = "https://cursor.com/api/auth/usage"
    private const val CURSOR_USAGE_SUMMARY_URL = "https://cursor.com/api/usage-summary"
    private const val CURSOR_CREDIT_GRANTS_URL = "https://cursor.com/api/dashboard/get-credit-grants-balance"
    private const val CURSOR_CURRENT_PERIOD_USAGE_URL =
        "https://api2.cursor.sh/aiserver.v1.DashboardService/GetCurrentPeriodUsage"
    private const val CURSOR_PLAN_INFO_URL = "https://api2.cursor.sh/aiserver.v1.DashboardService/GetPlanInfo"
    private const val CURSOR_CREDIT_GRANTS_API_URL =
        "https://api2.cursor.sh/aiserver.v1.DashboardService/GetCreditGrantsBalance"
    private const val CURSOR_API_AUTH_USAGE_URL = "https://api2.cursor.sh/auth/usage"
    private const val OPENCODE_DEFAULT_USAGE_URL = "https://opencode.ai/zen/go/usage"
    private const val OPENCODE_SUBSCRIPTION_GET_ID =
        "7abeebee372f304e050aaaf92be863f4a86490e382f8c79db68fd94040d691b4"
    private val CLAUDE_ORG_ID_KEYS = setOf(
        "uuid",
        "id",
        "organization_uuid",
        "organizationuuid",
        "organization_id",
        "organizationid",
        "org_id",
        "orgid"
    )
    private val CODEX_ACCOUNT_ID_KEYS = setOf(
        "account_id",
        "accountid",
        "account_uuid",
        "accountuuid",
        "workspace_id",
        "workspaceid",
        "id"
    )
    private val EMAIL_KEYS = setOf("email", "account_email", "accountemail", "user_email", "useremail", "e")
    private val CLAUDE_SAFE_PLAN_KEYS = setOf(
        "plan",
        "plan_type",
        "plantype",
        "plan_name",
        "planname",
        "subscription_plan",
        "subscriptionplan",
        "subscription_type",
        "subscriptiontype",
        "tier",
        "sku"
    )
    private val CLAUDE_GENERIC_PLAN_KEYS = setOf("name", "display_name", "displayname", "title", "label")
    private val CLAUDE_DATE_LIKE_GENERIC_PLAN_PATTERN =
        Regex("""(?i)\s*(?:\d{4}[-/]\d{1,2}[-/]\d{1,2}(?:[t\s].*)?|[a-z]{3,9}\s+\d{1,2},\s*\d{4})\s*""")
    private val PLAN_KEYS = setOf(
        "plan",
        "plan_type",
        "plantype",
        "plan_name",
        "planname",
        "subscription_plan",
        "subscriptionplan",
        "subscription_type",
        "subscriptiontype",
        "tier",
        "sku",
        "name",
        "display_name",
        "displayname",
        "title",
        "label"
    )
    private val OPENCODE_PLAN_KEYS = setOf(
        "plan",
        "plan_type",
        "plantype",
        "plan_name",
        "planname",
        "subscription_plan",
        "subscriptionplan",
        "tier"
    )
    private val OPENCODE_ACCOUNT_KEYS = EMAIL_KEYS + setOf(
        "account",
        "account_email",
        "accountemail"
    )
    private data class CursorProbe(val url: String, val body: String? = null)

    private data class GrokProbe(val requestKind: String, val modelName: String) {
        fun body(): String = JSONObject()
            .put("requestKind", requestKind)
            .put("modelName", modelName)
            .toString()

        fun label(): String = modelName
    }

    // 2026-08-04 실계정 확인: /rest/rate-limits 응답을 가르는 건 modelName 뿐이고
    // requestKind(DEFAULT/REASONING/DEEPSEARCH/BUILD/AGENT/…)는 값에 영향을 주지 않는다.
    // 예전 목록은 같은 버킷을 세 번 표시하고 있었다. grok-4-1·grok-4-fast·grok-code는 404다.
    // 이 응답은 windowSizeSeconds=7200, 즉 2시간 롤링 한도이며 주간 SuperGrok 한도와는 다르다.
    private val GROK_NATIVE_PROBES = listOf(
        GrokProbe("DEFAULT", "grok-4"),
        GrokProbe("DEFAULT", "grok-3")
    )

    private val CURSOR_NATIVE_PROBES = listOf(
        CursorProbe(CURSOR_CURRENT_PERIOD_USAGE_URL, "{}"),
        CursorProbe(CURSOR_PLAN_INFO_URL, "{}"),
        CursorProbe(CURSOR_CREDIT_GRANTS_API_URL, "{}"),
        CursorProbe(CURSOR_API_AUTH_USAGE_URL, "{}"),
        CursorProbe(CURSOR_STRIPE_URL),
        CursorProbe(CURSOR_USAGE_URL),
        CursorProbe(CURSOR_AUTH_USAGE_URL),
        CursorProbe(CURSOR_USAGE_SUMMARY_URL),
        CursorProbe(CURSOR_CREDIT_GRANTS_URL)
    )
    private val CURSOR_PLAN_KEYS = listOf(
        "membershipType",
        "plan",
        "planName",
        "plan_label",
        "planType",
        "limitType",
        "subscription",
        "tier"
    )
    private val CURSOR_ACCOUNT_KEYS = listOf("email", "account")
    private val CURSOR_USAGE_KEYS = listOf(
        "totalPercentUsed",
        "usedPercent",
        "used_percent",
        "utilization",
        "autoPercentUsed",
        "auto_percent_used",
        "autoUsagePercent",
        "auto_usage_percent",
        "apiPercentUsed",
        "api_percent_used",
        "apiUsagePercent",
        "api_usage_percent",
        "totalSpend",
        "totalUsage",
        "spend",
        "used",
        "usage",
        "limit",
        "monthlyLimit",
        "totalLimit",
        "remaining",
        "remainingPercent",
        "remaining_percent",
        "remainingFraction",
        "remaining_fraction",
        "individualLimit",
        "individualRemaining",
        "individualUsed",
        "individualUsage",
        "onDemandLimit",
        "onDemandRemaining",
        "onDemandUsed",
        "onDemandUsage",
        "totalRemaining",
        "balance",
        "billingCycleStart",
        "billingCycleEnd",
        "resetAt",
        "resetsAt",
        "resetText",
        "unit",
        "breakdown",
        "usageBreakdown",
        "spendLimitUsage",
        "onDemand"
    )
    private val OPENCODE_LIMIT_PERCENT_KEYS = setOf(
        "remaining_percent",
        "remainingPercent",
        "remainingPercentage",
        "remaining_percentage",
        "percent_remaining",
        "percentRemaining",
        "remainingFraction",
        "remaining_fraction",
        "used_percent",
        "usedPercent",
        "usedPercentage",
        "used_percentage",
        "percent_used",
        "percentUsed",
        "totalPercentUsed",
        "total_percent_used",
        "utilization",
        "u"
    )
    private val OPENCODE_LIMIT_AMOUNT_KEYS = setOf(
        "used",
        "usage",
        "remaining",
        "remainingAmount",
        "remaining_amount",
        "balance",
        "currentValue",
        "current_value"
    )
    private val OPENCODE_LIMIT_TOTAL_KEYS = setOf(
        "limit",
        "total",
        "limitAmount",
        "limit_amount"
    )
    private val OPENCODE_CREDIT_KEYS = setOf(
        "balance",
        "creditBalance",
        "credit_balance",
        "remainingCredits",
        "remaining_credits",
        "credits"
    )
    private val OPENCODE_CREDIT_LIMIT_KEYS = setOf(
        "limit",
        "total",
        "totalCredits",
        "total_credits"
    )
    private val OPENCODE_SENSITIVE_KEYS = setOf(
        "access_token",
        "id_token",
        "refresh_token",
        "token",
        "cookie",
        "authorization"
    )
    private val OPENCODE_STATE_MARKERS = listOf(
        "__NEXT_DATA__",
        "__INITIAL_STATE__",
        "__APP_DATA__",
        "__remixContext",
        "routeData",
        "dehydratedState"
    )
    private val OPENCODE_SCRIPT_JSON_PATTERN = Regex(
        """<script\b[^>]*type=["'][^"']*json[^"']*["'][^>]*>(.*?)</script>""",
        setOf(RegexOption.IGNORE_CASE, RegexOption.DOT_MATCHES_ALL)
    )
    private val OPENCODE_USAGE_CONTEXT_PATTERN = Regex(
        """usage|quota|limit|remaining|balance|credit""",
        RegexOption.IGNORE_CASE
    )
    private const val MAX_OPENCODE_TEXT_JSON_VALUES = 24
    private const val MAX_OPENCODE_CONTEXT_MATCHES = 32
    private const val OPENCODE_JSON_CONTEXT_WINDOW = 4_000
}
