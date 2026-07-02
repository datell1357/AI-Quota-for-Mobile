package com.aiquota.mobile.providers

import android.content.Context
import android.util.Log
import com.aiquota.mobile.local.ProviderId
import org.json.JSONObject

internal class CodexNativeAuthContextStore(context: Context) {
    private val secureStore = SecureStringStore(context.applicationContext, STORE_NAME)

    fun save(nativeAuthContext: Map<String, Map<String, String>>) {
        val restorable = CodexNativeHeaderStore.snapshotAuthContext(nativeAuthContext)
        if (restorable.isEmpty()) return
        secureStore.putString(KEY_CONTEXT, encode(restorable))
        Log.i(
            TAG,
            "provider=codex nativeAuthContextSaved=true contextCount=${restorable.size} " +
                "headerCount=${restorable.values.sumOf { it.size }}"
        )
    }

    fun restore(): Map<String, Map<String, String>> {
        val restored = secureStore.getString(KEY_CONTEXT)
            ?.let(::decode)
            .orEmpty()
        if (restored.isNotEmpty()) {
            Log.i(
                TAG,
                "provider=codex nativeAuthContextRestored=true contextCount=${restored.size} " +
                    "headerCount=${restored.values.sumOf { it.size }}"
            )
        }
        return restored
    }

    fun clear() {
        secureStore.remove(KEY_CONTEXT)
        Log.i(TAG, "provider=codex nativeAuthContextCleared=true")
    }

    companion object {
        internal fun encodeForTest(nativeAuthContext: Map<String, Map<String, String>>): String {
            return encode(CodexNativeHeaderStore.snapshotAuthContext(nativeAuthContext))
        }

        internal fun decodeForTest(payload: String): Map<String, Map<String, String>> {
            return decode(payload)
        }

        private fun encode(nativeAuthContext: Map<String, Map<String, String>>): String {
            return JSONObject().also { root ->
                CodexNativeHeaderStore.snapshotAuthContext(nativeAuthContext).forEach { (key, headers) ->
                    root.put(
                        key,
                        JSONObject().also { headerJson ->
                            headers.forEach { (name, value) -> headerJson.put(name, value) }
                        }
                    )
                }
            }.toString()
        }

        private fun decode(payload: String): Map<String, Map<String, String>> {
            val root = runCatching { JSONObject(payload) }.getOrNull() ?: return emptyMap()
            val restored = linkedMapOf<String, Map<String, String>>()
            val keys = root.keys()
            while (keys.hasNext()) {
                val key = keys.next().takeIf(String::isNotBlank) ?: continue
                val headers = root.optJSONObject(key) ?: continue
                val restoredHeaders = linkedMapOf<String, String>()
                val headerNames = headers.keys()
                while (headerNames.hasNext()) {
                    val name = headerNames.next().takeIf(String::isNotBlank) ?: continue
                    val value = headers.optString(name).takeIf(String::isNotBlank) ?: continue
                    restoredHeaders[name] = value
                }
                if (restoredHeaders.isNotEmpty()) restored[key] = restoredHeaders
            }
            return CodexNativeHeaderStore.snapshotAuthContext(restored)
        }

        private const val STORE_NAME = "codex_native_auth_context"
        private const val KEY_CONTEXT = "context"
        private const val TAG = "AIQuotaCodexAuth"
    }
}
