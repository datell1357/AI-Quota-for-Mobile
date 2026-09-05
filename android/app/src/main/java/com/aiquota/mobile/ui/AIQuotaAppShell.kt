package com.aiquota.mobile.ui

import android.Manifest
import android.app.Activity
import android.content.Context
import android.content.ContextWrapper
import android.content.Intent
import android.net.Uri
import android.os.Build
import android.os.PowerManager
import android.provider.Settings
import androidx.activity.compose.rememberLauncherForActivityResult
import androidx.activity.result.contract.ActivityResultContracts
import androidx.compose.foundation.BorderStroke
import androidx.compose.foundation.Image
import androidx.compose.foundation.clickable
import androidx.compose.foundation.horizontalScroll
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.WindowInsets
import androidx.compose.foundation.layout.navigationBars
import androidx.compose.foundation.layout.statusBars
import androidx.compose.foundation.layout.windowInsetsPadding
import androidx.compose.foundation.layout.PaddingValues
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.heightIn
import androidx.compose.foundation.layout.offset
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.requiredSize
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.layout.width
import androidx.compose.foundation.layout.widthIn
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material3.Button
import androidx.compose.material3.Icon
import androidx.compose.material3.IconButton
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.OutlinedButton
import androidx.compose.material3.Scaffold
import androidx.compose.material3.SnackbarDuration
import androidx.compose.material3.SnackbarHost
import androidx.compose.material3.SnackbarHostState
import androidx.compose.material3.Surface
import androidx.compose.material3.Text
import androidx.compose.material3.lightColorScheme
import androidx.compose.runtime.Composable
import androidx.compose.runtime.CompositionLocalProvider
import androidx.compose.runtime.DisposableEffect
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.SideEffect
import androidx.compose.runtime.remember
import androidx.compose.runtime.rememberCoroutineScope
import androidx.compose.runtime.saveable.Saver
import androidx.compose.runtime.saveable.rememberSaveable
import androidx.compose.foundation.rememberScrollState
import androidx.compose.runtime.setValue
import androidx.compose.runtime.withFrameNanos
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.luminance
import androidx.compose.ui.focus.FocusRequester
import androidx.compose.ui.layout.ContentScale
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.platform.LocalView
import androidx.core.view.WindowInsetsControllerCompat
import androidx.compose.ui.res.painterResource
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.unit.dp
import androidx.compose.ui.window.Dialog
import com.aiquota.mobile.R
import com.aiquota.mobile.accounts.AccountKey
import com.aiquota.mobile.accounts.DisplayVersion
import com.aiquota.mobile.accounts.MainProcessAccountFeature
import com.aiquota.mobile.accounts.ProviderAccountId
import com.aiquota.mobile.accounts.ProviderCardDeletionResult
import com.aiquota.mobile.accounts.ProviderCardDisplayRecord
import com.aiquota.mobile.accounts.ProviderCardRenameResult
import com.aiquota.mobile.local.AppTheme
import com.aiquota.mobile.local.LocalUsageRepository
import com.aiquota.mobile.local.ProviderConnectionState
import com.aiquota.mobile.local.ProviderId
import com.aiquota.mobile.local.ProviderPreferencesCodec
import com.aiquota.mobile.local.ProviderPreferencesRepository
import com.aiquota.mobile.local.ProviderRefreshState
import com.aiquota.mobile.local.ProviderUsageSnapshot
import com.aiquota.mobile.local.ThemePreferencesRepository
import com.aiquota.mobile.local.snapshotUpdatedAtForStatusTransition
import com.aiquota.mobile.notification.UsageLimitNotificationController
import com.aiquota.mobile.providers.AndroidExactAccountLoginComposition
import com.aiquota.mobile.providers.AntigravityLoopbackOAuthActivity
import com.aiquota.mobile.providers.GlmApiKeyActivity
import com.aiquota.mobile.providers.ProviderCollectionCaches
import com.aiquota.mobile.providers.ProviderConnectorRegistry
import com.aiquota.mobile.providers.ProviderHostAllowlist
import com.aiquota.mobile.providers.ProviderBackgroundRefreshStateRepository
import com.aiquota.mobile.providers.ProviderSessionResetter
import com.aiquota.mobile.providers.UsageSurfaceRefresher
import com.aiquota.mobile.providers.WebLoginActivity
import com.aiquota.mobile.sync.ForegroundRefreshController
import com.aiquota.mobile.sync.ForegroundRefreshPolicy
import com.aiquota.mobile.sync.LiveRefreshPromptPolicy
import com.aiquota.mobile.ui.dashboard.ProviderCardOrder
import com.aiquota.mobile.ui.dashboard.UnifiedDashboardScreen
import com.aiquota.mobile.ui.provider.ProviderDetailScreen
import com.aiquota.mobile.ui.provider.ProviderIconImage
import com.aiquota.mobile.ui.settings.SettingsPanel
import com.aiquota.mobile.ui.settings.settingsLiveRefreshState
import com.aiquota.mobile.widget.DashboardPinnedWidgetType
import com.aiquota.mobile.widget.PinnedWidgetRequester
import com.aiquota.mobile.widget.WidgetPinRequestStatus
import androidx.lifecycle.Lifecycle
import androidx.lifecycle.LifecycleEventObserver
import androidx.lifecycle.LifecycleOwner
import com.aiquota.mobile.BuildConfig
import java.time.Instant
import java.util.Locale
import kotlinx.coroutines.delay
import kotlinx.coroutines.launch
import com.aiquota.mobile.support.BugReportDiagnostics
import com.aiquota.mobile.support.BugReportEmailComposer
import com.aiquota.mobile.support.BugReportRequest
import com.aiquota.mobile.ui.ads.AdConfig
import com.aiquota.mobile.ui.ads.TopBarAdBanner

@Composable
fun AIQuotaAppShell(
    context: Context,
    initialRoute: AppRoute = AppRoute.Home,
    routeRequest: AppRoute? = null,
    modifier: Modifier = Modifier
) {
    val appContext = remember(context) { context.applicationContext }
    val launchContext = LocalContext.current
    val providerPreferencesRepository = remember(appContext) {
        ProviderPreferencesRepository(appContext)
    }
    val themePreferencesRepository = remember(appContext) {
        ThemePreferencesRepository(appContext)
    }
    val localUsageRepository = remember(appContext) {
        LocalUsageRepository(appContext)
    }
    val cardRuntime = remember(appContext) {
        ProviderCardShellRuntime.open(appContext, BuildConfig.MULTI_ACCOUNT_ENABLED)
    }
    val providerEnrollment = rememberProviderEnrollmentRuntime(appContext, cardRuntime)
    val connectorRegistry = remember(appContext) { ProviderConnectorRegistry.default(appContext) }
    val foregroundRefreshController = remember(appContext) { ForegroundRefreshController(appContext) }
    val refreshStateRepository = remember(appContext) {
        ProviderBackgroundRefreshStateRepository(appContext)
    }
    val providerSessionResetter = remember(appContext) { ProviderSessionResetter(appContext) }
    val coroutineScope = rememberCoroutineScope()
    val layoutMetrics = rememberAppLayoutMetrics()
    val snackbarHostState = remember { SnackbarHostState() }

    fun resolveRoute(candidate: AppRoute): AppRoute {
        val activeIds = if (cardRuntime.enabled) {
            cardRuntime.state.catalog.cards.mapTo(mutableSetOf()) { it.accountId }
        } else {
            ProviderId.defaultOrder().mapTo(mutableSetOf()) {
                ProviderAccountId(it, AccountKey.reservedDefault())
            }
        }
        return candidate.resolveAgainst(activeIds) { accountId ->
            if (cardRuntime.enabled) cardRuntime.select(accountId)
        }
    }

    var route by rememberSaveable(stateSaver = AppRouteSaver) {
        mutableStateOf(resolveRoute(initialRoute))
    }
    var currentTheme by remember { mutableStateOf(themePreferencesRepository.currentTheme()) }
    var providerOrder by remember { mutableStateOf(providerPreferencesRepository.providerOrder()) }
    var hiddenProviders by remember { mutableStateOf(providerPreferencesRepository.hiddenProviders()) }
    var providerGaugeColors by remember { mutableStateOf(providerPreferencesRepository.providerGaugeColors()) }
    var dashboardViewMode by remember { mutableStateOf(providerPreferencesRepository.dashboardViewMode()) }
    var snapshots by remember { mutableStateOf(localUsageRepository.readSnapshots()) }
    var busyProvider by remember { mutableStateOf<ProviderId?>(null) }
    var canPostNotifications by remember {
        mutableStateOf(UsageLimitNotificationController.canPostNotifications(launchContext))
    }
    var notificationEnabled by remember {
        mutableStateOf(UsageLimitNotificationController.isEnabled(appContext) && canPostNotifications)
    }
    var liveMonitoringEnabled by remember {
        mutableStateOf(foregroundRefreshController.liveMonitoringEnabled())
    }
    var claudeAutoResetPrimeEnabled by remember {
        mutableStateOf(providerPreferencesRepository.isClaudeAutoResetPrimeEnabled())
    }
    var resetNotificationProviders by remember {
        mutableStateOf(providerPreferencesRepository.resetNotificationEnabledProviders())
    }
    var usageThresholdProviders by remember {
        mutableStateOf(providerPreferencesRepository.usageThresholdEnabledProviders())
    }
    var usageThresholdPercents by remember {
        mutableStateOf(providerPreferencesRepository.usageThresholdPercents())
    }
    var batteryOptimizationExempt by remember {
        mutableStateOf(isBatteryOptimizationExempt(appContext))
    }
    var liveRefreshStatusNowMillis by remember { mutableStateOf(System.currentTimeMillis()) }
    var showLiveRefreshPrompt by remember { mutableStateOf(false) }
    var liveRefreshPromptDismissed by remember { mutableStateOf(false) }
    var showDashboardWidgetPicker by remember { mutableStateOf(false) }
    var showProviderRemoval by remember { mutableStateOf(false) }
    var restoreProviderRemovalFocus by remember { mutableStateOf(false) }
    val providerRemovalFocusRequester = remember { FocusRequester() }
    var providerAddFocusRequester by remember { mutableStateOf<FocusRequester?>(null) }
    val providerAddHeaderFocusRequester = remember { FocusRequester() }
    val providerAddEmptyStateFocusRequester = remember { FocusRequester() }
    val topBarAdFocusEnabled = providerEnrollment?.state?.visible != true && providerAddFocusRequester == null
    val liveRefreshState = settingsLiveRefreshState(
        notificationEnabled = liveMonitoringEnabled,
        canPostNotifications = canPostNotifications,
        heartbeatStale = refreshStateRepository.isHeartbeatStale(liveRefreshStatusNowMillis)
    )
    val themeColors = aiQuotaThemeColors(currentTheme)

    LaunchedEffect(showProviderRemoval, restoreProviderRemovalFocus) {
        if (!showProviderRemoval && restoreProviderRemovalFocus) {
            providerRemovalFocusRequester.requestFocus()
            restoreProviderRemovalFocus = false
        }
    }

    LaunchedEffect(providerEnrollment?.state?.visible, providerAddFocusRequester) {
        if (providerEnrollment?.state?.visible == false) {
            val focusRequester = providerAddFocusRequester ?: return@LaunchedEffect
            withFrameNanos { }
            delay(100L)
            if (
                focusRequester == providerAddEmptyStateFocusRequester &&
                cardRuntime.state.catalog.cards.isNotEmpty()
            ) {
                providerAddHeaderFocusRequester.requestFocus()
            } else {
                focusRequester.requestFocus()
            }
            providerAddFocusRequester = null
        }
    }

    fun refreshSnapshots() {
        snapshots = localUsageRepository.readSnapshots()
    }

    fun selectExactCard(accountId: ProviderAccountId) {
        route = resolveRoute(AppRoute.ProviderDetail(accountId))
    }

    fun deleteExactCard(accountId: ProviderAccountId): ProviderCardDeletionResult {
        MainProcessAccountFeature.start(appContext)
        val result = MainProcessAccountFeature.deletionApi().delete(accountId)
        cardRuntime.reload()
        if (result is ProviderCardDeletionResult.Completed &&
            (route as? AppRoute.ProviderDetail)?.accountId == accountId
        ) {
            route = AppRoute.Home
        }
        return result
    }

    fun deleteExactCard(accountId: ProviderAccountId, expectedVersion: DisplayVersion): ProviderCardDeletionResult {
        MainProcessAccountFeature.start(appContext)
        val result = MainProcessAccountFeature.deletionApi().delete(accountId, expectedVersion)
        cardRuntime.reload()
        if (result is ProviderCardDeletionResult.Completed &&
            (route as? AppRoute.ProviderDetail)?.accountId == accountId
        ) {
            route = AppRoute.Home
        }
        return result
    }

    fun renameExactCard(accountId: ProviderAccountId, alias: String): ProviderCardRenameResult? =
        cardRuntime.rename(accountId, alias)

    LaunchedEffect(routeRequest) {
        routeRequest?.let { requestedRoute -> route = resolveRoute(requestedRoute) }
    }

    LaunchedEffect(cardRuntime.state.catalog) {
        val resolved = resolveRoute(route)
        if (resolved != route) route = resolved
    }

    fun scheduleTransientStateExpiryRefresh() {
        listOf(
            CONNECTING_STATE_MAX_MILLIS,
            REFRESH_STATE_MAX_MILLIS,
            GOOGLE_REFRESH_STATE_MAX_MILLIS
        ).distinct().forEach { timeoutMillis ->
            coroutineScope.launch {
                delay(timeoutMillis + 100L)
                refreshSnapshots()
            }
        }
    }

    fun saveProviderSnapshot(snapshot: ProviderUsageSnapshot) {
        localUsageRepository.saveSnapshot(snapshot)
        refreshSnapshots()
    }

    fun setProviderHidden(providerId: ProviderId, hidden: Boolean) {
        providerPreferencesRepository.setProviderHidden(providerId, hidden)
        hiddenProviders = providerPreferencesRepository.hiddenProviders()
    }

    fun reorderVisibleProvider(providerId: ProviderId, targetVisibleIndex: Int) {
        val nextOrder = ProviderCardOrder.moveToVisibleTargetIndex(
            order = providerOrder,
            hidden = hiddenProviders,
            providerId = providerId,
            targetVisibleIndex = targetVisibleIndex
        )
        providerPreferencesRepository.saveProviderOrder(nextOrder)
        providerOrder = providerPreferencesRepository.providerOrder()
    }

    fun hideProviderWithNotice(providerId: ProviderId) {
        setProviderHidden(providerId, true)
        if ((route as? AppRoute.ProviderDetail)?.providerId == providerId) {
            route = AppRoute.Home
        }
        coroutineScope.launch {
            snackbarHostState.showSnackbar(
                message = launchContext.getString(R.string.provider_hidden_snackbar, providerId.displayName),
                duration = SnackbarDuration.Short
            )
        }
    }

    fun setProviderGaugeColor(providerId: ProviderId, color: String?) {
        providerPreferencesRepository.saveProviderGaugeColor(providerId, color)
        providerGaugeColors = providerPreferencesRepository.providerGaugeColors()
        UsageSurfaceRefresher.refresh(appContext, localUsageRepository)
    }

    fun connectProvider(providerId: ProviderId) {
        val accountId = if (cardRuntime.enabled) {
            cardRuntime.compatibilityAccount(providerId) ?: run {
                route = AppRoute.Home
                return
            }
        } else {
            ProviderAccountId(providerId, AccountKey.reservedDefault())
        }
        // 재로그인·계정 전환은 연결 해제를 거치지 않는다. 이전 세션에서 통했던 토큰과 판정을
        // 그대로 두면 새 계정 화면에 옛 요금제·계정이 최대 15분 남는다.
        ProviderCollectionCaches.invalidate(providerId)
        val connector = connectorRegistry.connectorFor(providerId)
        val now = Instant.now().toString()
        route = AppRoute.ProviderDetail(accountId)
        val currentSnapshot = snapshots
            .firstOrNull { it.providerId == providerId }
            ?: ProviderUsageSnapshot.disconnected(providerId)
        val loginStartUrl = connector.startUrl

        if (providerId != ProviderId.GEMINI &&
            providerId != ProviderId.GLM &&
            loginStartUrl.isNotBlank() &&
            !ProviderHostAllowlist.isAllowed(providerId, loginStartUrl)
        ) {
            saveProviderSnapshot(
                ProviderUsageSnapshot.unavailable(
                    providerId = providerId,
                    message = launchContext.getString(
                        R.string.provider_login_unavailable_message,
                        providerId.displayName
                    )
                ).copy(updatedAt = now)
            )
            return
        }

        saveProviderSnapshot(
            currentSnapshot.copy(
                connectionState = ProviderConnectionState.CONNECTING,
                refreshState = ProviderRefreshState.REFRESHING,
                updatedAt = snapshotUpdatedAtForStatusTransition(currentSnapshot, now),
                statusUpdatedAt = now,
                message = launchContext.getString(R.string.provider_login_opened_message)
            )
        )
        scheduleTransientStateExpiryRefresh()

        coroutineScope.launch {
            providerSessionResetter.awaitProviderWebSessionCleanup(providerId)

            if (providerId == ProviderId.GLM) {
                val launchResult = runCatching {
                    val intent = GlmApiKeyActivity.createIntent(launchContext)
                    if (launchContext !is Activity) {
                        intent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK)
                    }
                    launchContext.startActivity(intent)
                }

                val nextSnapshot = launchResult.fold(
                    onSuccess = {
                        null
                    },
                    onFailure = {
                        ProviderUsageSnapshot(
                            providerId = providerId,
                            connectionState = ProviderConnectionState.ERROR,
                            refreshState = ProviderRefreshState.IDLE,
                            updatedAt = now,
                            message = launchContext.getString(R.string.provider_login_open_failed_message)
                        )
                    }
                )
                nextSnapshot?.let(::saveProviderSnapshot)
                return@launch
            }

            if (providerId == ProviderId.ANTIGRAVITY) {
                val launchResult = runCatching {
                    val intent = AntigravityLoopbackOAuthActivity.createIntent(launchContext)
                    if (launchContext !is Activity) {
                        intent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK)
                    }
                    launchContext.startActivity(intent)
                }

                val nextSnapshot = launchResult.fold(
                    onSuccess = {
                        null
                    },
                    onFailure = {
                        ProviderUsageSnapshot(
                            providerId = providerId,
                            connectionState = ProviderConnectionState.ERROR,
                            refreshState = ProviderRefreshState.IDLE,
                            updatedAt = now,
                            message = launchContext.getString(R.string.provider_login_open_failed_message)
                        )
                    }
                )
                nextSnapshot?.let(::saveProviderSnapshot)
                return@launch
            }

            val launchResult = runCatching {
                val intent = if (cardRuntime.enabled && providerId in setOf(ProviderId.CLAUDE, ProviderId.CODEX)) {
                    WebLoginActivity.createIntent(launchContext, accountId, loginStartUrl)
                } else {
                    WebLoginActivity.createIntent(launchContext, providerId, loginStartUrl)
                }
                if (launchContext !is Activity) {
                    intent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK)
                }
                launchContext.startActivity(intent)
            }

            val nextSnapshot = launchResult.fold(
                onSuccess = {
                    null
                },
                onFailure = {
                    ProviderUsageSnapshot(
                        providerId = providerId,
                        connectionState = ProviderConnectionState.ERROR,
                        refreshState = ProviderRefreshState.IDLE,
                        updatedAt = now,
                        message = launchContext.getString(R.string.provider_login_open_failed_message)
                    )
                }
            )
            nextSnapshot?.let(::saveProviderSnapshot)
        }
    }

    fun connectExactCard(accountId: ProviderAccountId) {
        val card = cardRuntime.state.card(accountId) ?: run {
            route = AppRoute.Home
            return
        }
        route = AppRoute.ProviderDetail(accountId)
        ProviderCollectionCaches.invalidate(accountId.providerId)
        val connector = connectorRegistry.connectorFor(accountId.providerId)
        val startUrl = connector.startUrl
        val isSingleInstanceSpecial = accountId.providerId == ProviderId.GLM ||
            accountId.providerId == ProviderId.ANTIGRAVITY
        val now = Instant.now().toString()
        if (!isSingleInstanceSpecial &&
            (startUrl.isBlank() || !ProviderHostAllowlist.isAllowed(accountId.providerId, startUrl))
        ) {
            cardRuntime.writeSnapshot(
                accountId,
                ProviderUsageSnapshot.unavailable(
                    providerId = accountId.providerId,
                    message = launchContext.getString(
                        R.string.provider_login_unavailable_message,
                        accountId.providerId.displayName
                    )
                ).copy(updatedAt = now)
            )
            return
        }
        if (!cardRuntime.writeSnapshot(
            accountId,
            card.displayRecord.snapshot.copy(
                connectionState = ProviderConnectionState.CONNECTING,
                refreshState = ProviderRefreshState.REFRESHING,
                updatedAt = snapshotUpdatedAtForStatusTransition(card.displayRecord.snapshot, now),
                statusUpdatedAt = now,
                message = launchContext.getString(R.string.provider_login_opened_message)
            )
        )) return
        scheduleTransientStateExpiryRefresh()
        coroutineScope.launch {
            providerSessionResetter.awaitProviderWebSessionCleanup(accountId.providerId)
            val launchResult = runCatching {
                val loginIntent = when (accountId.providerId) {
                    ProviderId.GLM -> GlmApiKeyActivity.createIntent(launchContext, accountId)
                    ProviderId.ANTIGRAVITY -> AntigravityLoopbackOAuthActivity.createIntent(launchContext, accountId)
                    else -> WebLoginActivity.createIntent(launchContext, accountId, startUrl)
                }
                if (launchContext !is Activity) loginIntent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK)
                launchContext.startActivity(loginIntent)
            }
            launchResult.exceptionOrNull()?.let {
                cardRuntime.writeSnapshot(
                    accountId,
                    ProviderUsageSnapshot(
                        providerId = accountId.providerId,
                        connectionState = ProviderConnectionState.ERROR,
                        refreshState = ProviderRefreshState.IDLE,
                        updatedAt = now,
                        message = launchContext.getString(R.string.provider_login_open_failed_message)
                    )
                )
            }
        }
    }

    fun disconnectProvider(providerId: ProviderId) {
        busyProvider = providerId
        coroutineScope.launch {
            try {
                runCatching { connectorRegistry.connectorFor(providerId).disconnect() }
                providerSessionResetter.disconnectAndWait(providerId)
                localUsageRepository.removeProviderSnapshot(providerId)
                refreshSnapshots()
                cardRuntime.reload()
            } finally {
                busyProvider = null
            }
        }
    }

    fun disconnectExactNamedCard(accountId: ProviderAccountId) {
        val logout = {
            val composition = AndroidExactAccountLoginComposition.open(launchContext)
            if (!composition.coordinator.logout(accountId) {
                    composition.close()
                    cardRuntime.reload()
                }
            ) {
                composition.close()
            }
        }
        logout()
    }

    fun disconnectExactSingleCard(accountId: ProviderAccountId) {
        val operation = cardRuntime.beginDisconnect(accountId)
        coroutineScope.launch {
            cardRuntime.disconnectSingleReserved(
                operation,
                connectorRegistry,
                providerSessionResetter,
                localUsageRepository,
            )
        }
    }

    fun disconnectAllProviders() {
        val providerIds = ProviderPreferencesCodec.visibleProviders(providerOrder, emptySet())
            .filter { providerId ->
                val snapshot = snapshots.firstOrNull { it.providerId == providerId }
                snapshot != null && snapshot.connectionState !in setOf(
                    ProviderConnectionState.DISCONNECTED,
                    ProviderConnectionState.NOT_CONNECTED
                )
            }
        if (providerIds.isEmpty()) return
        busyProvider = null
        coroutineScope.launch {
            providerIds.forEach { providerId -> runCatching { connectorRegistry.connectorFor(providerId).disconnect() } }
            providerSessionResetter.disconnectAllAndWait(providerIds)
            providerIds.forEach(localUsageRepository::removeProviderSnapshot)
            refreshSnapshots()
            UsageSurfaceRefresher.refresh(appContext, localUsageRepository)
        }
    }

    fun refreshNotificationState() {
        canPostNotifications = UsageLimitNotificationController.canPostNotifications(launchContext)
        notificationEnabled = UsageLimitNotificationController.isEnabled(appContext) && canPostNotifications
        liveMonitoringEnabled = foregroundRefreshController.liveMonitoringEnabled()
        batteryOptimizationExempt = isBatteryOptimizationExempt(appContext)
        liveRefreshStatusNowMillis = System.currentTimeMillis()
    }

    fun enableLiveMonitoringWhenAllowed(): Boolean {
        canPostNotifications = UsageLimitNotificationController.canPostNotifications(launchContext)
        if (!canPostNotifications) return false
        UsageLimitNotificationController.setEnabled(appContext, true)
        UsageLimitNotificationController.updateFromCache(appContext)
        foregroundRefreshController.setLiveMonitoringEnabled(true)
        liveMonitoringEnabled = true
        notificationEnabled = true
        showLiveRefreshPrompt = false
        liveRefreshPromptDismissed = false
        liveRefreshStatusNowMillis = System.currentTimeMillis()
        return true
    }

    val notificationPermissionLauncher = rememberLauncherForActivityResult(
        contract = ActivityResultContracts.RequestPermission()
    ) { granted ->
        canPostNotifications = granted || UsageLimitNotificationController.canPostNotifications(launchContext)
        if (canPostNotifications) {
            enableLiveMonitoringWhenAllowed()
        } else {
            notificationEnabled = false
            liveMonitoringEnabled = foregroundRefreshController.liveMonitoringEnabled()
            showLiveRefreshPrompt = true
        }
    }

    fun openNotificationSettings() {
        val intent = if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
            Intent(Settings.ACTION_APP_NOTIFICATION_SETTINGS)
                .putExtra(Settings.EXTRA_APP_PACKAGE, appContext.packageName)
        } else {
            Intent(Settings.ACTION_APPLICATION_DETAILS_SETTINGS)
                .setData(Uri.parse("package:${appContext.packageName}"))
        }
        if (launchContext !is Activity) {
            intent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK)
        }
        launchContext.startActivity(intent)
    }

    fun startActivityFromLaunchContext(intent: Intent) {
        if (launchContext !is Activity) {
            intent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK)
        }
        launchContext.startActivity(intent)
    }

    fun openBatteryOptimizationSettings() {
        batteryOptimizationExempt = isBatteryOptimizationExempt(appContext)
        val packageUri = Uri.parse("package:${appContext.packageName}")
        val requestIntent = Intent(Settings.ACTION_REQUEST_IGNORE_BATTERY_OPTIMIZATIONS)
            .setData(packageUri)
        val fallbackIntent = Intent(Settings.ACTION_IGNORE_BATTERY_OPTIMIZATION_SETTINGS)
        val preferredIntent = if (
            !batteryOptimizationExempt &&
            requestIntent.resolveActivity(appContext.packageManager) != null
        ) {
            requestIntent
        } else {
            fallbackIntent
        }

        runCatching {
            startActivityFromLaunchContext(preferredIntent)
        }.onFailure {
            runCatching { startActivityFromLaunchContext(fallbackIntent) }
        }
    }

    fun requestLiveMonitoringFromPrompt() {
        UsageLimitNotificationController.setEnabled(appContext, true)
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.TIRAMISU && !canPostNotifications) {
            UsageLimitNotificationController.markNotificationPermissionRequested(appContext)
            notificationPermissionLauncher.launch(Manifest.permission.POST_NOTIFICATIONS)
            return
        }
        enableLiveMonitoringWhenAllowed()
    }

    fun setNotificationEnabled(enabled: Boolean) {
        if (!enabled) {
            UsageLimitNotificationController.setEnabled(appContext, false)
            foregroundRefreshController.setLiveMonitoringEnabled(false)
            liveMonitoringEnabled = false
            notificationEnabled = false
            return
        }

        canPostNotifications = UsageLimitNotificationController.canPostNotifications(launchContext)
        if (!canPostNotifications) {
            UsageLimitNotificationController.setEnabled(appContext, true)
            notificationEnabled = false
            // 시스템 설정으로 곧장 보내면 사용자는 토글이 스스로 꺼진 것만 보게 된다. 아직 물어본
            // 적이 없다면 앱에서 권한을 요청하고, 허용되면 그 자리에서 켠다. 이미 거절당한 뒤라면
            // 앱이 다시 물을 수 없으므로 그때만 설정 화면으로 안내한다.
            if (UsageLimitNotificationController.shouldRequestNotificationPermissionOnLaunch(launchContext)) {
                UsageLimitNotificationController.markNotificationPermissionRequested(appContext)
                notificationPermissionLauncher.launch(Manifest.permission.POST_NOTIFICATIONS)
            } else {
                openNotificationSettings()
            }
            return
        }

        enableLiveMonitoringWhenAllowed()
    }

    fun showWidgetPinFeedback(status: WidgetPinRequestStatus) {
        coroutineScope.launch {
            snackbarHostState.showSnackbar(
                message = launchContext.getString(status.messageRes()),
                duration = SnackbarDuration.Short
            )
        }
    }

    fun requestProviderWidget(accountId: ProviderAccountId) {
        showWidgetPinFeedback(PinnedWidgetRequester.requestProviderWidget(launchContext, accountId))
    }

    fun requestDashboardWidget(type: DashboardPinnedWidgetType) {
        showDashboardWidgetPicker = false
        showWidgetPinFeedback(PinnedWidgetRequester.requestDashboardWidget(launchContext, type))
    }

    fun reportBug(request: BugReportRequest) {
        val email = BugReportEmailComposer.compose(
            request = request,
            diagnostics = BugReportDiagnostics(
                appVersionName = BuildConfig.VERSION_NAME,
                versionCode = BuildConfig.VERSION_CODE,
                buildType = BuildConfig.BUILD_TYPE,
                androidRelease = Build.VERSION.RELEASE.orEmpty(),
                sdkInt = Build.VERSION.SDK_INT,
                manufacturer = Build.MANUFACTURER.orEmpty(),
                model = Build.MODEL.orEmpty(),
                localeTag = Locale.getDefault().toLanguageTag(),
                liveMonitoringEnabled = liveMonitoringEnabled,
                canPostNotifications = canPostNotifications,
                notificationEnabled = UsageLimitNotificationController.isEnabled(appContext),
                liveRefreshState = liveRefreshState.name,
                snapshots = snapshots
            )
        )
        val intent = Intent(Intent.ACTION_SENDTO)
            .setData(Uri.parse(BugReportEmailComposer.mailtoUri(email)))
            .putExtra(Intent.EXTRA_SUBJECT, email.subject)
            .putExtra(Intent.EXTRA_TEXT, email.body)
        if (launchContext !is Activity) {
            intent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK)
        }
        val opened = runCatching { launchContext.startActivity(intent) }.isSuccess
        if (!opened) {
            coroutineScope.launch {
                snackbarHostState.showSnackbar(
                    message = launchContext.getString(R.string.settings_bug_report_no_email_app),
                    duration = SnackbarDuration.Short
                )
            }
        }
    }

    fun setClaudeAutoResetPrimeEnabled(enabled: Boolean) {
        providerPreferencesRepository.setClaudeAutoResetPrimeEnabled(enabled)
        claudeAutoResetPrimeEnabled = enabled
    }

    fun setResetNotificationEnabled(providerId: ProviderId, enabled: Boolean) {
        providerPreferencesRepository.setResetNotificationEnabled(providerId, enabled)
        resetNotificationProviders = providerPreferencesRepository.resetNotificationEnabledProviders()
    }

    fun setUsageThresholdEnabled(providerId: ProviderId, enabled: Boolean) {
        providerPreferencesRepository.setUsageThresholdNotificationEnabled(providerId, enabled)
        usageThresholdProviders = providerPreferencesRepository.usageThresholdEnabledProviders()
    }

    fun setUsageThresholdPercent(providerId: ProviderId, percent: Int) {
        providerPreferencesRepository.setUsageThresholdPercent(providerId, percent)
        usageThresholdPercents = providerPreferencesRepository.usageThresholdPercents()
    }

    fun applyTheme(theme: AppTheme) {
        themePreferencesRepository.saveTheme(theme)
        currentTheme = themePreferencesRepository.currentTheme()
        UsageSurfaceRefresher.refresh(appContext, localUsageRepository)
        coroutineScope.launch {
            snackbarHostState.showSnackbar(
                message = launchContext.getString(
                    R.string.settings_theme_applied,
                    launchContext.getString(theme.labelResource())
                ),
                duration = SnackbarDuration.Short
            )
        }
    }

    val lifecycleOwner = remember(launchContext) { launchContext.findLifecycleOwner() }
    DisposableEffect(lifecycleOwner) {
        if (lifecycleOwner == null) {
            onDispose {}
        } else {
            val observer = LifecycleEventObserver { _, event ->
                if (event == Lifecycle.Event.ON_RESUME) {
                    refreshSnapshots()
                    cardRuntime.reload()
                    canPostNotifications = UsageLimitNotificationController.canPostNotifications(launchContext)
                    liveMonitoringEnabled = foregroundRefreshController.liveMonitoringEnabled()
                    batteryOptimizationExempt = isBatteryOptimizationExempt(appContext)
                    liveRefreshStatusNowMillis = System.currentTimeMillis()
                    if (
                        !BuildConfig.MULTI_ACCOUNT_ENABLED &&
                        ForegroundRefreshPolicy.shouldRunForegroundLoop(
                            snapshots = localUsageRepository.readSnapshots(),
                            liveMonitoringEnabled = liveMonitoringEnabled,
                            canPostNotifications = canPostNotifications
                        ) &&
                        refreshStateRepository.isHeartbeatStale()
                    ) {
                        runCatching { foregroundRefreshController.startPreciseRefresh() }
                    }
                }
            }
            lifecycleOwner.lifecycle.addObserver(observer)
            onDispose { lifecycleOwner.lifecycle.removeObserver(observer) }
        }
    }

    DisposableEffect(cardRuntime) {
        onDispose { cardRuntime.close() }
    }

    LaunchedEffect(cardRuntime) {
        if (BuildConfig.MULTI_ACCOUNT_ENABLED) {
            com.aiquota.mobile.accounts.MainProcessAccountAuthority.changes.collect {
                cardRuntime.reload()
            }
        }
    }

    DisposableEffect(localUsageRepository) {
        val listener = localUsageRepository.registerSnapshotListener {
            coroutineScope.launch {
                refreshSnapshots()
                cardRuntime.reload()
            }
        }
        onDispose {
            localUsageRepository.unregisterSnapshotListener(listener)
        }
    }

    LaunchedEffect(route, liveMonitoringEnabled, canPostNotifications) {
        if (route != AppRoute.Settings) return@LaunchedEffect
        while (true) {
            liveRefreshStatusNowMillis = System.currentTimeMillis()
            delay(LIVE_REFRESH_STATUS_POLL_MILLIS)
        }
    }

    LaunchedEffect(providerOrder, hiddenProviders, snapshots, currentTheme) {
        UsageSurfaceRefresher.refresh(
            context = appContext,
            repository = localUsageRepository,
            order = providerOrder,
            hidden = hiddenProviders
        )
    }

    LaunchedEffect(snapshots) {
        while (snapshots.any { it.refreshState == ProviderRefreshState.REFRESHING }) {
            delay(TRANSIENT_STATE_POLL_MILLIS)
            refreshSnapshots()
        }
    }

    LaunchedEffect(snapshots, liveMonitoringEnabled, canPostNotifications) {
        if (
            !BuildConfig.MULTI_ACCOUNT_ENABLED &&
            ForegroundRefreshPolicy.shouldRunForegroundLoop(
                snapshots = snapshots,
                liveMonitoringEnabled = liveMonitoringEnabled,
                canPostNotifications = canPostNotifications
            )
        ) {
            runCatching { foregroundRefreshController.startPreciseRefresh() }
        } else {
            foregroundRefreshController.stopPreciseRefresh()
        }
    }

    LaunchedEffect(snapshots, liveMonitoringEnabled, canPostNotifications, batteryOptimizationExempt, liveRefreshPromptDismissed) {
        val shouldShowPrompt = LiveRefreshPromptPolicy.shouldShowOnAppEntry(
            snapshots = snapshots,
            liveMonitoringEnabled = liveMonitoringEnabled,
            canPostNotifications = canPostNotifications,
            batteryOptimizationExempt = batteryOptimizationExempt
        )
        if (!shouldShowPrompt) {
            showLiveRefreshPrompt = false
            liveRefreshPromptDismissed = false
        } else if (!liveRefreshPromptDismissed) {
            showLiveRefreshPrompt = true
        }
    }

    LaunchedEffect(route) {
        if (route is AppRoute.Settings) {
            refreshNotificationState()
        }
    }

    // enableEdgeToEdge()의 자동 판정은 시스템 다크모드만 보기 때문에, 앱이 자체 테마로
    // 배경을 정하는 이 앱에서는 흰 배경에 흰 아이콘이 되는 기기가 있다(2026-08-11 태블릿
    // API 35 실측: LIGHT_STATUS_BARS 미설정). 실제 배경 밝기로 직접 정한다.
    val decorView = LocalView.current
    val lightSystemBars = themeColors.appBackground.luminance() > 0.5f
    SideEffect {
        val window = (decorView.context as? Activity)?.window ?: return@SideEffect
        WindowInsetsControllerCompat(window, decorView).apply {
            isAppearanceLightStatusBars = lightSystemBars
            isAppearanceLightNavigationBars = lightSystemBars
        }
    }

    CompositionLocalProvider(LocalAIQuotaThemeColors provides themeColors) {
        MaterialTheme(colorScheme = aiQuotaMaterialColorScheme(themeColors)) {
            Scaffold(
                modifier = modifier.fillMaxSize(),
                containerColor = themeColors.appBackground,
                snackbarHost = {
                    SnackbarHost(hostState = snackbarHostState)
                },
                topBar = {
                    // 광고 ID가 설정되지 않은 빌드에서는 슬롯을 아예 넘기지 않아 빈 높이가 생기지 않는다.
                    AppTopBar(
                        route = route,
                        layoutMetrics = layoutMetrics,
                        onHomeClick = { route = AppRoute.Home },
                        adContent = if (AdConfig.isBannerEnabled()) {
                            { TopBarAdBanner(focusEnabled = topBarAdFocusEnabled) }
                        } else {
                            null
                        }
                    )
                },
                bottomBar = {
                    AppNavigationBar(
                        route = route,
                        providerOrder = providerOrder,
                        hiddenProviders = hiddenProviders,
                        providerCards = cardRuntime.state.catalog.cards.takeIf { cardRuntime.enabled },
                        layoutMetrics = layoutMetrics,
                        onRouteSelected = { route = it }
                    )
                }
            ) { contentPadding ->
                Box(modifier = Modifier.padding(contentPadding)) {
                    when (val currentRoute = route) {
                        AppRoute.Home -> {
                            val selectViewMode: (com.aiquota.mobile.local.DashboardViewMode) -> Unit = { mode ->
                                if (mode != dashboardViewMode) {
                                    dashboardViewMode = mode
                                    providerPreferencesRepository.setDashboardViewMode(mode)
                                }
                            }
                            if (cardRuntime.enabled) {
                                UnifiedDashboardScreen(
                                    cards = cardRuntime.state.catalog.cards,
                                    busyAccountIds = cardRuntime.state.busyAccountIds,
                                    errors = cardRuntime.state.errors,
                                    gaugeColors = cardRuntime.gaugeColors,
                                    onCardSelected = ::selectExactCard,
                                    onConnectCard = ::connectExactCard,
                                    onReorderCard = cardRuntime::reorder,
                                    onAddWidget = { showDashboardWidgetPicker = true },
                                    onOpenSettings = { route = AppRoute.Settings },
                                    viewMode = dashboardViewMode,
                                    onSelectViewMode = selectViewMode,
                                    onAddProvider = {
                                        providerEnrollment?.let {
                                            it.openExplicitAdd()
                                            providerAddFocusRequester = providerAddHeaderFocusRequester
                                        }
                                    },
                                    onAddProviderFromEmptyState = {
                                        providerEnrollment?.let {
                                            it.openExplicitAdd()
                                            providerAddFocusRequester = providerAddEmptyStateFocusRequester
                                        }
                                    },
                                    onRemoveProvider = {
                                        restoreProviderRemovalFocus = false
                                        showProviderRemoval = true
                                    },
                                    removeProviderFocusRequester = providerRemovalFocusRequester,
                                    addProviderFocusRequester = providerAddHeaderFocusRequester,
                                    emptyStateAddProviderFocusRequester = providerAddEmptyStateFocusRequester,
                                    modifier = Modifier.fillMaxSize(),
                                )
                            } else {
                                UnifiedDashboardScreen(
                                    providerOrder = providerOrder,
                                    hiddenProviders = hiddenProviders,
                                    snapshots = snapshots,
                                    providerGaugeColors = providerGaugeColors,
                                    onProviderSelected = {
                                        route = AppRoute.ProviderDetail(
                                            ProviderAccountId(it, AccountKey.reservedDefault())
                                        )
                                    },
                                    onConnectProvider = ::connectProvider,
                                    onReorderProvider = ::reorderVisibleProvider,
                                    onAddWidget = { showDashboardWidgetPicker = true },
                                    onOpenSettings = { route = AppRoute.Settings },
                                    viewMode = dashboardViewMode,
                                    onSelectViewMode = selectViewMode,
                                    modifier = Modifier.fillMaxSize(),
                                )
                            }
                        }
                        is AppRoute.ProviderDetail -> {
                            val exactCard = if (cardRuntime.enabled) {
                                cardRuntime.state.card(currentRoute.accountId)
                            } else null
                            val exactDetail = if (cardRuntime.enabled) {
                                cardRuntime.detailBinding(currentRoute.accountId)
                            } else null
                            val exactId = exactDetail?.accountId
                            val snapshot = exactDetail?.snapshot ?: if (cardRuntime.enabled) {
                                ProviderUsageSnapshot.disconnected(currentRoute.providerId)
                            } else {
                                snapshots.firstOrNull { it.providerId == currentRoute.providerId }
                                    ?: ProviderUsageSnapshot.disconnected(currentRoute.providerId)
                            }
                            ProviderDetailScreen(
                                accountId = currentRoute.accountId,
                                snapshot = snapshot,
                                cardAlias = exactDetail?.snapshot?.displayName ?: snapshot.displayName
                                    ?: currentRoute.providerId.displayName,
                                isHidden = !cardRuntime.enabled && currentRoute.providerId in hiddenProviders,
                                isBusy = exactDetail?.busy ?: (busyProvider == currentRoute.providerId),
                                onConnect = {
                                    if (exactId != null) connectExactCard(exactId)
                                    else if (!cardRuntime.enabled) connectProvider(currentRoute.providerId)
                                },
                                onDisconnect = {
                                    if (exactId != null && currentRoute.providerId in setOf(ProviderId.CLAUDE, ProviderId.CODEX)) {
                                        disconnectExactNamedCard(exactId)
                                    } else if (exactDetail?.singleReserved == true) {
                                        disconnectExactSingleCard(exactDetail.accountId)
                                    } else if (!cardRuntime.enabled) {
                                        disconnectProvider(currentRoute.providerId)
                                    }
                                },
                                onAddWidget = {
                                    if (exactId != null) {
                                        requestProviderWidget(exactId)
                                    } else if (!cardRuntime.enabled) {
                                        requestProviderWidget(currentRoute.accountId)
                                    }
                                },
                                resetNotificationEnabled = if (exactId != null) {
                                    cardRuntime.resetNotificationEnabled(exactId)
                                } else {
                                    currentRoute.providerId in resetNotificationProviders
                                },
                                onResetNotificationChange = { enabled ->
                                    if (exactId != null) {
                                        cardRuntime.setResetNotificationEnabled(exactId, enabled)
                                    } else {
                                        setResetNotificationEnabled(currentRoute.providerId, enabled)
                                    }
                                },
                                autoResetPrimeEnabled = claudeAutoResetPrimeEnabled,
                                onAutoResetPrimeChange = ::setClaudeAutoResetPrimeEnabled,
                                usageThresholdEnabled = if (exactId != null) {
                                    cardRuntime.usageThresholdEnabled(exactId)
                                } else {
                                    currentRoute.providerId in usageThresholdProviders
                                },
                                onUsageThresholdEnabledChange = { enabled ->
                                    if (exactId != null) {
                                        cardRuntime.setUsageThresholdEnabled(exactId, enabled)
                                    } else {
                                        setUsageThresholdEnabled(currentRoute.providerId, enabled)
                                    }
                                },
                                usageThresholdPercent = if (exactId != null) {
                                    cardRuntime.usageThresholdPercent(exactId)
                                } else {
                                    usageThresholdPercents[currentRoute.providerId]
                                        ?: ProviderPreferencesRepository.DEFAULT_USAGE_THRESHOLD_PERCENT
                                },
                                onUsageThresholdPercentChange = { percent ->
                                    if (exactId != null) {
                                        cardRuntime.setUsageThresholdPercent(exactId, percent)
                                    } else {
                                        setUsageThresholdPercent(currentRoute.providerId, percent)
                                    }
                                },
                                gaugeColorHex = exactDetail?.gaugeColor ?: providerGaugeColors[currentRoute.providerId],
                                onGaugeColorChange = { color ->
                                    if (exactId != null) {
                                        cardRuntime.saveGaugeColor(exactId, color)
                                    } else {
                                        setProviderGaugeColor(currentRoute.providerId, color)
                                    }
                                },
                                onRename = if (exactId != null) {
                                    { alias, expectedVersion ->
                                        cardRuntime.rename(exactId, alias, expectedVersion)
                                    }
                                } else null,
                                cardVersion = exactCard?.displayRecord?.version,
                                authState = exactDetail?.authState,
                                modifier = Modifier.fillMaxSize()
                            )
                        }
                        AppRoute.Settings -> SettingsPanel(
                            notificationEnabled = liveMonitoringEnabled,
                            canPostNotifications = canPostNotifications,
                            liveRefreshState = liveRefreshState,
                            batteryOptimizationExempt = batteryOptimizationExempt,
                            onNotificationEnabledChanged = ::setNotificationEnabled,
                            onOpenNotificationSettings = ::openNotificationSettings,
                            onOpenBatteryOptimizationSettings = ::openBatteryOptimizationSettings,
                            providerOrder = providerOrder,
                            snapshots = snapshots,
                            exactCardRuntimeEnabled = cardRuntime.enabled,
                            providerCards = cardRuntime.state.catalog.cards,
                            onConnectProvider = ::connectProvider,
                            onDisconnectProvider = ::disconnectProvider,
                            onDisconnectAllProviders = ::disconnectAllProviders,
                            onConnectCard = ::connectExactCard,
                            onDisconnectCard = { accountId ->
                                if (accountId.providerId in setOf(ProviderId.CLAUDE, ProviderId.CODEX)) {
                                    disconnectExactNamedCard(accountId)
                                } else {
                                    disconnectExactSingleCard(accountId)
                                }
                            },
                            currentTheme = currentTheme,
                            onThemeSelected = ::applyTheme,
                            onReportBug = ::reportBug,
                            modifier = Modifier.fillMaxSize()
                            )
                        }
                    }
                    if (showLiveRefreshPrompt) {
                        LiveRefreshPermissionDialog(
                            canPostNotifications = canPostNotifications,
                            liveMonitoringEnabled = liveMonitoringEnabled,
                            batteryOptimizationExempt = batteryOptimizationExempt,
                            onEnable = ::requestLiveMonitoringFromPrompt,
                            onOpenSettings = {
                                UsageLimitNotificationController.markNotificationPermissionRequested(appContext)
                                openNotificationSettings()
                            },
                            onOpenBatteryOptimizationSettings = ::openBatteryOptimizationSettings,
                            onDismiss = {
                                showLiveRefreshPrompt = false
                                liveRefreshPromptDismissed = true
                            }
                        )
                    }
                    if (showDashboardWidgetPicker) {
                        DashboardWidgetPickerDialog(
                            onSelect = ::requestDashboardWidget,
                            onDismiss = { showDashboardWidgetPicker = false }
                        )
                    }
                    if (cardRuntime.enabled) {
                        ProviderCardRemovalSurface(
                            cards = cardRuntime.state.catalog.cards,
                            visible = showProviderRemoval,
                            onDismiss = {
                                showProviderRemoval = false
                                restoreProviderRemovalFocus = true
                            },
                            onDelete = { accountId, expectedVersion ->
                                deleteExactCard(accountId, expectedVersion)
                            },
                        )
                    }
                    providerEnrollment?.Content()
                }
            }
    }
}

private tailrec fun Context.findLifecycleOwner(): LifecycleOwner? {
    return when (this) {
        is LifecycleOwner -> this
        is ContextWrapper -> baseContext.findLifecycleOwner()
        else -> null
    }
}

private fun aiQuotaMaterialColorScheme(colors: AIQuotaThemeColors) = lightColorScheme(
    primary = colors.primary,
    onPrimary = Color.White,
    primaryContainer = colors.selectedNav,
    onPrimaryContainer = colors.textPrimary,
    secondary = colors.primaryActive,
    onSecondary = Color.White,
    secondaryContainer = colors.selectedNav,
    onSecondaryContainer = colors.textPrimary,
    tertiary = colors.primary,
    onTertiary = Color.White,
    background = colors.appBackground,
    onBackground = colors.textPrimary,
    surface = colors.panel,
    surfaceVariant = colors.unselectedNav,
    onSurface = colors.textPrimary,
    onSurfaceVariant = colors.textSecondary,
    // Dialogs and sheets read the surfaceContainer roles; without these they fall back to the
    // Material baseline lavender instead of the app's own cream/graphite palette.
    surfaceContainerLowest = colors.panel,
    surfaceContainerLow = colors.panel,
    surfaceContainer = colors.panel,
    surfaceContainerHigh = colors.panel,
    surfaceContainerHighest = colors.content,
    surfaceBright = colors.panel,
    surfaceDim = colors.cardChrome,
    surfaceTint = Color.Transparent,
    inverseSurface = colors.textPrimary,
    inverseOnSurface = colors.panel,
    outline = colors.border,
    outlineVariant = colors.borderSoft,
    scrim = colors.shadow,
    error = Color(0xFFC64545),
    onError = Color.White,
)

private fun AppTheme.labelResource(): Int {
    return when (this) {
        AppTheme.MACOS -> R.string.settings_theme_macos
        AppTheme.WINDOWS -> R.string.settings_theme_windows
    }
}

private fun WidgetPinRequestStatus.messageRes(): Int {
    return when (this) {
        WidgetPinRequestStatus.REQUESTED -> R.string.widget_pin_requested
        WidgetPinRequestStatus.UNSUPPORTED -> R.string.widget_pin_not_supported
        WidgetPinRequestStatus.FAILED -> R.string.widget_pin_failed
    }
}

@Composable
private fun DashboardWidgetPickerDialog(
    onSelect: (DashboardPinnedWidgetType) -> Unit,
    onDismiss: () -> Unit
) {
    val colors = AIQuotaTheme.colors
    val isMac = colors.theme == AppTheme.MACOS

    Dialog(onDismissRequest = onDismiss) {
        Surface(
            modifier = Modifier
                .fillMaxWidth()
                .widthIn(max = 420.dp),
            shape = RoundedCornerShape(if (isMac) 16.dp else 2.dp),
            color = colors.panel,
            border = BorderStroke(if (isMac) 1.dp else 2.dp, colors.border),
            shadowElevation = if (isMac) 12.dp else 2.dp
        ) {
            Column(
                modifier = Modifier.padding(18.dp),
                verticalArrangement = Arrangement.spacedBy(12.dp)
            ) {
                Text(
                    text = stringResource(R.string.dashboard_widget_picker_title),
                    style = MaterialTheme.typography.titleMedium,
                    color = colors.textPrimary,
                    fontWeight = FontWeight.SemiBold
                )
                Button(
                    onClick = { onSelect(DashboardPinnedWidgetType.DASHBOARD) },
                    modifier = Modifier.fillMaxWidth()
                ) {
                    Text(stringResource(R.string.dashboard_widget_picker_dashboard))
                }
                OutlinedButton(
                    onClick = { onSelect(DashboardPinnedWidgetType.BATTERY) },
                    modifier = Modifier.fillMaxWidth()
                ) {
                    Text(stringResource(R.string.dashboard_widget_picker_battery))
                }
                OutlinedButton(
                    onClick = onDismiss,
                    modifier = Modifier.fillMaxWidth()
                ) {
                    Text(stringResource(R.string.settings_close))
                }
            }
        }
    }
}

@Composable
private fun LiveRefreshPermissionDialog(
    canPostNotifications: Boolean,
    liveMonitoringEnabled: Boolean,
    batteryOptimizationExempt: Boolean,
    onEnable: () -> Unit,
    onOpenSettings: () -> Unit,
    onOpenBatteryOptimizationSettings: () -> Unit,
    onDismiss: () -> Unit
) {
    val colors = AIQuotaTheme.colors
    val isMac = colors.theme == AppTheme.MACOS
    val showLiveRefreshEnableButton = !liveMonitoringEnabled || !canPostNotifications

    Dialog(onDismissRequest = onDismiss) {
        Surface(
            modifier = Modifier
                .fillMaxWidth()
                .widthIn(max = 420.dp),
            shape = RoundedCornerShape(if (isMac) 16.dp else 2.dp),
            color = colors.panel,
            border = BorderStroke(if (isMac) 1.dp else 2.dp, colors.border),
            shadowElevation = if (isMac) 12.dp else 2.dp
        ) {
            Column {
                if (isMac) {
                    Row(
                        modifier = Modifier
                            .fillMaxWidth()
                            .padding(horizontal = 16.dp, vertical = 14.dp),
                        verticalAlignment = Alignment.CenterVertically,
                        horizontalArrangement = Arrangement.spacedBy(8.dp)
                    ) {
                        Surface(
                            modifier = Modifier.size(10.dp),
                            shape = RoundedCornerShape(999.dp),
                            color = colors.trafficRed,
                            content = {}
                        )
                        Surface(
                            modifier = Modifier.size(10.dp),
                            shape = RoundedCornerShape(999.dp),
                            color = colors.trafficYellow,
                            content = {}
                        )
                        Surface(
                            modifier = Modifier.size(10.dp),
                            shape = RoundedCornerShape(999.dp),
                            color = colors.trafficGreen,
                            content = {}
                        )
                        Text(
                            text = stringResource(R.string.live_refresh_prompt_title),
                            modifier = Modifier.weight(1f),
                            style = MaterialTheme.typography.titleSmall,
                            color = colors.titleText,
                            textAlign = TextAlign.Center,
                            fontWeight = FontWeight.SemiBold
                        )
                    }
                } else {
                    Surface(
                        modifier = Modifier.fillMaxWidth(),
                        color = colors.titleBar,
                        tonalElevation = 0.dp
                    ) {
                        Text(
                            text = stringResource(R.string.live_refresh_prompt_title),
                            modifier = Modifier.padding(horizontal = 16.dp, vertical = 10.dp),
                            style = MaterialTheme.typography.titleSmall,
                            color = colors.titleText,
                            fontWeight = FontWeight.SemiBold
                        )
                    }
                }

                Column(
                    modifier = Modifier.padding(18.dp),
                    verticalArrangement = Arrangement.spacedBy(12.dp)
                ) {
                    Text(
                        text = stringResource(R.string.live_refresh_prompt_body),
                        style = MaterialTheme.typography.bodyMedium,
                        color = colors.textSecondary
                    )
                    if (showLiveRefreshEnableButton) {
                        Button(
                            onClick = onEnable,
                            modifier = Modifier.fillMaxWidth()
                        ) {
                            Text(
                                text = stringResource(
                                    if (canPostNotifications) {
                                        R.string.live_refresh_prompt_enable
                                    } else {
                                        R.string.live_refresh_prompt_allow_notifications
                                    }
                                )
                            )
                        }
                    }
                    if (!canPostNotifications) {
                        OutlinedButton(
                            onClick = onOpenSettings,
                            modifier = Modifier.fillMaxWidth()
                        ) {
                            Text(stringResource(R.string.live_refresh_prompt_open_settings))
                        }
                    }
                    if (!batteryOptimizationExempt) {
                        Column(
                            modifier = Modifier.fillMaxWidth(),
                            verticalArrangement = Arrangement.spacedBy(6.dp)
                        ) {
                            Text(
                                text = stringResource(R.string.live_refresh_prompt_battery_title),
                                style = MaterialTheme.typography.titleSmall,
                                color = colors.textPrimary,
                                fontWeight = FontWeight.SemiBold
                            )
                            Text(
                                text = stringResource(R.string.live_refresh_prompt_battery_body),
                                style = MaterialTheme.typography.bodySmall,
                                color = colors.textSecondary
                            )
                        }
                        OutlinedButton(
                            onClick = onOpenBatteryOptimizationSettings,
                            modifier = Modifier.fillMaxWidth()
                        ) {
                            Text(stringResource(R.string.live_refresh_prompt_open_battery_settings))
                        }
                    }
                    OutlinedButton(
                        onClick = onDismiss,
                        modifier = Modifier.fillMaxWidth()
                    ) {
                        Text(stringResource(R.string.live_refresh_prompt_later))
                    }
                }
            }
        }
    }
}

private val AppRouteSaver = Saver<AppRoute, String>(
    save = { route -> route.toSavedState() },
    restore = { saved -> AppRoute.fromSavedState(saved) },
)

private val SettingsBackButtonSize = 40.dp
private val SettingsBackIconSize = 22.dp

@Composable
private fun AppTopBar(
    route: AppRoute,
    layoutMetrics: AppLayoutMetrics,
    onHomeClick: () -> Unit,
    adContent: (@Composable () -> Unit)? = null
) {
    val colors = AIQuotaTheme.colors
    // 종합 설정 진입점은 대시보드 헤더로 옮겼다. 상단바는 설정 화면에서 돌아가는 역할만 한다.
    val isSettingsRoute = route is AppRoute.Settings
    // 톱니바퀴가 빠지면서 비워진 상단바 자리를 광고 슬롯으로 쓴다. adContent가 null이면
    // 아무 높이도 잡지 않아 지금 레이아웃과 동일하다. 설정 화면도 광고를 띄운다 —
    // 예전에는 뒤로가기와 같은 자리에 겹쳐서 뺐지만, 지금은 세로로 쌓아 둘 다 들어간다.
    //
    // provider 상세 화면은 뺀다. 10개 provider가 아이콘·이름만 다를 뿐 레이아웃이 동일해
    // AdMob이 "복제된 콘텐츠가 있는 화면에 게재된 광고"로 지적했다(2026-08-19). 구조가
    // 유일한 대시보드·설정 화면에만 남긴다.
    val showAd = adContent != null && route !is AppRoute.ProviderDetail

    // 배경은 상태 표시줄 뒤까지 칠하고, 내용만 인셋만큼 내린다. 고정 여백으로 어림잡으면
    // 기기마다 상태 표시줄 높이가 달라 배너가 가려진다(2026-08-11 API 37 실측).
    Surface(
        color = colors.appBackground,
        tonalElevation = 0.dp,
        modifier = Modifier.fillMaxWidth()
    ) {
        Box(
            modifier = Modifier
                .windowInsetsPadding(WindowInsets.statusBars)
                .padding(
                start = layoutMetrics.topBarHorizontalPaddingDp.dp,
                top = layoutMetrics.topBarVerticalPaddingDp.dp,
                end = layoutMetrics.topBarHorizontalPaddingDp.dp,
                bottom = if (showAd) {
                    // 본문 화면이 자체 상단 여백을 갖고 있어 배너 아래에 여백을 더 두면 띠가 겹친다.
                    0.dp
                } else {
                    (layoutMetrics.topBarVerticalPaddingDp - layoutMetrics.mainContentTopLiftDp)
                        .coerceAtLeast(0)
                        .dp
                }
            ),
            contentAlignment = Alignment.CenterEnd
        ) {
            // 광고와 뒤로가기를 세로로 쌓는다. 한 Box에 겹쳐 놓으면 배너가 버튼을 덮고,
            // 광고를 가리는 것은 AdMob 정책에도 걸린다. 배너를 최상단에 두어 다른 화면과
            // 같은 자리에 오게 하고, 뒤로가기는 그 아래 본문 카드 바로 위에 붙인다.
            Column(modifier = Modifier.fillMaxWidth()) {
                if (showAd) {
                    Box(
                        modifier = Modifier
                            .fillMaxWidth()
                            .heightIn(min = layoutMetrics.topBarAdMinHeightDp.dp),
                        contentAlignment = Alignment.Center
                    ) {
                        adContent?.invoke()
                    }
                }
                if (isSettingsRoute) {
                    Box(
                        modifier = Modifier.fillMaxWidth(),
                        contentAlignment = Alignment.CenterEnd
                    ) {
                        IconButton(
                            // 터치 영역은 지키되 아이콘만 작게 그려 본문과의 간격을 줄인다.
                            modifier = Modifier.requiredSize(SettingsBackButtonSize),
                            onClick = onHomeClick
                        ) {
                            Icon(
                                modifier = Modifier.size(SettingsBackIconSize),
                                painter = painterResource(R.drawable.ic_arrow_back),
                                contentDescription = stringResource(R.string.nav_home),
                                tint = colors.textSecondary
                            )
                        }
                    }
                }
            }
        }
    }
}

@Composable
private fun AppNavigationBar(
    route: AppRoute,
    providerOrder: List<ProviderId>,
    hiddenProviders: Set<ProviderId>,
    providerCards: List<ProviderCardDisplayRecord>?,
    layoutMetrics: AppLayoutMetrics,
    onRouteSelected: (AppRoute) -> Unit
) {
    val colors = AIQuotaTheme.colors

    Box(
        modifier = Modifier.fillMaxWidth(),
        contentAlignment = Alignment.Center
    ) {
        Surface(
            tonalElevation = 0.dp,
            color = colors.appBackground,
            modifier = Modifier
                .widthIn(max = layoutMetrics.navBarMaxWidthDp.dp)
                .fillMaxWidth()
        ) {
            Row(
                modifier = Modifier
                    .fillMaxWidth()
                    // 제스처 바 아래까지 배경을 칠하되 버튼은 그 위로 올린다.
                    .windowInsetsPadding(WindowInsets.navigationBars)
                    .horizontalScroll(rememberScrollState())
                    .heightIn(min = layoutMetrics.navBarMinHeightDp.dp)
                    .padding(
                        PaddingValues(
                            start = layoutMetrics.navHorizontalPaddingDp.dp,
                            top = layoutMetrics.navVerticalPaddingDp.dp,
                            end = layoutMetrics.navHorizontalPaddingDp.dp,
                            bottom = layoutMetrics.navVerticalPaddingDp.dp
                        )
                    ),
                horizontalArrangement = Arrangement.spacedBy(layoutMetrics.navGapDp.dp, Alignment.CenterHorizontally),
                verticalAlignment = Alignment.CenterVertically
            ) {
                RouteChip(
                    label = stringResource(R.string.nav_home),
                    selected = route is AppRoute.Home,
                    layoutMetrics = layoutMetrics,
                    onClick = { onRouteSelected(AppRoute.Home) }
                )
                if (providerCards != null) {
                    providerCards.forEach { card ->
                        val accountId = card.accountId
                        ProviderNavigationChip(
                            providerId = accountId.providerId,
                            label = card.alias,
                            selected = route is AppRoute.ProviderDetail && route.accountId == accountId,
                            layoutMetrics = layoutMetrics,
                            onClick = { onRouteSelected(AppRoute.ProviderDetail(accountId)) }
                        )
                    }
                } else {
                    navigationProviderOrder(providerOrder, hiddenProviders).forEach { providerId ->
                        val accountId = ProviderAccountId(providerId, AccountKey.reservedDefault())
                        ProviderNavigationChip(
                            providerId = providerId,
                            selected = route is AppRoute.ProviderDetail && route.accountId == accountId,
                            layoutMetrics = layoutMetrics,
                            onClick = { onRouteSelected(AppRoute.ProviderDetail(accountId)) }
                        )
                    }
                }
            }
        }
    }
}

@Composable
private fun RouteChip(
    label: String,
    selected: Boolean,
    layoutMetrics: AppLayoutMetrics,
    onClick: () -> Unit
) {
    val colors = AIQuotaTheme.colors
    val backgroundColor = if (selected) {
        colors.selectedNav
    } else {
        colors.unselectedNav
    }
    val textColor = if (selected) {
        if (colors.theme == AppTheme.MACOS) Color.White else colors.textPrimary
    } else {
        colors.textSecondary
    }

    Surface(
        modifier = Modifier
            .width(layoutMetrics.navChipWidthDp.dp)
            .height(layoutMetrics.navChipHeightDp.dp)
            .clickable(onClick = onClick),
        shape = RoundedCornerShape(8.dp),
        color = backgroundColor,
        border = BorderStroke(1.dp, colors.border)
    ) {
        Column(
            modifier = Modifier
                .fillMaxSize()
                .padding(horizontal = 2.dp, vertical = layoutMetrics.navChipVerticalPaddingDp.dp),
            horizontalAlignment = Alignment.CenterHorizontally,
            verticalArrangement = Arrangement.Center
        ) {
            Image(
                painter = painterResource(R.drawable.ic_nav_home),
                contentDescription = null,
                contentScale = ContentScale.Fit,
                modifier = Modifier.size(22.dp)
            )
            Text(
                text = label,
                modifier = Modifier.fillMaxWidth(),
                color = textColor,
                style = MaterialTheme.typography.labelSmall,
                fontWeight = FontWeight.SemiBold,
                maxLines = 2,
                overflow = TextOverflow.Ellipsis,
                textAlign = TextAlign.Center
            )
        }
    }
}

@Composable
private fun ProviderNavigationChip(
    providerId: ProviderId,
    selected: Boolean,
    label: String = providerNavigationLabel(providerId),
    layoutMetrics: AppLayoutMetrics,
    onClick: () -> Unit
) {
    val colors = AIQuotaTheme.colors
    val backgroundColor = if (selected) {
        colors.selectedNav
    } else {
        colors.unselectedNav
    }
    val textColor = if (selected && colors.theme == AppTheme.MACOS) Color.White else colors.textSecondary

    Surface(
        modifier = Modifier
            .width(layoutMetrics.navChipWidthDp.dp)
            .height(layoutMetrics.navChipHeightDp.dp)
            .clickable(onClick = onClick),
        shape = RoundedCornerShape(8.dp),
        color = backgroundColor,
        border = BorderStroke(1.dp, colors.border)
    ) {
        Column(
            modifier = Modifier
                .fillMaxSize()
                .padding(horizontal = 2.dp, vertical = layoutMetrics.navChipVerticalPaddingDp.dp),
            horizontalAlignment = Alignment.CenterHorizontally,
            verticalArrangement = Arrangement.Center
        ) {
            ProviderIconImage(
                providerId = providerId,
                modifier = Modifier.size(22.dp)
            )
            Text(
                text = label,
                modifier = Modifier.fillMaxWidth(),
                color = textColor,
                style = compactProviderLineBreakStyle(providerId, MaterialTheme.typography.labelSmall),
                fontWeight = FontWeight.SemiBold,
                maxLines = 2,
                overflow = TextOverflow.Ellipsis,
                textAlign = TextAlign.Center
            )
        }
    }
}

private fun providerNavigationLabel(providerId: ProviderId): String {
    return when (providerId) {
        ProviderId.CLAUDE -> "Claude"
        ProviderId.CODEX -> "Codex"
        ProviderId.GLM -> "GLM"
        ProviderId.OPENCODE -> "OpenCode"
        ProviderId.GEMINI -> "Gemini"
        ProviderId.COPILOT -> "Copilot"
        ProviderId.ANTIGRAVITY -> "Anti\nGravity"
        ProviderId.CURSOR -> "Cursor"
        ProviderId.GROK -> "Grok"
        ProviderId.KIMI -> "Kimi"
        ProviderId.KIRO -> "Kiro"
    }
}

internal fun navigationProviderOrder(
    providerOrder: List<ProviderId>,
    hiddenProviders: Set<ProviderId>
): List<ProviderId> {
    return ProviderPreferencesCodec.visibleProviders(providerOrder, hiddenProviders)
}

private fun isBatteryOptimizationExempt(context: Context): Boolean {
    val appContext = context.applicationContext
    return runCatching {
        val powerManager = appContext.getSystemService(Context.POWER_SERVICE) as PowerManager
        powerManager.isIgnoringBatteryOptimizations(appContext.packageName)
    }.getOrDefault(false)
}

private const val CONNECTING_STATE_MAX_MILLIS = 3_000L
private const val REFRESH_STATE_MAX_MILLIS = 30_000L
private const val GOOGLE_REFRESH_STATE_MAX_MILLIS = 90_000L
private const val TRANSIENT_STATE_POLL_MILLIS = 5_000L
private const val LIVE_REFRESH_STATUS_POLL_MILLIS = 10_000L
