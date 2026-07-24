package com.aiquota.mobile.providers

import android.util.Log
import android.webkit.CookieManager
import com.aiquota.mobile.local.ProviderId
import java.net.HttpURLConnection
import java.net.URL
import java.nio.charset.StandardCharsets
import java.time.Instant
import java.util.Locale
import org.json.JSONArray
import org.json.JSONObject
import org.json.JSONTokener

internal object GeminiUsagePageNativeFetcher {
    data class FetchResult(
        val payload: String?,
        val diagnostic: String,
        val statuses: List<String> = emptyList()
    )

    fun fetchUsagePayload(
        userAgent: String,
        sessionCookieHeader: String? = null,
        usagePageUrl: String = GEMINI_USAGE_PAGE_URL,
        observedRpcIds: List<String> = emptyList()
    ): FetchResult {
        val requestUsagePageUrl = GeminiUsagePageRoutes.canonicalUsageUrl(usagePageUrl) ?: GEMINI_USAGE_PAGE_URL
        val usagePath = usagePathForLog(requestUsagePageUrl)
        val cookieHeader = sessionCookieHeader?.takeIf(String::isNotBlank)
            ?: CookieManager.getInstance().getCookie(requestUsagePageUrl)
            ?: CookieManager.getInstance().getCookie(GEMINI_ORIGIN)
            ?: return FetchResult(null, "gemini_usage_cookie_unavailable")
        val requestUserAgent = userAgent.takeIf { it.isNotBlank() } ?: ProviderWebViewUserAgent.loginUserAgent()
        val sessionResult = fetchUsagePageParams(cookieHeader, requestUserAgent, requestUsagePageUrl)
        val statuses = sessionResult.statuses.toMutableList()
        sessionResult.bootstrapPayload?.let { payload ->
            mergeGeminiMetadata(payload, sessionResult.bootstrapMetadata)
            return FetchResult(payload.toString(), "ok", statuses + "gemini_usage_page_bootstrap:200")
        }
        val params = sessionResult.params
            ?: return FetchResult(null, sessionResult.diagnostic, statuses)
        val candidateRpcIds = (observedRpcIds + sessionResult.candidateRpcIds)
            .filter { it.matches(RPC_ID_ALLOWLIST_PATTERN) }
            .distinct()
            .filterNot { it == JSF9QC_RPC_ID }
            .take(MAX_PROBE_RPC_IDS)
        for (rpcId in candidateRpcIds) {
            val result = fetchBatchExecuteRpc(
                params = params,
                cookieHeader = cookieHeader,
                userAgent = requestUserAgent,
                usagePageUrl = requestUsagePageUrl,
                rpcId = rpcId
            )
            statuses += result.status
            result.payload?.let {
                mergeGeminiMetadata(it, sessionResult.bootstrapMetadata)
                return FetchResult(it.toString(), "ok", statuses)
            }
        }
        val legacyResult = fetchBatchExecuteRpc(
            params = params,
            cookieHeader = cookieHeader,
            userAgent = requestUserAgent,
            usagePageUrl = requestUsagePageUrl,
            rpcId = JSF9QC_RPC_ID
        )
        statuses += legacyResult.status
        legacyResult.payload?.let {
            mergeGeminiMetadata(it, sessionResult.bootstrapMetadata)
            return FetchResult(it.toString(), "ok", statuses)
        }
        return FetchResult(null, "gemini_usage_page_rpc_unavailable", statuses)
    }

    private fun fetchBatchExecuteRpc(
        params: GeminiUsagePageRpcSession.Params,
        cookieHeader: String,
        userAgent: String,
        usagePageUrl: String,
        rpcId: String
    ): RpcFetchResult {
        val endpoint = batchExecuteUrl(params, usagePageUrl, rpcId)
        val statusLabel = "gemini_usage_rpc_$rpcId"
        return runCatching {
            val requestPayload = batchExecuteRequest(rpcId)
            val body = if (params.at.isBlank()) {
                "f.req=${encodeQuery(requestPayload)}&"
            } else {
                "f.req=${encodeQuery(requestPayload)}&at=${encodeQuery(params.at)}&"
            }
            val bodyBytes = body.toByteArray(StandardCharsets.UTF_8)
            val connection = (URL(endpoint).openConnection() as HttpURLConnection).apply {
                connectTimeout = NETWORK_TIMEOUT_MS
                readTimeout = NETWORK_TIMEOUT_MS
                requestMethod = "POST"
                doOutput = true
                setRequestProperty("Accept", "*/*")
                setRequestProperty("Accept-Language", "${params.hl},en-US;q=0.8,en;q=0.7")
                setRequestProperty("Content-Type", "application/x-www-form-urlencoded;charset=UTF-8")
                setRequestProperty("Cookie", cookieHeader)
                setRequestProperty("Origin", GEMINI_ORIGIN)
                setRequestProperty("Referer", usagePageUrl)
                setRequestProperty("User-Agent", userAgent)
                setRequestProperty("X-Same-Domain", "1")
                outputStream.use { it.write(bodyBytes) }
            }
            val status = connection.responseCode
            val stream = if (status in 200..299) connection.inputStream else connection.errorStream
            val text = stream?.bufferedReader(StandardCharsets.UTF_8)?.use { it.readText() }.orEmpty()
            connection.disconnect()
            Log.d(
                TAG,
                discoveryMetadataFromBatchExecute(
                    rawText = text,
                    status = status,
                    usagePageUrl = usagePageUrl,
                    payloadBytes = text.toByteArray(StandardCharsets.UTF_8).size,
                    rpcId = rpcId
                )
            )
            val payload = if (status in 200..299) usagePayloadFromBatchExecute(text, rpcId) else null
            ProviderPlanProvenanceDiagnostics.log(
                ProviderPlanProvenanceDiagnostics.Record(
                    provider = "gemini",
                    endpointLabel = "gemini_usage_rpc",
                    rpcLabel = rpcId,
                    httpStatus = status,
                    keyPath = "${'$'}.usage_rpc[0]",
                    jsonType = ProviderPlanProvenanceDiagnostics.jsonType(payload),
                    present = payload != null,
                    planPresent = payload?.has("plan") == true,
                    accountPresent = payload?.has("account") == true,
                    byteCount = text.toByteArray(StandardCharsets.UTF_8).size,
                    endpointCount = 2,
                    requestCountDelta = 0,
                    transformTarget = "T6_GEMINI_EXISTING_RESPONSE_MERGE",
                    fallbackPolicy = "WEBVIEW_DEVTOOLS_ONLY_IF_NO_OBSERVED_SOURCE",
                    protectedFlow = "GeminiUsagePageNativeFetcher.fetchBatchExecuteRpc",
                    keyCount = ProviderPlanProvenanceDiagnostics.keyCount(payload)
                )
            )
            RpcFetchResult(payload, "$statusLabel:$status")
        }.getOrElse { error ->
            Log.d(TAG, "geminiUsageRpc usagePath=${usagePathForLog(usagePageUrl)} rpcId=$rpcId error=${error.javaClass.simpleName}")
            RpcFetchResult(null, "$statusLabel:error")
        }
    }

    internal fun usagePayloadFromBatchExecuteForTest(rawText: String, rpcId: String = JSF9QC_RPC_ID): JSONObject? {
        return usagePayloadFromBatchExecute(rawText, rpcId)
    }

    internal fun usagePageParamsFromHtmlForTest(rawText: String, nowMillis: Long): GeminiUsagePageRpcSession.Params? {
        return usagePageParamsFromHtml(rawText, nowMillis)
    }

    internal fun batchExecuteUrlForTest(params: GeminiUsagePageRpcSession.Params, usagePageUrl: String): String {
        return batchExecuteUrl(params, usagePageUrl)
    }

    internal fun discoveryMetadataFromBatchExecuteForTest(
        rawText: String,
        status: Int,
        usagePageUrl: String,
        payloadBytes: Int,
        rpcId: String = JSF9QC_RPC_ID
    ): String {
        return discoveryMetadataFromBatchExecute(rawText, status, usagePageUrl, payloadBytes, rpcId)
    }

    internal fun discoveryMetadataFromHtmlForTest(
        rawText: String,
        status: Int,
        usagePageUrl: String,
        payloadBytes: Int
    ): String {
        return discoveryMetadataFromHtml(rawText, status, usagePageUrl, payloadBytes)
    }

    internal fun usagePayloadFromHtmlBootstrapForTest(rawText: String): JSONObject? {
        return usagePayloadFromHtmlBootstrap(rawText)
    }

    internal fun geminiPlanAccountFromHtmlForTest(rawText: String): JSONObject? {
        return geminiPlanAccountFromHtml(rawText)
    }

    internal fun mergeGeminiMetadataForTest(payload: JSONObject, metadata: JSONObject?) {
        mergeGeminiMetadata(payload, metadata)
    }

    private fun fetchUsagePageParams(cookieHeader: String, userAgent: String, usagePageUrl: String): RpcSessionResult {
        val statusLabel = "gemini_usage_page_html"
        val usagePath = usagePathForLog(usagePageUrl)
        return runCatching {
            val connection = (URL(usagePageUrl).openConnection() as HttpURLConnection).apply {
                connectTimeout = NETWORK_TIMEOUT_MS
                readTimeout = NETWORK_TIMEOUT_MS
                requestMethod = "GET"
                setRequestProperty("Accept", "text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8")
                setRequestProperty("Accept-Language", "en-US,en;q=0.8")
                setRequestProperty("Cookie", cookieHeader)
                setRequestProperty("Referer", GEMINI_ORIGIN)
                setRequestProperty("User-Agent", userAgent)
            }
            val status = connection.responseCode
            val stream = if (status in 200..299) connection.inputStream else connection.errorStream
            val text = stream?.bufferedReader(StandardCharsets.UTF_8)?.use { it.readText() }.orEmpty()
            connection.disconnect()
            Log.d(
                TAG,
                discoveryMetadataFromHtml(
                    text,
                    status,
                    usagePageUrl,
                    text.toByteArray(StandardCharsets.UTF_8).size
                )
            )
            ProviderPlanProvenanceDiagnostics.log(
                ProviderPlanProvenanceDiagnostics.Record(
                    provider = "gemini",
                    endpointLabel = "gemini_usage_html",
                    httpStatus = status,
                    keyPath = "${'$'}.usage_html",
                    jsonType = "string",
                    present = text.isNotBlank(),
                    planPresent = false,
                    accountPresent = false,
                    byteCount = text.toByteArray(StandardCharsets.UTF_8).size,
                    endpointCount = 1,
                    requestCountDelta = 0,
                    transformTarget = "T6_GEMINI_EXISTING_RESPONSE_MERGE",
                    fallbackPolicy = "WEBVIEW_DEVTOOLS_ONLY_IF_NO_OBSERVED_SOURCE",
                    protectedFlow = "GeminiUsagePageNativeFetcher.fetchUsagePageParams"
                )
            )
            if (status !in 200..299) {
                return RpcSessionResult(
                    params = null,
                    diagnostic = "gemini_usage_page_http_$status",
                    statuses = listOf("$statusLabel:$status"),
                    candidateRpcIds = emptyList(),
                    bootstrapPayload = null
                )
            }
            val candidateRpcIds = discoverCandidateRpcIds(
                rawHtml = text,
                cookieHeader = cookieHeader,
                userAgent = userAgent,
                usagePageUrl = usagePageUrl
            )
            val bootstrapPayload = usagePayloadFromHtmlBootstrap(text)
            val bootstrapMetadata = geminiPlanAccountFromHtml(text)
            if (bootstrapPayload != null) {
                Log.d(
                    TAG,
                    "geminiUsageBootstrap " + payloadMetadata(bootstrapPayload, usagePageUrl)
                )
            }
            val params = usagePageParamsFromHtml(text)
                ?: return RpcSessionResult(
                    params = null,
                    diagnostic = "gemini_usage_page_rpc_params_unavailable",
                    statuses = listOf("$statusLabel:$status"),
                    candidateRpcIds = candidateRpcIds.ids,
                    bootstrapPayload = bootstrapPayload,
                    bootstrapMetadata = bootstrapMetadata
                )
            RpcSessionResult(
                params = params,
                diagnostic = "ok",
                statuses = listOf("$statusLabel:$status") + candidateRpcIds.statuses,
                candidateRpcIds = candidateRpcIds.ids,
                bootstrapPayload = bootstrapPayload,
                bootstrapMetadata = bootstrapMetadata
            )
        }.getOrElse { error ->
            Log.d(TAG, "geminiUsagePageHtml usagePath=$usagePath error=${error.javaClass.simpleName}")
            RpcSessionResult(
                params = null,
                diagnostic = "gemini_usage_page_${error.javaClass.simpleName}",
                statuses = listOf("$statusLabel:error"),
                candidateRpcIds = emptyList(),
                bootstrapPayload = null
            )
        }
    }

    private fun usagePageParamsFromHtml(
        rawText: String,
        nowMillis: Long = System.currentTimeMillis()
    ): GeminiUsagePageRpcSession.Params? {
        val data = wizGlobalDataFromHtml(rawText) ?: return null
        // The SNlM0e XSRF token is required for the usage batchexecute RPC — omitting it returns
        // HTTP 400 ("xsrf"). Google changed the token prefix (e.g. AD1_ → ADR5za…), so accept any
        // non-blank token instead of hardcoding a prefix, which previously dropped valid tokens and
        // broke Gemini usage collection.
        val at = data.optString("SNlM0e").takeIf { it.isNotBlank() }.orEmpty()
        val fSid = data.optString("FdrFJe").takeIf { it.isNotBlank() } ?: return null
        val bl = data.optString("cfb2h").takeIf { it.isNotBlank() } ?: return null
        val hl = data.optString("hl")
            .takeIf { it.isNotBlank() }
            ?: Locale.getDefault().language.takeIf { it.isNotBlank() }
            ?: "en"
        return GeminiUsagePageRpcSession.Params(
            at = at,
            fSid = fSid,
            bl = bl,
            hl = hl,
            capturedAtMillis = nowMillis
        )
    }

    private fun wizGlobalDataFromHtml(rawText: String): JSONObject? {
        val marker = rawText.indexOf("WIZ_global_data")
        if (marker < 0) return null
        val start = rawText.indexOf('{', marker)
        if (start < 0) return null
        val end = balancedJsonObjectEnd(rawText, start) ?: return null
        return runCatching { JSONObject(rawText.substring(start, end + 1)) }.getOrNull()
    }

    private fun balancedJsonObjectEnd(value: String, start: Int): Int? {
        return balancedJsonEnd(value, start, '{', '}')
    }

    private fun balancedJsonArrayEnd(value: String, start: Int): Int? {
        return balancedJsonEnd(value, start, '[', ']')
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

    private fun usagePayloadFromBatchExecute(rawText: String): JSONObject? {
        return usagePayloadFromBatchExecute(rawText, JSF9QC_RPC_ID)
    }

    private fun usagePayloadFromBatchExecute(rawText: String, rpcId: String): JSONObject? {
        val quotaPayload = findRpcPayload(rawText, rpcId) ?: return null
        quotaPayload.optJSONArray(1)?.let { rows ->
            usagePayloadFromRows(rows, "native-usage-page-rpc")?.let { payload ->
                geminiPlanAccountFromEnvelope(quotaPayload)?.let { metadata ->
                    metadata.optionalStringOnly("plan")?.let { payload.put("plan", it) }
                    metadata.optionalStringOnly("account")?.let { payload.put("account", it) }
                }
                return payload
            }
        }
        return null
    }

    private fun usagePayloadFromHtmlBootstrap(rawText: String): JSONObject? {
        val rowsByType = linkedMapOf<Int, JSONArray>()
        val metadata = geminiPlanAccountFromHtml(rawText)
        afDataArraysFromHtml(rawText).forEach { data ->
            collectQuotaRowsDeep(data, rowsByType)
        }
        QUOTA_BOOTSTRAP_ROW_PATTERN.findAll(rawText).forEach { match ->
            val type = match.groupValues[3].toIntOrNull() ?: return@forEach
            val row = JSONArray()
                .put(match.groupValues[1].toDoubleOrNull() ?: return@forEach)
                .put(match.groupValues[2].toDoubleOrNull() ?: return@forEach)
                .put(type)
                .put(resetArrayFromText(match.groupValues[4]) ?: JSONObject.NULL)
            rowsByType[type] = row
        }
        if (rowsByType.isEmpty()) return null
        return usagePayloadFromRows(JSONArray(rowsByType.values.toList()), "native-usage-page-bootstrap")
            ?.apply { mergeGeminiMetadata(this, metadata) }
    }

    private fun afDataArraysFromHtml(rawText: String): List<JSONArray> {
        val arrays = mutableListOf<JSONArray>()
        var searchFrom = 0
        while (true) {
            val callback = rawText.indexOf("AF_initDataCallback", searchFrom)
            if (callback < 0) break
            searchFrom = callback + "AF_initDataCallback".length
            val nextCallback = rawText.indexOf("AF_initDataCallback", searchFrom).takeIf { it >= 0 } ?: rawText.length
            val dataKey = rawText.indexOf("data:", searchFrom).takeIf { it >= 0 && it < nextCallback } ?: continue
            val start = rawText.indexOf('[', dataKey).takeIf { it >= 0 && it < nextCallback } ?: continue
            val end = balancedJsonArrayEnd(rawText, start) ?: continue
            val parsed = runCatching { JSONTokener(rawText.substring(start, end + 1)).nextValue() as? JSONArray }.getOrNull()
            if (parsed != null) arrays += parsed
        }
        return arrays
    }

    private fun collectQuotaRowsDeep(value: Any?, rowsByType: MutableMap<Int, JSONArray>) {
        when (value) {
            is JSONArray -> {
                val line = quotaLine(value)
                val type = when (line?.optString("l")) {
                    "5-hour limit" -> 1
                    "Weekly limit" -> 2
                    else -> null
                }
                if (type != null) rowsByType[type] = value
                for (index in 0 until value.length()) collectQuotaRowsDeep(value.opt(index), rowsByType)
            }
            is JSONObject -> value.keys().forEach { key -> collectQuotaRowsDeep(value.opt(key), rowsByType) }
        }
    }

    private fun geminiAccountDeep(value: Any?): JSONObject? {
        return when (value) {
            is JSONObject -> {
                if (value.optString("p").isNotBlank() || value.optString("e").isNotBlank()) {
                    JSONObject().apply {
                        value.optString("p").takeIf { it.isNotBlank() }?.let { put("p", it) }
                        value.optString("e").takeIf { it.isNotBlank() }?.let { put("e", it) }
                    }
                } else {
                    value.keys().asSequence().firstNotNullOfOrNull { key -> geminiAccountDeep(value.opt(key)) }
                }
            }
            is JSONArray -> {
                for (index in 0 until value.length()) {
                    geminiAccountDeep(value.opt(index))?.let { return it }
                }
                null
            }
            else -> null
        }
    }

    private fun geminiPlanAccountFromHtml(rawText: String): JSONObject? {
        afDataArraysFromHtml(rawText).forEach { data ->
            geminiPlanAccountDeep(data)?.let { return it }
        }
        return null
    }

    private fun geminiPlanAccountFromEnvelope(value: Any?): JSONObject? {
        return geminiPlanAccountDeep(value)
    }

    private fun geminiPlanAccountDeep(value: Any?): JSONObject? {
        return when (value) {
            is JSONObject -> {
                val explicitPlan = sanitizedGeminiPlan(value.optionalStringOnly("plan"))
                val explicitAccount = sanitizedGeminiAccount(value.optionalStringOnly("account"))
                val compactPlan = value.optionalStringOnly("p")
                    ?.takeIf { isPlausibleGeminiTierToken(it) }
                    ?.let(::sanitizedGeminiPlan)
                val compactAccount = value.optionalStringOnly("e")?.let(::sanitizedGeminiAccount)
                val plan = explicitPlan ?: compactPlan.takeIf { compactAccount != null }
                val account = explicitAccount ?: compactAccount.takeIf { compactPlan != null }
                if (plan != null || account != null) {
                    JSONObject().apply {
                        plan?.let { put("plan", it) }
                        account?.let { put("account", it) }
                    }
                } else {
                    value.keys().asSequence().firstNotNullOfOrNull { key -> geminiPlanAccountDeep(value.opt(key)) }
                }
            }
            is JSONArray -> {
                for (index in 0 until value.length()) {
                    geminiPlanAccountDeep(value.opt(index))?.let { return it }
                }
                null
            }
            else -> null
        }
    }

    private fun usagePayloadFromRows(rows: JSONArray, collectorMode: String): JSONObject? {
        val lines = quotaRows(rows)
        return usagePayloadFromLines(lines, collectorMode)
    }

    private fun mergeGeminiMetadata(payload: JSONObject, metadata: JSONObject?) {
        val plan = sanitizedGeminiPlan(metadata?.optionalStringOnly("plan"))
        val account = sanitizedGeminiAccount(metadata?.optionalStringOnly("account"))
        if (plan != null && !payload.has("plan")) payload.put("plan", plan)
        if (account != null && !payload.has("account")) {
            payload.put("account", JSONObject().apply {
                plan?.let { put("p", it) }
                put("e", account)
            })
        }
    }

    private fun usagePayloadFromLines(lines: JSONArray, collectorMode: String): JSONObject? {
        if (lines.length() == 0) return null
        return JSONObject()
            .put("provider", ProviderId.GEMINI.storageId)
            .put("collectorMode", collectorMode)
            .put("usage", JSONObject().put("x", lines))
    }

    private fun resetArrayFromText(value: String): JSONArray? {
        val match = RESET_BOOTSTRAP_PATTERN.find(value) ?: return null
        return JSONArray().put(JSONArray().put(match.groupValues[1].toLong()).put(match.groupValues[2].toLong()))
    }

    private fun discoveryMetadataFromBatchExecute(
        rawText: String,
        status: Int,
        usagePageUrl: String,
        payloadBytes: Int,
        rpcId: String = JSF9QC_RPC_ID
    ): String {
        val quotaPayload = findRpcPayload(rawText, rpcId)
        val lines = quotaPayload
            ?.optJSONArray(1)
            ?.let(::quotaRows)
            ?: JSONArray()
        val labels = mutableListOf<String>()
        val remainingPercents = mutableListOf<String>()
        val quotaSummaries = mutableListOf<String>()
        for (index in 0 until lines.length()) {
            val line = lines.optJSONObject(index) ?: continue
            labels += line.optString("l").takeIf { it.isNotBlank() } ?: continue
            remainingPercents += formatNumber(line.optDouble("remaining_percent"))
            quotaSummaries += listOf("remaining", "used", "limit").joinToString("/") { key ->
                "$key=${formatNumber(line.optDouble(key))}"
            }
        }
        val deepLines = quotaPayload?.let(::deepQuotaRows) ?: JSONArray()
        val deepRemainingPercents = mutableListOf<String>()
        for (index in 0 until deepLines.length()) {
            val line = deepLines.optJSONObject(index) ?: continue
            deepRemainingPercents += formatNumber(line.optDouble("remaining_percent"))
        }
        return "geminiUsageDiscovery " + listOf(
            "provider=${ProviderId.GEMINI.storageId}",
            "usagePath=${usagePathForLog(usagePageUrl)}",
            "rpcId=$rpcId",
            "status=$status",
            "payloadBytes=$payloadBytes",
            "shape=${shapeSummary(quotaPayload)}",
            "rowCount=${lines.length()}",
            "labels=${labels.joinToString("|")}",
            "remainingPercents=${remainingPercents.joinToString("|")}",
            "quotaSummaries=${quotaSummaries.joinToString("|")}",
            "deepRowCount=${deepLines.length()}",
            "deepRemainingPercents=${deepRemainingPercents.joinToString("|")}"
        ).joinToString(" ")
    }

    private fun discoveryMetadataFromHtml(
        rawText: String,
        status: Int,
        usagePageUrl: String,
        payloadBytes: Int
    ): String {
        val candidateRpcIds = candidateRpcIdsFromHtml(rawText)
        val afDataArrays = afDataArraysFromHtml(rawText)
        return "geminiUsageHtmlDiscovery " + listOf(
            "provider=${ProviderId.GEMINI.storageId}",
            "usagePath=${usagePathForLog(usagePageUrl)}",
            "status=$status",
            "payloadBytes=$payloadBytes",
            "scriptSrcCount=${scriptUrlsFromHtml(rawText).size}",
            "batchexecuteCount=${countOccurrences(rawText, "batchexecute")}",
            "afInitCount=${countOccurrences(rawText, "AF_initDataCallback")}",
            "afDataCount=${afDataArrays.size}",
            "afShapes=${afDataArrays.take(3).joinToString("|") { shapeSummary(it) }}",
            "usageSignalCount=${USAGE_CONTEXT_PATTERN.findAll(rawText).count()}",
            "candidateRpcCount=${candidateRpcIds.size}",
            "rpcIds=${candidateRpcIds.joinToString("|")}"
        ).joinToString(" ")
    }

    private fun payloadMetadata(payload: JSONObject, usagePageUrl: String): String {
        val lines = payload.optJSONObject("usage")?.optJSONArray("x") ?: JSONArray()
        val labels = mutableListOf<String>()
        val remainingPercents = mutableListOf<String>()
        for (index in 0 until lines.length()) {
            val line = lines.optJSONObject(index) ?: continue
            labels += line.optString("l").takeIf { it.isNotBlank() } ?: continue
            remainingPercents += formatNumber(line.optDouble("remaining_percent"))
        }
        return listOf(
            "provider=${ProviderId.GEMINI.storageId}",
            "usagePath=${usagePathForLog(usagePageUrl)}",
            "collectorMode=${payload.optString("collectorMode")}",
            "rowCount=${lines.length()}",
            "labels=${labels.joinToString("|")}",
            "remainingPercents=${remainingPercents.joinToString("|")}"
        ).joinToString(" ")
    }

    private fun discoverCandidateRpcIds(
        rawHtml: String,
        cookieHeader: String,
        userAgent: String,
        usagePageUrl: String
    ): CandidateRpcDiscovery {
        val htmlCandidates = candidateRpcIdsFromHtml(rawHtml)
        if (htmlCandidates.any { it != JSF9QC_RPC_ID }) {
            return CandidateRpcDiscovery(htmlCandidates, emptyList())
        }
        val statuses = mutableListOf<String>()
        val candidates = linkedSetOf<String>()
        val scriptUrls = scriptUrlsFromHtml(rawHtml)
        for ((index, scriptUrl) in scriptUrls.withIndex()) {
            val result = fetchScriptCandidates(scriptUrl, cookieHeader, userAgent)
            statuses += "gemini_usage_script_${index + 1}:${result.status}"
            candidates += result.candidateRpcIds
            Log.d(
                TAG,
                "geminiUsageScriptDiscovery " + listOf(
                    "provider=${ProviderId.GEMINI.storageId}",
                    "usagePath=${usagePathForLog(usagePageUrl)}",
                    "scriptIndex=${index + 1}",
                    "status=${result.status}",
                    "payloadBytes=${result.payloadBytes}",
                    "candidateRpcCount=${result.candidateRpcIds.size}",
                    "rpcIds=${result.candidateRpcIds.joinToString("|")}"
                ).joinToString(" ")
            )
            if (candidates.any { it != JSF9QC_RPC_ID }) break
        }
        return CandidateRpcDiscovery(candidates.toList(), statuses)
    }

    private fun fetchScriptCandidates(
        scriptUrl: String,
        cookieHeader: String,
        userAgent: String
    ): ScriptCandidateResult {
        return runCatching {
            val connection = (URL(scriptUrl).openConnection() as HttpURLConnection).apply {
                connectTimeout = NETWORK_TIMEOUT_MS
                readTimeout = NETWORK_TIMEOUT_MS
                requestMethod = "GET"
                setRequestProperty("Accept", "application/javascript,text/javascript,*/*")
                setRequestProperty("Cookie", cookieHeader)
                setRequestProperty("Referer", GEMINI_USAGE_PAGE_URL)
                setRequestProperty("User-Agent", userAgent)
            }
            val status = connection.responseCode
            val stream = if (status in 200..299) connection.inputStream else connection.errorStream
            val text = stream?.bufferedReader(StandardCharsets.UTF_8)?.use { it.readText() }.orEmpty()
            connection.disconnect()
            ScriptCandidateResult(status.toString(), text.toByteArray(StandardCharsets.UTF_8).size, candidateRpcIdsFromHtml(text))
        }.getOrElse { error ->
            ScriptCandidateResult("error:${error.javaClass.simpleName}", 0, emptyList())
        }
    }

    private fun candidateRpcIdsFromHtml(rawText: String): List<String> {
        val normalized = rawText
            .replace("\\u003d", "=")
            .replace("\\x3d", "=")
            .replace("%3D", "=", ignoreCase = true)
            .replace("&#61;", "=")
        return (RPCIDS_PATTERN.findAll(normalized).map { it.groupValues[1] } + contextualRpcIdCandidates(normalized))
            .filter { it.isNotBlank() }
            .distinct()
            .take(MAX_DISCOVERY_RPC_IDS)
            .toList()
    }

    private fun contextualRpcIdCandidates(rawText: String): Sequence<String> {
        return USAGE_CONTEXT_PATTERN.findAll(rawText)
            .flatMap { context ->
                val start = (context.range.first - RPC_CONTEXT_WINDOW).coerceAtLeast(0)
                val end = (context.range.last + RPC_CONTEXT_WINDOW).coerceAtMost(rawText.length - 1)
                RPC_ID_TOKEN_PATTERN.findAll(rawText.substring(start, end + 1))
            }
            .map { it.groupValues[1] }
            .filter(::looksLikeRpcId)
    }

    private fun looksLikeRpcId(value: String): Boolean {
        if (value == JSF9QC_RPC_ID) return true
        if (value.length !in 5..16) return false
        if (!value.any(Char::isDigit)) return false
        if (!value.any(Char::isLetter)) return false
        return value.none { it == '/' || it == '.' }
    }

    private fun scriptUrlsFromHtml(rawText: String): List<String> {
        return SCRIPT_SRC_PATTERN.findAll(rawText)
            .map { it.groupValues[1] }
            .map(::htmlAttributeDecode)
            .mapNotNull(::allowedScriptUrl)
            .distinct()
            .take(MAX_SCRIPT_DISCOVERY_URLS)
            .toList()
    }

    private fun allowedScriptUrl(value: String): String? {
        val absolute = when {
            value.startsWith("//") -> "https:$value"
            value.startsWith("/") -> "$GEMINI_ORIGIN$value"
            value.startsWith("https://") -> value
            else -> return null
        }
        val host = runCatching { URL(absolute).host.lowercase(Locale.US) }.getOrNull() ?: return null
        if (host != "gemini.google.com" && host != "www.gstatic.com" && host != "ssl.gstatic.com") return null
        return absolute
    }

    private fun htmlAttributeDecode(value: String): String {
        return value
            .replace("&amp;", "&")
            .replace("\\u0026", "&")
            .replace("\\u003d", "=")
            .replace("\\x3d", "=")
    }

    private fun countOccurrences(value: String, needle: String): Int {
        var count = 0
        var index = value.indexOf(needle)
        while (index >= 0) {
            count += 1
            index = value.indexOf(needle, index + needle.length)
        }
        return count
    }

    private fun findRpcPayload(rawText: String, rpcId: String): JSONArray? {
        rawText.lineSequence()
            .map(String::trim)
            .filter { it.startsWith("[[") }
            .forEach { line ->
                val outer = runCatching { JSONTokener(line).nextValue() as? JSONArray }.getOrNull() ?: return@forEach
                for (index in 0 until outer.length()) {
                    val entry = outer.optJSONArray(index) ?: continue
                    if (entry.optString(0) != "wrb.fr" || entry.optString(1) != rpcId) continue
                    val payloadText = entry.optString(2).takeIf { it.isNotBlank() && it != "null" } ?: return null
                    return runCatching { JSONTokener(payloadText).nextValue() as? JSONArray }.getOrNull()
                }
            }
        return null
    }

    private fun quotaRows(rows: JSONArray): JSONArray {
        val parsed = mutableListOf<JSONObject>()
        for (index in 0 until rows.length()) {
            val row = rows.optJSONArray(index) ?: continue
            quotaLine(row)?.let(parsed::add)
        }
        return JSONArray(parsed.sortedBy { it.optInt("_order", Int.MAX_VALUE) }.map { line ->
            line.remove("_order")
            line
        })
    }

    private fun deepQuotaRows(value: Any?): JSONArray {
        val rowsByType = linkedMapOf<Int, JSONArray>()
        collectQuotaRowsDeep(value, rowsByType)
        return quotaRows(JSONArray(rowsByType.values.toList()))
    }

    private fun quotaLine(row: JSONArray): JSONObject? {
        val remaining = row.optionalDouble(0) ?: return null
        val used = row.optionalDouble(1) ?: 0.0
        val type = row.optInt(2)
        val label = when (type) {
            1 -> "5-hour limit"
            2 -> "Weekly limit"
            else -> return null
        }
        val limit = (remaining + used).takeIf { it > 0.0 } ?: return null
        val resetAt = row.optJSONArray(3)
            ?.optJSONArray(0)
            ?.let(::resetInstant)
        val usedPercent = if (used in 0.0..1.0) used * 100.0 else (used / limit) * 100.0
        val remainingPercent = if (used in 0.0..1.0) (1.0 - used) * 100.0 else (remaining / limit) * 100.0
        return JSONObject()
            .put("_order", type)
            .put("l", label)
            .put("remaining", remaining)
            .put("used", used)
            .put("limit", limit)
            .put("remaining_percent", remainingPercent)
            .put("used_percent", usedPercent)
            .put("unit", "requests")
            .apply { resetAt?.let { put("r", it) } }
    }

    private fun resetInstant(value: JSONArray): String? {
        val seconds = value.optionalLong(0) ?: return null
        val nanos = value.optionalLong(1) ?: 0L
        return runCatching { Instant.ofEpochSecond(seconds, nanos).toString() }.getOrNull()
    }

    private fun batchExecuteUrl(params: GeminiUsagePageRpcSession.Params, usagePageUrl: String): String {
        return batchExecuteUrl(params, usagePageUrl, JSF9QC_RPC_ID)
    }

    private fun batchExecuteUrl(params: GeminiUsagePageRpcSession.Params, usagePageUrl: String, rpcId: String): String {
        val reqId = (System.currentTimeMillis() % 1_000_000L) + 100_000L
        val sourcePath = usagePathForLog(usagePageUrl)
        return "$GEMINI_ORIGIN${batchExecutePathFor(sourcePath)}" +
            "?rpcids=$rpcId" +
            "&source-path=${encodeQuery(sourcePath)}" +
            "&bl=${encodeQuery(params.bl)}" +
            "&f.sid=${encodeQuery(params.fSid)}" +
            "&hl=${encodeQuery(params.hl)}" +
            "&_reqid=$reqId" +
            "&rt=c"
    }

    private fun batchExecutePathFor(sourcePath: String): String {
        val accountPrefix = Regex("""^(/u/\d+)/usage$""").matchEntire(sourcePath)?.groupValues?.get(1)
        return "${accountPrefix.orEmpty()}/_/BardChatUi/data/batchexecute"
    }

    private fun batchExecuteRequest(rpcId: String): String {
        return JSONArray()
            .put(
                JSONArray()
                    .put(
                        JSONArray()
                            .put(rpcId)
                            .put("[]")
                            .put(JSONObject.NULL)
                            .put("usage-page")
                    )
            )
            .toString()
    }

    private fun JSONArray.optionalDouble(index: Int): Double? {
        if (index < 0 || index >= length() || isNull(index)) return null
        return opt(index)?.toString()?.toDoubleOrNull()
    }

    private fun JSONArray.optionalLong(index: Int): Long? {
        if (index < 0 || index >= length() || isNull(index)) return null
        return opt(index)?.toString()?.toLongOrNull()
    }

    private fun encodeQuery(value: String): String {
        return java.net.URLEncoder.encode(value, StandardCharsets.UTF_8.name())
    }

    private fun usagePathForLog(usagePageUrl: String): String {
        return runCatching { URL(usagePageUrl).path }.getOrDefault("/usage").ifBlank { "/usage" }
    }

    private fun shapeSummary(value: Any?): String {
        return when (value) {
            null, JSONObject.NULL -> "missing"
            is JSONArray -> {
                val itemTypes = (0 until value.length())
                    .map { index -> shapeType(value.opt(index)) }
                    .joinToString("|")
                "array[${value.length()}]:$itemTypes"
            }
            is JSONObject -> "object[${value.length()}]"
            else -> shapeType(value)
        }
    }

    private fun shapeType(value: Any?): String {
        return when (value) {
            null, JSONObject.NULL -> "null"
            is JSONArray -> "array[${value.length()}]"
            is JSONObject -> "object[${value.length()}]"
            is Number -> "number"
            is Boolean -> "boolean"
            else -> "string"
        }
    }

    private fun formatNumber(value: Double): String {
        return if (value % 1.0 == 0.0) {
            String.format(Locale.US, "%.1f", value)
        } else {
            String.format(Locale.US, "%.2f", value).trimEnd('0')
        }
    }

    private fun JSONObject.optionalStringOnly(key: String): String? {
        return opt(key).takeIf { it is String } as? String
    }

    private fun sanitizedGeminiPlan(value: String?): String? {
        return value?.trim()?.takeIf { it.isNotBlank() && !GEMINI_DATE_LIKE_PATTERN.matches(it) }
    }

    private fun sanitizedGeminiAccount(value: String?): String? {
        return value?.trim()?.takeIf { it.isNotBlank() && !GEMINI_DATE_LIKE_PATTERN.matches(it) }
    }

    private fun isPlausibleGeminiTierToken(value: String): Boolean {
        return Regex("""(?i)^(?:GEMINI|GOOGLE[_-]AI)(?:[_-][A-Z0-9]+)+$|^(?:G1_(?:PRO|ULTRA)_TIER|STANDARD_TIER|FREE_TIER|PAID|WORKSPACE|LEGACY)$""").matches(value.trim())
    }

    private data class RpcSessionResult(
        val params: GeminiUsagePageRpcSession.Params?,
        val diagnostic: String,
        val statuses: List<String>,
        val candidateRpcIds: List<String>,
        val bootstrapPayload: JSONObject?,
        val bootstrapMetadata: JSONObject? = null
    )

    private data class RpcFetchResult(
        val payload: JSONObject?,
        val status: String
    )

    private data class CandidateRpcDiscovery(
        val ids: List<String>,
        val statuses: List<String>
    )

    private data class ScriptCandidateResult(
        val status: String,
        val payloadBytes: Int,
        val candidateRpcIds: List<String>
    )

    private const val TAG = "AIQuotaGeminiUsageRpc"
    private const val GEMINI_ORIGIN = "https://gemini.google.com"
    private const val GEMINI_USAGE_PAGE_URL = "https://gemini.google.com/usage"
    private const val JSF9QC_RPC_ID = "jSf9Qc"
    private const val NETWORK_TIMEOUT_MS = 10_000
    private const val MAX_DISCOVERY_RPC_IDS = 12
    private const val MAX_PROBE_RPC_IDS = 6
    private const val MAX_SCRIPT_DISCOVERY_URLS = 4
    private const val RPC_CONTEXT_WINDOW = 180
    private val RPC_ID_ALLOWLIST_PATTERN = Regex("""[A-Za-z0-9_-]{3,40}""")
    private val RPCIDS_PATTERN = Regex("""rpcids=([A-Za-z0-9_-]{3,40})""")
    private val QUOTA_BOOTSTRAP_ROW_PATTERN = Regex(
        """\[\s*(-?\d+(?:\.\d+)?)\s*,\s*(-?\d+(?:\.\d+)?)\s*,\s*([12])\s*,\s*(null|\[\s*\[\s*\d+\s*,\s*\d+\s*]\s*])\s*]"""
    )
    private val RESET_BOOTSTRAP_PATTERN = Regex("""\[\s*\[\s*(\d+)\s*,\s*(\d+)\s*]\s*]""")
    private val SCRIPT_SRC_PATTERN = Regex("""<script[^>]+src=["']([^"']+)["']""", RegexOption.IGNORE_CASE)
    private val USAGE_CONTEXT_PATTERN = Regex("""usage|quota|limit|remaining""", RegexOption.IGNORE_CASE)
    private val RPC_ID_TOKEN_PATTERN = Regex("""["']([A-Za-z0-9_-]{5,16})["']""")
    private val GEMINI_DATE_LIKE_PATTERN = Regex("""^\d{4}-\d{2}-\d{2}(?:[T ].*)?$|^\d{1,2}/\d{1,2}/\d{2,4}$|^\d{8}$""")
}
