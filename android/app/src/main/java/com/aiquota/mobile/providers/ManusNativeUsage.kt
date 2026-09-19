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
import java.net.URI
import java.util.Locale
import org.json.JSONObject

/**
 * Manus 웹 세션의 네이티브 수집 자격 증명.
 *
 * manus.im 프런트엔드는 api.manus.im의 ConnectRPC 엔드포인트(POST /user.v1.* 등)를
 * `Authorization: Bearer <JWT>` 헤더로 호출한다. 로그인 WebView에서 이 헤더를
 * 캡처해 두면 쿠키 없이도 GetAvailableCredits 같은 사용량 엔드포인트를 부를 수 있다.
 */
internal object ManusNativeHeaderStore {
    const val HEADER_AUTHORIZATION = "authorization"
    const val WILDCARD_KEY = "manus:*"
    private val CAPTURED_HEADERS = setOf(HEADER_AUTHORIZATION)

    fun capture(
        storedHeaders: MutableMap<String, Map<String, String>>,
        url: String,
        requestHeaders: Map<String, String>,
    ): Boolean {
        if (!isManusApiUrl(url)) return false
        val captured = requestHeaders
            .mapKeys { (key, _) -> key.lowercase(Locale.US) }
            .filterKeys { it in CAPTURED_HEADERS }
            .filterValues { it.isNotBlank() }
        if (captured.isEmpty()) return false
        val existing = storedHeaders[WILDCARD_KEY].orEmpty().toMutableMap()
        existing.putAll(captured)
        storedHeaders[WILDCARD_KEY] = existing
        return existing[HEADER_AUTHORIZATION].isNullOrBlank().not()
    }

    fun headersFor(
        storedHeaders: Map<String, Map<String, String>>,
        url: String,
    ): Map<String, String> {
        if (!isManusApiUrl(url)) return emptyMap()
        return storedHeaders[WILDCARD_KEY]
            .orEmpty()
            .filterValues(String::isNotBlank)
    }

    fun hasCredentials(storedHeaders: Map<String, Map<String, String>>): Boolean {
        return !storedHeaders[WILDCARD_KEY].orEmpty()[HEADER_AUTHORIZATION].isNullOrBlank()
    }

    fun snapshotAuthContext(
        storedHeaders: Map<String, Map<String, String>>,
    ): Map<String, Map<String, String>> {
        val headers = storedHeaders[WILDCARD_KEY]
            .orEmpty()
            .filterValues(String::isNotBlank)
        return if (headers.isEmpty()) emptyMap() else mapOf(WILDCARD_KEY to headers)
    }

    private fun isManusApiUrl(url: String): Boolean {
        val uri = runCatching { URI(url) }.getOrNull() ?: return false
        if (!uri.scheme.equals("https", ignoreCase = true)) return false
        return uri.host.orEmpty().lowercase(Locale.US) == "api.manus.im"
    }
}

internal class ManusAuthContextStore(
    context: Context,
    private val providedExactVault: AccountCredentialVault? = null,
) {
    private val appContext = context.applicationContext
    private val secureStore = SecureStringStore(appContext, STORE_NAME)
    private val exactVault by lazy {
        providedExactVault ?: createAndroidAccountCredentialVault(appContext)
    }

    fun save(authContext: Map<String, Map<String, String>>) {
        val restorable = ManusNativeHeaderStore.snapshotAuthContext(authContext)
        if (restorable.isEmpty()) return
        secureStore.putString(KEY_CONTEXT, encode(restorable))
        Log.i(TAG, "provider=manus authContextSaved=true headerCount=${restorable.values.sumOf { it.size }}")
    }

    fun restore(): Map<String, Map<String, String>> {
        return secureStore.getString(KEY_CONTEXT)
            ?.let(::decode)
            .orEmpty()
    }

    fun clear() {
        secureStore.remove(KEY_CONTEXT)
        Log.i(TAG, "provider=manus authContextCleared=true")
    }

    fun saveExact(
        binding: AccountLoginSessionBinding,
        authContext: Map<String, Map<String, String>>,
    ): Boolean {
        require(binding.accountId.providerId == ProviderId.MANUS)
        val restorable = ManusNativeHeaderStore.snapshotAuthContext(authContext)
        if (restorable.isEmpty()) return false
        return exactVault.put(
            binding.vaultBinding(),
            CredentialBundle.fromBytes(encode(restorable).toByteArray())
        )
    }

    fun restoreExact(binding: AccountLoginSessionBinding): Map<String, Map<String, String>> {
        require(binding.accountId.providerId == ProviderId.MANUS)
        val payload = exactVault.decrypt(binding.vaultBinding())?.copyBytes() ?: return emptyMap()
        return decode(payload.toString(Charsets.UTF_8))
    }

    fun clearExact(accountId: ProviderAccountId): Boolean {
        require(accountId.providerId == ProviderId.MANUS)
        return exactVault.delete(CredentialVaultAccountId.parse(accountId))
    }

    companion object {
        private const val TAG = "ManusAuthContextStore"
        private const val STORE_NAME = "manus_auth_context"
        private const val KEY_CONTEXT = "auth_context"

        internal fun encode(authContext: Map<String, Map<String, String>>): String {
            val json = JSONObject()
            authContext.forEach { (key, headers) ->
                val headerJson = JSONObject()
                headers.forEach { (name, value) -> headerJson.put(name, value) }
                json.put(key, headerJson)
            }
            return json.toString()
        }

        internal fun decode(raw: String): Map<String, Map<String, String>> {
            val json = runCatching { JSONObject(raw) }.getOrNull() ?: return emptyMap()
            val result = mutableMapOf<String, Map<String, String>>()
            json.keys().forEach { key ->
                val headerJson = json.optJSONObject(key) ?: return@forEach
                val headers = mutableMapOf<String, String>()
                headerJson.keys().forEach { name ->
                    headerJson.optString(name).takeIf { it.isNotBlank() }?.let { headers[name] = it }
                }
                if (headers.isNotEmpty()) result[key] = headers
            }
            return result
        }
    }
}

private fun AccountLoginSessionBinding.vaultBinding() = CredentialVaultBinding(
    CredentialVaultSchema.CURRENT,
    CredentialVaultAccountId.parse(accountId),
    generation,
    sessionRevision,
    SecretRevision.of(1),
)
