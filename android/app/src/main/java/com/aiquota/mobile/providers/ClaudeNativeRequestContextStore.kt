package com.aiquota.mobile.providers

import android.content.Context
import android.util.Log
import com.aiquota.mobile.accounts.AccountCredentialVault
import com.aiquota.mobile.accounts.AccountLoginSessionBinding
import com.aiquota.mobile.accounts.CredentialBundle
import com.aiquota.mobile.accounts.CredentialVaultAccountId
import com.aiquota.mobile.accounts.CredentialVaultBinding
import com.aiquota.mobile.accounts.CredentialVaultSchema
import com.aiquota.mobile.accounts.ProviderAccountId
import com.aiquota.mobile.accounts.SecretRevision
import com.aiquota.mobile.accounts.createAndroidAccountCredentialVault
import com.aiquota.mobile.local.ProviderId
import org.json.JSONObject

internal class ClaudeNativeRequestContextStore(
    context: Context,
    private val providedExactVault: AccountCredentialVault? = null,
) {
    private val appContext = context.applicationContext
    private val secureStore = SecureStringStore(appContext, STORE_NAME)
    private val exactVault by lazy {
        providedExactVault ?: createAndroidAccountCredentialVault(appContext)
    }

    fun save(nativeRequestContext: Map<String, Map<String, String>>) {
        val restorable = ClaudeNativeHeaderStore.snapshotRequestContext(nativeRequestContext)
        if (restorable.isEmpty()) return
        secureStore.putString(KEY_CONTEXT, encode(restorable))
        Log.i(
            TAG,
            "provider=claude nativeRequestContextSaved=true contextCount=${restorable.size} " +
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
                "provider=claude nativeRequestContextRestored=true contextCount=${restored.size} " +
                    "headerCount=${restored.values.sumOf { it.size }}"
            )
        }
        return restored
    }

    fun clear() {
        secureStore.remove(KEY_CONTEXT)
        Log.i(TAG, "provider=claude nativeRequestContextCleared=true")
    }

    fun saveExact(
        binding: AccountLoginSessionBinding,
        nativeRequestContext: Map<String, Map<String, String>>,
    ): Boolean {
        require(binding.accountId.providerId == ProviderId.CLAUDE)
        val restorable = ClaudeNativeHeaderStore.snapshotRequestContext(nativeRequestContext)
        if (restorable.isEmpty()) return false
        return exactVault.put(binding.vaultBinding(), CredentialBundle.fromBytes(encode(restorable).toByteArray()))
    }

    fun restoreExact(binding: AccountLoginSessionBinding): Map<String, Map<String, String>> {
        require(binding.accountId.providerId == ProviderId.CLAUDE)
        val payload = exactVault.decrypt(binding.vaultBinding())?.copyBytes() ?: return emptyMap()
        return decode(payload.toString(Charsets.UTF_8))
    }

    fun clearExact(accountId: ProviderAccountId): Boolean {
        require(accountId.providerId == ProviderId.CLAUDE)
        return exactVault.delete(CredentialVaultAccountId.parse(accountId))
    }

    companion object {
        internal fun encodeForTest(nativeRequestContext: Map<String, Map<String, String>>): String {
            return encode(ClaudeNativeHeaderStore.snapshotRequestContext(nativeRequestContext))
        }

        internal fun decodeForTest(payload: String): Map<String, Map<String, String>> {
            return decode(payload)
        }

        private fun encode(nativeRequestContext: Map<String, Map<String, String>>): String {
            return JSONObject().also { root ->
                ClaudeNativeHeaderStore.snapshotRequestContext(nativeRequestContext).forEach { (key, headers) ->
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
            return ClaudeNativeHeaderStore.snapshotRequestContext(restored)
        }

        private const val STORE_NAME = "claude_native_request_context"
        private const val KEY_CONTEXT = "context"
        private const val TAG = "AIQuotaClaudeContext"
    }
}

private fun AccountLoginSessionBinding.vaultBinding() = CredentialVaultBinding(
    CredentialVaultSchema.CURRENT,
    CredentialVaultAccountId.parse(accountId),
    generation,
    sessionRevision,
    SecretRevision.of(1),
)
