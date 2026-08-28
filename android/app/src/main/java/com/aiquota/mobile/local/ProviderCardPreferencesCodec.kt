package com.aiquota.mobile.local

import com.aiquota.mobile.accounts.ProviderAccountId
import com.aiquota.mobile.accounts.ProviderAccountIdStorageCodec

internal object ProviderCardPreferencesCodec {
    fun encode(values: Collection<ProviderAccountId>): String = values
        .distinct()
        .joinToString(SEPARATOR) { ProviderAccountIdStorageCodec.encode(it) }

    fun decode(value: String?): List<ProviderAccountId> = value
        .orEmpty()
        .split(SEPARATOR)
        .mapNotNull(ProviderAccountIdStorageCodec::decodeOrNull)
        .distinct()

    fun remove(value: String?, accountId: ProviderAccountId): String = value
        .orEmpty()
        .split(SEPARATOR)
        .filterNot { ProviderAccountIdStorageCodec.decodeOrNull(it) == accountId }
        .joinToString(SEPARATOR)

    private const val SEPARATOR = "\n"
}
