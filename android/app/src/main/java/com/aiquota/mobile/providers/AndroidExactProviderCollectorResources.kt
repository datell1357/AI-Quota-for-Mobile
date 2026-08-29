package com.aiquota.mobile.providers

import android.webkit.WebView
import com.aiquota.mobile.accounts.AccountLoginSessionBinding
import com.aiquota.mobile.accounts.NamedProfileLease
import com.aiquota.mobile.accounts.ProviderAccountId
import com.aiquota.mobile.accounts.requireAndroidWebView
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.SupervisorJob
import kotlinx.coroutines.launch

internal object AndroidExactProviderCollectorResources {
    private data class Owned(
        val resources: ExactProviderCollectorResources<WebView, NamedProfileLease>,
        val composition: AndroidExactAccountLoginComposition,
    )

    private val registry = ExactProviderCollectorResourceRegistry<Owned>(
        bindingOf = { it.resources.binding },
        close = { it.close() },
    )
    private val cleanup = ExactProviderCollectorCleanupEntrypoints(registry)
    private val cleanupScope = CoroutineScope(SupervisorJob() + Dispatchers.Default)

    fun retain(
        binding: AccountLoginSessionBinding,
        lease: NamedProfileLease,
        composition: AndroidExactAccountLoginComposition,
        nativeHeaders: Map<String, Map<String, String>>,
    ) {
        require(binding.accountId == lease.accountId)
        registry.retain(
            Owned(
                ExactProviderCollectorResources(
                    binding,
                    lease.requireAndroidWebView(),
                    lease,
                    nativeHeaders,
                ),
                composition,
            )
        )
    }

    fun read(binding: AccountLoginSessionBinding): ExactProviderCollectorResources<WebView, NamedProfileLease>? =
        registry.read(binding)?.resources

    fun currentBinding(accountId: ProviderAccountId): AccountLoginSessionBinding? =
        registry.currentBinding(accountId)

    fun updateNativeHeaders(
        binding: AccountLoginSessionBinding,
        nativeHeaders: Map<String, Map<String, String>>,
    ): Boolean = registry.update(binding) { owned ->
        owned.copy(resources = owned.resources.copy(nativeHeaders = nativeHeaders))
    }

    fun scheduleDeletion(
        binding: AccountLoginSessionBinding,
        afterClear: (Boolean) -> Unit,
    ) {
        cleanupScope.launch { cleanup.deletion(binding, afterClear) }
    }

    suspend fun <T> logout(
        binding: AccountLoginSessionBinding,
        afterClear: (Boolean) -> T,
    ): T = cleanup.logout(binding, afterClear)

    suspend fun sessionReset(binding: AccountLoginSessionBinding): Boolean =
        cleanup.sessionReset(binding) { it }

    suspend fun <T> manualCancel(
        binding: AccountLoginSessionBinding,
        afterClear: (Boolean) -> T,
    ): T = cleanup.manualCancel(binding, afterClear)

    suspend fun <T> reauthentication(
        binding: AccountLoginSessionBinding,
        afterClear: (Boolean) -> T,
    ): T = cleanup.reauthentication(binding, afterClear)

    internal fun timeoutInsideMaintenance(binding: AccountLoginSessionBinding): Boolean =
        cleanup.timeoutInsideMaintenance(binding)

    private fun Owned.close() {
        resources.profileLease.closeAcknowledged { composition.close() }
    }
}
