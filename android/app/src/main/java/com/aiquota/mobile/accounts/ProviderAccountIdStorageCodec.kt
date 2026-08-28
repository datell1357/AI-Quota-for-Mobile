package com.aiquota.mobile.accounts

import com.aiquota.mobile.local.ProviderId
import java.text.Normalizer

enum class ProviderAccountIdDecodeFailure {
    EMPTY,
    CONTROL_CHARACTER,
    MALFORMED_FORMAT,
    UNSUPPORTED_VERSION,
    UNKNOWN_PROVIDER,
    INVALID_ACCOUNT_KEY,
    NON_CANONICAL,
}

sealed interface ProviderAccountIdDecodeResult {
    data class Decoded(val accountId: ProviderAccountId) : ProviderAccountIdDecodeResult
    data class Rejected(val reason: ProviderAccountIdDecodeFailure) : ProviderAccountIdDecodeResult
}

/** Canonical, versioned storage representation for immutable provider-card identity. */
object ProviderAccountIdStorageCodec {
    fun encode(accountId: ProviderAccountId): String {
        val provider = accountId.providerId.storageId
        val account = accountId.accountKey.storageValue()
        return "$VERSION:${provider.length}:$provider:${account.length}:$account"
    }

    fun decode(value: String): ProviderAccountIdDecodeResult {
        if (value.isEmpty()) return rejected(ProviderAccountIdDecodeFailure.EMPTY)
        if (value.any(::isControl)) return rejected(ProviderAccountIdDecodeFailure.CONTROL_CHARACTER)
        if (hasUnpairedSurrogate(value) || !Normalizer.isNormalized(value, Normalizer.Form.NFC)) {
            return rejected(ProviderAccountIdDecodeFailure.NON_CANONICAL)
        }
        if (!value.startsWith("$VERSION:")) {
            val encodedVersion = value.substringBefore(':')
            val reason = if (value.matches(Regex("pa[0-9]+(?::.*)?")) && encodedVersion != VERSION) {
                ProviderAccountIdDecodeFailure.UNSUPPORTED_VERSION
            } else {
                ProviderAccountIdDecodeFailure.MALFORMED_FORMAT
            }
            return rejected(reason)
        }
        val cursor = Cursor(value, VERSION.length + 1)
        val providerLength = cursor.readCanonicalLength()
            ?: return rejected(ProviderAccountIdDecodeFailure.MALFORMED_FORMAT)
        val providerToken = cursor.readToken(providerLength)
            ?: return rejected(ProviderAccountIdDecodeFailure.MALFORMED_FORMAT)
        val accountLength = cursor.readCanonicalLength()
            ?: return rejected(ProviderAccountIdDecodeFailure.MALFORMED_FORMAT)
        val accountToken = cursor.readFinalToken(accountLength)
            ?: return rejected(ProviderAccountIdDecodeFailure.MALFORMED_FORMAT)
        val provider = ProviderId.entries.firstOrNull { it.storageId == providerToken }
            ?: return rejected(ProviderAccountIdDecodeFailure.UNKNOWN_PROVIDER)
        val account = runCatching { AccountKey.fromStorage(accountToken) }.getOrNull()
            ?: return rejected(ProviderAccountIdDecodeFailure.INVALID_ACCOUNT_KEY)
        val decoded = ProviderAccountId(provider, account)
        if (encode(decoded) != value) return rejected(ProviderAccountIdDecodeFailure.NON_CANONICAL)
        return ProviderAccountIdDecodeResult.Decoded(decoded)
    }

    fun decodeOrNull(value: String?): ProviderAccountId? =
        (value?.let(::decode) as? ProviderAccountIdDecodeResult.Decoded)?.accountId

    private fun rejected(reason: ProviderAccountIdDecodeFailure) = ProviderAccountIdDecodeResult.Rejected(reason)

    private fun isControl(character: Char): Boolean =
        Character.getType(character) == Character.CONTROL.toInt()

    private fun hasUnpairedSurrogate(value: String): Boolean {
        var index = 0
        while (index < value.length) {
            val current = value[index]
            when {
                Character.isHighSurrogate(current) -> {
                    if (index + 1 >= value.length || !Character.isLowSurrogate(value[index + 1])) return true
                    index += 2
                }
                Character.isLowSurrogate(current) -> return true
                else -> index++
            }
        }
        return false
    }

    private class Cursor(private val value: String, private var index: Int) {
        fun readCanonicalLength(): Int? {
            val delimiter = value.indexOf(':', index)
            if (delimiter <= index) return null
            val token = value.substring(index, delimiter)
            if (token.length > 1 && token.startsWith('0')) return null
            if (token.any { it !in '0'..'9' }) return null
            val length = token.toIntOrNull()?.takeIf { it > 0 } ?: return null
            index = delimiter + 1
            return length
        }

        fun readToken(length: Int): String? {
            if (length > value.length - index) return null
            val end = index + length
            if (end <= index || end >= value.length || value.getOrNull(end) != ':') return null
            return value.substring(index, end).also { index = end + 1 }
        }

        fun readFinalToken(length: Int): String? {
            if (length > value.length - index) return null
            val end = index + length
            if (end != value.length) return null
            return value.substring(index, end).also { index = end }
        }
    }

    private const val VERSION = "pa1"
}
