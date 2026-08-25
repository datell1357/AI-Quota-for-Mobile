package com.aiquota.mobile.accounts

import org.json.JSONArray
import org.json.JSONObject

internal object LegacyCanonicalJson {
    fun encode(raw: String): String = encodeObject(JSONObject(raw))

    private fun encodeObject(value: JSONObject): String = value.keys().asSequence().toList().sorted()
        .joinToString(",", "{", "}") { key -> "${JSONObject.quote(key)}:${objectValue(value, key)}" }

    private fun encodeArray(value: JSONArray): String = (0 until value.length())
        .joinToString(",", "[", "]") { index -> arrayValue(value, index) }

    private fun objectValue(container: JSONObject, key: String): String = when (val value = container.get(key)) {
        JSONObject.NULL -> "null"
        is JSONObject -> encodeObject(value)
        is JSONArray -> encodeArray(value)
        is String -> JSONObject.quote(value)
        is Number, is Boolean -> value.toString()
        else -> error("Unsupported JSON value")
    }

    private fun arrayValue(container: JSONArray, index: Int): String = when (val value = container.get(index)) {
        JSONObject.NULL -> "null"
        is JSONObject -> encodeObject(value)
        is JSONArray -> encodeArray(value)
        is String -> JSONObject.quote(value)
        is Number, is Boolean -> value.toString()
        else -> error("Unsupported JSON value")
    }
}
