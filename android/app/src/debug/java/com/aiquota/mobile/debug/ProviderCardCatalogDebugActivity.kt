package com.aiquota.mobile.debug

import android.os.Bundle
import androidx.activity.ComponentActivity
import androidx.activity.compose.setContent
import androidx.activity.enableEdgeToEdge
import androidx.compose.foundation.layout.WindowInsets
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.safeDrawing
import androidx.compose.foundation.layout.windowInsetsPadding
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Surface
import androidx.compose.material3.lightColorScheme
import androidx.compose.runtime.Composable
import androidx.compose.runtime.CompositionLocalProvider
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.setValue
import androidx.compose.ui.Modifier
import com.aiquota.mobile.local.AppTheme
import com.aiquota.mobile.local.DashboardViewMode
import com.aiquota.mobile.local.ProviderConnectionState
import com.aiquota.mobile.local.ProviderId
import com.aiquota.mobile.local.ProviderRefreshState
import com.aiquota.mobile.local.ProviderUsageLine
import com.aiquota.mobile.local.ProviderUsageSnapshot
import com.aiquota.mobile.ui.AIQuotaColors
import com.aiquota.mobile.ui.AIQuotaTheme
import com.aiquota.mobile.ui.LocalAIQuotaThemeColors
import com.aiquota.mobile.ui.aiQuotaThemeColors
import com.aiquota.mobile.ui.dashboard.UnifiedDashboardScreen

/**
 * Debug-only deterministic host for the production dashboard surface.
 *
 * Supported intent extras:
 * - [EXTRA_DATASET]: [DATASET_POPULATED] (default) or [DATASET_EMPTY].
 * - [EXTRA_VIEW_MODE]: [VIEW_MODE_LIST] (default) or [VIEW_MODE_GRID].
 *
 * Every callback is intentionally local and side-effect free. This process does not initialize the
 * main-process provider, Firebase, refresh, widget, or login coordinators.
 */
class ProviderCardCatalogDebugActivity : ComponentActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        enableEdgeToEdge()

        val dataset = intent.getStringExtra(EXTRA_DATASET)
        val initialViewMode = when (intent.getStringExtra(EXTRA_VIEW_MODE)?.trim()?.lowercase()) {
            VIEW_MODE_GRID, VIEW_MODE_CARD -> DashboardViewMode.CARD
            else -> DashboardViewMode.LIST
        }
        val populated = !dataset.equals(DATASET_EMPTY, ignoreCase = true)

        setContent {
            ProviderCardCatalogDebugTheme {
                var viewMode by remember(initialViewMode) { mutableStateOf(initialViewMode) }
                Surface(
                    modifier = Modifier
                        .fillMaxSize()
                        .windowInsetsPadding(WindowInsets.safeDrawing),
                    color = AIQuotaTheme.colors.appBackground
                ) {
                    if (dataset.equals(DATASET_ONBOARDING, ignoreCase = true)) {
                        ProviderOnboardingDebugSurface()
                    } else {
                        UnifiedDashboardScreen(
                            providerOrder = if (populated) populatedProviderOrder else emptyList(),
                            hiddenProviders = emptySet(),
                            snapshots = if (populated) populatedSnapshots else emptyList(),
                            onProviderSelected = {},
                            onConnectProvider = {},
                            onReorderProvider = { _, _ -> },
                            onAddWidget = {},
                            onOpenSettings = {},
                            viewMode = viewMode,
                            onSelectViewMode = { viewMode = it },
                            modifier = Modifier.fillMaxSize()
                        )
                    }
                }
            }
        }
    }

    companion object {
        const val EXTRA_DATASET = "com.aiquota.mobile.debug.extra.DATASET"
        const val EXTRA_VIEW_MODE = "com.aiquota.mobile.debug.extra.VIEW_MODE"
        const val DATASET_POPULATED = "populated"
        const val DATASET_EMPTY = "empty"
        const val DATASET_ONBOARDING = "onboarding"
        const val VIEW_MODE_LIST = "list"
        const val VIEW_MODE_GRID = "grid"
        const val VIEW_MODE_CARD = "card"
    }
}

@Composable
internal fun ProviderCardCatalogDebugTheme(content: @Composable () -> Unit) {
    val colors = aiQuotaThemeColors(AppTheme.DEFAULT)
    val materialColors = lightColorScheme(
        primary = colors.primary,
        onPrimary = AIQuotaColors.SurfaceMuted,
        primaryContainer = colors.selectedNav,
        onPrimaryContainer = colors.textPrimary,
        secondary = colors.primaryActive,
        background = colors.appBackground,
        surface = colors.panel,
        surfaceVariant = colors.unselectedNav,
        onSurface = colors.textPrimary,
        onSurfaceVariant = colors.textSecondary,
        outline = colors.border,
        outlineVariant = colors.borderSoft
    )

    CompositionLocalProvider(LocalAIQuotaThemeColors provides colors) {
        MaterialTheme(colorScheme = materialColors, content = content)
    }
}

private const val FIXED_UPDATED_AT = "2026-08-26T00:00:00Z"

private val populatedProviderOrder = listOf(
    ProviderId.CLAUDE,
    ProviderId.CODEX,
    ProviderId.CURSOR,
    ProviderId.KIRO,
    ProviderId.OPENCODE,
    ProviderId.GLM
)

private val populatedSnapshots = listOf(
    ProviderUsageSnapshot(
        providerId = ProviderId.CLAUDE,
        connectionState = ProviderConnectionState.CONNECTED,
        planLabel = "Pro",
        account = "synthetic@local.invalid",
        updatedAt = FIXED_UPDATED_AT,
        statusUpdatedAt = FIXED_UPDATED_AT,
        lines = listOf(
            ProviderUsageLine(label = "Session", remainingPercent = 0.72f, resetText = "Resets in 2h 30m"),
            ProviderUsageLine(label = "Weekly", remainingPercent = 0.41f, resetText = "Resets Monday")
        )
    ),
    ProviderUsageSnapshot(
        providerId = ProviderId.CODEX,
        connectionState = ProviderConnectionState.CONNECTED,
        planLabel = "Plus",
        account = "synthetic@local.invalid",
        updatedAt = FIXED_UPDATED_AT,
        statusUpdatedAt = FIXED_UPDATED_AT,
        lines = listOf(
            ProviderUsageLine(label = "5 hour", remainingPercent = 0.58f, resetText = "Resets in 1h 45m"),
            ProviderUsageLine(label = "Weekly", remainingPercent = 0.84f, resetText = "Resets Sunday")
        )
    ),
    ProviderUsageSnapshot(
        providerId = ProviderId.CURSOR,
        connectionState = ProviderConnectionState.DISCONNECTED,
        updatedAt = FIXED_UPDATED_AT,
        statusUpdatedAt = FIXED_UPDATED_AT,
        message = "Sign in required"
    ),
    ProviderUsageSnapshot(
        providerId = ProviderId.KIRO,
        connectionState = ProviderConnectionState.INTERACTIVE_AUTH_REQUIRED,
        updatedAt = FIXED_UPDATED_AT,
        statusUpdatedAt = FIXED_UPDATED_AT,
        message = "Connection needs attention"
    ),
    ProviderUsageSnapshot(
        providerId = ProviderId.OPENCODE,
        connectionState = ProviderConnectionState.COLLECTING,
        refreshState = ProviderRefreshState.REFRESHING,
        planLabel = "Local",
        updatedAt = FIXED_UPDATED_AT,
        statusUpdatedAt = FIXED_UPDATED_AT,
        message = "Collecting usage"
    ),
    ProviderUsageSnapshot(
        providerId = ProviderId.GLM,
        connectionState = ProviderConnectionState.UNAVAILABLE,
        updatedAt = FIXED_UPDATED_AT,
        statusUpdatedAt = FIXED_UPDATED_AT,
        message = "Synthetic usage unavailable"
    )
)
