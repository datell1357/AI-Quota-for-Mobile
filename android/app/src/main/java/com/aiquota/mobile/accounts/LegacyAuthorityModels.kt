package com.aiquota.mobile.accounts

import com.aiquota.mobile.local.ProviderUsageSnapshot

internal data class LegacyAuthorityImportSeed(
    val seed: AuthorityAccountSeed,
    val mirrorReceiptSha256: String,
    val preferenceReceiptSha256: String
) {
    init {
        require(mirrorReceiptSha256.matches(SHA256_PATTERN))
        require(preferenceReceiptSha256.matches(SHA256_PATTERN))
    }
}

internal data class LegacyAuthorityState(
    val record: VersionedDisplayRecord,
    val demandMask: Int,
    val attemptGeneration: AccountGeneration,
    val attemptSessionRevision: SessionRevision,
    val activeNonce: String?,
    val lastNonce: String?,
    val publishedNonceCount: Int,
    val mirrorReceiptSha256: String,
    val preferenceReceiptSha256: String
)

internal data class LegacyProjectionAuthorityState(
    val desiredRevision: Long,
    val appliedRevision: Long,
    val aggregateSha256: String,
    val mirrorsSha256: String,
    val cacheSha256: String
)

internal data class LegacyProjectionAuthority(
    val revision: Long,
    val snapshots: Map<com.aiquota.mobile.local.ProviderId, ProviderUsageSnapshot>
)
