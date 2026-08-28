package com.aiquota.mobile.accounts

/** Deterministic bounded-page loader. Any drift rejects the whole candidate snapshot. */
class ProviderCardCatalogLoader(
    private val source: ProviderCardDisplayPageSource,
    private val pageSize: Int = DEFAULT_PAGE_SIZE,
) {
    init {
        require(pageSize in 1..MAX_PAGE_SIZE) { "Page size must be between 1 and $MAX_PAGE_SIZE" }
    }

    fun load(): ProviderCardCatalogLoadResult {
        var calls = 0
        val cards = mutableListOf<ProviderCardDisplayRecord>()
        val seen = mutableSetOf<ProviderAccountId>()
        var expectedTotal: Int? = null
        var expectedVersion: DisplayVersion? = null
        var offset = 0
        while (true) {
            val page = try {
                calls++
                source.loadPage(offset, pageSize)
            } catch (_: RuntimeException) {
                return rejected(ProviderCardCatalogLoadFailure.SOURCE_FAILURE, calls)
            }
            if (page.offset != offset) return rejected(ProviderCardCatalogLoadFailure.PAGE_OFFSET_DRIFT, calls)
            if (page.totalCount < 0) return rejected(ProviderCardCatalogLoadFailure.TOTAL_DRIFT, calls)
            if (expectedTotal == null) expectedTotal = page.totalCount
            if (expectedVersion == null) expectedVersion = page.version
            if (page.totalCount != expectedTotal) return rejected(ProviderCardCatalogLoadFailure.TOTAL_DRIFT, calls)
            if (page.version != expectedVersion) return rejected(ProviderCardCatalogLoadFailure.VERSION_DRIFT, calls)
            if (page.records.size > pageSize || cards.size + page.records.size > page.totalCount) {
                return rejected(ProviderCardCatalogLoadFailure.PAGE_SIZE_INVALID, calls)
            }
            page.records.forEach { card ->
                if (card.displayRecord.version.value > page.version.value) {
                    return rejected(ProviderCardCatalogLoadFailure.VERSION_DRIFT, calls)
                }
                if (card.displayRecord.account.state != AccountState.ACTIVE ||
                    card.displayRecord.account.deletionState != AccountDeletionState.NONE
                ) return rejected(ProviderCardCatalogLoadFailure.INACTIVE_CARD, calls)
                if (card.activeRank != cards.size) {
                    return rejected(ProviderCardCatalogLoadFailure.MALFORMED_RANK, calls)
                }
                if (!seen.add(card.accountId)) {
                    return rejected(ProviderCardCatalogLoadFailure.DUPLICATE_ACCOUNT, calls)
                }
                cards += card
            }
            val wantedNext = (offset + page.records.size).takeIf { it < page.totalCount }
            if (page.nextOffset != wantedNext || wantedNext == offset) {
                return rejected(ProviderCardCatalogLoadFailure.NEXT_OFFSET_INVALID, calls)
            }
            if (wantedNext == null) break
            offset = wantedNext
        }
        return ProviderCardCatalogLoadResult.Loaded(
            ProviderCardCatalogSnapshot(requireNotNull(expectedVersion), cards.toList()),
            calls,
        )
    }

    private fun rejected(reason: ProviderCardCatalogLoadFailure, calls: Int) =
        ProviderCardCatalogLoadResult.Rejected(reason, calls)

    companion object {
        const val DEFAULT_PAGE_SIZE = 128
        const val MAX_PAGE_SIZE = 250
    }
}
