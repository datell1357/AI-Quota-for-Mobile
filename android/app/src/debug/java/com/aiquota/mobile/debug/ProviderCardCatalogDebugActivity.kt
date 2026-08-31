package com.aiquota.mobile.debug

import android.content.Intent
import android.content.res.Configuration
import android.os.Bundle
import android.view.ContextThemeWrapper
import androidx.activity.ComponentActivity
import androidx.activity.enableEdgeToEdge
import androidx.compose.foundation.layout.WindowInsets
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.safeDrawing
import androidx.compose.foundation.layout.windowInsetsPadding
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Surface
import androidx.compose.material3.Text
import androidx.compose.material3.lightColorScheme
import androidx.compose.runtime.Composable
import androidx.compose.runtime.CompositionLocalProvider
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.setValue
import androidx.compose.ui.Modifier
import androidx.compose.ui.Alignment
import androidx.compose.ui.platform.ComposeView
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.unit.dp
import com.aiquota.mobile.accounts.AccountAuthState
import com.aiquota.mobile.accounts.AccountGeneration
import com.aiquota.mobile.accounts.AccountKey
import com.aiquota.mobile.accounts.AccountRecord
import com.aiquota.mobile.accounts.AccountState
import com.aiquota.mobile.accounts.AccountDeletionState
import com.aiquota.mobile.accounts.DisplayVersion
import com.aiquota.mobile.accounts.ProviderAccountId
import com.aiquota.mobile.accounts.ProviderAccountIdStorageCodec
import com.aiquota.mobile.accounts.ProviderCardDisplayRecord
import com.aiquota.mobile.accounts.SessionRevision
import com.aiquota.mobile.accounts.VersionedDisplayRecord
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
import java.util.IllformedLocaleException
import java.util.Locale

/**
 * Debug-only deterministic host for the production dashboard surface.
 *
 * Supported intent extras:
 * - [EXTRA_DATASET]: [DATASET_POPULATED] (default) or [DATASET_EMPTY].
 * - [EXTRA_VIEW_MODE]: [VIEW_MODE_LIST] (default) or [VIEW_MODE_GRID].
 * - [EXTRA_THEME]: [THEME_MACOS] (default) or [THEME_WINDOWS].
 * - [EXTRA_LOCALE]: Optional BCP 47 language tag such as `en-US` or `ko-KR`; omitted or invalid
 *   values use the system locale.
 *
 * Every callback is intentionally local and side-effect free. This process does not initialize the
 * main-process provider, Firebase, refresh, widget, or login coordinators.
 */
open class ProviderCardCatalogDebugActivity : ComponentActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        val requestedLocale = intent.getStringExtra(EXTRA_LOCALE)
            ?.trim()
            ?.takeIf(String::isNotEmpty)
            ?.let { languageTag ->
                try {
                    Locale.Builder().setLanguageTag(languageTag).build()
                } catch (_: IllformedLocaleException) {
                    null
                }
            }
        super.onCreate(savedInstanceState)
        enableEdgeToEdge()

        val contentContext = requestedLocale?.let { locale ->
            val configuration = Configuration(resources.configuration).apply { setLocale(locale) }
            ContextThemeWrapper(this, theme).apply {
                applyOverrideConfiguration(configuration)
            }
        } ?: this

        val dataset = intent.getStringExtra(EXTRA_DATASET)
        val initialViewMode = when (intent.getStringExtra(EXTRA_VIEW_MODE)?.trim()?.lowercase()) {
            VIEW_MODE_GRID, VIEW_MODE_CARD -> DashboardViewMode.CARD
            else -> DashboardViewMode.LIST
        }
        val theme = AppTheme.fromStorageId(intent.getStringExtra(EXTRA_THEME))
        val populated = !dataset.equals(DATASET_EMPTY, ignoreCase = true)
        val exact = exactFixture(dataset)
        if (exact != null && intent.getBooleanExtra(EXTRA_RESET_EXACT_FIXTURE, false)) {
            resetExactFixtureOrder(applicationContext, dataset.orEmpty())
        }

        setContentView(
            ComposeView(contentContext).apply {
                setContent {
                    ProviderCardCatalogDebugTheme(theme) {
                        var viewMode by remember(initialViewMode) { mutableStateOf(initialViewMode) }
                        Surface(
                            modifier = Modifier
                                .fillMaxSize()
                                .windowInsetsPadding(WindowInsets.safeDrawing),
                            color = AIQuotaTheme.colors.appBackground
                        ) {
                            if (exact != null) {
                                ExactProviderCardCatalogPreview(
                                    dataset = dataset.orEmpty(),
                                    initialViewMode = initialViewMode,
                                )
                            } else if (dataset.equals(DATASET_ONBOARDING, ignoreCase = true)) {
                                ProviderOnboardingPreviewSurface()
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
            },
        )
    }

    override fun onNewIntent(intent: Intent) {
        super.onNewIntent(intent)
        setIntent(intent)
        recreate()
    }

    companion object {
        const val EXTRA_DATASET = "com.aiquota.mobile.debug.extra.DATASET"
        const val EXTRA_VIEW_MODE = "com.aiquota.mobile.debug.extra.VIEW_MODE"
        const val EXTRA_THEME = "com.aiquota.mobile.debug.extra.THEME"
        const val EXTRA_LOCALE = "com.aiquota.mobile.debug.extra.LOCALE"
        const val EXTRA_RESET_EXACT_FIXTURE = "com.aiquota.mobile.debug.extra.RESET_EXACT_FIXTURE"
        const val DATASET_POPULATED = "populated"
        const val DATASET_EMPTY = "empty"
        const val DATASET_ONBOARDING = "onboarding"
        const val DATASET_EXACT_HAPPY = "exact-happy"
        const val DATASET_EXACT_REFRESH = "exact-refresh"
        const val DATASET_EXACT_ZERO = "exact-zero"
        const val DATASET_EXACT_ONE = "exact-one"
        const val DATASET_EXACT_EDGE = "exact-edge"
        const val DATASET_EXACT_REAUTH = "exact-reauth"
        const val VIEW_MODE_LIST = "list"
        const val VIEW_MODE_GRID = "grid"
        const val VIEW_MODE_CARD = "card"
        const val THEME_MACOS = "macos"
        const val THEME_WINDOWS = "windows"
    }
}

@Composable
private fun ExactProviderCardCatalogPreview(dataset: String, initialViewMode: DashboardViewMode) {
    val context = LocalContext.current.applicationContext
    val fixture = remember(dataset) { loadExactFixture(context, dataset) }
    var cards by remember(dataset) { mutableStateOf(fixture) }
    var viewMode by remember(dataset, initialViewMode) { mutableStateOf(initialViewMode) }
    var selectedAlias by remember(dataset) { mutableStateOf<String?>(null) }
    var busyAccountIds by remember(dataset) { mutableStateOf<Set<ProviderAccountId>>(emptySet()) }
    Surface(
        modifier = Modifier.fillMaxSize(),
        color = AIQuotaTheme.colors.appBackground,
    ) {
        androidx.compose.foundation.layout.Box(modifier = Modifier.fillMaxSize()) {
            UnifiedDashboardScreen(
                cards = cards,
                busyAccountIds = busyAccountIds,
                errors = emptyMap(),
                gaugeColors = emptyMap(),
                onCardSelected = { accountId ->
                    selectedAlias = cards.firstOrNull { it.accountId == accountId }?.alias
                },
                onConnectCard = { accountId ->
                    selectedAlias = cards.firstOrNull { it.accountId == accountId }?.alias?.let { alias ->
                        "Connect requested ${ProviderAccountIdStorageCodec.encode(accountId)} $alias"
                    }
                },
                onRefreshCard = { accountId ->
                    busyAccountIds = setOf(accountId)
                    selectedAlias = cards.firstOrNull { it.accountId == accountId }?.alias?.let { "Refresh requested $it" }
                },
                onReorderCard = { accountId, targetIndex ->
                    val ordered = cards.map(ProviderCardDisplayRecord::accountId).toMutableList()
                    if (ordered.remove(accountId)) {
                        ordered.add(targetIndex.coerceIn(0, ordered.size), accountId)
                        val byId = cards.associateBy(ProviderCardDisplayRecord::accountId)
                        cards = ordered.mapIndexed { index, id -> byId.getValue(id).copy(activeRank = index) }
                        saveExactFixtureOrder(context, dataset, ordered)
                    }
                },
                onAddWidget = {},
                onOpenSettings = {},
                viewMode = viewMode,
                onSelectViewMode = { viewMode = it },
                modifier = Modifier.fillMaxSize(),
            )
            selectedAlias?.let { alias ->
                Text(
                    text = "Selected $alias",
                    modifier = Modifier.align(Alignment.TopCenter).padding(top = 4.dp),
                    color = AIQuotaTheme.colors.textPrimary,
                )
            }
        }
    }
}

private fun loadExactFixture(context: android.content.Context, dataset: String): List<ProviderCardDisplayRecord> {
    val base = exactFixture(dataset).orEmpty()
    val preferences = context.getSharedPreferences(EXACT_FIXTURE_PREFERENCES, android.content.Context.MODE_PRIVATE)
    val byId = base.associateBy(ProviderCardDisplayRecord::accountId)
    val saved = preferences.getString(exactFixtureOrderKey(dataset), null)
        .orEmpty()
        .split("\n")
        .mapNotNull(ProviderAccountIdStorageCodec::decodeOrNull)
        .filter { it in byId }
    val ordered = (saved + base.map(ProviderCardDisplayRecord::accountId)).distinct()
    return ordered.mapIndexed { index, id -> byId.getValue(id).copy(activeRank = index) }
}

private fun resetExactFixtureOrder(context: android.content.Context, dataset: String) {
    context.getSharedPreferences(EXACT_FIXTURE_PREFERENCES, android.content.Context.MODE_PRIVATE)
        .edit()
        .remove(exactFixtureOrderKey(dataset))
        .commit()
}

private fun saveExactFixtureOrder(
    context: android.content.Context,
    dataset: String,
    ordered: List<ProviderAccountId>,
) {
    context.getSharedPreferences(EXACT_FIXTURE_PREFERENCES, android.content.Context.MODE_PRIVATE)
        .edit()
        .putString(exactFixtureOrderKey(dataset), ordered.joinToString("\n", transform = ProviderAccountIdStorageCodec::encode))
        .apply()
}

private fun exactFixtureOrderKey(dataset: String): String = "order:$dataset"

private const val EXACT_FIXTURE_PREFERENCES = "task21_exact_dashboard_fixture"

private fun exactFixture(dataset: String?): List<ProviderCardDisplayRecord>? {
    val normalized = dataset?.trim()?.lowercase() ?: return null
    val cards = when (normalized) {
        ProviderCardCatalogDebugActivity.DATASET_EXACT_HAPPY -> listOf(
            exactCard(ProviderId.CLAUDE, "Claude", ACCOUNT_ONE, AccountAuthState.AUTHENTICATED),
            exactCard(ProviderId.CODEX, "Codex", ACCOUNT_TWO, AccountAuthState.AUTHENTICATED),
            exactCard(ProviderId.CODEX, "Codex 2", ACCOUNT_THREE, AccountAuthState.AUTHENTICATED),
        )
        ProviderCardCatalogDebugActivity.DATASET_EXACT_REFRESH -> listOf(
            exactCard(ProviderId.CODEX, "Codex", ACCOUNT_TWO, AccountAuthState.AUTHENTICATED),
            exactCard(ProviderId.CODEX, "Codex 2", ACCOUNT_THREE, AccountAuthState.AUTHENTICATED),
        )
        ProviderCardCatalogDebugActivity.DATASET_EXACT_ZERO -> emptyList()
        ProviderCardCatalogDebugActivity.DATASET_EXACT_ONE -> listOf(
            exactCard(ProviderId.CODEX, "Codex Work Account With A Very Long Alias Name", ACCOUNT_TWO, AccountAuthState.AUTHENTICATED),
        )
        ProviderCardCatalogDebugActivity.DATASET_EXACT_EDGE -> listOf(
            exactCard(ProviderId.CLAUDE, "Claude", ACCOUNT_ONE, AccountAuthState.AUTHENTICATED),
            exactCard(ProviderId.CODEX, "Codex", ACCOUNT_TWO, AccountAuthState.AUTHENTICATED),
        )
        ProviderCardCatalogDebugActivity.DATASET_EXACT_REAUTH -> listOf(
            exactCard(ProviderId.CODEX, "Codex", ACCOUNT_TWO, AccountAuthState.AUTHENTICATED),
            exactCard(ProviderId.CODEX, "Codex 2", ACCOUNT_THREE, AccountAuthState.REAUTH_REQUIRED, includeUsage = false),
        )
        else -> return null
    }
    return cards.mapIndexed { index, card -> card.copy(activeRank = index) }
}

private fun exactCard(
    providerId: ProviderId,
    alias: String,
    accountKey: AccountKey,
    authState: AccountAuthState,
    includeUsage: Boolean = true,
): ProviderCardDisplayRecord {
    val id = ProviderAccountId(providerId, accountKey)
    val version = DisplayVersion.of(accountKey.hashCode().toLong().and(Long.MAX_VALUE).coerceAtLeast(1))
    val account = AccountRecord(
        id = id,
        state = AccountState.ACTIVE,
        authState = authState,
        deletionState = AccountDeletionState.NONE,
        generation = AccountGeneration.of(1),
        sessionRevision = SessionRevision.of(1),
        alias = alias,
        modifiedVersion = version,
    )
    val snapshot = ProviderUsageSnapshot(
        providerId = providerId,
        connectionState = if (authState == AccountAuthState.REAUTH_REQUIRED) {
            ProviderConnectionState.INTERACTIVE_AUTH_REQUIRED
        } else {
            ProviderConnectionState.CONNECTED
        },
        planLabel = "Synthetic",
        account = alias,
        updatedAt = FIXED_UPDATED_AT,
        statusUpdatedAt = FIXED_UPDATED_AT,
        lines = if (includeUsage) listOf(
            ProviderUsageLine(label = "Quota", remainingPercent = 0.72f, remainingText = "72% left"),
        ) else emptyList(),
    )
    return ProviderCardDisplayRecord(VersionedDisplayRecord(account, snapshot, version), activeRank = 0)
}

private val ACCOUNT_ONE = AccountKey.parseOpaque("acct_00000000000000000000000000000001")
private val ACCOUNT_TWO = AccountKey.parseOpaque("acct_00000000000000000000000000000002")
private val ACCOUNT_THREE = AccountKey.parseOpaque("acct_00000000000000000000000000000003")

@Composable
internal fun ProviderCardCatalogDebugTheme(
    theme: AppTheme = AppTheme.DEFAULT,
    content: @Composable () -> Unit,
) {
    val colors = aiQuotaThemeColors(theme)
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
