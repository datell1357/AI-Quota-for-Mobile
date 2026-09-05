package com.aiquota.mobile.providers

import android.content.Context
import android.content.Intent
import android.os.Bundle
import com.aiquota.mobile.accounts.AccountKey
import com.aiquota.mobile.accounts.ProviderAccountId
import com.aiquota.mobile.accounts.ProviderAccountIdStorageCodec
import com.aiquota.mobile.local.ProviderId
import com.aiquota.mobile.local.ProviderUsageSnapshot

internal data class GlmExactLoginLaunch(
    val accountId: ProviderAccountId,
    val nonce: String,
)

internal data class GlmExactLoginResult(
    val snapshot: ProviderUsageSnapshot,
    val cookieHeader: String?,
    val requestHeaders: Map<String, String>,
)

internal object GlmExactLoginRelay {
    fun launchIntent(context: Context, accountId: ProviderAccountId, nonce: String): Intent {
        require(isSupportedAccount(accountId))
        require(isValidNonce(nonce))
        return WebLoginActivity.createIntent(
            context,
            accountId,
            GlmProviderUrls.WEB_LOGIN_URL,
        ).putExtra(EXTRA_NONCE, nonce)
    }

    internal fun readLaunch(intent: Intent?): GlmExactLoginLaunch? {
        val accountId = intent?.let {
            ProviderAccountIdStorageCodec.decodeOrNull(
                it.getStringExtra(WebLoginActivity.EXTRA_PROVIDER_ACCOUNT_ID)
            )
        } ?: return null
        val nonce = intent.getStringExtra(EXTRA_NONCE) ?: return null
        if (!isSupportedAccount(accountId) || !isValidNonce(nonce)) return null
        return GlmExactLoginLaunch(accountId, nonce)
    }

    fun consumeResult(
        data: Intent?,
        expectedAccount: ProviderAccountId,
        nonce: String,
    ): GlmExactLoginResult? {
        if (!isSupportedAccount(expectedAccount) || !isValidNonce(nonce)) return null
        val result = data ?: return null
        if (result.getStringExtra(EXTRA_STATUS) != STATUS_SUCCESS) return null
        if (result.getStringExtra(EXTRA_NONCE) != nonce) return null
        val accountId = ProviderAccountIdStorageCodec.decodeOrNull(
            result.getStringExtra(WebLoginActivity.EXTRA_PROVIDER_ACCOUNT_ID)
        ) ?: return null
        if (accountId != expectedAccount) return null
        val snapshotJson = result.getStringExtra(EXTRA_SNAPSHOT)
            ?.takeIf { it.isNotBlank() && it.length <= MAX_SNAPSHOT_JSON_LENGTH }
            ?: return null
        val snapshot = ProviderSnapshotCodec.decode(snapshotJson)
            .singleOrNull()
            ?.takeIf { it.providerId == ProviderId.GLM }
            ?: return null
        val requestHeaders = requestHeadersOrNull(result) ?: return null
        val cookieHeader = if (result.hasExtra(EXTRA_COOKIE_HEADER)) {
            result.getStringExtra(EXTRA_COOKIE_HEADER)
                ?.takeIf { it.isNotBlank() && it.length <= MAX_CONTEXT_VALUE_LENGTH }
                ?: return null
        } else {
            null
        }
        if (!contextSizeWithinLimit(cookieHeader, requestHeaders)) return null
        if (!usableGlmWebSession(cookieHeader, requestHeaders)) return null
        return GlmExactLoginResult(snapshot, cookieHeader, requestHeaders)
    }

    internal fun successResultIntent(
        accountId: ProviderAccountId,
        nonce: String,
        snapshot: ProviderUsageSnapshot,
        cookieHeader: String?,
        requestHeaders: Map<String, String>,
    ): Intent? {
        if (!isSupportedAccount(accountId) || !isValidNonce(nonce)) return null
        if (snapshot.providerId != ProviderId.GLM) return null
        if (!usableGlmWebSession(cookieHeader, requestHeaders)) return null
        val snapshotJson = runCatching { snapshotJsonFor(snapshot) }.getOrNull() ?: return null
        if (snapshotJson.isBlank() || snapshotJson.length > MAX_SNAPSHOT_JSON_LENGTH) return null
        if (cookieHeader != null &&
            (cookieHeader.isBlank() || cookieHeader.length > MAX_CONTEXT_VALUE_LENGTH)
        ) return null
        if (!contextSizeWithinLimit(cookieHeader, requestHeaders) || !requestHeadersValid(requestHeaders)) {
            return null
        }
        return runCatching {
            Intent()
                .putExtra(
                    WebLoginActivity.EXTRA_PROVIDER_ACCOUNT_ID,
                    ProviderAccountIdStorageCodec.encode(accountId),
                )
                .putExtra(EXTRA_NONCE, nonce)
                .putExtra(EXTRA_STATUS, STATUS_SUCCESS)
                .putExtra(EXTRA_SNAPSHOT, snapshotJson)
                .apply {
                    if (cookieHeader != null) putExtra(EXTRA_COOKIE_HEADER, cookieHeader)
                    putExtra(EXTRA_REQUEST_HEADERS, Bundle().also { bundle ->
                        requestHeaders.forEach { (key, value) -> bundle.putString(key, value) }
                    })
                }
        }.getOrNull()
    }

    internal fun failureResultIntent(accountId: ProviderAccountId, nonce: String): Intent {
        require(isSupportedAccount(accountId))
        require(isValidNonce(nonce))
        return Intent()
            .putExtra(WebLoginActivity.EXTRA_PROVIDER_ACCOUNT_ID, ProviderAccountIdStorageCodec.encode(accountId))
            .putExtra(EXTRA_NONCE, nonce)
            .putExtra(EXTRA_STATUS, STATUS_CANCELED)
    }

    private fun snapshotJsonFor(snapshot: ProviderUsageSnapshot): String =
        ProviderSnapshotCodec.encode(listOf(snapshot))

    private fun requestHeadersOrNull(intent: Intent): Map<String, String>? {
        val bundle = intent.getBundleExtra(EXTRA_REQUEST_HEADERS) ?: return emptyMap()
        if (bundle.size() > MAX_CONTEXT_HEADER_COUNT) return null
        val headers = linkedMapOf<String, String>()
        var total = 0
        bundle.keySet().forEach { key ->
            val value = bundle.getString(key) ?: return null
            if (key.isBlank() || key.length > MAX_CONTEXT_VALUE_LENGTH || value.length > MAX_CONTEXT_VALUE_LENGTH) {
                return null
            }
            total += key.length + value.length
            if (total > MAX_CONTEXT_TOTAL_LENGTH) return null
            headers[key] = value
        }
        return headers
    }

    private fun requestHeadersValid(headers: Map<String, String>): Boolean {
        if (headers.size > MAX_CONTEXT_HEADER_COUNT) return false
        return headers.all { (key, value) ->
            key.isNotBlank() &&
                key.length <= MAX_CONTEXT_VALUE_LENGTH &&
                value.length <= MAX_CONTEXT_VALUE_LENGTH
        }
    }

    private fun contextSizeWithinLimit(
        cookieHeader: String?,
        requestHeaders: Map<String, String>,
    ): Boolean {
        var total = cookieHeader?.length ?: 0
        requestHeaders.forEach { (key, value) ->
            total += key.length + value.length
            if (total > MAX_CONTEXT_TOTAL_LENGTH) return false
        }
        return total <= MAX_CONTEXT_TOTAL_LENGTH
    }

    private fun isSupportedAccount(accountId: ProviderAccountId): Boolean =
        accountId.providerId == ProviderId.GLM && accountId.accountKey == AccountKey.reservedDefault()

    private fun isValidNonce(nonce: String): Boolean =
        nonce.isNotBlank() && nonce.length <= MAX_NONCE_LENGTH

    private const val EXTRA_NONCE =
        "com.aiquota.mobile.extra.GLM_EXACT_LOGIN_RELAY_NONCE"
    private const val EXTRA_STATUS =
        "com.aiquota.mobile.extra.GLM_EXACT_LOGIN_RELAY_STATUS"
    private const val EXTRA_SNAPSHOT =
        "com.aiquota.mobile.extra.GLM_EXACT_LOGIN_RELAY_SNAPSHOT"
    private const val EXTRA_COOKIE_HEADER =
        "com.aiquota.mobile.extra.GLM_EXACT_LOGIN_RELAY_COOKIE_HEADER"
    private const val EXTRA_REQUEST_HEADERS =
        "com.aiquota.mobile.extra.GLM_EXACT_LOGIN_RELAY_REQUEST_HEADERS"
    private const val STATUS_SUCCESS = "SUCCESS"
    private const val STATUS_CANCELED = "CANCELED"
    private const val MAX_NONCE_LENGTH = 256
    private const val MAX_SNAPSHOT_JSON_LENGTH = 128 * 1024
    private const val MAX_CONTEXT_HEADER_COUNT = 64
    private const val MAX_CONTEXT_VALUE_LENGTH = 64 * 1024
    private const val MAX_CONTEXT_TOTAL_LENGTH = 128 * 1024
}
