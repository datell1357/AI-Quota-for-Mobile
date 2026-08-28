package com.aiquota.mobile.providers

import com.aiquota.mobile.accounts.ProviderAccountId
import com.aiquota.mobile.accounts.ProviderAccountIdStorageCodec

data class ProviderAccountLineKey(
    val accountId: ProviderAccountId,
    val lineKey: String,
) {
    init {
        require(lineKey.isNotEmpty() && lineKey.length <= MAX_LINE_KEY_LENGTH)
        require(lineKey.none { it.code < 0x20 || it.code == 0x7f })
    }

    private companion object {
        const val MAX_LINE_KEY_LENGTH = 512
    }
}

internal object ProviderAccountLineKeyCodec {
    fun encode(key: ProviderAccountLineKey): String {
        val account = ProviderAccountIdStorageCodec.encode(key.accountId)
        return "${account.length}:$account:${key.lineKey.length}:${key.lineKey}"
    }

    fun decodeOrNull(value: String): ProviderAccountLineKey? {
        if (value.isEmpty() || value.any { it.code < 0x20 || it.code == 0x7f }) return null
        val first = value.indexOf(':')
        if (first <= 0) return null
        val accountLengthToken = value.substring(0, first)
        if (!accountLengthToken.isCanonicalLength()) return null
        val accountLength = accountLengthToken.toIntOrNull() ?: return null
        val accountStart = first + 1
        val accountEnd = accountStart + accountLength
        if (accountEnd >= value.length || value.getOrNull(accountEnd) != ':') return null
        val account = ProviderAccountIdStorageCodec.decodeOrNull(value.substring(accountStart, accountEnd)) ?: return null
        val lengthStart = accountEnd + 1
        val second = value.indexOf(':', lengthStart)
        if (second <= lengthStart) return null
        val lineLengthToken = value.substring(lengthStart, second)
        if (!lineLengthToken.isCanonicalLength()) return null
        val lineLength = lineLengthToken.toIntOrNull() ?: return null
        val line = value.substring(second + 1)
        if (line.length != lineLength) return null
        return runCatching { ProviderAccountLineKey(account, line) }.getOrNull()
    }

    private fun String.isCanonicalLength(): Boolean =
        isNotEmpty() && all { it in '0'..'9' } && !(length > 1 && startsWith('0')) && toIntOrNull()?.let { it > 0 } == true
}
