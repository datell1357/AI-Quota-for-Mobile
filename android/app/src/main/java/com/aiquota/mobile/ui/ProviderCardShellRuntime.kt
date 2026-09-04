package com.aiquota.mobile.ui

import android.content.Context
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.setValue
import com.aiquota.mobile.accounts.AccountRefreshRequest
import com.aiquota.mobile.accounts.AccountAuthState
import com.aiquota.mobile.accounts.AccountUsageRepository
import com.aiquota.mobile.accounts.AccountUsageWrite
import com.aiquota.mobile.accounts.DisplayVersion
import com.aiquota.mobile.accounts.ProviderAccountId
import com.aiquota.mobile.accounts.ProviderCardCatalogLoader
import com.aiquota.mobile.accounts.ProviderCardCatalogPolicy
import com.aiquota.mobile.accounts.ProviderCardDisplayRecord
import com.aiquota.mobile.accounts.displaySnapshot
import com.aiquota.mobile.accounts.ProviderCardMultiplicity
import com.aiquota.mobile.accounts.ProviderCardProviderPolicy
import com.aiquota.mobile.accounts.ProviderCardRenameResult
import com.aiquota.mobile.accounts.RenameProviderCardRequest
import com.aiquota.mobile.accounts.ReorderProviderCardsRequest
import com.aiquota.mobile.accounts.ReorderProviderCardsResult
import com.aiquota.mobile.local.LocalUsageRepository
import com.aiquota.mobile.local.ProviderCardPreferencesRepository
import com.aiquota.mobile.local.ProviderId
import com.aiquota.mobile.local.ProviderUsageSnapshot
import com.aiquota.mobile.providers.ProviderConnectorRegistry
import com.aiquota.mobile.providers.ProviderSessionResetter
import com.aiquota.mobile.notification.ProviderNotificationAliasUpdater
import com.aiquota.mobile.providers.ProviderCardNotificationSnapshot
import com.aiquota.mobile.widget.ProviderUsageWidgetProvider
import com.aiquota.mobile.ui.dashboard.ProviderCardOrder
import kotlinx.coroutines.CancellationException

data class ProviderCardDetailBinding(
    val accountId: ProviderAccountId,
    val snapshot: ProviderUsageSnapshot,
    val authState: AccountAuthState,
    val busy: Boolean,
    val gaugeColor: String?,
    val singleReserved: Boolean,
)

/** Feature-enabled Task 12 runtime. It owns exact repositories and immutable shell transitions. */
class ProviderCardShellRuntime private constructor(
    private val appContext: Context,
    private val usageRepository: AccountUsageRepository?,
    private val preferencesRepository: ProviderCardPreferencesRepository,
) : AutoCloseable {
    val enabled: Boolean get() = usageRepository != null

    var state: ProviderCardShellState by mutableStateOf(initialState())
        private set

    var gaugeColors: Map<ProviderAccountId, String> by mutableStateOf(preferencesRepository.providerGaugeColors())
        private set

    var preferenceRevision: Int by mutableStateOf(0)
        private set

    fun reload() {
        val repository = usageRepository ?: return
        state = state.applyCatalog(ProviderCardCatalogLoader(repository).load())
        gaugeColors = preferencesRepository.providerGaugeColors()
    }

    fun select(accountId: ProviderAccountId) {
        state = state.select(accountId)
    }

    fun compatibilityAccount(providerId: ProviderId): ProviderAccountId? =
        usageRepository?.compatibilityAccount(providerId)

    fun detailBinding(accountId: ProviderAccountId): ProviderCardDetailBinding? {
        val card = state.card(accountId) ?: return null
        val policy = ProviderCardCatalogPolicy.classify(accountId.providerId) as? ProviderCardProviderPolicy.Released
        return ProviderCardDetailBinding(
            accountId = accountId,
            snapshot = card.routedDetailSnapshot(),
            authState = card.authState,
            busy = accountId in state.busyAccountIds,
            gaugeColor = gaugeColors[accountId],
            singleReserved = policy?.multiplicity == ProviderCardMultiplicity.SINGLE_RESERVED_DEFAULT,
        )
    }

    fun reorder(accountId: ProviderAccountId, targetVisibleIndex: Int) {
        val repository = usageRepository ?: return
        val order = state.catalog.cards.map(ProviderCardDisplayRecord::accountId)
        val requested = ProviderCardOrder.moveExactToTargetIndex(order, accountId, targetVisibleIndex)
        when (val result = repository.reorder(ReorderProviderCardsRequest(requested, state.catalog.version))) {
            is ReorderProviderCardsResult.Reordered -> reload()
            is ReorderProviderCardsResult.Rejected -> state = state.setError(accountId, result.reason.name)
        }
    }

    fun rename(accountId: ProviderAccountId, alias: String): ProviderCardRenameResult? {
        val card = state.card(accountId) ?: return null
        return rename(accountId, alias, card.displayRecord.version)
    }

    fun rename(
        accountId: ProviderAccountId,
        alias: String,
        expectedVersion: DisplayVersion,
    ): ProviderCardRenameResult? {
        val repository = usageRepository ?: return null
        if (state.card(accountId) == null) return null
        val result = repository.rename(RenameProviderCardRequest(accountId, alias, expectedVersion))
        if (result is ProviderCardRenameResult.Renamed) {
            reload()
            val updated = state.card(accountId)
            if (updated != null) {
                ProviderUsageWidgetProvider.updateExactCard(appContext, accountId)
                ProviderNotificationAliasUpdater.update(
                    appContext,
                    ProviderCardNotificationSnapshot(
                        accountId = accountId,
                        alias = updated.alias,
                        generation = updated.generation,
                        sessionRevision = updated.sessionRevision,
                        version = updated.displayRecord.version,
                        snapshot = updated.displayRecord.snapshot,
                    ),
                )
            }
        } else if (result is ProviderCardRenameResult.Rejected) {
            state = state.setError(accountId, result.rejection.toString())
        }
        return result
    }

    fun beginDisconnect(accountId: ProviderAccountId): ProviderCardOperation {
        val started = state.beginOperation(accountId, ProviderCardOperationKind.DISCONNECT)
        state = started.state
        return started.operation
    }

    suspend fun disconnectSingleReserved(
        operation: ProviderCardOperation,
        connectorRegistry: ProviderConnectorRegistry,
        sessionResetter: ProviderSessionResetter,
        localUsageRepository: LocalUsageRepository,
    ) {
        try {
            val providerId = operation.accountId.providerId
            runCatching { connectorRegistry.connectorFor(providerId).disconnect() }
            sessionResetter.disconnectAndWait(providerId)
            localUsageRepository.removeProviderSnapshot(providerId)
            reload()
            state = state.completeOperation(operation)
        } catch (cancelled: CancellationException) {
            state = state.completeOperation(operation)
            throw cancelled
        } catch (_: RuntimeException) {
            state = state.failOperation(operation, "DISCONNECT_FAILED")
        }
    }

    fun requestRefresh(accountId: ProviderAccountId): ProviderCardOperation? {
        val repository = usageRepository ?: return null
        val card = state.card(accountId) ?: return null
        val started = state.beginOperation(accountId, ProviderCardOperationKind.REFRESH)
        state = started.state
        val account = card.displayRecord.account
        val result = repository.requestRefresh(
            AccountRefreshRequest(
                accountId,
                card.displayRecord.version,
                account.generation,
                account.sessionRevision,
            )
        )
        state = state.applyRefresh(started.operation, result)
        return started.operation.takeIf { state.operation(accountId) == it }
    }

    fun writeSnapshot(accountId: ProviderAccountId, snapshot: ProviderUsageSnapshot): Boolean {
        val repository = usageRepository ?: return false
        val card = state.card(accountId) ?: return false
        val current = state.operation(accountId)
        val operation = if (current?.kind == ProviderCardOperationKind.REFRESH) {
            current
        } else {
            val started = state.beginOperation(accountId, ProviderCardOperationKind.SNAPSHOT_WRITE)
            state = started.state
            started.operation
        }
        val account = card.displayRecord.account
        val result = repository.write(
            AccountUsageWrite(
                accountId,
                card.displayRecord.version,
                account.generation,
                account.sessionRevision,
                snapshot,
            )
        )
        state = state.applySnapshotWrite(
            operation,
            result,
        )
        return result is com.aiquota.mobile.accounts.AccountUsageWriteResult.Committed
    }

    fun resetNotificationEnabled(accountId: ProviderAccountId): Boolean {
        preferenceRevision
        return preferencesRepository.isResetNotificationEnabled(accountId)
    }

    fun setResetNotificationEnabled(accountId: ProviderAccountId, enabled: Boolean) {
        preferencesRepository.setResetNotificationEnabled(accountId, enabled)
        preferenceRevision++
    }

    fun usageThresholdEnabled(accountId: ProviderAccountId): Boolean {
        preferenceRevision
        return preferencesRepository.isUsageThresholdNotificationEnabled(accountId)
    }

    fun setUsageThresholdEnabled(accountId: ProviderAccountId, enabled: Boolean) {
        preferencesRepository.setUsageThresholdNotificationEnabled(accountId, enabled)
        preferenceRevision++
    }

    fun usageThresholdPercent(accountId: ProviderAccountId): Int {
        preferenceRevision
        return preferencesRepository.usageThresholdPercent(accountId)
    }

    fun setUsageThresholdPercent(accountId: ProviderAccountId, percent: Int) {
        preferencesRepository.setUsageThresholdPercent(accountId, percent)
        preferenceRevision++
    }

    fun saveGaugeColor(accountId: ProviderAccountId, color: String?) {
        preferencesRepository.saveProviderGaugeColor(accountId, color)
        gaugeColors = preferencesRepository.providerGaugeColors()
    }

    override fun close() {
        usageRepository?.close()
    }

    private fun initialState(): ProviderCardShellState {
        val repository = usageRepository ?: return ProviderCardShellState()
        return ProviderCardShellState().applyCatalog(ProviderCardCatalogLoader(repository).load())
    }

    companion object {
        fun open(context: Context, enabled: Boolean): ProviderCardShellRuntime {
            val appContext = context.applicationContext
            return ProviderCardShellRuntime(
                appContext = appContext,
                usageRepository = if (enabled) AccountUsageRepository.open(appContext) else null,
                preferencesRepository = ProviderCardPreferencesRepository(appContext),
            )
        }
    }
}

internal fun ProviderCardDisplayRecord.routedDetailSnapshot(): ProviderUsageSnapshot =
    displaySnapshot().copy(displayName = alias)
