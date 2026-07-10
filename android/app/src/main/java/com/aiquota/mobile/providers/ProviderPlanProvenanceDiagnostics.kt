package com.aiquota.mobile.providers

import android.util.Log
import org.json.JSONArray
import org.json.JSONObject

internal object ProviderPlanProvenanceDiagnostics {
    private const val TAG = "AIQuotaPlanProvenance"

    data class Record(
        val provider: String,
        val endpointLabel: String,
        val httpStatus: Int,
        val keyPath: String,
        val jsonType: String,
        val present: Boolean,
        val planPresent: Boolean,
        val accountPresent: Boolean,
        val byteCount: Int,
        val endpointCount: Int,
        val requestCountDelta: Int,
        val transformTarget: String,
        val fallbackPolicy: String,
        val protectedFlow: String,
        val rpcLabel: String? = null,
        val keyCount: Int? = null,
        val itemCount: Int? = null
    )

    fun log(record: Record) {
        runCatching { Log.d(TAG, format(record)) }
    }

    internal fun formatForTest(record: Record): String = format(record)

    fun jsonType(source: Any?): String {
        return when (source) {
            null, JSONObject.NULL -> "missing"
            is JSONObject -> "object"
            is JSONArray -> "array"
            is Number -> "number"
            is Boolean -> "boolean"
            is String -> "string"
            else -> "string"
        }
    }

    fun keyCount(source: Any?): Int? = (source as? JSONObject)?.length()

    fun itemCount(source: Any?): Int? = (source as? JSONArray)?.length()

    private fun format(record: Record): String {
        return JSONObject()
            .put("provider", record.provider)
            .put("endpointLabel", record.endpointLabel)
            .put("httpStatus", record.httpStatus)
            .put("keyPath", record.keyPath)
            .put("jsonType", record.jsonType)
            .put("present", record.present)
            .put("planPresent", record.planPresent)
            .put("accountPresent", record.accountPresent)
            .put("byteCount", record.byteCount)
            .put("endpointCount", record.endpointCount)
            .put("requestCountDelta", record.requestCountDelta)
            .put("transformTarget", record.transformTarget)
            .put("fallbackPolicy", record.fallbackPolicy)
            .put("protectedFlowsTouched", JSONArray().put(record.protectedFlow))
            .apply {
                record.rpcLabel?.let { put("rpcLabel", it) }
                record.keyCount?.let { put("keyCount", it) }
                record.itemCount?.let { put("itemCount", it) }
            }
            .toString()
    }
}
