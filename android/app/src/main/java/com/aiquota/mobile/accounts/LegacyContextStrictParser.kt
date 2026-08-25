package com.aiquota.mobile.accounts

import android.util.JsonReader
import android.util.JsonToken
import java.io.StringReader

internal object LegacyContextStrictParser {
    fun parse(payload: String): Map<String, Map<String, String>>? {
        if (payload.toByteArray(Charsets.UTF_8).size > MAX_BYTES) return null
        return runCatching {
            JsonReader(StringReader(payload)).use { reader ->
                reader.isLenient = false
                val result = linkedMapOf<String, Map<String, String>>()
                val keys = mutableSetOf<String>()
                reader.beginObject()
                while (reader.hasNext()) {
                    require(result.size < MAX_CONTEXTS)
                    val key = reader.nextName().also { require(it.isNotBlank() && it.length <= MAX_STRING && keys.add(it)) }
                    val headers = linkedMapOf<String, String>()
                    val names = mutableSetOf<String>()
                    reader.beginObject()
                    while (reader.hasNext()) {
                        require(headers.size < MAX_HEADERS)
                        val name = reader.nextName().also { require(it.isNotBlank() && it.length <= MAX_STRING && names.add(it)) }
                        require(reader.peek() == JsonToken.STRING)
                        val value = reader.nextString().also { require(it.isNotBlank() && it.length <= MAX_STRING) }
                        headers[name] = value
                    }
                    reader.endObject()
                    require(headers.isNotEmpty())
                    result[key] = headers
                }
                reader.endObject()
                require(result.isNotEmpty() && reader.peek() == JsonToken.END_DOCUMENT)
                result
            }
        }.getOrNull()
    }

    private const val MAX_BYTES = 1_048_576
    private const val MAX_CONTEXTS = 64
    private const val MAX_HEADERS = 64
    private const val MAX_STRING = 16_384
}
