package com.aiquota.mobile.debug

import android.os.Bundle
import androidx.activity.ComponentActivity
import androidx.activity.compose.setContent
import androidx.activity.enableEdgeToEdge
import androidx.compose.foundation.layout.WindowInsets
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.safeDrawing
import androidx.compose.foundation.layout.windowInsetsPadding
import androidx.compose.material3.Surface
import androidx.compose.ui.Modifier
import com.aiquota.mobile.accounts.MainProcessAccountAuthority
import com.aiquota.mobile.accounts.ProviderAccountId
import com.aiquota.mobile.accounts.ProviderCardAddResult
import com.aiquota.mobile.accounts.ProviderCardCatalog
import com.aiquota.mobile.local.ProviderId
import com.aiquota.mobile.ui.AIQuotaTheme

class ProviderOnboardingComposeTestActivity : ComponentActivity() {
    private lateinit var host: ProviderEnrollmentDebugHost

    val removeInvocationCount: Int
        get() = host.removeInvocations

    val removedAccountIds: Set<ProviderAccountId>
        get() = host.removedAccountIds

    fun setDeletionFailure(enabled: Boolean) {
        host.deletionFailure = enabled
    }

    fun setDeletionMode(accountId: ProviderAccountId, mode: ProviderDeletionDebugMode) {
        host.setDeletionMode(accountId, mode)
    }

    fun dropCardFromDisplay(accountId: ProviderAccountId) {
        host.dropCardFromDisplay(accountId)
    }

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        enableEdgeToEdge()
        // In-memory authority: a fresh launch starts empty, recreation (rotation) keeps the same instance.
        host = if (savedInstanceState == null) {
            retainedHost?.close()
            ProviderEnrollmentDebugHost(
                ProviderCardCatalog.openForTest(MainProcessAccountAuthority.openInMemoryForTest(this))
            ).also { retainedHost = it }
        } else {
            requireNotNull(retainedHost) { "Recreated without a retained in-memory host" }
        }
        val populated = intent.getStringExtra(EXTRA_DATASET).equals(DATASET_POPULATED, ignoreCase = true)
        if (savedInstanceState == null && populated) host.seedPopulated()
        setContent {
            ProviderCardCatalogDebugTheme {
                Surface(
                    modifier = Modifier.fillMaxSize().windowInsetsPadding(WindowInsets.safeDrawing),
                    color = AIQuotaTheme.colors.appBackground,
                ) {
                    ProviderOnboardingDebugSurface(host, showFirstRun = !populated)
                }
            }
        }
    }

    fun addConcurrently(providerId: ProviderId, alias: String? = null): ProviderCardAddResult =
        host.addConcurrently(providerId, alias)

    fun catalogReceipt(): String = buildString {
        append("cards=").append(host.cards.size).append('\n')
        host.cards.forEach { card ->
            append(card.accountId.providerId.storageId).append(':')
                .append(card.accountId.accountKey.storageValue()).append('|')
                .append(card.alias).append('|')
                .append(card.authState.name).append('\n')
        }
    }

    override fun onDestroy() {
        if (isFinishing) {
            host.close()
            if (retainedHost === host) retainedHost = null
        }
        super.onDestroy()
    }

    companion object {
        const val EXTRA_DATASET = "com.aiquota.mobile.debug.extra.DATASET"
        const val DATASET_POPULATED = "populated"
        private var retainedHost: ProviderEnrollmentDebugHost? = null
    }
}
