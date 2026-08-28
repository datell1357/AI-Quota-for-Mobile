package com.aiquota.mobile.accounts

import com.aiquota.mobile.local.ProviderId
import org.junit.Assert.assertEquals
import org.junit.Assert.assertNull
import org.junit.Assert.assertTrue
import org.junit.Test

class ProviderAccountIdStorageCodecTest {
    @Test
    fun everyKnownProviderRoundTripsReservedAndOpaqueKeysCanonically() {
        ProviderId.entries.forEachIndexed { index, provider ->
            val ids = listOf(
                ProviderAccountId(provider, AccountKey.reservedDefault()),
                ProviderAccountId(provider, key(index + 1)),
            )
            ids.forEach { id ->
                val encoded = ProviderAccountIdStorageCodec.encode(id)
                assertEquals(ProviderAccountIdDecodeResult.Decoded(id), ProviderAccountIdStorageCodec.decode(encoded))
                assertEquals(id, ProviderAccountIdStorageCodec.decodeOrNull(encoded))
                assertEquals(encoded, ProviderAccountIdStorageCodec.encode(requireNotNull(ProviderAccountIdStorageCodec.decodeOrNull(encoded))))
            }
        }
    }

    @Test
    fun exhaustiveMalformedLengthDelimiterControlUnicodeAndAccountMatrixFailsClosed() {
        val malformed = ProviderAccountIdDecodeFailure.MALFORMED_FORMAT
        val cases = listOf(
            "" to ProviderAccountIdDecodeFailure.EMPTY,
            "pa1" to malformed,
            "pa1:" to malformed,
            "pa1::codex:7:default" to malformed,
            "pa1:+5:codex:7:default" to malformed,
            "pa1:-5:codex:7:default" to malformed,
            "pa1:0::7:default" to malformed,
            "pa1:05:codex:7:default" to malformed,
            "pa1:2147483648:codex:7:default" to malformed,
            "pa1:2147483647:codex:7:default" to malformed,
            "pa1:5" to malformed,
            "pa1:5:" to malformed,
            "pa1:5:code" to malformed,
            "pa1:5:codex" to malformed,
            "pa1:5:codex:" to malformed,
            "pa1:5:codex:+7:default" to malformed,
            "pa1:5:codex:-7:default" to malformed,
            "pa1:5:codex:0:" to malformed,
            "pa1:5:codex:07:default" to malformed,
            "pa1:5:codex:2147483648:default" to malformed,
            "pa1:5:codex:2147483647:default" to malformed,
            "pa1:5:codex:7" to malformed,
            "pa1:5:codex:7:" to malformed,
            "pa1:5:codex:7:defaul" to malformed,
            "pa1:5:codex:7:defaultx" to malformed,
            "pa1:5:codex:7:default:tail" to malformed,
            "pa2:5:codex:7:default" to ProviderAccountIdDecodeFailure.UNSUPPORTED_VERSION,
            "pa10:5:codex:7:default" to ProviderAccountIdDecodeFailure.UNSUPPORTED_VERSION,
            "pa999:5:codex:7:default" to ProviderAccountIdDecodeFailure.UNSUPPORTED_VERSION,
            "pb1:5:codex:7:default" to malformed,
            "pa1:5:codex:7:def\u0000ult" to ProviderAccountIdDecodeFailure.CONTROL_CHARACTER,
            "pa1:5:codex:7:def\tult" to ProviderAccountIdDecodeFailure.CONTROL_CHARACTER,
            "pa1:5:codex:7:def\rult" to ProviderAccountIdDecodeFailure.CONTROL_CHARACTER,
            "pa1:5:codex:7:def\nult" to ProviderAccountIdDecodeFailure.CONTROL_CHARACTER,
            "pa1:5:codex:7:def\u007fult" to ProviderAccountIdDecodeFailure.CONTROL_CHARACTER,
            "pa1:5:codex:7:def\u0080ult" to ProviderAccountIdDecodeFailure.CONTROL_CHARACTER,
            "pa1:5:codex:7:def\u009fult" to ProviderAccountIdDecodeFailure.CONTROL_CHARACTER,
            "pa1:5:codex:7:def\uD800ult" to ProviderAccountIdDecodeFailure.NON_CANONICAL,
            "pa1:5:codex:7:def\uDC00ult" to ProviderAccountIdDecodeFailure.NON_CANONICAL,
            "pa1:5:CODEX:7:default" to ProviderAccountIdDecodeFailure.UNKNOWN_PROVIDER,
            "pa1:5:ｃｏｄｅｘ:7:default" to ProviderAccountIdDecodeFailure.UNKNOWN_PROVIDER,
            "pa1:5:соdex:7:default" to ProviderAccountIdDecodeFailure.UNKNOWN_PROVIDER,
            "pa1:5:codéx:7:default" to ProviderAccountIdDecodeFailure.UNKNOWN_PROVIDER,
            "pa1:6:code\u0301x:7:default" to ProviderAccountIdDecodeFailure.NON_CANONICAL,
            "pa1:7:unknown:7:default" to ProviderAccountIdDecodeFailure.UNKNOWN_PROVIDER,
            "pa1:5:codex:7:DEFAULT" to ProviderAccountIdDecodeFailure.INVALID_ACCOUNT_KEY,
            "pa1:5:codex:37:ACCT_00000000000000000000000000000001" to ProviderAccountIdDecodeFailure.INVALID_ACCOUNT_KEY,
            "pa1:5:codex:37:acct_0000000000000000000000000000000G" to ProviderAccountIdDecodeFailure.INVALID_ACCOUNT_KEY,
            "pa1:5:codex:36:acct_0000000000000000000000000000001" to ProviderAccountIdDecodeFailure.INVALID_ACCOUNT_KEY,
            "pa1:5:codex:38:acct_000000000000000000000000000000001" to ProviderAccountIdDecodeFailure.INVALID_ACCOUNT_KEY,
            "pa1:5:codex:8:reserved" to ProviderAccountIdDecodeFailure.INVALID_ACCOUNT_KEY,
        )
        cases.forEach { (raw, reason) ->
            assertEquals(raw, ProviderAccountIdDecodeResult.Rejected(reason), ProviderAccountIdStorageCodec.decode(raw))
            assertNull(raw, ProviderAccountIdStorageCodec.decodeOrNull(raw))
        }
    }

    @Test
    fun randomOpaqueAccountKeysRemainDistinctAndDeterministicallyEncoded() {
        val values = List(1_000) { ProviderAccountId(ProviderId.CODEX, AccountKey.create()) }
        val encoded = values.map(ProviderAccountIdStorageCodec::encode)
        assertEquals(1_000, encoded.toSet().size)
        assertEquals(values, encoded.mapNotNull(ProviderAccountIdStorageCodec::decodeOrNull))
        assertTrue(encoded.all { it.startsWith("pa1:5:codex:37:acct_") })
    }

    private fun key(index: Int): AccountKey =
        AccountKey.parseOpaque("acct_${index.toString(16).padStart(32, '0')}")
}
