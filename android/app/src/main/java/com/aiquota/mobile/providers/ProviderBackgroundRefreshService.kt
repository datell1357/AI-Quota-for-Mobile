package com.aiquota.mobile.providers

import android.annotation.SuppressLint
import android.app.Service
import android.appwidget.AppWidgetManager
import android.content.BroadcastReceiver
import android.content.Context
import android.content.Intent
import android.content.IntentFilter
import android.content.pm.ServiceInfo
import android.os.Build
import android.os.Handler
import android.os.IBinder
import android.os.Looper
import android.os.SystemClock
import android.util.Log
import android.webkit.CookieManager
import android.webkit.JavascriptInterface
import android.webkit.WebChromeClient
import android.webkit.WebResourceError
import android.webkit.WebResourceRequest
import android.webkit.WebResourceResponse
import android.webkit.WebView
import android.webkit.WebViewClient
import com.aiquota.mobile.BuildConfig
import com.aiquota.mobile.R
import com.aiquota.mobile.local.LocalUsageRepository
import com.aiquota.mobile.local.ProviderId
import com.aiquota.mobile.local.ProviderPreferencesRepository
import com.aiquota.mobile.local.ProviderUsageSnapshot
import com.aiquota.mobile.notification.ProviderResetNotificationController
import com.aiquota.mobile.notification.ProviderUsageThresholdNotificationController
import com.aiquota.mobile.notification.UsageLimitNotificationController
import com.aiquota.mobile.update.AppUpdatedRefreshCooldown
import com.aiquota.mobile.widget.WidgetRefreshActions
import com.aiquota.mobile.widget.WidgetRefreshFeedback
import java.net.URI
import java.util.concurrent.ConcurrentHashMap
import kotlin.coroutines.resume
import kotlinx.coroutines.CancellableContinuation
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.SupervisorJob
import kotlinx.coroutines.cancel
import kotlinx.coroutines.launch
import kotlinx.coroutines.suspendCancellableCoroutine
import kotlinx.coroutines.withContext
import kotlinx.coroutines.withTimeoutOrNull
import org.json.JSONArray
import org.json.JSONObject

class ProviderBackgroundRefreshService : Service() {
    private val mainHandler = Handler(Looper.getMainLooper())
    private val serviceScope = CoroutineScope(SupervisorJob() + Dispatchers.Main.immediate)
    private val retainedWebViews = mutableMapOf<ProviderId, WebView>()
    private val collectorInjectionKeys = mutableSetOf<String>()

    private lateinit var repository: LocalUsageRepository
    private var running = false
    private var refreshInProgress = false
    private var tickScheduled = false
    private var nextRequestId = 0L
    private var activeWebJob: ServiceWebRefreshJob? = null
    private var activeWebContinuation: CancellableContinuation<ServiceRefreshOutcome>? = null
    private val webJobLastUrls = mutableMapOf<Long, String>()
    private val codexNativeFetchHeaders = ConcurrentHashMap<String, Map<String, String>>()
    private val claudeNativeFetchHeaders = ConcurrentHashMap<String, Map<String, String>>()
    private var observedCodexAccountId: String? = null
    private var pendingManualProviderId: ProviderId? = null
    private var pendingManualWidgetId: Int = AppWidgetManager.INVALID_APPWIDGET_ID
    private var sessionResetReceiverRegistered = false
    private val sessionResetReceiver = object : BroadcastReceiver() {
        override fun onReceive(context: Context?, intent: Intent?) {
            if (intent?.action != ACTION_PROVIDER_SESSION_RESET) return
            val providerId = ProviderId.fromStorageId(intent.getStringExtra(EXTRA_PROVIDER_ID)) ?: return
            handleProviderSessionReset(providerId)
        }
    }
    private val geminiCollectorAsset = ""
    private val antigravityCollectorAsset by lazy {
        runCatching {
            assets.open("antigravity_collector.js").bufferedReader().use { it.readText() }
        }.getOrDefault("")
    }

    private lateinit var refreshStateRepository: ProviderBackgroundRefreshStateRepository
    private val tickRunnable = Runnable {
        tickScheduled = false
        if (!running) return@Runnable
        serviceScope.launch {
            val startedAt = System.currentTimeMillis()
            runRefreshCycle()
            val elapsedMillis = System.currentTimeMillis() - startedAt
            val nextDelayMillis = if (hasPendingManualRefresh()) 0L else {
                ProviderRefreshPlan.nextAutoRefreshDelayMillis(elapsedMillis)
            }
            scheduleNextTick(nextDelayMillis)
        }
    }

    override fun onCreate() {
        super.onCreate()
        repository = LocalUsageRepository(applicationContext)
        refreshStateRepository = ProviderBackgroundRefreshStateRepository(applicationContext)
        CookieManager.getInstance().setAcceptCookie(true)
        registerSessionResetReceiver()
    }

    override fun onBind(intent: Intent?): IBinder? = null

    override fun onStartCommand(intent: Intent?, flags: Int, startId: Int): Int {
        when (intent?.action ?: ACTION_START) {
            ACTION_STOP -> {
                com.aiquota.mobile.sync.ForegroundRefreshController(applicationContext)
                    .setLiveMonitoringEnabled(false)
                stopRefreshLoop()
                stopSelf(startId)
                return START_NOT_STICKY
            }
            ACTION_REFRESH -> requestImmediateRefresh(intent)
            else -> startRefreshLoop()
        }
        return START_STICKY
    }

    override fun onDestroy() {
        unregisterSessionResetReceiver()
        stopRefreshLoop()
        serviceScope.cancel()
        super.onDestroy()
    }

    private fun startRefreshLoop() {
        if (!startForegroundNotification()) {
            stopSelf()
            return
        }
        refreshStateRepository.recordStarted(source = "loop")
        if (!running) {
            running = true
        }
        if (!tickScheduled && !refreshInProgress) {
            scheduleNextTick(delayMillis = initialAutoRefreshDelayMillis())
        }
    }

    private fun requestImmediateRefresh(intent: Intent?) {
        if (!startForegroundNotification()) {
            stopSelf()
            return
        }
        refreshStateRepository.recordStarted(source = "manual")
        pendingManualProviderId = ProviderId.fromStorageId(
            intent?.getStringExtra(WidgetRefreshActions.EXTRA_PROVIDER_ID)
        )
        pendingManualWidgetId = intent?.getIntExtra(
            WidgetRefreshActions.EXTRA_APP_WIDGET_ID,
            AppWidgetManager.INVALID_APPWIDGET_ID
        ) ?: AppWidgetManager.INVALID_APPWIDGET_ID
        running = true
        if (!refreshInProgress) {
            scheduleNextTick(delayMillis = 0L)
        }
    }

    private fun stopRefreshLoop() {
        running = false
        tickScheduled = false
        mainHandler.removeCallbacks(tickRunnable)
        completeActiveWebJob(ServiceRefreshOutcome.Cancelled)
        retainedWebViews.values.toList().forEach { webView ->
            runCatching { webView.stopLoading() }
            runCatching { webView.destroy() }
        }
        retainedWebViews.clear()
        collectorInjectionKeys.clear()
        refreshStateRepository.recordStopped()
        runCatching { stopForeground(STOP_FOREGROUND_REMOVE) }
        UsageLimitNotificationController.cancel(applicationContext)
    }

    private fun registerSessionResetReceiver() {
        if (sessionResetReceiverRegistered) return
        val filter = IntentFilter(ACTION_PROVIDER_SESSION_RESET)
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.TIRAMISU) {
            registerReceiver(sessionResetReceiver, filter, Context.RECEIVER_NOT_EXPORTED)
        } else {
            @Suppress("DEPRECATION")
            registerReceiver(sessionResetReceiver, filter)
        }
        sessionResetReceiverRegistered = true
    }

    private fun unregisterSessionResetReceiver() {
        if (!sessionResetReceiverRegistered) return
        runCatching { unregisterReceiver(sessionResetReceiver) }
        sessionResetReceiverRegistered = false
    }

    private fun handleProviderSessionReset(providerId: ProviderId) {
        Log.d(TAG, "sessionReset provider=${providerId.storageId}")
        repository.removeProviderSnapshot(providerId)
        collectorInjectionKeys.removeAll { it.contains(":${providerId.storageId}:") }
        val active = activeWebJob?.takeIf { it.job.providerId == providerId }
        destroyProviderWebView(providerId)
        active?.let { completeWebJob(it.requestId, ServiceRefreshOutcome.Cancelled) }
        UsageSurfaceRefresher.refresh(applicationContext, repository)
    }

    private fun startForegroundNotification(): Boolean {
        return runCatching {
            if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.Q) {
                startForeground(
                    UsageLimitNotificationController.NOTIFICATION_ID,
                    UsageLimitNotificationController.foregroundNotification(this),
                    ServiceInfo.FOREGROUND_SERVICE_TYPE_SPECIAL_USE
                )
            } else {
                startForeground(
                    UsageLimitNotificationController.NOTIFICATION_ID,
                    UsageLimitNotificationController.foregroundNotification(this)
                )
            }
        }.onFailure { error ->
            Log.e(TAG, "failedToStartForeground=${error::class.java.simpleName}")
        }.isSuccess
    }

    private fun scheduleNextTick(delayMillis: Long = ProviderRefreshPlan.AUTO_REFRESH_INTERVAL_MILLIS) {
        if (!running) return
        mainHandler.removeCallbacks(tickRunnable)
        tickScheduled = true
        mainHandler.postDelayed(tickRunnable, delayMillis)
    }

    private fun hasPendingManualRefresh(): Boolean {
        return pendingManualProviderId != null ||
            pendingManualWidgetId != AppWidgetManager.INVALID_APPWIDGET_ID
    }

    private suspend fun runRefreshCycle() {
        if (refreshInProgress) return
        refreshInProgress = true
        refreshStateRepository.recordHeartbeat()
        val manualProviderId = pendingManualProviderId
        val manualWidgetId = pendingManualWidgetId
        pendingManualProviderId = null
        pendingManualWidgetId = AppWidgetManager.INVALID_APPWIDGET_ID
        try {
            val jobs = if (manualProviderId != null) {
                ProviderRefreshPlan.manualCycleJobsFor(manualProviderId, repository.readSnapshots())
            } else {
                ProviderRefreshPlan.automaticJobsFor(repository.readSnapshots())
            }
            if (jobs.isEmpty()) {
                running = false
                stopSelf()
                return
            }
            Log.d(TAG, "cycleStart providers=${jobs.joinToString(",") { it.providerId.storageId }}")
            jobs.forEach { job ->
                refreshProvider(job, automaticRefresh = manualProviderId == null)
            }
            evaluateResetNotifications()
            evaluateUsageThresholdNotifications()
        } finally {
            if (manualWidgetId != AppWidgetManager.INVALID_APPWIDGET_ID) {
                WidgetRefreshFeedback.clearWidgetRefresh(applicationContext, manualWidgetId)
                UsageSurfaceRefresher.refresh(applicationContext, repository)
            }
            refreshInProgress = false
        }
    }

    private suspend fun refreshProvider(job: ProviderRefreshJob, automaticRefresh: Boolean) {
        val effectiveJob = resolveRuntimeRefreshJob(job)
        val startingSnapshot = repository.readSnapshots().firstOrNull { it.providerId == effectiveJob.providerId }
        repository.markCollecting(effectiveJob.providerId)
        UsageSurfaceRefresher.refresh(applicationContext, repository)
        val outcome = when (effectiveJob.mode) {
            ProviderRefreshMode.NATIVE_API -> collectNativeProviderUsage(effectiveJob, automaticRefresh)
            ProviderRefreshMode.HIDDEN_WEB_COLLECTOR -> ProviderWebSessionMaintenanceGate.withMaintenanceLock(effectiveJob.providerId) {
                collectWebProviderUsage(effectiveJob, automaticRefresh)
            }
        }
        Log.d(TAG, "outcome provider=${effectiveJob.providerId.storageId} type=${outcome::class.java.simpleName}")
        if (repository.readSnapshots().none { it.providerId == effectiveJob.providerId }) {
            destroyProviderWebView(effectiveJob.providerId)
            return
        }
        when (outcome) {
            is ServiceRefreshOutcome.Snapshot -> {
                Log.d(
                    TAG,
                    "saveSnapshot provider=${effectiveJob.providerId.storageId} source=native lineCount=${outcome.snapshot.lines.size} " +
                        "planPresent=${outcome.snapshot.planLabel != null} accountPresent=${outcome.snapshot.account != null}"
                )
                DebugProviderSessionCookieStore.capture(
                    applicationContext,
                    effectiveJob.providerId,
                    CookieManager.getInstance(),
                    "background_native_snapshot",
                    exportExternal = shouldExportBackgroundDebugSnapshot(effectiveJob.providerId),
                    nativeAuthContext = debugNativeAuthContextForSnapshot(effectiveJob.providerId)
                )
                repository.saveSnapshot(outcome.snapshot)
            }
            is ServiceRefreshOutcome.Payload -> {
                val snapshot = ProviderUsageNormalizer.normalize(
                    effectiveJob.providerId,
                    outcome.rawPayload,
                    ProviderPayloadSource.STRUCTURED_SCRIPT
                )
                if (snapshot != null) {
                    Log.d(
                        TAG,
                        "saveSnapshot provider=${effectiveJob.providerId.storageId} source=webview lineCount=${snapshot.lines.size} " +
                            "planPresent=${snapshot.planLabel != null} accountPresent=${snapshot.account != null}"
                    )
                    DebugProviderSessionCookieStore.capture(
                        applicationContext,
                        effectiveJob.providerId,
                        CookieManager.getInstance(),
                        "background_webview_snapshot",
                        exportExternal = shouldExportBackgroundDebugSnapshot(effectiveJob.providerId),
                        nativeAuthContext = debugNativeAuthContextForSnapshot(effectiveJob.providerId)
                    )
                    repository.saveSnapshot(snapshot)
                } else if (
                    ProviderRefreshFailureClassifier.requiresInteractiveAuth(
                        effectiveJob.providerId,
                        ProviderRefreshFailureKind.NO_TRUSTED_PAYLOAD
                    )
                ) {
                    Log.w(
                        TAG,
                        "normalizeFailed provider=${effectiveJob.providerId.storageId} authClassified=true summary=${payloadSignal(outcome.rawPayload)}"
                    )
                    handleRefreshAuthFailure(
                        providerId = effectiveJob.providerId,
                        message = getString(R.string.provider_status_auth_required),
                        automaticRefresh = automaticRefresh
                    )
                } else if (effectiveJob.providerId == ProviderId.GEMINI || effectiveJob.providerId == ProviderId.ANTIGRAVITY) {
                    Log.w(
                        TAG,
                        "normalizeFailed provider=${effectiveJob.providerId.storageId} googlePending=true summary=${payloadSignal(outcome.rawPayload)}"
                    )
                    repository.markGoogleUsagePending(effectiveJob.providerId, GoogleUsagePendingRetryPolicy.PENDING_MESSAGE)
                } else {
                    Log.w(
                        TAG,
                        "normalizeFailed provider=${effectiveJob.providerId.storageId} keptPrevious=true summary=${payloadSignal(outcome.rawPayload)}"
                    )
                    repository.failKeepingPrevious(effectiveJob.providerId, "Background collector ran. No trusted usage payload found.")
                }
            }
            is ServiceRefreshOutcome.Failure -> {
                Log.w(
                    TAG,
                    "failure provider=${effectiveJob.providerId.storageId} kind=${outcome.failure.kind} message=${safeLogValue(outcome.failure.message)}"
                )
                refreshStateRepository.recordFailure(outcome.failure.kind.name)
                val requiresInteractiveAuth = ProviderRefreshFailureClassifier.requiresInteractiveAuth(
                    effectiveJob.providerId,
                    outcome.failure.kind
                )
                if (!requiresInteractiveAuth && effectiveJob.mode == ProviderRefreshMode.HIDDEN_WEB_COLLECTOR) {
                    DebugProviderSessionCookieStore.capture(
                        applicationContext,
                        effectiveJob.providerId,
                        CookieManager.getInstance(),
                        "background_webview_non_auth_failure",
                        exportExternal = false
                    )
                }
                if (requiresInteractiveAuth) {
                    handleRefreshAuthFailure(
                        providerId = effectiveJob.providerId,
                        message = outcome.failure.message,
                        automaticRefresh = automaticRefresh
                    )
                } else if (
                    effectiveJob.providerId == ProviderId.GLM &&
                    GlmNoSubscriptionPolicy.isNoSubscriptionMessage(outcome.failure.message)
                ) {
                    repository.markConnectedWithoutPlan(
                        providerId = ProviderId.GLM,
                        planLabel = GlmNoSubscriptionPolicy.PLAN_LABEL,
                        message = GlmNoSubscriptionPolicy.MESSAGE
                    )
                } else if (effectiveJob.providerId == ProviderId.GEMINI || effectiveJob.providerId == ProviderId.ANTIGRAVITY) {
                    repository.markGoogleUsagePending(effectiveJob.providerId, outcome.failure.message)
                } else {
                    repository.failKeepingPrevious(effectiveJob.providerId, outcome.failure.message)
                }
                if (ProviderHiddenWebViewRetentionPolicy.shouldRecreateAfterFailure(outcome.failure.kind)) {
                    destroyProviderWebView(effectiveJob.providerId)
                }
            }
            is ServiceRefreshOutcome.Cancelled -> {
                startingSnapshot?.let(repository::saveSnapshot)
            }
        }
        UsageSurfaceRefresher.refresh(applicationContext, repository)
        if (effectiveJob.providerId == ProviderId.CLAUDE) {
            maybePrimeClaudeSession()
        }
    }

    private fun evaluateResetNotifications() {
        val preferences = ProviderPreferencesRepository(applicationContext)
        val stateRepository = ProviderResetNotificationStateRepository(applicationContext)
        val result = ProviderResetNotificationPolicy.evaluate(
            snapshots = repository.readSnapshots(),
            isEnabled = { preferences.isResetNotificationEnabled(it) },
            storedPending = stateRepository.readPending(),
            lastNotified = stateRepository.readNotified()
        )
        stateRepository.write(result.pending, result.notified)
        result.notifications.forEach { notification ->
            Log.i(TAG, "resetNotification provider=${notification.providerId.storageId} line=${notification.lineKey}")
            ProviderResetNotificationController.notifyReset(applicationContext, notification)
        }
    }

    private fun evaluateUsageThresholdNotifications() {
        val preferences = ProviderPreferencesRepository(applicationContext)
        val stateRepository = ProviderUsageThresholdNotificationStateRepository(applicationContext)
        val result = ProviderUsageThresholdNotificationPolicy.evaluate(
            snapshots = repository.readSnapshots(),
            isEnabled = { preferences.isUsageThresholdNotificationEnabled(it) },
            thresholdPercent = { preferences.usageThresholdPercent(it) },
            storedArmed = stateRepository.readArmed()
        )
        stateRepository.writeArmed(result.armed)
        result.notifications.forEach { notification ->
            Log.i(
                TAG,
                "usageThresholdNotification provider=${notification.providerId.storageId} " +
                    "line=${notification.lineKey} threshold=${notification.thresholdPercent}"
            )
            ProviderUsageThresholdNotificationController.notifyLowUsage(applicationContext, notification)
        }
    }

    private suspend fun maybePrimeClaudeSession() {
        val enabled = ProviderPreferencesRepository(applicationContext).isClaudeAutoResetPrimeEnabled()
        val snapshot = repository.readSnapshots().firstOrNull { it.providerId == ProviderId.CLAUDE }
        val primeState = ClaudeSessionPrimeStateRepository(applicationContext)
        val decision = ClaudeSessionPrimePolicy.evaluate(
            snapshot = snapshot,
            enabled = enabled,
            storedPendingMillis = primeState.pendingResetMillis(),
            lastPrimedMillis = primeState.lastPrimedResetMillis()
        )
        primeState.savePendingResetMillis(decision.pendingResetMillis)
        val target = decision.primeTargetMillis
        if (target == null) {
            val fiveHourReset = snapshot?.lines?.firstOrNull { it.key == ClaudeSessionPrimePolicy.FIVE_HOUR_LINE_KEY }?.resetsAt
            Log.d(
                TAG,
                "provider=claude autoPrime skip enabled=$enabled connState=${snapshot?.connectionState} " +
                    "pending=${decision.pendingResetMillis} nowMs=${System.currentTimeMillis()} fiveHourReset=$fiveHourReset"
            )
            return
        }
        val result = withContext(Dispatchers.IO) { ClaudeSessionPrimer.prime(applicationContext) }
        Log.i(TAG, "provider=claude autoPrime ok=${result.ok} target=$target detail=${result.detail}")
        if (result.ok) {
            // Record the boundary as primed only on success. Recording before the attempt used to
            // strand the feature: a single failed prime marked the boundary done, and since no new
            // window was created the reset stayed unprimed forever. On failure we leave it unrecorded
            // so the next refresh cycle retries the same boundary until it succeeds.
            primeState.recordPrimed(target)
            refreshProvider(ProviderRefreshPlan.manualJobFor(ProviderId.CLAUDE), automaticRefresh = true)
        }
    }

    private fun resolveRuntimeRefreshJob(job: ProviderRefreshJob): ProviderRefreshJob {
        return GlmRuntimeRefreshJobs.resolve(
            job,
            GlmUsageRepository(applicationContext).connectionMode()
        )
    }

    private fun handleRefreshAuthFailure(
        providerId: ProviderId,
        message: String,
        automaticRefresh: Boolean
    ) {
        destroyProviderWebView(providerId)
        if (!automaticRefresh) {
            if (ProviderRefreshSessionPolicy.shouldClearCredentialsOnRefreshAuthFailure(providerId)) {
                ProviderSessionResetter(applicationContext).disconnect(providerId)
            }
            repository.markSessionExpired(providerId, message)
            return
        }
        if (automaticRefresh && providerId == ProviderId.GEMINI) {
            repository.markGoogleUsagePending(providerId, GoogleUsagePendingRetryPolicy.PENDING_MESSAGE)
            return
        }
        if (automaticRefresh) {
            repository.failKeepingPrevious(providerId, message)
            return
        }
    }

    private suspend fun collectNativeProviderUsage(
        job: ProviderRefreshJob,
        automaticRefresh: Boolean
    ): ServiceRefreshOutcome {
        if (job.providerId == ProviderId.GLM) {
            val repository = GlmUsageRepository(applicationContext)
            val connectionMode = repository.connectionMode()
            if (connectionMode == GlmConnectionMode.WEB_OAUTH) {
                return collectGlmWebOAuthUsage(job, repository, automaticRefresh)
            }
            val result = withContext(Dispatchers.IO) {
                repository.fetchUsagePayloadFromStoredCredential()
            }
            val snapshot = result.payload?.let {
                ProviderUsageNormalizer.normalize(
                    job.providerId,
                    it,
                    ProviderPayloadSource.PROVIDER_API
                )
            }
            return when {
                snapshot != null -> ServiceRefreshOutcome.Snapshot(snapshot)
                result.requiresAuth -> ServiceRefreshOutcome.Failure(
                    ProviderRefreshFailure.interactiveAuthRequired(
                        glmAuthFailureMessageFor(connectionMode)
                    )
                )
                else -> ServiceRefreshOutcome.Failure(
                    ProviderRefreshFailure(
                        ProviderRefreshFailureKind.NO_TRUSTED_PAYLOAD,
                        "GLM usage payload was not available: ${result.diagnostic}"
                    )
                )
            }
        }
        if (job.providerId == ProviderId.ANTIGRAVITY) {
            val payload = withContext(Dispatchers.IO) {
                fetchAntigravityNativeOrWebSessionPayload()
            }
            val snapshot = payload?.let {
                ProviderUsageNormalizer.normalize(
                    job.providerId,
                    it,
                    ProviderPayloadSource.PROVIDER_API
                )
            }
            return if (snapshot != null) {
                ServiceRefreshOutcome.Snapshot(snapshot)
            } else {
                ServiceRefreshOutcome.Failure(
                    ProviderRefreshFailure(
                        ProviderRefreshFailureKind.NO_TRUSTED_PAYLOAD,
                        "Antigravity OAuth collection returned no trusted usage payload."
                    )
                )
            }
        }
        return ServiceRefreshOutcome.Failure(
            ProviderRefreshFailure(
                ProviderRefreshFailureKind.NO_TRUSTED_PAYLOAD,
                "Native refresh is not available for ${job.providerId.displayName}."
            )
        )
    }

    private suspend fun collectGlmWebOAuthUsage(
        job: ProviderRefreshJob,
        repository: GlmUsageRepository,
        automaticRefresh: Boolean
    ): ServiceRefreshOutcome {
        val result = withContext(Dispatchers.IO) {
            repository.fetchUsagePayloadFromWebSession(includePlan = !automaticRefresh)
        }
        val snapshot = result.payload?.let {
            ProviderUsageNormalizer.normalize(
                job.providerId,
                it,
                ProviderPayloadSource.PROVIDER_API
            )
        }
        if (snapshot != null) return ServiceRefreshOutcome.Snapshot(snapshot)
        if (!result.requiresAuth) {
            return ServiceRefreshOutcome.Failure(
                ProviderRefreshFailure(
                    ProviderRefreshFailureKind.NO_TRUSTED_PAYLOAD,
                    "GLM usage payload was not available: ${result.diagnostic}"
                )
            )
        }

        val fallbackGate = GlmWebSessionFallbackGate(applicationContext)
        if (!fallbackGate.canRunFallback(automaticRefresh)) {
            val remainingSeconds = fallbackGate.remainingDelayMillis() / 1_000L
            Log.i(TAG, "glmRenewalSkipped reason=cooldown remainingSeconds=$remainingSeconds")
            return ServiceRefreshOutcome.Failure(
                ProviderRefreshFailure(
                    ProviderRefreshFailureKind.NO_TRUSTED_PAYLOAD,
                    "GLM web session renewal is cooling down."
                )
            )
        }
        fallbackGate.recordFallbackAttempt()
        Log.i(TAG, "glmRenewalStart mode=isolated_webview reason=${result.diagnostic}")
        return when (
            val renewal = GlmIsolatedWebSession.collectUsage(
                applicationContext,
                GlmProviderUrls.WEB_USAGE_URL,
                ProviderRefreshPlan.GLM_WEB_REFRESH_TIMEOUT_MILLIS
            )
        ) {
            is GlmIsolatedUsageResult.Payload -> {
                repository.saveWebSessionCookieHeader(renewal.cookieHeader)
                val renewedSnapshot = ProviderUsageNormalizer.normalize(
                    job.providerId,
                    renewal.rawPayload,
                    ProviderPayloadSource.PROVIDER_API
                )
                if (renewedSnapshot != null) {
                    ServiceRefreshOutcome.Snapshot(renewedSnapshot)
                } else {
                    ServiceRefreshOutcome.Failure(
                        ProviderRefreshFailure(
                            ProviderRefreshFailureKind.NO_TRUSTED_PAYLOAD,
                            "GLM isolated renewal returned no trusted usage payload."
                        )
                    )
                }
            }
            is GlmIsolatedUsageResult.Failure -> ServiceRefreshOutcome.Failure(renewal.failure)
        }
    }

    private fun glmAuthFailureMessageFor(connectionMode: GlmConnectionMode): String {
        return when (connectionMode) {
            GlmConnectionMode.WEB_OAUTH -> "GLM web session expired. Please sign in again."
            GlmConnectionMode.API_KEY -> "GLM API key is invalid or expired."
        }
    }

    private fun fetchAntigravityNativeOrWebSessionPayload(): String? {
        val providerId = ProviderId.ANTIGRAVITY
        val nativePayload = AntigravityOAuthRepository(applicationContext).fetchUsagePayloadFromStoredCredential()
        if (nativePayload != null) return nativePayload
        if (!GoogleWebSessionCodeAssistFetcher.hasSessionCookie(providerId)) return null
        val fallback = GoogleWebSessionCodeAssistFetcher.fetchUsagePayload(providerId)
        Log.i(
            TAG,
            "googleWebSessionFallback provider=${providerId.storageId} " +
                "payloadPresent=${fallback.payload != null} diagnostic=${fallback.diagnostic} " +
                "statuses=${fallback.statuses.joinToString(",")}"
        )
        return fallback.payload
    }

    private suspend fun collectWebProviderUsage(
        job: ProviderRefreshJob,
        automaticRefresh: Boolean
    ): ServiceRefreshOutcome {
        val requestId = ++nextRequestId
        webJobLastUrls[requestId] = job.startUrl
        val result = withTimeoutOrNull(timeoutMillisForWebJob(job)) {
            suspendCancellableCoroutine { continuation ->
                mainHandler.post {
                    val warmUpUrl = webSessionWarmUpUrl(job)
                    val active = ServiceWebRefreshJob(
                        requestId = requestId,
                        job = job,
                        warmUpUrl = warmUpUrl,
                        warmUpPending = warmUpUrl != null
                    )
                    activeWebJob = active
                    activeWebContinuation = continuation
                    startWebCollection(active)
                }
                continuation.invokeOnCancellation {
                    mainHandler.post {
                        clearActiveWebJob(requestId)
                    }
                }
            }
        }
        val lastUrl = webJobLastUrls[requestId]
        clearActiveWebJob(requestId)
        clearClaudeNativeFetchHeaders(job.providerId)
        webJobLastUrls.remove(requestId)
        if (result == null && job.providerId == ProviderId.GEMINI) {
            val safeLastUrl = lastUrl.orEmpty()
            Log.d(TAG, "timeout provider=gemini last=${hostOf(safeLastUrl)}${pathOf(safeLastUrl)}")
        }
        if (result == null && job.providerId == ProviderId.CLAUDE) {
            val safeLastUrl = lastUrl.orEmpty()
            Log.d(TAG, "timeout provider=claude last=${hostOf(safeLastUrl)}${pathOf(safeLastUrl)}")
            return ServiceRefreshOutcome.Failure(
                ProviderRefreshFailure(
                    ProviderRefreshFailureKind.NO_TRUSTED_PAYLOAD,
                    "Claude session reached, but trusted usage payload was not available."
                )
            )
        }
        val outcome = result
            ?: ServiceRefreshOutcome.Failure(ProviderRefreshTimeoutPolicy.failureFor(job.providerId, lastUrl))
        // A Cloudflare 403 on Codex's session probe (chatgpt.com/api/auth/session) flags interactive
        // auth even while the usage endpoint (backend-api/wham/usage) still returns 200. Confirm the
        // sign-out against a native usage fetch before trusting it: only keep auth-required when usage
        // is genuinely gone. A real logout fails wham/usage too, so this preserves logout detection.
        if (job.providerId == ProviderId.CODEX &&
            outcome is ServiceRefreshOutcome.Failure &&
            outcome.failure.kind == ProviderRefreshFailureKind.INTERACTIVE_AUTH_REQUIRED
        ) {
            codexNativeUsageFallbackOutcome()?.let { return it }
        }
        return outcome
    }

    /**
     * Reruns Codex usage collection natively (the same wham/usage path the web collector uses) to
     * decide whether an interactive-auth signal is a real sign-out or a transient session-probe 403.
     * Returns a usage [ServiceRefreshOutcome.Payload] when usage is still available, or null to keep
     * the original auth-required failure.
     */
    private suspend fun codexNativeUsageFallbackOutcome(): ServiceRefreshOutcome? {
        val userAgent = ProviderWebViewUserAgent.hiddenCollectorUserAgent(this, ProviderId.CODEX)
        val bridgeResult = withContext(Dispatchers.IO) {
            ProviderNativeUsagePayloadFetcher.bridgeUsagePayload(
                providerId = ProviderId.CODEX,
                userAgent = userAgent,
                requestHeadersForUrl = { url -> codexNativeFetchHeadersFor(url) }
            )
        }
        val json = runCatching { JSONObject(bridgeResult) }.getOrNull() ?: return null
        if (!json.optBoolean("ok", false)) return null
        val payload = json.optJSONObject("payload") ?: return null
        Log.i(TAG, "codexAuthFallback nativeUsage=ok overrideAuthRequired=true")
        return ServiceRefreshOutcome.Payload(payload.toString())
    }

    @SuppressLint("SetJavaScriptEnabled")
    private fun startWebCollection(active: ServiceWebRefreshJob) {
        val job = active.job
        clearClaudeNativeFetchHeaders(job.providerId)
        val webView = retainedWebViews.getOrPut(job.providerId) {
            WebView(this).apply {
                val cookieManager = CookieManager.getInstance()
                val collectorUserAgent = ProviderWebViewUserAgent.hiddenCollectorUserAgent(
                    this@ProviderBackgroundRefreshService,
                    job.providerId
                )
                settings.javaScriptEnabled = true
                settings.domStorageEnabled = true
                settings.databaseEnabled = true
                settings.allowFileAccess = false
                settings.javaScriptCanOpenWindowsAutomatically = true
                settings.setSupportMultipleWindows(false)
                settings.userAgentString = collectorUserAgent
                if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.LOLLIPOP) {
                    cookieManager.setAcceptThirdPartyCookies(this, true)
                }
                addJavascriptInterface(ServiceUsageBridge(job.providerId, collectorUserAgent), BRIDGE_NAME)
                webChromeClient = ServiceCollectorChromeClient()
                webViewClient = ServiceCollectorWebViewClient(job.providerId)
            }
        }
        prepareSharedWebSessionForCollection(webView, job.providerId)
        val initialUrl = initialUrlForWebCollection(active)
        webJobLastUrls[active.requestId] = initialUrl
        Log.d(
            TAG,
            "load provider=${job.providerId.storageId} start=${hostOf(initialUrl)}${pathOf(initialUrl)} " +
                "warmUp=${active.warmUpPending} request=${active.requestId}"
        )
        if (job.providerId == ProviderId.CLAUDE && initialUrl == "about:blank") {
            loadClaudeAboutBlankBridgeDocument(webView)
        } else {
            webView.loadUrl(initialUrl)
        }
    }

    private fun initialUrlForWebCollection(active: ServiceWebRefreshJob): String {
        val job = active.job
        if (job.providerId == ProviderId.CLAUDE && active.warmUpUrl == null && hasAnyClaudeNativeFetchHeaders()) {
            return "about:blank"
        }
        return active.warmUpUrl ?: job.startUrl
    }

    private fun prepareSharedWebSessionForCollection(webView: WebView, providerId: ProviderId) {
        val cookieManager = CookieManager.getInstance()
        cookieManager.setAcceptCookie(true)
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.LOLLIPOP) {
            cookieManager.setAcceptThirdPartyCookies(webView, true)
        }
        restoreDebugProviderSessionCookies(providerId, cookieManager)
        restoreCodexDebugNativeAuthContext(providerId)
        restoreCodexNativeAuthContext(providerId)
        restoreClaudeNativeRequestContext(providerId)
        CookieManager.getInstance().flush()
        webView.onResume()
        webView.resumeTimers()
    }

    private fun restoreDebugProviderSessionCookies(providerId: ProviderId, cookieManager: CookieManager) {
        if (providerId == ProviderId.GEMINI || providerId == ProviderId.OPENCODE) return
        DebugProviderSessionCookieStore.restore(applicationContext, providerId, cookieManager, "background_collection")
    }

    private fun restoreCodexDebugNativeAuthContext(providerId: ProviderId) {
        if (providerId != ProviderId.CODEX) return
        val restoredHeaders = DebugProviderSessionCookieStore.restoreNativeAuthContext(applicationContext, providerId)
        if (restoredHeaders.isEmpty()) return
        codexNativeFetchHeaders.putAll(restoredHeaders)
    }

    private fun restoreCodexNativeAuthContext(providerId: ProviderId) {
        if (providerId != ProviderId.CODEX) return
        val restoredHeaders = CodexNativeAuthContextStore(applicationContext).restore()
        if (restoredHeaders.isEmpty()) return
        codexNativeFetchHeaders.putAll(restoredHeaders)
    }

    private fun restoreClaudeNativeRequestContext(providerId: ProviderId) {
        if (providerId != ProviderId.CLAUDE) return
        val restoredHeaders = ClaudeNativeRequestContextStore(applicationContext).restore()
        if (restoredHeaders.isEmpty()) return
        claudeNativeFetchHeaders.putAll(restoredHeaders)
    }

    private fun destroyProviderWebView(providerId: ProviderId) {
        retainedWebViews.remove(providerId)?.let { webView ->
            runCatching { webView.stopLoading() }
            runCatching { webView.removeJavascriptInterface(BRIDGE_NAME) }
            runCatching { webView.destroy() }
        }
    }

    private fun currentWebJobFor(providerId: ProviderId): ServiceWebRefreshJob? {
        return activeWebJob?.takeIf { it.job.providerId == providerId }
    }

    private fun completeActiveWebJob(outcome: ServiceRefreshOutcome) {
        val requestId = activeWebJob?.requestId ?: return
        completeWebJob(requestId, outcome)
    }

    private fun completeWebJob(requestId: Long, outcome: ServiceRefreshOutcome) {
        val active = activeWebJob ?: return
        if (active.requestId != requestId) return
        val continuation = activeWebContinuation
        activeWebJob = null
        activeWebContinuation = null
        if (continuation?.isActive == true) {
            continuation.resume(outcome)
        }
    }

    private fun clearActiveWebJob(requestId: Long) {
        if (activeWebJob?.requestId != requestId) return
        activeWebJob = null
        activeWebContinuation = null
    }

    private fun recordWebJobUrl(requestId: Long, url: String) {
        webJobLastUrls[requestId] = url
    }

    private fun saveOpenCodeUsageUrl(url: String) {
        ProviderScopedStateRepository(applicationContext).saveOpenCodeUsageUrl(url)
    }

    private fun saveGeminiUsageUrl(url: String) {
        ProviderScopedStateRepository(applicationContext).saveGeminiUsageUrl(url)
    }

    private fun injectCollectorIfReady(providerId: ProviderId, view: WebView, url: String, pageText: String) {
        val active = currentWebJobFor(providerId) ?: return
        if (ProviderAboutBlankCollectorPolicy.isEnabled(providerId) && url != "about:blank") return
        val cookies = collectorCookiesFor(providerId, url)
        if (!ProviderWebCollectorScripts.shouldRunCollector(providerId, url, cookies, pageText)) {
            Log.d(
                TAG,
                "skipInject provider=${providerId.storageId} url=${hostOf(url)}${pathOf(url)} " +
                    "reason=${ProviderWebCollectorScripts.collectorReadinessDiagnostic(providerId, url, cookies, pageText)} " +
                    "page=${pageSignal(pageText)}"
            )
            return
        }
        val injectionKey = "${active.requestId}:${providerId.storageId}:${hostOf(url)}:${routeKeyOf(url)}"
        val firstInjectionForPage = collectorInjectionKeys.add(injectionKey)
        if (!firstInjectionForPage && !ProviderWebCollectorScripts.shouldAllowCollectorReinjection(providerId)) return
        val script = ProviderWebCollectorScripts.build(
            providerId = providerId,
            cookies = cookies,
            geminiCollectorAsset = geminiCollectorAsset,
            antigravityCollectorAsset = antigravityCollectorAsset,
            observedAccountId = observedCodexAccountId,
            pageText = pageText,
            pageUrl = url,
            awaitInteractiveLoginUsage = providerId == ProviderId.CODEX || providerId == ProviderId.GEMINI,
            providerRequestHeaders = replaySafeProviderRequestHeadersFor(providerId, url)
        )
        if (script.isBlank()) return
        Log.d(
            TAG,
            "${if (firstInjectionForPage) "inject" else "reinject"} " +
                "provider=${providerId.storageId} url=${hostOf(url)}${pathOf(url)}"
        )
        view.evaluateJavascript(script, null)
    }

    private fun maybeRedirectGeminiRefreshToUsage(active: ServiceWebRefreshJob, view: WebView, url: String): Boolean {
        val providerId = active.job.providerId
        if (providerId != ProviderId.GEMINI) return false
        if (GeminiUsagePageRoutes.isUsageUrl(url)) return false
        val usageUrl = GeminiUsagePageRoutes.usageUrlFrom(url) ?: return false
        if (active.geminiUsageRedirectAttempts >= GEMINI_USAGE_REDIRECT_MAX_ATTEMPTS) return false
        val uri = runCatching { URI(url) }.getOrNull() ?: return false
        val host = uri.host.orEmpty().lowercase()
        val path = uri.path.orEmpty()
        val redirectKey = "$host:$path"
        val now = SystemClock.elapsedRealtime()
        if (redirectKey == active.lastGeminiRefreshRedirectKey &&
            now - active.lastGeminiRefreshRedirectAtMs < GEMINI_USAGE_REDIRECT_MIN_INTERVAL_MS
        ) {
            return false
        }
        active.lastGeminiRefreshRedirectKey = redirectKey
        active.lastGeminiRefreshRedirectAtMs = now
        active.geminiUsageRedirectAttempts += 1
        collectorInjectionKeys.removeAll { it.contains(":${ProviderId.GEMINI.storageId}:") }
        saveGeminiUsageUrl(usageUrl)
        Log.d(TAG, "redirectUsage provider=gemini from=${hostOf(url)}${pathOf(url)}")
        view.stopLoading()
        view.loadUrl(usageUrl)
        return true
    }

    private fun maybeCompleteWebSessionWarmUp(active: ServiceWebRefreshJob, view: WebView, url: String): Boolean {
        if (!isWebSessionWarmUpPage(active, url)) return false
        if (ProviderSessionRevivePolicy.reviveUrl(active.job.providerId) == null) {
            finishWebSessionWarmUp(active, view, url)
            return true
        }
        // 세션 재활성은 웹 앱이 토큰 갱신 XHR을 끝낼 시간이 필요하다. 사용량 엔드포인트
        // 호출을 보면 즉시 넘어가고(shouldInterceptRequest), 못 보면 이 지연으로 넘어간다.
        if (active.warmUpTransitionScheduled) return true
        active.warmUpTransitionScheduled = true
        val requestId = active.requestId
        val providerId = active.job.providerId
        Log.d(
            TAG,
            "sessionReviveSettle provider=${providerId.storageId} " +
                "from=${hostOf(url)}${pathOf(url)} delayMs=$SESSION_REVIVE_SETTLE_MILLIS"
        )
        mainHandler.postDelayed({
            val current = currentWebJobFor(providerId) ?: return@postDelayed
            if (current.requestId != requestId || !current.warmUpPending) return@postDelayed
            finishWebSessionWarmUp(current, view, url)
        }, SESSION_REVIVE_SETTLE_MILLIS)
        return true
    }

    private fun maybeCompleteSessionReviveFromResource(providerId: ProviderId, view: WebView, url: String) {
        val active = currentWebJobFor(providerId) ?: return
        if (!active.warmUpPending) return
        if (ProviderSessionRevivePolicy.reviveUrl(providerId) == null) return
        if (!ProviderWebCollectorScripts.shouldRunCollectorOnResource(providerId, url)) return
        val requestId = active.requestId
        mainHandler.post {
            val current = currentWebJobFor(providerId) ?: return@post
            if (current.requestId != requestId || !current.warmUpPending) return@post
            Log.i(
                TAG,
                "sessionReviveReady provider=${providerId.storageId} from=${hostOf(url)}${pathOf(url)}"
            )
            finishWebSessionWarmUp(current, view, current.warmUpUrl.orEmpty())
        }
    }

    private fun finishWebSessionWarmUp(active: ServiceWebRefreshJob, view: WebView, url: String) {
        active.warmUpPending = false
        collectorInjectionKeys.removeAll { it.contains(":${active.job.providerId.storageId}:") }
        CookieManager.getInstance().flush()
        val nextUrl = active.job.startUrl
        Log.d(
            TAG,
            "warmUpComplete provider=${active.job.providerId.storageId} from=${hostOf(url)}${pathOf(url)} " +
                "to=${hostOf(nextUrl)}${pathOf(nextUrl)}"
        )
        view.stopLoading()
        view.loadUrl(nextUrl)
    }

    private fun isWebSessionWarmUpPage(active: ServiceWebRefreshJob, url: String): Boolean {
        if (!active.warmUpPending) return false
        val warmUpUrl = active.warmUpUrl ?: return false
        return hostOf(url) == hostOf(warmUpUrl)
    }

    private fun maybeScheduleGeminiTerminalCheck(active: ServiceWebRefreshJob, view: WebView, url: String) {
        if (active.job.providerId != ProviderId.GEMINI) return
        if (active.geminiTerminalCheckScheduled) return
        val uri = runCatching { URI(url) }.getOrNull() ?: return
        val host = uri.host.orEmpty().lowercase()
        if (host != "gemini.google.com" ||
            (!GeminiUsagePageRoutes.isLoginLandingUrl(url) && !GeminiUsagePageRoutes.isUsageUrl(url))
        ) {
            return
        }
        active.geminiTerminalCheckScheduled = true
        val requestId = active.requestId
        Log.d(TAG, "terminalCheckScheduled provider=gemini url=${hostOf(url)}${pathOf(url)}")
        mainHandler.postDelayed(
            {
                val current = currentWebJobFor(ProviderId.GEMINI) ?: return@postDelayed
                if (current.requestId != requestId) return@postDelayed
                val pageUrl = view.url ?: url
                view.evaluateJavascript(PAGE_CAPTURE_SCRIPT) { encoded ->
                    if (currentWebJobFor(ProviderId.GEMINI)?.requestId != requestId) return@evaluateJavascript
                    val pageText = decodeJsString(encoded)
                if (ProviderWebCollectorScripts.isRefreshLoginPage(ProviderId.GEMINI, pageUrl, pageText)) {
                    val failure = ProviderRefreshFailure.interactiveAuthRequired(LOGIN_PAGE_REACHED_MESSAGE)
                        Log.d(TAG, "terminalCheck provider=gemini kind=${failure.kind} url=${hostOf(pageUrl)}${pathOf(pageUrl)} page=${pageSignal(pageText)}")
                        completeWebJob(requestId, ServiceRefreshOutcome.Failure(failure))
                    }
                }
                mainHandler.postDelayed(
                    {
                        if (currentWebJobFor(ProviderId.GEMINI)?.requestId != requestId) return@postDelayed
                        Log.d(TAG, "terminalCheckFallback provider=gemini url=${hostOf(pageUrl)}${pathOf(pageUrl)}")
                        completeWebJob(
                            requestId,
                            ServiceRefreshOutcome.Failure(
                                ProviderRefreshFailure(
                                    ProviderRefreshFailureKind.NO_TRUSTED_PAYLOAD,
                                    "Gemini usage payload was not available."
                                )
                            )
                        )
                    },
                    GEMINI_TERMINAL_CHECK_FALLBACK_DELAY_MS
                )
            },
            GEMINI_TERMINAL_CHECK_DELAY_MS
        )
    }

    private fun maybeClickGeminiRefreshSignIn(
        active: ServiceWebRefreshJob,
        view: WebView,
        url: String,
        pageText: String
    ): Boolean {
        if (active.job.providerId != ProviderId.GEMINI) return false
        if (active.geminiSignInClickAttempts >= GEMINI_SIGN_IN_CLICK_MAX_ATTEMPTS) return false
        if (!ProviderWebCollectorScripts.isRefreshLoginPage(ProviderId.GEMINI, url, pageText)) return false
        active.geminiSignInClickAttempts += 1
        collectorInjectionKeys.removeAll { it.contains(":${ProviderId.GEMINI.storageId}:") }
        Log.d(TAG, "clickSignIn provider=gemini from=${hostOf(url)}${pathOf(url)}")
        view.evaluateJavascript(
            """
            (function(){
              var labels = ["로그인", "sign in", "log in"];
              var elements = Array.prototype.slice.call(document.querySelectorAll("a[href], button, [role='button']"));
              for (var i = 0; i < elements.length; i += 1) {
                var text = String(elements[i].innerText || elements[i].textContent || elements[i].getAttribute("aria-label") || "").trim().toLowerCase();
                var href = String(elements[i].href || "");
                for (var j = 0; j < labels.length; j += 1) {
                  if (text.indexOf(labels[j]) >= 0 || href.indexOf("accounts.google.com/ServiceLogin") >= 0) {
                    if (href.indexOf("accounts.google.com/ServiceLogin") >= 0) {
                      location.href = href;
                    } else {
                      elements[i].click();
                    }
                    return true;
                  }
                }
              }
              return false;
            })();
            """.trimIndent(),
            null
        )
        return true
    }

    private fun shouldWaitForGeminiRefreshSignInRedirect(active: ServiceWebRefreshJob, url: String): Boolean {
        if (active.job.providerId != ProviderId.GEMINI) return false
        if (active.geminiSignInClickAttempts <= 0) return false
        val uri = runCatching { URI(url) }.getOrNull() ?: return false
        val host = uri.host.orEmpty().lowercase()
        return host == "accounts.google.com" || host.startsWith("accounts.google.")
    }

    private fun isGeminiRefreshInteractiveSignInPage(active: ServiceWebRefreshJob, url: String): Boolean {
        if (active.job.providerId != ProviderId.GEMINI) return false
        if (active.geminiSignInClickAttempts <= 0) return false
        val uri = runCatching { URI(url) }.getOrNull() ?: return false
        val host = uri.host.orEmpty().lowercase()
        if (host != "accounts.google.com" && !host.startsWith("accounts.google.")) return false
        val path = uri.path.orEmpty().lowercase()
        return path.contains("/signin/identifier")
    }

    private inner class ServiceCollectorWebViewClient(
        private val ownerProviderId: ProviderId
    ) : WebViewClient() {
        override fun onPageStarted(view: WebView, url: String, favicon: android.graphics.Bitmap?) {
            val active = currentWebJobFor(ownerProviderId) ?: return
            val effectiveUrl = effectiveCollectorPageUrl(ownerProviderId, active.requestId, url)
            recordWebJobUrl(active.requestId, effectiveUrl)
            if (isWebSessionWarmUpPage(active, effectiveUrl)) return
            if (maybeRedirectGeminiRefreshToUsage(active, view, effectiveUrl)) return
            if (isGeminiRefreshInteractiveSignInPage(active, effectiveUrl)) {
                Log.d(TAG, "interactiveSignInRequired provider=gemini at=${hostOf(effectiveUrl)}${pathOf(effectiveUrl)}")
                completeWebJob(active.requestId, ServiceRefreshOutcome.Failure(ProviderRefreshFailure.interactiveAuthRequired(LOGIN_PAGE_REACHED_MESSAGE)))
                return
            }
            if (ProviderWebCollectorScripts.isRefreshLoginPage(ownerProviderId, effectiveUrl)) {
                if (shouldWaitForGeminiRefreshSignInRedirect(active, effectiveUrl)) return
                completeWebJob(active.requestId, ServiceRefreshOutcome.Failure(ProviderRefreshFailure.interactiveAuthRequired(LOGIN_PAGE_REACHED_MESSAGE)))
                return
            }
            injectCollectorIfReady(ownerProviderId, view, effectiveUrl, "")
        }

        override fun shouldOverrideUrlLoading(view: WebView, request: WebResourceRequest): Boolean {
            val active = currentWebJobFor(ownerProviderId) ?: return true
            val url = request.url.toString()
            if (shouldWaitForGeminiRefreshSignInRedirect(active, url)) {
                Log.d(TAG, "allowSignInRedirect provider=gemini to=${hostOf(url)}${pathOf(url)}")
                return false
            }
            return !ProviderDefinitionRegistry.isCollectorNavigationAllowed(active.job.providerId, url)
        }

        override fun shouldInterceptRequest(view: WebView, request: WebResourceRequest): WebResourceResponse? {
            val url = request.url.toString()
            captureCodexAccountId(ownerProviderId, url)
            captureCodexNativeFetchHeaders(ownerProviderId, url, request.requestHeaders.orEmpty())
            captureClaudeNativeFetchHeaders(ownerProviderId, url, request.requestHeaders.orEmpty())
            maybeStartCodexAboutBlankCollection(ownerProviderId, view, url)
            maybeStartClaudeAboutBlankCollection(ownerProviderId, view, url)
            maybeCompleteSessionReviveFromResource(ownerProviderId, view, url)
            return null
        }

        override fun onLoadResource(view: WebView, url: String) {
            val active = currentWebJobFor(ownerProviderId) ?: return
            val pageUrl = effectiveCollectorPageUrl(ownerProviderId, active.requestId, view.url ?: url)
            recordWebJobUrl(active.requestId, pageUrl)
            if (isWebSessionWarmUpPage(active, pageUrl)) return
            if (!ProviderWebCollectorScripts.shouldRunCollectorFromResource(ownerProviderId, pageUrl, url)) return
            val requestId = active.requestId
            view.evaluateJavascript(PAGE_CAPTURE_SCRIPT) { encoded ->
                if (currentWebJobFor(ownerProviderId)?.requestId != requestId) return@evaluateJavascript
                val pageText = decodeJsString(encoded)
                if (ProviderWebCollectorScripts.isRefreshLoginPage(ownerProviderId, pageUrl, pageText)) {
                    Log.d(
                        TAG,
                        "loginPage provider=${ownerProviderId.storageId} phase=resource url=${hostOf(pageUrl)}${pathOf(pageUrl)} page=${pageSignal(pageText)}"
                    )
                    if (maybeClickGeminiRefreshSignIn(active, view, pageUrl, pageText)) return@evaluateJavascript
                    if (shouldWaitForGeminiRefreshSignInRedirect(active, pageUrl)) return@evaluateJavascript
                    completeWebJob(requestId, ServiceRefreshOutcome.Failure(ProviderRefreshFailure.interactiveAuthRequired(LOGIN_PAGE_REACHED_MESSAGE)))
                    return@evaluateJavascript
                }
                if (ownerProviderId == ProviderId.CODEX && pageUrl != "about:blank") return@evaluateJavascript
                if (ownerProviderId == ProviderId.CLAUDE && pageUrl != "about:blank") return@evaluateJavascript
                injectCollectorIfReady(ownerProviderId, view, pageUrl, pageText)
            }
        }

        override fun onPageFinished(view: WebView, url: String) {
            val active = currentWebJobFor(ownerProviderId) ?: return
            val requestId = active.requestId
            val effectiveUrl = effectiveCollectorPageUrl(ownerProviderId, requestId, url)
            recordWebJobUrl(requestId, effectiveUrl)
            Log.d(TAG, "pageFinished provider=${ownerProviderId.storageId} url=${hostOf(url)}${pathOf(url)}")
            if (maybeCompleteWebSessionWarmUp(active, view, effectiveUrl)) return
            if (maybeRedirectGeminiRefreshToUsage(active, view, effectiveUrl)) return
            if (isGeminiRefreshInteractiveSignInPage(active, effectiveUrl)) {
                Log.d(TAG, "interactiveSignInRequired provider=gemini at=${hostOf(effectiveUrl)}${pathOf(effectiveUrl)}")
                completeWebJob(requestId, ServiceRefreshOutcome.Failure(ProviderRefreshFailure.interactiveAuthRequired(LOGIN_PAGE_REACHED_MESSAGE)))
                return
            }
            if (ProviderWebCollectorScripts.isRefreshLoginPage(ownerProviderId, effectiveUrl)) {
                if (shouldWaitForGeminiRefreshSignInRedirect(active, effectiveUrl)) return
                completeWebJob(requestId, ServiceRefreshOutcome.Failure(ProviderRefreshFailure.interactiveAuthRequired(LOGIN_PAGE_REACHED_MESSAGE)))
                return
            }
            if (ownerProviderId == ProviderId.CLAUDE && effectiveUrl == "about:blank") {
                injectCollectorIfReady(ownerProviderId, view, effectiveUrl, "")
                return
            }
            view.evaluateJavascript(PAGE_CAPTURE_SCRIPT) { encoded ->
                if (currentWebJobFor(ownerProviderId)?.requestId != requestId) return@evaluateJavascript
                val pageText = decodeJsString(encoded)
                if (ProviderWebCollectorScripts.isRefreshLoginPage(ownerProviderId, effectiveUrl, pageText)) {
                    Log.d(
                        TAG,
                        "loginPage provider=${ownerProviderId.storageId} phase=finished url=${hostOf(effectiveUrl)}${pathOf(effectiveUrl)} page=${pageSignal(pageText)}"
                    )
                    if (maybeClickGeminiRefreshSignIn(active, view, effectiveUrl, pageText)) return@evaluateJavascript
                    if (shouldWaitForGeminiRefreshSignInRedirect(active, effectiveUrl)) return@evaluateJavascript
                    completeWebJob(requestId, ServiceRefreshOutcome.Failure(ProviderRefreshFailure.interactiveAuthRequired(LOGIN_PAGE_REACHED_MESSAGE)))
                    return@evaluateJavascript
                }
                if (ownerProviderId == ProviderId.CODEX && effectiveUrl != "about:blank") return@evaluateJavascript
                if (ownerProviderId == ProviderId.CLAUDE && effectiveUrl != "about:blank") return@evaluateJavascript
                injectCollectorIfReady(ownerProviderId, view, effectiveUrl, pageText)
                maybeScheduleGeminiTerminalCheck(active, view, effectiveUrl)
            }
        }

        override fun onReceivedError(view: WebView, request: WebResourceRequest, error: WebResourceError) {
            if (!request.isForMainFrame) return
            val active = currentWebJobFor(ownerProviderId) ?: return
            completeWebJob(
                active.requestId,
                ServiceRefreshOutcome.Failure(
                    ProviderRefreshFailure(
                        ProviderRefreshFailureKind.TRANSIENT_PAGE_LOAD,
                        "Background refresh page failed to load."
                    )
                )
            )
        }

        override fun onReceivedHttpError(view: WebView, request: WebResourceRequest, errorResponse: WebResourceResponse) {
            if (!request.isForMainFrame || errorResponse.statusCode < 400) return
            Log.d(
                TAG,
                "httpError provider=${ownerProviderId.storageId} status=${errorResponse.statusCode} url=${hostOf(request.url.toString())}${pathOf(request.url.toString())}"
            )
            if (ProviderRefreshHttpErrorPolicy.shouldIgnoreMainFrameHttpError(
                    ownerProviderId,
                    request.url.toString(),
                    errorResponse.statusCode
                )
            ) {
                return
            }
            val active = currentWebJobFor(ownerProviderId) ?: return
            val failure = ProviderRefreshHttpErrorPolicy.failureForMainFrameHttpError(
                ownerProviderId,
                request.url.toString(),
                errorResponse.statusCode
            )
            completeWebJob(
                active.requestId,
                ServiceRefreshOutcome.Failure(failure)
            )
        }
    }

    private inner class ServiceUsageBridge(
        private val ownerProviderId: ProviderId,
        private val collectorUserAgent: String
    ) {
        @JavascriptInterface
        fun postUsagePayload(rawPayload: String) {
            mainHandler.post {
                val active = currentWebJobFor(ownerProviderId) ?: return@post
                val pageUrl = retainedWebViews[ownerProviderId]?.url.orEmpty().ifBlank { active.job.startUrl }
                if (!ProviderWebCollectorScripts.shouldAcceptCollectorPayload(ownerProviderId, pageUrl, rawPayload)) {
                    Log.d(
                        TAG,
                        "dropPayload provider=${ownerProviderId.storageId} reason=untrusted_bridge_page " +
                            "url=${hostOf(pageUrl)}${pathOf(pageUrl)} summary=${payloadSignal(rawPayload)}"
                    )
                    return@post
                }
                Log.d(
                    TAG,
                    "payload provider=${ownerProviderId.storageId} url=${hostOf(pageUrl)}${pathOf(pageUrl)} " +
                        "summary=${payloadSignal(rawPayload)}"
                )
                CookieManager.getInstance().flush()
                ProviderSessionReviveStore.clear(ownerProviderId)
                completeWebJob(active.requestId, ServiceRefreshOutcome.Payload(rawPayload))
            }
        }
        @JavascriptInterface
        fun postClaudeSubscriptionDetailsPlanStructure(rawRecord: String) {
            if (!BuildConfig.DEBUG || ownerProviderId != ProviderId.CLAUDE) return
            mainHandler.post {
                if (!BuildConfig.DEBUG || currentWebJobFor(ProviderId.CLAUDE) == null) return@post
                val safeRecord = safeClaudeSubscriptionDetailsPlanStructureRecord(rawRecord) ?: return@post
                Log.d(PLAN_PROVENANCE_DIAGNOSTICS_TAG, safeRecord)
            }
        }


        @JavascriptInterface
        fun postCollectorError(rawError: String) {
            mainHandler.post {
                val active = currentWebJobFor(ownerProviderId) ?: return@post
                val pageUrl = retainedWebViews[ownerProviderId]?.url.orEmpty().ifBlank { active.job.startUrl }
                if (!ProviderWebCollectorScripts.shouldAcceptCollectorError(ownerProviderId, pageUrl, rawError)) {
                    Log.d(TAG, "dropCollectorError provider=${ownerProviderId.storageId} reason=untrusted_bridge_page")
                    return@post
                }
                val errorKind = ProviderCollectorErrorPolicy.errorKind(rawError)
                val retryCount = active.collectorRetryCounts[errorKind] ?: 0
                Log.d(
                    TAG,
                    "collectorError provider=${ownerProviderId.storageId} errorKind=$errorKind retry=$retryCount " +
                        "url=${hostOf(pageUrl)}${pathOf(pageUrl)} summary=${payloadSignal(rawError)}"
                )
                if (CodexCollectorRetryPolicy.shouldRetry(ownerProviderId, errorKind, retryCount)) {
                    active.collectorRetryCounts[errorKind] = retryCount + 1
                    collectorInjectionKeys.removeAll {
                        it.startsWith("${active.requestId}:${ownerProviderId.storageId}:")
                    }
                    Log.d(
                        TAG,
                        "retryCollector provider=${ownerProviderId.storageId} errorKind=$errorKind retry=${retryCount + 1}"
                    )
                    retainedWebViews[ownerProviderId]?.let { webView ->
                        runCatching { webView.stopLoading() }
                        if (webView.url.isNullOrBlank()) {
                            webView.loadUrl(active.job.startUrl)
                        } else {
                            webView.reload()
                        }
                    }
                    return@post
                }
                if (ProviderSessionReviveStore.arm(ownerProviderId, errorKind)) {
                    Log.i(
                        TAG,
                        "sessionReviveArmed provider=${ownerProviderId.storageId} errorKind=$errorKind"
                    )
                }
                val failure = ProviderCollectorErrorPolicy.failureFor(ownerProviderId, rawError)
                completeWebJob(active.requestId, ServiceRefreshOutcome.Failure(failure))
            }
        }

        @JavascriptInterface
        fun fetchCursorJson(url: String, body: String?): String {
            if (ownerProviderId != ProviderId.CURSOR) {
                return JSONObject().put("ok", false).put("error", "provider_mismatch").toString()
            }
            if (!isNativeFetchBridgePageAllowed(ownerProviderId)) {
                return JSONObject().put("ok", false).put("error", "blocked_bridge_page").toString()
            }
            return CursorNativeUsageFetcher.fetchJson(url, body)
        }

        @JavascriptInterface
        fun fetchCopilotJson(url: String): String {
            if (ownerProviderId != ProviderId.COPILOT) {
                return JSONObject().put("ok", false).put("error", "provider_mismatch").toString()
            }
            if (!isNativeFetchBridgePageAllowed(ownerProviderId)) {
                return JSONObject().put("ok", false).put("error", "blocked_bridge_page").toString()
            }
            return CopilotNativeUsageFetcher.fetchJson(url)
        }

        @JavascriptInterface
        fun fetchCopilotJsonWithAuthorization(url: String, authorizationHeader: String): String {
            if (ownerProviderId != ProviderId.COPILOT) {
                return JSONObject().put("ok", false).put("error", "provider_mismatch").toString()
            }
            if (!isNativeFetchBridgePageAllowed(ownerProviderId)) {
                return JSONObject().put("ok", false).put("error", "blocked_bridge_page").toString()
            }
            return CopilotNativeUsageFetcher.fetchJsonWithAuthorization(url, authorizationHeader)
        }

        @JavascriptInterface
        fun fetchProviderJson(url: String): String {
            if (!ProviderAboutBlankCollectorPolicy.isEnabled(ownerProviderId)) {
                return JSONObject().put("ok", false).put("error", "provider_not_allowlisted").toString()
            }
            if (!isNativeFetchBridgePageAllowed(ownerProviderId)) {
                return JSONObject().put("ok", false).put("error", "blocked_bridge_page").toString()
            }
            val headers = when (ownerProviderId) {
                ProviderId.CODEX -> codexNativeFetchHeadersFor(url)
                ProviderId.CLAUDE -> claudeNativeFetchHeadersFor(url)
                else -> emptyMap()
            }
            return ProviderNativeJsonBridge.fetchJson(ownerProviderId, url, collectorUserAgent, headers)
        }

        @JavascriptInterface
        fun fetchProviderUsagePayload(): String {
            if (!ProviderAboutBlankCollectorPolicy.isEnabled(ownerProviderId)) {
                return JSONObject().put("ok", false).put("error", "provider_not_allowlisted").toString()
            }
            if (!isNativeFetchBridgePageAllowed(ownerProviderId)) {
                return JSONObject().put("ok", false).put("error", "blocked_bridge_page").toString()
            }
            return ProviderNativeUsagePayloadFetcher.bridgeUsagePayload(
                providerId = ownerProviderId,
                userAgent = collectorUserAgent,
                bridgePageUrl = nativeUsageBridgePageUrl(ownerProviderId),
                requestHeadersForUrl = { url ->
                    when (ownerProviderId) {
                        ProviderId.CODEX -> codexNativeFetchHeadersFor(url)
                        ProviderId.CLAUDE -> claudeNativeFetchHeadersFor(url)
                        else -> emptyMap()
                    }
                }
            )
        }

        @JavascriptInterface
        fun parseCodexFetchedPayload(rawText: String, plan: String?, accountId: String?, account: String?): String {
            if (ownerProviderId != ProviderId.CODEX) {
                return JSONObject().put("ok", false).put("error", "provider_mismatch").toString()
            }
            if (!isNativeFetchBridgePageAllowed(ProviderId.CODEX)) {
                return JSONObject().put("ok", false).put("error", "blocked_bridge_page").toString()
            }
            return ProviderNativeUsagePayloadFetcher.bridgeCodexFetchedPayload(rawText, plan, accountId, account)
        }

        private fun isNativeFetchBridgePageAllowed(providerId: ProviderId): Boolean {
            val active = currentWebJobFor(providerId) ?: return false
            val pageUrl = webJobLastUrls[active.requestId].orEmpty().ifBlank { active.job.startUrl }
            return ProviderWebCollectorScripts.shouldAcceptCollectorPayload(providerId, pageUrl)
        }

        private fun nativeUsageBridgePageUrl(providerId: ProviderId): String? {
            if (providerId == ProviderId.GEMINI) {
                return ProviderScopedStateRepository(applicationContext).readGeminiUsageUrl()
            }
            if (providerId == ProviderId.OPENCODE) {
                return ProviderScopedStateRepository(applicationContext).readOpenCodeUsageUrl()
            }
            return null
        }

    }

    private class ServiceCollectorChromeClient : WebChromeClient()

    private fun maybeStartCodexAboutBlankCollection(providerId: ProviderId, view: WebView, resourceUrl: String) {
        if (providerId != ProviderId.CODEX) return
        val active = currentWebJobFor(providerId) ?: return
        if (webJobLastUrls[active.requestId] == "about:blank") return
        if (!shouldStartCodexNativeCollectionFromResource(resourceUrl)) return
        if (!hasCodexNativeFetchAuthContext(resourceUrl) && !hasCodexSessionCookies(resourceUrl)) return
        mainHandler.post {
            if (currentWebJobFor(providerId)?.requestId != active.requestId) return@post
            if (webJobLastUrls[active.requestId] == "about:blank") return@post
            collectorInjectionKeys.removeAll { it.startsWith("${active.requestId}:${providerId.storageId}:") }
            recordWebJobUrl(active.requestId, "about:blank")
            Log.d(TAG, "redirectUsage provider=codex to=about:blank from=${hostOf(resourceUrl)}${pathOf(resourceUrl)}")
            view.stopLoading()
            view.loadUrl("about:blank")
        }
    }

    private fun maybeStartClaudeAboutBlankCollection(providerId: ProviderId, view: WebView, resourceUrl: String) {
        if (providerId != ProviderId.CLAUDE) return
        val active = currentWebJobFor(providerId) ?: return
        if (webJobLastUrls[active.requestId] == "about:blank") return
        if (!ProviderLoginStrategy.shouldStartClaudeNativeCollectionFromResource(resourceUrl)) return
        if (!hasClaudeNativeFetchHeaders(resourceUrl)) return
        mainHandler.post {
            if (currentWebJobFor(providerId)?.requestId != active.requestId) return@post
            if (webJobLastUrls[active.requestId] == "about:blank") return@post
            collectorInjectionKeys.removeAll { it.startsWith("${active.requestId}:${providerId.storageId}:") }
            recordWebJobUrl(active.requestId, "about:blank")
            Log.d(TAG, "redirectUsage provider=claude to=about:blank from=${hostOf(resourceUrl)}${pathOf(resourceUrl)}")
            view.stopLoading()
            loadClaudeAboutBlankBridgeDocument(view)
        }
    }

    private fun effectiveCollectorPageUrl(providerId: ProviderId, requestId: Long, url: String): String {
        if (providerId == ProviderId.CLAUDE &&
            webJobLastUrls[requestId] == "about:blank" &&
            isClaudeAboutBlankBridgeDocument(url)
        ) {
            return "about:blank"
        }
        return url
    }

    private fun isClaudeAboutBlankBridgeDocument(url: String): Boolean {
        return url == "about:blank" || url == CLAUDE_ABOUT_BLANK_BASE_URL
    }

    private fun loadClaudeAboutBlankBridgeDocument(view: WebView) {
        view.loadDataWithBaseURL(
            CLAUDE_ABOUT_BLANK_BASE_URL,
            CLAUDE_ABOUT_BLANK_HTML,
            "text/html",
            "UTF-8",
            "about:blank"
        )
    }

    private fun shouldStartCodexNativeCollectionFromResource(url: String): Boolean {
        return ProviderNativeJsonBridge.isAllowedJsonUrl(ProviderId.CODEX, url)
    }

    private fun captureCodexNativeFetchHeaders(providerId: ProviderId, url: String, requestHeaders: Map<String, String>) {
        if (providerId != ProviderId.CODEX) return
        if (!ProviderNativeJsonBridge.isAllowedJsonUrl(ProviderId.CODEX, url)) return
        if (!CodexNativeHeaderStore.capture(
                codexNativeFetchHeaders,
                url,
                requestHeaders,
                CODEX_NATIVE_HEADER_FALLBACK_KEY
            )
        ) return
        val headerNames = CodexNativeHeaderStore.forwardableHeaders(requestHeaders)
            .keys
            .sorted()
            .joinToString("|")
        Log.d(TAG, "capturedNativeHeaders provider=codex path=${pathOf(url)} names=$headerNames")
        saveCodexNativeAuthContext()
    }

    private fun codexNativeFetchHeadersFor(url: String): Map<String, String> {
        return CodexNativeHeaderStore.headersFor(codexNativeFetchHeaders, url, CODEX_NATIVE_HEADER_FALLBACK_KEY)
    }

    private fun captureClaudeNativeFetchHeaders(providerId: ProviderId, url: String, requestHeaders: Map<String, String>) {
        if (providerId != ProviderId.CLAUDE) return
        if (!ProviderNativeJsonBridge.isAllowedJsonUrl(ProviderId.CLAUDE, url)) return
        if (!ClaudeNativeHeaderStore.capture(
                claudeNativeFetchHeaders,
                url,
                requestHeaders,
                CLAUDE_NATIVE_HEADER_WILDCARD_KEY
            )
        ) return
        val headerNames = CodexNativeHeaderStore.forwardableHeaders(requestHeaders)
            .keys
            .sorted()
            .joinToString("|")
        Log.d(TAG, "capturedNativeHeaders provider=claude route=allowlisted_json names=$headerNames")
        saveClaudeNativeRequestContext()
    }

    private fun claudeNativeFetchHeadersFor(url: String): Map<String, String> {
        return ClaudeNativeHeaderStore.headersFor(claudeNativeFetchHeaders, url, CLAUDE_NATIVE_HEADER_WILDCARD_KEY)
    }

    private fun replaySafeProviderRequestHeadersFor(providerId: ProviderId, url: String): Map<String, String> {
        return when (providerId) {
            ProviderId.CLAUDE -> ClaudeNativeHeaderStore.replaySafeHeaders(claudeNativeFetchHeadersFor(url))
            else -> emptyMap()
        }
    }

    private fun hasClaudeNativeFetchHeaders(url: String): Boolean {
        return claudeNativeFetchHeadersFor(url).any { (_, value) -> value.isNotBlank() }
    }

    private fun hasAnyClaudeNativeFetchHeaders(): Boolean {
        return claudeNativeFetchHeaders.values.any { headers ->
            headers.values.any { it.isNotBlank() }
        }
    }

    private fun clearClaudeNativeFetchHeaders(providerId: ProviderId) {
        if (providerId == ProviderId.CLAUDE) {
            claudeNativeFetchHeaders.clear()
        }
    }

    private fun saveClaudeNativeRequestContext() {
        val requestContext = ClaudeNativeHeaderStore.snapshotRequestContext(claudeNativeFetchHeaders)
        if (requestContext.isEmpty()) return
        ClaudeNativeRequestContextStore(applicationContext).save(requestContext)
    }

    private fun saveCodexNativeAuthContext() {
        val authContext = CodexNativeHeaderStore.snapshotAuthContext(codexNativeFetchHeaders)
        if (authContext.isEmpty()) return
        CodexNativeAuthContextStore(applicationContext).save(authContext)
    }

    private fun debugNativeAuthContextForSnapshot(providerId: ProviderId): Map<String, Map<String, String>> {
        if (providerId != ProviderId.CODEX) return emptyMap()
        return CodexNativeHeaderStore.snapshotAuthContext(codexNativeFetchHeaders)
    }

    private fun shouldExportBackgroundDebugSnapshot(providerId: ProviderId): Boolean {
        return providerId != ProviderId.GEMINI
    }

    private fun hasCodexNativeFetchAuthContext(url: String): Boolean {
        return codexNativeFetchHeadersFor(url).any { (name, value) ->
            value.isNotBlank() && (
                name.equals("Authorization", ignoreCase = true) ||
                    name.equals("ChatGPT-Account-ID", ignoreCase = true) ||
                    name.equals("OAI-Session-Id", ignoreCase = true)
                )
        }
    }

    private fun hasCodexSessionCookies(url: String): Boolean {
        val uri = runCatching { URI(url) }.getOrNull() ?: return false
        val origin = "${uri.scheme}://${uri.host}"
        return !CookieManager.getInstance().getCookie(url).isNullOrBlank() ||
            !CookieManager.getInstance().getCookie(origin).isNullOrBlank()
    }

    private fun captureCodexAccountId(providerId: ProviderId, url: String) {
        if (providerId != ProviderId.CODEX) return
        val accountId = runCatching {
            val uri = URI(url)
            if (uri.path != "/backend-api/subscriptions") return@runCatching null
            uri.query
                ?.split("&")
                ?.firstOrNull { it.startsWith("account_id=") }
                ?.substringAfter("=")
                ?.takeIf { it.isNotBlank() }
        }.getOrNull() ?: return
        observedCodexAccountId = accountId
    }

    private fun cookiesFor(url: String): Map<String, String> {
        return CookieManager.getInstance().getCookie(url)
            ?.split(";")
            ?.mapNotNull { cookie ->
                val parts = cookie.trim().split("=", limit = 2)
                if (parts.size == 2) parts[0] to parts[1] else null
            }
            ?.toMap()
            .orEmpty()
    }

    private fun collectorCookiesFor(providerId: ProviderId, url: String): Map<String, String> {
        val cookieUrl = if (providerId == ProviderId.CLAUDE && url == "about:blank") {
            CLAUDE_ABOUT_BLANK_BASE_URL
        } else {
            url
        }
        return cookiesFor(cookieUrl)
    }

    private fun safeClaudeSubscriptionDetailsPlanStructureRecord(rawRecord: String): String? {
        val record = runCatching { JSONObject(rawRecord) }.getOrNull() ?: return null
        if (!record.hasExactPropertyNames(CLAUDE_PLAN_STRUCTURE_ROOT_PROPERTIES)) return null
        if (record.opt("routeId") != CLAUDE_SUBSCRIPTION_DETAILS_ROUTE_ID) return null
        val rootJsonType = record.opt("rootJsonType") as? String ?: return null
        if (rootJsonType !in CLAUDE_PLAN_STRUCTURE_JSON_TYPES) return null
        val rootPresent = record.opt("rootPresent") as? Boolean ?: return null
        val rootKeyCount = nonNegativeInt(record.opt("rootKeyCount")) ?: return null
        val requestCountDelta = record.opt("requestCountDelta") as? Number ?: return null
        if (requestCountDelta.toDouble() != 0.0) return null
        val paths = record.opt("paths") as? JSONArray ?: return null
        if (paths.length() != CLAUDE_PLAN_STRUCTURE_PATH_IDS.size) return null

        val safePaths = JSONArray()
        CLAUDE_PLAN_STRUCTURE_PATH_IDS.forEachIndexed { index, expectedPathId ->
            val path = paths.optJSONObject(index) ?: return null
            if (!path.hasExactPropertyNames(CLAUDE_PLAN_STRUCTURE_PATH_PROPERTIES)) return null
            if (path.opt("pathId") != expectedPathId) return null
            val jsonType = path.opt("jsonType") as? String ?: return null
            val present = path.opt("present") as? Boolean ?: return null
            if (jsonType !in CLAUDE_PLAN_STRUCTURE_JSON_TYPES) return null
            if (present && jsonType == "missing" || !present && jsonType != "missing") return null
            safePaths.put(
                JSONObject()
                    .put("pathId", expectedPathId)
                    .put("jsonType", jsonType)
                    .put("present", present)
            )
        }
        return JSONObject()
            .put("routeId", CLAUDE_SUBSCRIPTION_DETAILS_ROUTE_ID)
            .put("rootJsonType", rootJsonType)
            .put("rootPresent", rootPresent)
            .put("rootKeyCount", rootKeyCount)
            .put("requestCountDelta", 0)
            .put("paths", safePaths)
            .toString()
    }

    private fun JSONObject.hasExactPropertyNames(expectedProperties: Set<String>): Boolean {
        val actualProperties = mutableSetOf<String>()
        val keys = keys()
        while (keys.hasNext()) {
            actualProperties += keys.next()
        }
        return actualProperties == expectedProperties
    }

    private fun nonNegativeInt(value: Any?): Int? {
        val number = value as? Number ?: return null
        val numberAsLong = number.toLong()
        if (number.toDouble() != numberAsLong.toDouble() || numberAsLong !in 0..Int.MAX_VALUE) return null
        return numberAsLong.toInt()
    }

    private fun hostOf(url: String): String {
        return runCatching { URI(url).host.orEmpty() }.getOrDefault("")
    }

    private fun pathOf(url: String): String {
        return runCatching { URI(url).path.orEmpty() }.getOrDefault("")
    }

    private fun routeKeyOf(url: String): String {
        return runCatching {
            val uri = URI(url)
            buildString {
                append(uri.path.orEmpty())
                uri.rawQuery?.takeIf { it.isNotBlank() }?.let { append("?").append(it) }
                uri.rawFragment?.takeIf { it.isNotBlank() }?.let { append("#").append(it) }
            }
        }.getOrDefault(pathOf(url))
    }

    private fun pageSignal(pageText: String): String {
        val text = pageText.lowercase()
        return listOf(
            "len=${pageText.length}",
            "signIn=${text.contains("sign in") || text.contains("log in") || text.contains("로그인")}",
            "usage=${text.contains("usage") || text.contains("사용량")}",
            "limit=${text.contains("limit") || text.contains("한도")}",
            "quota=${text.contains("quota")}",
            "error=${text.contains("error") || text.contains("오류")}"
        ).joinToString(",")
    }

    private fun payloadSignal(rawPayload: String): String {
        val json = runCatching { JSONObject(rawPayload) }.getOrNull()
            ?: return "invalid_json,len=${rawPayload.length}"
        val rootKeys = json.keys().asSequence()
            .filterNot(::isSensitiveLogKey)
            .take(12)
            .joinToString("|")
            .ifBlank { "empty" }
        val lineCount = json.optJSONArray("lines")?.length()
            ?: json.optJSONObject("usage")?.optJSONArray("limits")?.length()
            ?: json.optJSONArray("limits")?.length()
            ?: 0
        return listOf(
            "root=$rootKeys",
            "provider=${safeLogValue(json.optString("provider"))}",
            "collectorMode=${safeLogValue(json.optString("collectorMode"))}",
            "lineCount=$lineCount",
            "hasUsage=${json.has("usage")}",
            "hasData=${json.has("data")}",
            "hasError=${json.has("errorKind") || json.has("error")}"
        ).joinToString(",")
    }

    private fun isSensitiveLogKey(key: String): Boolean {
        return key.contains("token", ignoreCase = true) ||
            key.contains("cookie", ignoreCase = true) ||
            key.contains("authorization", ignoreCase = true) ||
            key.contains("secret", ignoreCase = true)
    }

    private fun safeLogValue(value: String?): String {
        return value.orEmpty()
            .replace(Regex("code=[^\\s&]+"), "code=redacted")
            .replace(Regex("token=[^\\s&]+"), "token=redacted")
            .replace(Regex("[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}"), "<email>")
            .take(180)
            .ifBlank { "none" }
    }

    private fun decodeJsString(value: String?): String {
        if (value.isNullOrBlank() || value == "null") return ""
        return runCatching { JSONObject("""{"value":$value}""").optString("value") }.getOrDefault("")
    }

    private data class ServiceWebRefreshJob(
        val requestId: Long,
        val job: ProviderRefreshJob,
        val warmUpUrl: String? = null,
        var warmUpPending: Boolean = false,
        var warmUpTransitionScheduled: Boolean = false,
        val collectorRetryCounts: MutableMap<String, Int> = mutableMapOf(),
        var lastGeminiRefreshRedirectKey: String? = null,
        var lastGeminiRefreshRedirectAtMs: Long = 0L,
        var geminiUsageRedirectAttempts: Int = 0,
        var geminiTerminalCheckScheduled: Boolean = false,
        var geminiSignInClickAttempts: Int = 0
    )

    private sealed class ServiceRefreshOutcome {
        data class Snapshot(val snapshot: ProviderUsageSnapshot) : ServiceRefreshOutcome()
        data class Payload(val rawPayload: String) : ServiceRefreshOutcome()
        data class Failure(val failure: ProviderRefreshFailure) : ServiceRefreshOutcome()
        data object Cancelled : ServiceRefreshOutcome()
    }

    companion object {
        const val ACTION_START = "com.aiquota.mobile.action.START_BACKGROUND_REFRESH"
        const val ACTION_STOP = "com.aiquota.mobile.action.STOP_BACKGROUND_REFRESH"
        const val ACTION_REFRESH = "com.aiquota.mobile.action.REFRESH"
        const val ACTION_PROVIDER_SESSION_RESET = "com.aiquota.mobile.action.PROVIDER_SESSION_RESET"
        const val EXTRA_PROVIDER_ID = "provider_id"
        fun createRefreshIntent(
            context: Context,
            providerId: ProviderId?,
            appWidgetId: Int = AppWidgetManager.INVALID_APPWIDGET_ID
        ): Intent {
            return Intent(context, ProviderBackgroundRefreshService::class.java)
                .setAction(ACTION_REFRESH)
                .putExtra(WidgetRefreshActions.EXTRA_APP_WIDGET_ID, appWidgetId)
                .apply {
                    providerId?.let { putExtra(WidgetRefreshActions.EXTRA_PROVIDER_ID, it.storageId) }
                }
        }

        fun createControlIntents(context: Context, action: String): List<Intent> {
            val defaultIntent = Intent(context, ProviderBackgroundRefreshService::class.java)
                .setAction(action)
            return listOf(defaultIntent)
        }

        fun createSessionResetIntent(context: Context, providerId: ProviderId): Intent {
            return Intent(ACTION_PROVIDER_SESSION_RESET)
                .setPackage(context.packageName)
                .putExtra(EXTRA_PROVIDER_ID, providerId.storageId)
        }
        private const val BRIDGE_NAME = "AIQuotaCollectorBridge"
        private const val INITIAL_AUTO_REFRESH_DELAY_MILLIS = 3_000L
        private const val WEB_SESSION_WARM_UP_TIMEOUT_MILLIS = 8_000L
        private const val SESSION_REVIVE_SETTLE_MILLIS = 4_000L
        private const val GEMINI_USAGE_REDIRECT_MIN_INTERVAL_MS = 1_500L
        private const val GEMINI_USAGE_REDIRECT_MAX_ATTEMPTS = 2
        private const val GEMINI_SIGN_IN_CLICK_MAX_ATTEMPTS = 1
        private const val GEMINI_TERMINAL_CHECK_DELAY_MS = 4_000L
        private const val GEMINI_TERMINAL_CHECK_FALLBACK_DELAY_MS = 24_000L
        private const val CODEX_NATIVE_HEADER_FALLBACK_KEY = "*"
        private const val CLAUDE_NATIVE_HEADER_WILDCARD_KEY = "claude:*"
        private const val CLAUDE_ABOUT_BLANK_BASE_URL = "https://claude.ai/"
        private const val CLAUDE_ABOUT_BLANK_HTML = "<!doctype html><html><head><meta charset=\"utf-8\"></head><body></body></html>"
        private const val LOGIN_PAGE_REACHED_MESSAGE = "Background refresh reached a provider login page."
        private const val TAG = "AIQuotaBgRefreshService"
        private const val PLAN_PROVENANCE_DIAGNOSTICS_TAG = "AIQuotaPlanProvenance"
        private const val CLAUDE_SUBSCRIPTION_DETAILS_ROUTE_ID = "claude_subscription_details"
        private val CLAUDE_PLAN_STRUCTURE_ROOT_PROPERTIES = setOf(
            "routeId",
            "rootJsonType",
            "rootPresent",
            "rootKeyCount",
            "requestCountDelta",
            "paths"
        )
        private val CLAUDE_PLAN_STRUCTURE_PATH_PROPERTIES = setOf("pathId", "jsonType", "present")
        private val CLAUDE_PLAN_STRUCTURE_JSON_TYPES = setOf(
            "missing",
            "null",
            "object",
            "array",
            "string",
            "number",
            "boolean"
        )
        private val CLAUDE_PLAN_STRUCTURE_CONTAINER_IDS = listOf(
            "subscription",
            "subscription_details",
            "subscriptionDetails",
            "billing",
            "plan_info",
            "planInfo"
        )
        private val CLAUDE_PLAN_STRUCTURE_FIELD_IDS = listOf(
            "plan",
            "plan_name",
            "planName",
            "plan_type",
            "planType",
            "subscription_plan",
            "subscriptionPlan",
            "tier",
            "membershipType",
            "product_name",
            "productName"
        )
        private val CLAUDE_PLAN_STRUCTURE_PATH_IDS = mutableListOf<String>().apply {
            add("root")
            CLAUDE_PLAN_STRUCTURE_FIELD_IDS.forEach { fieldId -> add("root.$fieldId") }
            CLAUDE_PLAN_STRUCTURE_CONTAINER_IDS.forEach { containerId ->
                add(containerId)
                CLAUDE_PLAN_STRUCTURE_FIELD_IDS.forEach { fieldId -> add("$containerId.$fieldId") }
            }
        }
        private const val PAGE_CAPTURE_SCRIPT =
            "(function(){return (document.documentElement.innerText||document.title||'').slice(0,12000);})()"
    }

    private fun initialAutoRefreshDelayMillis(): Long {
        return maxOf(
            INITIAL_AUTO_REFRESH_DELAY_MILLIS,
            AppUpdatedRefreshCooldown.remainingDelayMillis(applicationContext)
        )
    }

    private fun timeoutMillisForWebJob(job: ProviderRefreshJob): Long {
        val baseTimeout = ProviderRefreshPlan.timeoutMillisFor(job.providerId)
        return if (webSessionWarmUpUrl(job) == null) baseTimeout else baseTimeout + WEB_SESSION_WARM_UP_TIMEOUT_MILLIS
    }

    private fun webSessionWarmUpUrl(job: ProviderRefreshJob): String? {
        return when (job.providerId) {
            ProviderId.COPILOT -> "https://github.com/"
            // 세션 만료를 감지한 다음 한 주기만 provider 페이지를 먼저 로드해 쿠키를 갱신한다.
            else -> ProviderSessionReviveStore.consumeReviveUrl(job.providerId)?.also {
                Log.i(TAG, "sessionRevive provider=${job.providerId.storageId} warmUp=${hostOf(it)}${pathOf(it)}")
            }
        }?.takeUnless { it == job.startUrl }
    }
}
