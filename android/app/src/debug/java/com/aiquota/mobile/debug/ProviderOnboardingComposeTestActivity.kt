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
import com.aiquota.mobile.accounts.ProviderCardAddResult
import com.aiquota.mobile.accounts.ProviderCardCatalog
import com.aiquota.mobile.local.ProviderId
import com.aiquota.mobile.ui.AIQuotaTheme

class ProviderOnboardingComposeTestActivity : ComponentActivity() {
    private lateinit var host: ProviderEnrollmentDebugHost

    val removeInvocationCount: Int
        get() = host.removeInvocations

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        enableEdgeToEdge()
        if (savedInstanceState == null) deleteDatabase(DEBUG_DATABASE_NAME)
        host = ProviderEnrollmentDebugHost(
            ProviderCardCatalog.openForTest(
                MainProcessAccountAuthority.open(this, DEBUG_DATABASE_NAME)
            )
        )
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
        host.close()
        super.onDestroy()
    }

    companion object {
        const val EXTRA_DATASET = "com.aiquota.mobile.debug.extra.DATASET"
        const val DATASET_POPULATED = "populated"
        private const val DEBUG_DATABASE_NAME = "provider-enrollment-debug.db"
    }
}
