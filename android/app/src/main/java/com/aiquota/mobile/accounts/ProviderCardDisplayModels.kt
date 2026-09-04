package com.aiquota.mobile.accounts

import com.aiquota.mobile.local.ProviderUsageSnapshot

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

/**
 * 화면에 쓸 스냅샷. 로그인이 끊긴 카드는 저장된 사용량을 그대로 보여주면 안 된다. 연결 해제나
 * 로그인 취소 뒤에도 스냅샷에는 직전 "수집 중" 상태와 사용량 줄이 남아 있어, 버튼은 "연결"인데
 * 화면은 "연결 중 + 사용량"으로 어긋난다(2026-09-04 실측).
 *
 * 로그인 창이 떠 있는 동안(AUTHENTICATING)은 실제로 연결 중이므로 손대지 않는다.
 */
fun ProviderCardDisplayRecord.displaySnapshot(): ProviderUsageSnapshot {
    val snapshot = displayRecord.snapshot
    val signedOut = authState == AccountAuthState.SIGNED_OUT || authState == AccountAuthState.REAUTH_REQUIRED
    if (!signedOut) return snapshot
    return ProviderUsageSnapshot.disconnected(accountId.providerId).copy(
        displayName = snapshot.displayName,
        updatedAt = snapshot.updatedAt,
        statusUpdatedAt = snapshot.statusUpdatedAt,
    )
}
