package com.aiquota.mobile.accounts

/** Immutable dashboard record. Identity is always [accountId], never alias, provider, or rank. */
data class ProviderCardDisplayRecord(
    val displayRecord: VersionedDisplayRecord,
    val activeRank: Int,
) {
    val accountId: ProviderAccountId get() = displayRecord.account.id
    val alias: String get() = requireNotNull(displayRecord.account.alias)
    val authState: AccountAuthState get() = displayRecord.account.authState
    val generation: AccountGeneration get() = displayRecord.account.generation
    val sessionRevision: SessionRevision get() = displayRecord.account.sessionRevision

    init {
        require(activeRank >= 0) { "Active rank must be non-negative" }
        require(displayRecord.account.state == AccountState.ACTIVE) { "Card account must be active" }
        require(displayRecord.account.deletionState == AccountDeletionState.NONE) { "Deleted card cannot be displayed" }
        require(!displayRecord.account.alias.isNullOrBlank()) { "Card alias must be present" }
    }
}

data class ProviderCardDisplayPage(
    val records: List<ProviderCardDisplayRecord>,
    val offset: Int,
    val totalCount: Int,
    val nextOffset: Int?,
    val version: DisplayVersion,
)

fun interface ProviderCardDisplayPageSource {
    fun loadPage(offset: Int, limit: Int): ProviderCardDisplayPage
}

data class ProviderCardCatalogSnapshot(
    val version: DisplayVersion,
    val cards: List<ProviderCardDisplayRecord>,
) {
    init {
        require(cards.map(ProviderCardDisplayRecord::accountId).toSet().size == cards.size) {
            "Duplicate provider-account card"
        }
        require(cards.map(ProviderCardDisplayRecord::activeRank) == cards.indices.toList()) {
            "Active ranks must be contiguous and ordered"
        }
    }

    companion object {
        val EMPTY = ProviderCardCatalogSnapshot(DisplayVersion.ZERO, emptyList())
    }
}

enum class ProviderCardCatalogLoadFailure {
    SOURCE_FAILURE,
    PAGE_OFFSET_DRIFT,
    TOTAL_DRIFT,
    VERSION_DRIFT,
    STALE_DISPLAY,
    PAGE_SIZE_INVALID,
    NEXT_OFFSET_INVALID,
    DUPLICATE_ACCOUNT,
    MALFORMED_RANK,
    INACTIVE_CARD,
}

sealed interface ProviderCardCatalogLoadResult {
    data class Loaded(val snapshot: ProviderCardCatalogSnapshot, val pageCalls: Int) : ProviderCardCatalogLoadResult
    data class Rejected(val reason: ProviderCardCatalogLoadFailure, val pageCalls: Int) : ProviderCardCatalogLoadResult
}

data class ReorderProviderCardsRequest(
    val orderedAccountIds: List<ProviderAccountId>,
    val expectedVersion: DisplayVersion,
)

enum class ReorderProviderCardsRejection {
    VERSION_MISMATCH,
    DUPLICATE_ACCOUNT,
    CARD_MISSING_OR_INACTIVE,
    CARD_SET_MISMATCH,
}

sealed interface ReorderProviderCardsResult {
    data class Reordered(val orderedAccountIds: List<ProviderAccountId>, val version: DisplayVersion) : ReorderProviderCardsResult
    data class Rejected(val reason: ReorderProviderCardsRejection) : ReorderProviderCardsResult
}

data class AccountRefreshRequest(
    val accountId: ProviderAccountId,
    val expectedVersion: DisplayVersion,
    val expectedGeneration: AccountGeneration,
    val expectedSessionRevision: SessionRevision,
    val demand: AccountDemand = AccountDemand.MANUAL,
)

enum class AccountRefreshRequestRejection {
    ACCOUNT_MISSING,
    ACCOUNT_INELIGIBLE,
    VERSION_MISMATCH,
    GENERATION_MISMATCH,
    SESSION_MISMATCH,
}

sealed interface AccountRefreshRequestResult {
    data class Accepted(val record: VersionedDisplayRecord) : AccountRefreshRequestResult
    data class Rejected(val reason: AccountRefreshRequestRejection) : AccountRefreshRequestResult
}
