package com.aiquota.mobile.ui

import com.aiquota.mobile.accounts.AccountRefreshRequestResult
import com.aiquota.mobile.accounts.AccountUsageWriteResult
import com.aiquota.mobile.accounts.DisplayVersion
import com.aiquota.mobile.accounts.ProviderAccountId
import com.aiquota.mobile.accounts.ProviderCardCatalogLoadFailure
import com.aiquota.mobile.accounts.ProviderCardCatalogLoadResult
import com.aiquota.mobile.accounts.ProviderCardCatalogSnapshot
import com.aiquota.mobile.accounts.ProviderCardDisplayRecord
import com.aiquota.mobile.accounts.VersionedDisplayRecord
import com.aiquota.mobile.local.ProviderId

enum class ProviderCardOperationKind { DISCONNECT, REFRESH, SNAPSHOT_WRITE }

@JvmInline
value class ProviderCardOperationEpoch(val value: Long) {
    init {
        require(value > 0) { "Operation epoch must be positive" }
    }
}

data class ProviderCardOperation(
    val accountId: ProviderAccountId,
    val kind: ProviderCardOperationKind,
    val epoch: ProviderCardOperationEpoch,
    val displayVersionAtStart: DisplayVersion,
)

data class ProviderCardOperationStart(
    val state: ProviderCardShellState,
    val operation: ProviderCardOperation,
)

/** Exact-card state. Async completion is accepted only for its current account/kind/epoch token. */
data class ProviderCardShellState(
    val catalog: ProviderCardCatalogSnapshot = ProviderCardCatalogSnapshot.EMPTY,
    val selectedAccountId: ProviderAccountId? = null,
    val operations: Map<ProviderAccountId, ProviderCardOperation> = emptyMap(),
    val operationEpochs: Map<ProviderAccountId, ProviderCardOperationEpoch> = emptyMap(),
    val errors: Map<ProviderAccountId, String> = emptyMap(),
    val catalogFailure: ProviderCardCatalogLoadFailure? = null,
) {
    val busyAccountIds: Set<ProviderAccountId> get() = operations.keys
    val refreshPendingAccountIds: Set<ProviderAccountId>
        get() = operations.values.filterTo(mutableSetOf()) {
            it.kind == ProviderCardOperationKind.REFRESH
        }.mapTo(mutableSetOf(), ProviderCardOperation::accountId)

    init {
        val ids = catalog.cards.mapTo(mutableSetOf(), ProviderCardDisplayRecord::accountId)
        require(selectedAccountId == null || selectedAccountId in ids) { "Selected card is not active" }
        require(operations.all { (id, operation) -> id in ids && operation.accountId == id }) {
            "Operation references an inactive or different card"
        }
        require(operationEpochs.keys.all(ids::contains)) { "Operation epoch references an inactive card" }
        require(errors.keys.all(ids::contains)) { "Error state references an inactive card" }
    }

    fun applyCatalog(result: ProviderCardCatalogLoadResult): ProviderCardShellState = when (result) {
        is ProviderCardCatalogLoadResult.Rejected -> copy(catalogFailure = result.reason)
        is ProviderCardCatalogLoadResult.Loaded -> applyLoadedCatalog(result.snapshot)
    }

    fun select(accountId: ProviderAccountId?): ProviderCardShellState {
        require(accountId == null || card(accountId) != null) { "Cannot select an inactive card" }
        return copy(selectedAccountId = accountId)
    }

    fun applyCompatibilitySelection(
        providerId: ProviderId,
        resolvedAccountId: ProviderAccountId?,
    ): ProviderCardShellState {
        if (resolvedAccountId == null || resolvedAccountId.providerId != providerId) return this
        return if (card(resolvedAccountId) == null) this else select(resolvedAccountId)
    }

    fun beginOperation(
        accountId: ProviderAccountId,
        kind: ProviderCardOperationKind,
    ): ProviderCardOperationStart {
        val card = requireCard(accountId)
        val epoch = ProviderCardOperationEpoch((operationEpochs[accountId]?.value ?: 0L) + 1L)
        val operation = ProviderCardOperation(
            accountId,
            kind,
            epoch,
            card.displayRecord.version,
        )
        return ProviderCardOperationStart(
            copy(
                operations = operations + (accountId to operation),
                operationEpochs = operationEpochs + (accountId to epoch),
                errors = errors - accountId,
            ),
            operation,
        )
    }

    fun completeOperation(operation: ProviderCardOperation): ProviderCardShellState {
        if (!isCurrent(operation)) return this
        return copy(operations = operations - operation.accountId, errors = errors - operation.accountId)
    }

    fun failOperation(operation: ProviderCardOperation, message: String): ProviderCardShellState {
        if (!isCurrent(operation)) return this
        return copy(
            operations = operations - operation.accountId,
            errors = errors + (operation.accountId to message),
        )
    }

    fun setError(accountId: ProviderAccountId, message: String?): ProviderCardShellState {
        requireCard(accountId)
        return copy(errors = errors.toMutableMap().apply {
            if (message == null) remove(accountId) else put(accountId, message)
        })
    }

    fun applyRefresh(
        operation: ProviderCardOperation,
        result: AccountRefreshRequestResult,
    ): ProviderCardShellState {
        if (!isCurrent(operation) || operation.kind != ProviderCardOperationKind.REFRESH) return this
        return when (result) {
            is AccountRefreshRequestResult.Rejected -> failOperation(operation, result.reason.name)
            is AccountRefreshRequestResult.Accepted -> {
                require(result.record.account.id == operation.accountId) { "Refresh targeted another card" }
                replaceRecord(result.record).copy(errors = errors - operation.accountId)
            }
        }
    }

    fun applySnapshotWrite(
        operation: ProviderCardOperation,
        result: AccountUsageWriteResult,
    ): ProviderCardShellState {
        if (!isCurrent(operation)) return this
        return when (result) {
            is AccountUsageWriteResult.Rejected -> failOperation(operation, result.reason.name)
            is AccountUsageWriteResult.Committed -> {
                require(result.record.account.id == operation.accountId) { "Write targeted another card" }
                replaceRecord(result.record).completeOperation(operation)
            }
        }
    }

    fun card(accountId: ProviderAccountId): ProviderCardDisplayRecord? =
        catalog.cards.firstOrNull { it.accountId == accountId }

    fun operation(accountId: ProviderAccountId): ProviderCardOperation? = operations[accountId]

    private fun applyLoadedCatalog(snapshot: ProviderCardCatalogSnapshot): ProviderCardShellState {
        val stale = snapshot.version.value < catalog.version.value || snapshot.cards.any { candidate ->
            val current = card(candidate.accountId) ?: return@any false
            candidate.displayRecord.version.value < current.displayRecord.version.value ||
                candidate.generation.value < current.generation.value ||
                candidate.sessionRevision.value < current.sessionRevision.value
        }
        if (stale) return copy(catalogFailure = ProviderCardCatalogLoadFailure.STALE_DISPLAY)
        val ids = snapshot.cards.mapTo(mutableSetOf(), ProviderCardDisplayRecord::accountId)
        val displayChanged = snapshot.version != catalog.version
        return copy(
            catalog = snapshot,
            selectedAccountId = selectedAccountId?.takeIf(ids::contains),
            operations = if (displayChanged) emptyMap() else operations.filterKeys(ids::contains),
            operationEpochs = operationEpochs.filterKeys(ids::contains),
            errors = errors.filterKeys(ids::contains),
            catalogFailure = null,
        )
    }

    private fun replaceRecord(record: VersionedDisplayRecord): ProviderCardShellState {
        val index = catalog.cards.indexOfFirst { it.accountId == record.account.id }
        require(index >= 0) { "Committed record does not belong to an active card" }
        val current = catalog.cards[index]
        require(record.version.value > current.displayRecord.version.value) { "Stale display record" }
        require(record.account.generation.value >= current.generation.value) { "Stale account generation" }
        require(record.account.sessionRevision.value >= current.sessionRevision.value) { "Stale session revision" }
        val cards = catalog.cards.toMutableList()
        cards[index] = ProviderCardDisplayRecord(record, current.activeRank)
        return copy(catalog = ProviderCardCatalogSnapshot(record.version, cards))
    }

    private fun isCurrent(operation: ProviderCardOperation): Boolean =
        operations[operation.accountId] == operation

    private fun requireCard(accountId: ProviderAccountId): ProviderCardDisplayRecord =
        requireNotNull(card(accountId)) { "Card is not active" }
}
