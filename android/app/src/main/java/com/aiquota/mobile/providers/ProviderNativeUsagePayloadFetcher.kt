package com.aiquota.mobile.providers

import android.util.Log
import com.aiquota.mobile.local.ProviderId
import java.net.URLEncoder
import java.nio.charset.StandardCharsets
import java.util.Locale
import org.json.JSONArray
import org.json.JSONObject
import org.json.JSONTokener

object ProviderNativeUsagePayloadFetcher {
    fun bridgeUsagePayload(
        providerId: ProviderId,
        userAgent: String = ProviderWebViewUserAgent.loginUserAgent()
    ): String {
        if (!ProviderAboutBlankCollectorPolicy.isEnabled(providerId)) {
            return bridgeError(providerId, "provider_not_allowlisted")
        }
        val result = when (providerId) {
            ProviderId.CLAUDE -> fetchClaudePayload(userAgent)
            ProviderId.CODEX -> fetchCodexPayload(userAgent)
            ProviderId.GEMINI -> fetchGeminiPayload(userAgent)
            ProviderId.COPILOT -> NativePayloadResult(
                payload = CopilotNativeUsageFetcher.fetchUsagePayload(),
                diagnostic = "copilot_usage_unavailable"
            )
            else -> NativePayloadResult(payload = null, diagnostic = "provider_mismatch")
        }
        return bridgeResult(providerId, result)
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

    private fun codexFetchedPayload(rawText: String, plan: String?, accountId: String?, account: String?): JSONObject? {
        val parsed = runCatching { JSONTokener(rawText).nextValue() }.getOrNull()
        val usage = codexUsageFromValue(parsed)
            ?: codexUsageFromRaw(rawText)
            ?: return null
        val payload = JSONObject()
            .put("provider", ProviderId.CODEX.storageId)
            .put("usage", usage)
        accountId?.takeIf { it.isNotBlank() }?.let { payload.put("accountId", it) }
        account?.takeIf { it.isNotBlank() }?.let { payload.put("account", it) }
        plan?.takeIf { it.isNotBlank() }?.let { payload.put("plan", it) }
        return payload
    }

    private fun fetchClaudePayload(userAgent: String): NativePayloadResult {
        val statuses = mutableListOf<String>()
        val organizations = fetchWrapped(ProviderId.CLAUDE, CLAUDE_ORGANIZATIONS_URL, statuses, userAgent)
        val accountProfile = fetchWrapped(ProviderId.CLAUDE, CLAUDE_ACCOUNT_PROFILE_URL, statuses, userAgent)
        val orgId = claudeOrgId(organizations.jsonValue())
            ?: fetchWrapped(ProviderId.CLAUDE, CLAUDE_ORGANIZATIONS_ME_URL, statuses, userAgent)
                .let { claudeOrgId(it.jsonValue()) }
            ?: claudeOrgId(accountProfile.jsonValue())
            ?: return NativePayloadResult(null, "claude_organization_unavailable", statuses)
        val encodedOrgId = encodePath(orgId)
        val subscription = fetchWrapped(
            ProviderId.CLAUDE,
            "https://claude.ai/api/organizations/$encodedOrgId/subscription_details",
            statuses,
            userAgent
        )
        val usage = fetchWrapped(
            ProviderId.CLAUDE,
            "https://claude.ai/api/organizations/$encodedOrgId/usage",
            statuses,
            userAgent
        )
        val usageJson = usage.jsonObject() ?: return NativePayloadResult(null, "claude_usage_unavailable", statuses)
        val usagePayload = usageJson.optJSONObject("usage") ?: usageJson
        val payload = JSONObject()
            .put("provider", ProviderId.CLAUDE.storageId)
            .put("organizationId", orgId)
            .put("usage", usagePayload)
        findFirstString(accountProfile.jsonValue(), EMAIL_KEYS)?.let { payload.put("account", it) }
        findFirstString(subscription.jsonValue(), PLAN_KEYS)
            ?.let { payload.put("plan", it) }
        return verifiedPayload(ProviderId.CLAUDE, payload, "claude_usage_unavailable", statuses)
    }

    private fun fetchCodexPayload(userAgent: String): NativePayloadResult {
        val statuses = mutableListOf<String>()
        val session = fetchWrapped(ProviderId.CODEX, CODEX_SESSION_URL, statuses, userAgent)
        val me = fetchWrapped(ProviderId.CODEX, CODEX_ME_URL, statuses, userAgent)
        val accountCheck = fetchWrapped(ProviderId.CODEX, CODEX_ACCOUNT_CHECK_URL, statuses, userAgent)
        val accountId = findFirstString(me.jsonValue(), CODEX_ACCOUNT_ID_KEYS)
            ?: findFirstString(accountCheck.jsonValue(), CODEX_ACCOUNT_ID_KEYS)
            ?: findFirstString(session.jsonValue(), CODEX_ACCOUNT_ID_KEYS)
        val subscriptions = fetchWrapped(
            ProviderId.CODEX,
            accountId?.let { "$CODEX_SUBSCRIPTIONS_URL?account_id=${encodeQuery(it)}" } ?: CODEX_SUBSCRIPTIONS_URL,
            statuses,
            userAgent
        )
        val dashboard = fetchWrapped(ProviderId.CODEX, CODEX_USAGE_DASHBOARD_URL, statuses, userAgent)
        val usage = codexUsageFromValue(dashboard.jsonValue())
            ?: codexUsageFromRaw(dashboard.rawText())
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
            ?: findFirstString(accountCheck.jsonValue(), PLAN_KEYS)
            ?: findFirstString(me.jsonValue(), PLAN_KEYS)
        plan?.let { payload.put("plan", it) }
        return verifiedPayload(ProviderId.CODEX, payload, "codex_usage_unavailable", statuses)
    }

    private fun fetchGeminiPayload(userAgent: String): NativePayloadResult {
        val statuses = mutableListOf<String>()
        val usagePage = fetchWrapped(ProviderId.GEMINI, GEMINI_USAGE_URL, statuses, userAgent)
        val usage = geminiUsagePayloadFromValue(usagePage.jsonValue())
            ?: geminiUsagePayloadFromRaw(usagePage.rawText())
            ?: return NativePayloadResult(null, "gemini_usage_unavailable", statuses)
        return verifiedPayload(ProviderId.GEMINI, usage, "gemini_usage_unavailable", statuses)
    }

    private fun fetchWrapped(
        providerId: ProviderId,
        url: String,
        statuses: MutableList<String>,
        userAgent: String
    ): JSONObject {
        val wrapped = runCatching { JSONObject(ProviderNativeJsonBridge.fetchJson(providerId, url, userAgent)) }
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

    private fun bridgeResult(providerId: ProviderId, result: NativePayloadResult): String {
        val json = JSONObject()
            .put("ok", result.payload != null)
            .put("provider", providerId.storageId)
            .put("diagnostic", result.diagnostic)
            .put("statuses", JSONArray(result.statuses))
        result.payload?.let { payload ->
            json.put("payload", JSONTokener(payload).nextValue())
        }
        Log.d(
            TAG,
            "nativeUsage provider=${providerId.storageId} ok=${result.payload != null} diagnostic=${result.diagnostic}"
        )
        return json.toString()
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

    private fun codexUsageFromRaw(rawText: String?): JSONObject? {
        val text = rawText?.take(MAX_CODEX_HTML_SCAN_CHARS) ?: return null
        scriptJsonCandidates(text).forEach { candidate ->
            codexUsageFromValue(candidate)?.let { return it }
        }
        return null
    }

    internal fun geminiUsagePayloadFromRawForTest(rawText: String): JSONObject? {
        return geminiUsagePayloadFromRaw(rawText)
    }

    private fun geminiUsagePayloadFromRaw(rawText: String?): JSONObject? {
        val text = rawText?.take(MAX_GEMINI_HTML_SCAN_CHARS) ?: return null
        scriptJsonCandidates(text).forEach { candidate ->
            geminiUsagePayloadFromValue(candidate)?.let { return it }
        }
        val plainText = htmlToPlainText(text)
        return geminiUsagePayloadFromText(plainText.ifBlank { text })
    }

    private fun geminiUsagePayloadFromValue(value: Any?): JSONObject? {
        if (value is JSONObject &&
            value.optString("provider").equals(ProviderId.GEMINI.storageId, ignoreCase = true) &&
            value.optJSONObject("usage")?.optJSONArray("x")?.length()?.let { it > 0 } == true
        ) {
            return value
        }
        val lines = mutableListOf<JSONObject>()
        collectGeminiLineObjects(value, lines, null, 0)
        if (lines.isEmpty()) {
            val fragments = mutableListOf<String>()
            collectGeminiTextFragments(value, fragments, 0)
            return geminiUsagePayloadFromText(fragments.joinToString("\n"))
        }
        return geminiPayload(
            lines = lines,
            plan = geminiPlanFromString(findFirstString(value, GEMINI_PLAN_KEYS)),
            account = findFirstString(value, EMAIL_KEYS)
        )
    }

    private fun geminiUsagePayloadFromText(text: String): JSONObject? {
        val normalized = text.replace(Regex("[\r\t]+"), "\n")
        val lines = normalized
            .split(Regex("\n+"))
            .map { it.trim().replace(Regex("\\s+"), " ") }
            .filter { it.isNotBlank() }
        if (lines.isEmpty()) return null
        val usageLines = mutableListOf<JSONObject>()
        lines.forEachIndexed { index, line ->
            val percentMatch = PERCENT_REGEX.find(line) ?: return@forEachIndexed
            val percent = percentMatch.groupValues[1].replace(",", ".").toDoubleOrNull() ?: return@forEachIndexed
            val usedRate = geminiUsedRateFromPercentLine(line, percent) ?: return@forEachIndexed
            val label = geminiTextLineLabel(line)
                ?: geminiTextLineLabel(nearbyGeminiWindowText(lines, index).orEmpty())
                ?: "5-hour limit"
            val usageLine = JSONObject()
                .put("l", label)
                .put("u", roundRate(usedRate))
                .put("source", "gemini_native_text")
                .put("confidence", 0.78)
            nearbyGeminiResetText(lines, index)?.let { usageLine.put("t", it) }
            usageLines += usageLine
        }
        return geminiPayload(
            lines = usageLines,
            plan = geminiPlanFromText(normalized),
            account = EMAIL_REGEX.find(normalized)?.value
        )
    }

    private fun collectGeminiLineObjects(value: Any?, output: MutableList<JSONObject>, labelHint: String?, depth: Int) {
        if (depth > MAX_JSON_DEPTH || value == null || value == JSONObject.NULL || output.size >= MAX_GEMINI_LINES) return
        when (value) {
            is JSONObject -> {
                geminiLineFromObject(value, labelHint)?.let(output::add)
                val keys = value.keys()
                while (keys.hasNext()) {
                    val key = keys.next()
                    collectGeminiLineObjects(value.opt(key), output, key, depth + 1)
                }
            }
            is JSONArray -> {
                for (index in 0 until value.length()) {
                    collectGeminiLineObjects(value.opt(index), output, labelHint, depth + 1)
                }
            }
        }
    }

    private fun geminiLineFromObject(objectValue: JSONObject, labelHint: String?): JSONObject? {
        val label = geminiNativeLineLabel(
            objectValue.localString("l")
                ?: objectValue.localString("label")
                ?: objectValue.localString("title")
                ?: objectValue.localString("name")
                ?: objectValue.localString("modelId")
                ?: objectValue.localString("model_id")
                ?: labelHint
        ) ?: return null
        val usedRate = geminiUsedRate(objectValue) ?: return null
        val line = JSONObject()
            .put("l", label)
            .put("u", roundRate(usedRate))
            .put("source", "gemini_native_json")
            .put("confidence", 0.9)
        geminiResetText(objectValue)?.let { line.put("t", it) }
        geminiResetAt(objectValue)?.let { line.put("r", it) }
        return line
    }

    private fun geminiUsedRate(objectValue: JSONObject): Double? {
        val limit = objectValue.firstNumber("limit", "limitAmount", "limit_amount", "total", "quota")
        val used = objectValue.firstNumber("used", "usedAmount", "used_amount", "usage", "currentValue", "current_value")
        val remaining = objectValue.firstNumber("remaining", "remainingAmount", "remaining_amount", "balance")
        if (limit != null && limit > 0.0) {
            if (used != null) return (used / limit).coerceIn(0.0, 1.0)
            if (remaining != null) return (1.0 - remaining / limit).coerceIn(0.0, 1.0)
        }
        objectValue.firstNumber(
            "u",
            "usedRate",
            "used_rate",
            "usageRate",
            "usage_rate",
            "utilization"
        )?.let { return rateValue(it) }
        objectValue.firstNumber(
            "usedPercent",
            "used_percent",
            "usedPercentage",
            "used_percentage",
            "percentUsed",
            "percent_used",
            "totalPercentUsed",
            "total_percent_used"
        )?.let { return percentValue(it) }
        objectValue.firstNumber("remainingFraction", "remaining_fraction")?.let {
            return (1.0 - rateValue(it)).coerceIn(0.0, 1.0)
        }
        objectValue.firstNumber(
            "remainingPercent",
            "remaining_percent",
            "remainingPercentage",
            "remaining_percentage",
            "percentRemaining",
            "percent_remaining"
        )?.let { return (1.0 - percentValue(it)).coerceIn(0.0, 1.0) }
        return null
    }

    private fun geminiPayload(lines: List<JSONObject>, plan: String?, account: String?): JSONObject? {
        val compactLines = dedupeGeminiLines(lines)
        if (compactLines.isEmpty()) return null
        val payload = JSONObject()
            .put("provider", ProviderId.GEMINI.storageId)
            .put("usage", JSONObject().put("x", JSONArray(compactLines)))
        val accountObject = JSONObject()
        plan?.let { accountObject.put("p", it) }
        account?.let { accountObject.put("e", it) }
        if (accountObject.length() > 0) payload.put("account", accountObject)
        return payload
    }

    private fun dedupeGeminiLines(lines: List<JSONObject>): List<JSONObject> {
        val byLabel = linkedMapOf<String, JSONObject>()
        lines.forEach { line ->
            val label = line.optString("l").takeIf { it.isNotBlank() } ?: return@forEach
            val existing = byLabel[label]
            if (existing == null || geminiLineScore(line) >= geminiLineScore(existing)) {
                byLabel[label] = line
            }
        }
        val order = mapOf(
            "5-hour limit" to 0,
            "Weekly limit" to 1,
            "Gemini Flash" to 2,
            "Gemini Deep Research" to 3
        )
        return byLabel.values.sortedWith(compareBy({ order[it.optString("l")] ?: 100 }, { it.optString("l") }))
    }

    private fun geminiLineScore(line: JSONObject): Double {
        var score = line.optDouble("confidence", 0.0)
        if (line.has("r") || line.has("t")) score += 1.0
        if (line.optDouble("u", 0.0) > 0.0001) score += 2.0
        return score
    }

    private fun collectGeminiTextFragments(value: Any?, output: MutableList<String>, depth: Int) {
        if (depth > MAX_JSON_DEPTH || value == null || value == JSONObject.NULL || output.size >= MAX_TEXT_FRAGMENTS) return
        when (value) {
            is JSONObject -> {
                val keys = value.keys()
                while (keys.hasNext()) {
                    collectGeminiTextFragments(value.opt(keys.next()), output, depth + 1)
                }
            }
            is JSONArray -> {
                for (index in 0 until value.length()) {
                    collectGeminiTextFragments(value.opt(index), output, depth + 1)
                }
            }
            is String -> {
                if (isGeminiRelevantText(value)) output += value
            }
        }
    }

    private fun isGeminiRelevantText(value: String): Boolean {
        val lower = value.lowercase(Locale.US)
        return lower.contains("usage") ||
            lower.contains("limit") ||
            lower.contains("reset") ||
            lower.contains("gemini") ||
            value.contains("%") ||
            value.contains("\uC0AC\uC6A9") ||
            value.contains("\uD55C\uB3C4") ||
            value.contains("\uCD08\uAE30\uD654")
    }

    private fun geminiNativeLineLabel(value: String?): String? {
        val compact = value?.lowercase(Locale.US)?.replace(Regex("[^a-z0-9]+"), "").orEmpty()
        return when {
            compact.contains("deepresearch") -> "Gemini Deep Research"
            compact.contains("weekly") || compact.contains("sevenday") -> "Weekly limit"
            compact.contains("5hour") || compact.contains("fivehour") -> "5-hour limit"
            compact.contains("gemini") && compact.contains("flash") -> "Gemini Flash"
            compact.contains("gemini") && compact.contains("pro") -> "5-hour limit"
            compact == "flash" || compact.contains("flash") -> "Gemini Flash"
            compact == "pro" || compact.contains("pro") -> "5-hour limit"
            value?.contains("\uC8FC\uAC04") == true -> "Weekly limit"
            else -> null
        }
    }

    private fun geminiTextLineLabel(value: String): String? {
        return geminiNativeLineLabel(value)
    }

    private fun nearbyGeminiWindowText(lines: List<String>, index: Int): String? {
        for (offset in 1..4) {
            val before = lines.getOrNull(index - offset).orEmpty()
            if (before.contains("%")) continue
            geminiTextLineLabel(before)?.let { return before }
            if (before.contains("usage", ignoreCase = true) || before.contains("\uC0AC\uC6A9")) return before
        }
        for (offset in 1..2) {
            val after = lines.getOrNull(index + offset).orEmpty()
            if (after.contains("%")) continue
            geminiTextLineLabel(after)?.let { return after }
        }
        return null
    }

    private fun nearbyGeminiResetText(lines: List<String>, index: Int): String? {
        for (offset in 1..4) {
            val after = lines.getOrNull(index + offset).orEmpty()
            if (after.contains("reset", ignoreCase = true) || after.contains("\uCD08\uAE30\uD654")) return after
            if (geminiTextLineLabel(after) != null && !after.contains("%")) break
        }
        return null
    }

    private fun geminiUsedRateFromPercentLine(line: String, percent: Double): Double? {
        val lower = line.lowercase(Locale.US)
        return when {
            lower.contains("left") ||
                lower.contains("remaining") ||
                line.contains("\uB0A8\uC74C") -> (1.0 - percent / 100.0).coerceIn(0.0, 1.0)
            lower.contains("used") ||
                line.contains("\uC0AC\uC6A9\uB428") ||
                line.contains("\uC0AC\uC6A9\uB7C9") -> (percent / 100.0).coerceIn(0.0, 1.0)
            else -> (percent / 100.0).coerceIn(0.0, 1.0)
        }
    }

    private fun geminiPlanFromText(text: String): String? {
        return GEMINI_PLAN_REGEX.find(text)?.value?.let(::geminiPlanFromString)
    }

    private fun geminiPlanFromString(value: String?): String? {
        val compact = value?.lowercase(Locale.US)?.replace(Regex("[^a-z0-9]+"), "").orEmpty()
        return when {
            compact.contains("ultra") -> "GEMINI_ULTRA"
            compact.contains("plus") -> "GEMINI_PLUS"
            compact.contains("pro") -> "GEMINI_PRO"
            compact.contains("free") -> "GEMINI_FREE"
            compact.contains("paid") -> "Paid"
            compact.contains("legacy") -> "Legacy"
            else -> null
        }
    }

    private fun JSONObject.localString(key: String): String? {
        val value = opt(key)
        return when (value) {
            is String -> value.takeIf { it.isNotBlank() && it != "null" }
            is Number, is Boolean -> value.toString()
            else -> null
        }
    }

    private fun JSONObject.firstNumber(vararg keys: String): Double? {
        keys.forEach { key ->
            val value = opt(key)
            when (value) {
                is Number -> return value.toDouble()
                is String -> value.replace(",", ".").toDoubleOrNull()?.let { return it }
            }
        }
        return null
    }

    private fun geminiResetText(objectValue: JSONObject): String? {
        return objectValue.localString("t")
            ?: objectValue.localString("resetText")
            ?: objectValue.localString("reset_text")
    }

    private fun geminiResetAt(objectValue: JSONObject): String? {
        return objectValue.localString("r")
            ?: objectValue.localString("resetsAt")
            ?: objectValue.localString("resets_at")
            ?: objectValue.localString("resetAt")
            ?: objectValue.localString("reset_at")
    }

    private fun rateValue(value: Double): Double {
        return (if (value > 1.0) value / 100.0 else value).coerceIn(0.0, 1.0)
    }

    private fun percentValue(value: Double): Double {
        return (value / 100.0).coerceIn(0.0, 1.0)
    }

    private fun roundRate(value: Double): Double {
        return kotlin.math.round(value.coerceIn(0.0, 1.0) * 10_000.0) / 10_000.0
    }

    private fun htmlToPlainText(rawText: String): String {
        return htmlDecode(rawText)
            .replace(Regex("<script[\\s\\S]*?</script>", RegexOption.IGNORE_CASE), "\n")
            .replace(Regex("<style[\\s\\S]*?</style>", RegexOption.IGNORE_CASE), "\n")
            .replace(Regex("<[^>]+>"), "\n")
            .replace(Regex("\\n{2,}"), "\n")
            .trim()
    }

    private fun scriptJsonCandidates(text: String): List<Any> {
        val candidates = mutableListOf<Any>()
        SCRIPT_JSON_REGEX.findAll(text).forEach { match ->
            val body = htmlDecode(match.groupValues[1]).trim()
            parseJsonCandidate(body)?.let(candidates::add)
        }
        return candidates
    }

    private fun parseJsonCandidate(text: String): Any? {
        if (text.isBlank()) return null
        return runCatching { JSONTokener(text).nextValue() }
            .getOrNull()
            ?.takeIf { it is JSONObject || it is JSONArray }
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

    private fun htmlDecode(value: String): String {
        return value
            .replace("&quot;", "\"")
            .replace("&#34;", "\"")
            .replace("&amp;", "&")
            .replace("&lt;", "<")
            .replace("&gt;", ">")
    }

    private data class NativePayloadResult(
        val payload: String?,
        val diagnostic: String,
        val statuses: List<String> = emptyList()
    )

    private const val TAG = "AIQuotaNativeUsage"
    private const val MAX_JSON_DEPTH = 16
    private const val MAX_STRING_MATCHES = 64
    private const val MAX_TEXT_FRAGMENTS = 512
    private const val MAX_GEMINI_LINES = 32
    private const val MAX_CODEX_HTML_SCAN_CHARS = 1_000_000
    private const val MAX_GEMINI_HTML_SCAN_CHARS = 1_000_000
    private val SCRIPT_JSON_REGEX = Regex(
        """<script[^>]*type=["']application/json["'][^>]*>([\s\S]*?)</script>""",
        setOf(RegexOption.IGNORE_CASE)
    )
    private val PERCENT_REGEX = Regex("""(\d+(?:[\.,]\d+)?)\s*%""")
    private val EMAIL_REGEX = Regex("""[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,}""", RegexOption.IGNORE_CASE)
    private val GEMINI_PLAN_REGEX = Regex(
        """Google\s+AI\s+(?:Pro|Plus|Ultra)|Gemini\s+(?:Pro|Plus|Ultra|Free)|\b(?:Pro|Plus|Ultra|Free|Paid|Legacy)\b""",
        RegexOption.IGNORE_CASE
    )

    private const val CLAUDE_ACCOUNT_PROFILE_URL = "https://claude.ai/api/account_profile"
    private const val CLAUDE_ORGANIZATIONS_URL = "https://claude.ai/api/organizations"
    private const val CLAUDE_ORGANIZATIONS_ME_URL = "https://claude.ai/api/organizations/me"

    private const val CODEX_SESSION_URL = "https://chatgpt.com/api/auth/session"
    private const val CODEX_ME_URL = "https://chatgpt.com/backend-api/me"
    private const val CODEX_ACCOUNT_CHECK_URL = "https://chatgpt.com/backend-api/accounts/check/v4-2023-04-27"
    private const val CODEX_SUBSCRIPTIONS_URL = "https://chatgpt.com/backend-api/subscriptions"
    private const val CODEX_USAGE_DASHBOARD_URL = "https://chatgpt.com/codex/cloud/settings/analytics"
    private const val GEMINI_USAGE_URL = "https://gemini.google.com/usage"

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
    private val GEMINI_PLAN_KEYS = setOf(
        "plan",
        "plan_type",
        "plantype",
        "plan_name",
        "planname",
        "subscription_plan",
        "subscriptionplan",
        "tier",
        "sku",
        "membershiptype",
        "membership_type",
        "p"
    )
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
}
