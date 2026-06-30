package com.aiquota.mobile.providers

import java.util.Locale
import org.json.JSONObject

object GeminiUsagePageRpcSession {
    data class Params(
        val at: String,
        val fSid: String,
        val bl: String,
        val hl: String,
        val capturedAtMillis: Long
    )

    private val lock = Any()

    @Volatile
    private var latestParams: Params? = null

    fun captureScript(): String {
        return """
            (function(){
              var data = window.WIZ_global_data || {};
              var language = String(data.hl || navigator.language || "en").split("-")[0] || "en";
              return JSON.stringify({
                at: String(data.SNlM0e || ""),
                fSid: String(data.FdrFJe || ""),
                bl: String(data.cfb2h || ""),
                hl: language
              });
            })();
        """.trimIndent()
    }

    fun updateFromJson(rawJson: String, pageUrl: String, nowMillis: Long = System.currentTimeMillis()): Boolean {
        val params = paramsFromJson(rawJson, pageUrl, nowMillis)
        if (params == null) {
            clear()
            return false
        }
        synchronized(lock) {
            latestParams = params
        }
        return true
    }

    fun current(nowMillis: Long = System.currentTimeMillis()): Params? {
        val params = latestParams ?: return null
        if (nowMillis - params.capturedAtMillis <= SESSION_TTL_MS) return params
        clear()
        return null
    }

    fun clear() {
        synchronized(lock) {
            latestParams = null
        }
    }

    internal fun paramsFromJsonForTest(rawJson: String, pageUrl: String, nowMillis: Long): Params? {
        return paramsFromJson(rawJson, pageUrl, nowMillis)
    }

    internal fun sessionTtlMillisForTest(): Long {
        return SESSION_TTL_MS
    }

    private fun paramsFromJson(rawJson: String, pageUrl: String, nowMillis: Long): Params? {
        if (!GeminiUsagePageRoutes.isUsageUrl(pageUrl)) return null
        val json = runCatching { JSONObject(rawJson) }.getOrNull() ?: return null
        val at = json.optString("at").takeIf { it.startsWith("AD1_") } ?: return null
        val fSid = json.optString("fSid").takeIf { it.isNotBlank() } ?: return null
        val bl = json.optString("bl").takeIf { it.isNotBlank() } ?: return null
        val hl = json.optString("hl")
            .takeIf { it.isNotBlank() }
            ?: Locale.getDefault().language.takeIf { it.isNotBlank() }
            ?: "en"
        return Params(
            at = at,
            fSid = fSid,
            bl = bl,
            hl = hl,
            capturedAtMillis = nowMillis
        )
    }

    private const val SESSION_TTL_MS = 2 * 60 * 1000L
}
