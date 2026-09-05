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
import android.net.ConnectivityManager
import android.net.Network
import android.webkit.CookieManager
import android.webkit.JavascriptInterface
import android.webkit.WebChromeClient
import android.webkit.WebResourceError
import android.webkit.WebResourceRequest
import android.webkit.WebResourceResponse
import android.webkit.WebView
import android.webkit.WebViewClient
import androidx.core.app.ServiceCompat
import androidx.core.content.ContextCompat
import com.aiquota.mobile.BuildConfig
import com.aiquota.mobile.accounts.NamedProfileLease
import com.aiquota.mobile.accounts.ProviderAccountId
import com.aiquota.mobile.accounts.ProviderAccountIdStorageCodec
import com.aiquota.mobile.accounts.requireAndroidCookieManager
import com.aiquota.mobile.R
import com.aiquota.mobile.local.LocalUsageRepository
import com.aiquota.mobile.sync.NetworkAvailability
import com.aiquota.mobile.local.ProviderId
import com.aiquota.mobile.local.ProviderPreferencesRepository
import com.aiquota.mobile.local.ProviderUsageSnapshot
import com.aiquota.mobile.notification.UsageLimitNotificationController
import com.aiquota.mobile.update.AppUpdatedRefreshCooldown
import com.aiquota.mobile.widget.WidgetRefreshActions
import com.aiquota.mobile.widget.WidgetRefreshFeedback
import java.net.URI
import java.util.concurrent.ConcurrentHashMap
import kotlin.coroutines.resume
import kotlinx.coroutines.CancellableContinuation
import kotlinx.coroutines.CancellationException
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.Job
import kotlinx.coroutines.SupervisorJob
import kotlinx.coroutines.cancel
import java.time.Instant
import kotlinx.coroutines.launch
import kotlinx.coroutines.suspendCancellableCoroutine
import kotlinx.coroutines.withContext
import kotlinx.coroutines.withTimeoutOrNull
import org.json.JSONArray
import org.json.JSONObject

internal interface ExactServiceAttemptCoordinator {
    fun timeout(attempt: ProviderRefreshAttempt): ProviderRefreshAttempt?
    fun fail(attempt: ProviderRefreshAttempt, requeue: Boolean): ProviderRefreshAttempt?
}

internal data class ExactServiceCollectionDispatch<T>(
    val outcome: T,
    val timedOut: Boolean,
    val next: ProviderRefreshAttempt?,
)

internal sealed interface ProviderServiceIntentTarget {
    data object Unified : ProviderServiceIntentTarget
    data class LegacyProvider(val providerId: ProviderId) : ProviderServiceIntentTarget
    data class Exact(val accountId: ProviderAccountId) : ProviderServiceIntentTarget
    data object Rejected : ProviderServiceIntentTarget
}

internal fun resolveProviderServiceIntentTarget(
    rawProviderId: String?,
    rawAccountId: String?,
    multiAccountEnabled: Boolean,
): ProviderServiceIntentTarget {
    if (rawProviderId == null && rawAccountId == null) {
        return ProviderServiceIntentTarget.Unified
    }
    val providerId = ProviderId.fromStorageId(rawProviderId) ?: return ProviderServiceIntentTarget.Rejected
    if (!multiAccountEnabled) {
        return if (rawAccountId == null) {
            ProviderServiceIntentTarget.LegacyProvider(providerId)
        } else {
            ProviderServiceIntentTarget.Rejected
        }
    }
    if (rawAccountId == null) return ProviderServiceIntentTarget.Rejected
    return when (
        val resolution = ProviderRefreshIntentBoundary.resolve(
            providerId.storageId,
            rawAccountId,
            multiAccountEnabled = true,
        )
    ) {
        is ProviderRefreshIntentResolution.Exact ->
            ProviderServiceIntentTarget.Exact(resolution.accountId)
        is ProviderRefreshIntentResolution.Rejected -> ProviderServiceIntentTarget.Rejected
    }
}

class ProviderBackgroundRefreshService : Service() {
    private val mainHandler = Handler(Looper.getMainLooper())
    private val serviceScope = CoroutineScope(SupervisorJob() + Dispatchers.Main.immediate)
    private val retainedWebViews = mutableMapOf<ProviderId, WebView>()
    private val collectorInjectionKeys = mutableSetOf<String>()

    private lateinit var repository: LocalUsageRepository
    private var running = false
    private var refreshInProgress = false
    private var refreshCycleJob: Job? = null
    private var tickScheduled = false
    private var nextRequestId = 0L
    private var activeWebJob: ServiceWebRefreshJob? = null
    private var activeWebContinuation: CancellableContinuation<ServiceRefreshOutcome>? = null
    private val webJobLastUrls = mutableMapOf<Long, String>()
    private val codexNativeFetchHeaders = ConcurrentHashMap<String, Map<String, String>>()
    private val claudeNativeFetchHeaders = ConcurrentHashMap<String, Map<String, String>>()
    private var pendingManualProviderId: ProviderId? = null
    private val pendingExactManualRefreshes = ExactManualRefreshQueue()
    private var exactRefreshCoordinator: AndroidProviderAccountRefreshCoordinator? = null
    private var pendingManualWidgetId: Int = AppWidgetManager.INVALID_APPWIDGET_ID
    private var sessionResetReceiverRegistered = false
    private var networkCallback: ConnectivityManager.NetworkCallback? = null
    private val sessionResetReceiver = object : BroadcastReceiver() {
        override fun onReceive(context: Context?, intent: Intent?) {
            if (intent?.action != ACTION_PROVIDER_SESSION_RESET) return
            when (
                val target = resolveProviderServiceIntentTarget(
                    rawProviderId = intent.getStringExtra(EXTRA_PROVIDER_ID),
                    rawAccountId = intent.getStringExtra(EXTRA_PROVIDER_ACCOUNT_ID),
                    multiAccountEnabled = BuildConfig.MULTI_ACCOUNT_ENABLED,
                )
            ) {
                ProviderServiceIntentTarget.Unified,
                ProviderServiceIntentTarget.Rejected -> Unit
                is ProviderServiceIntentTarget.LegacyProvider -> handleProviderSessionReset(target.providerId)
                is ProviderServiceIntentTarget.Exact -> handleExactAccountSessionReset(target.accountId)
            }
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
        refreshCycleJob = serviceScope.launch {
            val startedAt = System.currentTimeMillis()
            try {
                runRefreshCycleResiliently(
                    runCycle = ::runRefreshCycle,
                    isRunning = { running },
                    hasPendingManualRefresh = ::hasPendingManualRefresh,
                    automaticDelayMillis = {
                        ProviderRefreshPlan.nextAutoRefreshDelayMillis(
                            System.currentTimeMillis() - startedAt,
                        )
                    },
                    schedule = ::scheduleNextTick,
                    onFailure = { error ->
                        refreshStateRepository.recordFailure("UNEXPECTED:${error::class.java.simpleName}")
                        Log.e(TAG, "refreshCycleFailed=${error::class.java.simpleName}", error)
                    },
                )
            } finally {
                refreshCycleJob = null
            }
        }
    }

    override fun onCreate() {
        super.onCreate()
        repository = LocalUsageRepository(applicationContext)
        refreshStateRepository = ProviderBackgroundRefreshStateRepository(applicationContext)
        CookieManager.getInstance().setAcceptCookie(true)
        registerSessionResetReceiver()
        registerNetworkCallback()
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
        unregisterNetworkCallback()
        unregisterSessionResetReceiver()
        stopRefreshLoop()
        val activeCycle = refreshCycleJob
        serviceScope.launch {
            closeAfterRefreshCycle(activeCycle) {
                exactRefreshCoordinator?.close()
                exactRefreshCoordinator = null
            }
            serviceScope.cancel()
        }
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
        val rawProviderId = intent?.getStringExtra(WidgetRefreshActions.EXTRA_PROVIDER_ID)
        val rawAccountId = intent?.getStringExtra(EXTRA_PROVIDER_ACCOUNT_ID)
        pendingManualWidgetId = intent?.getIntExtra(
            WidgetRefreshActions.EXTRA_APP_WIDGET_ID,
            AppWidgetManager.INVALID_APPWIDGET_ID
        ) ?: AppWidgetManager.INVALID_APPWIDGET_ID
        when (
            val target = resolveProviderServiceIntentTarget(
                rawProviderId = rawProviderId,
                rawAccountId = rawAccountId,
                multiAccountEnabled = BuildConfig.MULTI_ACCOUNT_ENABLED,
            )
        ) {
            ProviderServiceIntentTarget.Unified -> {
                pendingManualProviderId = null
                pendingExactManualRefreshes.clear()
            }
            is ProviderServiceIntentTarget.LegacyProvider -> {
                pendingManualProviderId = target.providerId
                pendingExactManualRefreshes.clear()
            }
            is ProviderServiceIntentTarget.Exact -> {
                pendingManualProviderId = null
                pendingExactManualRefreshes.enqueue(target.accountId, pendingManualWidgetId)
                pendingManualWidgetId = AppWidgetManager.INVALID_APPWIDGET_ID
            }
            ProviderServiceIntentTarget.Rejected -> {
                pendingManualProviderId = null
                WidgetRefreshFeedback.clearWidgetRefresh(applicationContext, pendingManualWidgetId)
                pendingManualWidgetId = AppWidgetManager.INVALID_APPWIDGET_ID
                return
            }
        }
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
        exactRefreshCoordinator?.reset()
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
        ContextCompat.registerReceiver(
            this,
            sessionResetReceiver,
            filter,
            ContextCompat.RECEIVER_NOT_EXPORTED,
        )
        sessionResetReceiverRegistered = true
    }

    private fun unregisterSessionResetReceiver() {
        if (!sessionResetReceiverRegistered) return
        runCatching { unregisterReceiver(sessionResetReceiver) }
        sessionResetReceiverRegistered = false
    }

    private fun handleExactAccountSessionReset(accountId: ProviderAccountId) {
        Log.d(TAG, "sessionReset provider=${accountId.providerId.storageId} exact=true")
        activeWebJob
            ?.takeIf { it.job.accountId == accountId }
            ?.let { completeWebJob(it.requestId, ServiceRefreshOutcome.Cancelled) }
        serviceScope.launch {
            exactRefreshCoordinator?.cancelExact(accountId)
        }
    }

    private fun handleProviderSessionReset(providerId: ProviderId) {
        Log.d(TAG, "sessionReset provider=${providerId.storageId}")
        // 연결 해제·재로그인 뒤에는 캐시해 둔 세션 토큰이 남의 것이 된다.
        ProviderCollectionCaches.invalidate(providerId)
        repository.removeProviderSnapshot(providerId)
        collectorInjectionKeys.removeAll { it.contains(":${providerId.storageId}:") }
        val active = activeWebJob?.takeIf { it.job.providerId == providerId }
        destroyProviderWebView(providerId)
        active?.let { completeWebJob(it.requestId, ServiceRefreshOutcome.Cancelled) }
        UsageSurfaceRefresher.refresh(applicationContext, repository)
    }

    @SuppressLint("ForegroundServiceType")
    private fun startForegroundNotification(): Boolean {
        return runCatching {
            val serviceType = if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.Q) {
                ServiceInfo.FOREGROUND_SERVICE_TYPE_SPECIAL_USE
            } else {
                0
            }
            ServiceCompat.startForeground(
                this,
                UsageLimitNotificationController.NOTIFICATION_ID,
                UsageLimitNotificationController.foregroundNotification(this),
                serviceType,
            )
        }.onFailure { error ->
            Log.e(TAG, "failedToStartForeground=${error::class.java.simpleName}")
        }.isSuccess
    }

    /**
     * 네트워크가 돌아오면 다음 60초 틱을 기다리지 않고 바로 한 주기를 돌린다. 판단 기준은
     * 가장 최근 스냅샷 갱신 시각이다 — 하트비트는 건너뛴 주기에도 기록돼 기준이 되지 못한다.
     * 별도 플래그가 없어 프로세스가 재시작돼도 그대로 동작하고, Wi-Fi ↔ 셀룰러 전환처럼
     * 콜백이 연달아 와도 시각 조건이 중복 실행을 막는다.
     */
    private fun registerNetworkCallback() {
        if (networkCallback != null) return
        val manager = getSystemService(ConnectivityManager::class.java) ?: return
        val callback = object : ConnectivityManager.NetworkCallback() {
            override fun onAvailable(network: Network) {
                mainHandler.post { onNetworkRestored() }
            }
        }
        val registered = runCatching { manager.registerDefaultNetworkCallback(callback) }.isSuccess
        if (registered) networkCallback = callback
    }

    private fun unregisterNetworkCallback() {
        val callback = networkCallback ?: return
        networkCallback = null
        val manager = getSystemService(ConnectivityManager::class.java) ?: return
        runCatching { manager.unregisterNetworkCallback(callback) }
    }

    private fun onNetworkRestored() {
        if (!running || refreshInProgress) return
        // 하트비트는 건너뛴 주기에도 남기므로 판단 기준이 될 수 없다. 스냅샷 갱신 시각을 본다.
        // 오프라인으로 건너뛰는 동안에는 어떤 provider도 갱신되지 않으므로 이 값이 그대로 멈춘다.
        val snapshotAgeMillis = latestSnapshotAgeMillis() ?: return
        if (snapshotAgeMillis < ProviderRefreshPlan.AUTO_REFRESH_INTERVAL_MILLIS) return
        Log.d(TAG, "networkRestored refreshNow snapshotAgeMs=$snapshotAgeMillis")
        scheduleNextTick(0L)
    }

    private fun latestSnapshotAgeMillis(): Long? {
        val latest = repository.readSnapshots()
            .mapNotNull { snapshot ->
                runCatching { Instant.parse(snapshot.updatedAt) }.getOrNull()?.toEpochMilli()
            }
            .maxOrNull()
            ?: return Long.MAX_VALUE
        return (System.currentTimeMillis() - latest).coerceAtLeast(0L)
    }

    private fun scheduleNextTick(delayMillis: Long = ProviderRefreshPlan.AUTO_REFRESH_INTERVAL_MILLIS) {
        if (!running) return
        mainHandler.removeCallbacks(tickRunnable)
        tickScheduled = true
        mainHandler.postDelayed(tickRunnable, delayMillis)
    }

    private fun hasPendingManualRefresh(): Boolean {
        return pendingManualProviderId != null ||
            pendingExactManualRefreshes.isNotEmpty() ||
            pendingManualWidgetId != AppWidgetManager.INVALID_APPWIDGET_ID
    }

    private suspend fun runRefreshCycle() {
        if (refreshInProgress) return
        refreshInProgress = true
        refreshStateRepository.recordHeartbeat()
        val manualProviderId = pendingManualProviderId
        val exactManualRequest = pendingExactManualRefreshes.poll()
        val manualAccountId = exactManualRequest?.accountId
        val manualWidgetId = exactManualRequest?.widgetId ?: pendingManualWidgetId
        pendingManualProviderId = null
        pendingManualWidgetId = AppWidgetManager.INVALID_APPWIDGET_ID
        val userInitiated = manualProviderId != null || manualAccountId != null ||
            manualWidgetId != AppWidgetManager.INVALID_APPWIDGET_ID
        try {
            // 네트워크가 아예 없으면 자동 주기는 통째로 건너뛴다. 그대로 두면 provider마다
            // 재시도·타임아웃을 끝까지 소진하며 메인 스레드를 붙잡아 배터리만 태운다.
            // 사용자가 직접 누른 새로고침은 오프라인이어도 시도해 결과를 보여준다.
            if (!userInitiated && NetworkAvailability.isDefinitelyOffline(applicationContext)) {
                Log.d(TAG, "cycleSkipped reason=offline")
                return
            }
            if (manualAccountId?.providerId == ProviderId.CURSOR) {
                ProviderProbeCooldown.reset(manualAccountId)
            }
            if (BuildConfig.MULTI_ACCOUNT_ENABLED) {
                runExactRefreshCycle(manualAccountId)
                return
            }
            // 스냅샷 읽기는 SharedPreferences + JSON 파싱이라 메인 스레드에서 하면 안 된다.
            val jobs = withContext(Dispatchers.IO) {
                val snapshots = repository.readSnapshots()
                if (manualProviderId != null) {
                    ProviderRefreshPlan.manualCycleJobsFor(manualProviderId, snapshots)
                } else {
                    ProviderRefreshPlan.automaticJobsFor(snapshots)
                }
            }
            if (jobs.isEmpty()) {
                // 잡 계산은 IO로 넘어가 있어 그 사이 수동 요청이 들어올 수 있다. 그대로 멈추면
                // 그 요청은 처리되지 못하고 위젯 새로고침 표시만 남는다.
                if (hasPendingManualRefresh()) return
                running = false
                stopSelf()
                return
            }
            // 사용자가 직접 누른 새로고침은 "지금 다시 해봐"라는 뜻이다. 쉬게 해 둔 엔드포인트도
            // 다시 시도해, 쿨다운 때문에 값이 멈춰 보이는 상황에서 빠져나올 길을 남긴다.
            if (userInitiated) ProviderProbeCooldown.reset()
            Log.d(TAG, "cycleStart providers=${jobs.joinToString(",") { it.providerId.storageId }}")
            val meterStart = RefreshCycleMeter.sample()
            jobs.forEach { job ->
                refreshProvider(job, automaticRefresh = manualProviderId == null)
            }
            withContext(Dispatchers.IO) {
                ProviderCardNotificationRuntime.evaluate(applicationContext, BuildConfig.MULTI_ACCOUNT_ENABLED)
            }
            RefreshCycleMeter.log(TAG, meterStart, jobs.size)
        } catch (cancelled: CancellationException) {
            throw cancelled
        } catch (error: Throwable) {
            if (BuildConfig.MULTI_ACCOUNT_ENABLED) {
                exactManualRequest?.let(pendingExactManualRefreshes::requeueFirst)
                runCatching {
                    withContext(Dispatchers.IO) { exactRefreshCoordinator?.reset() }
                }.exceptionOrNull()?.let(error::addSuppressed)
            } else {
                if (pendingManualProviderId == null) pendingManualProviderId = manualProviderId
                if (pendingManualWidgetId == AppWidgetManager.INVALID_APPWIDGET_ID) {
                    pendingManualWidgetId = manualWidgetId
                }
            }
            throw error
        } finally {
            if (manualWidgetId != AppWidgetManager.INVALID_APPWIDGET_ID) {
                WidgetRefreshFeedback.clearWidgetRefresh(applicationContext, manualWidgetId)
                UsageSurfaceRefresher.refresh(applicationContext, repository)
            }
            refreshInProgress = false
        }
    }

    private suspend fun runExactRefreshCycle(manualAccountId: ProviderAccountId?) {
        val coordinator = exactRefreshCoordinator
            ?: AndroidProviderAccountRefreshCoordinator(applicationContext).also {
                exactRefreshCoordinator = it
            }
        val trigger = withContext(Dispatchers.IO) {
            coordinator.trigger(automatic = manualAccountId == null, exactTarget = manualAccountId)
        }
        var attempt = (trigger as? ProviderRefreshTriggerResult.Launched)?.attempt ?: return
        while (true) {
            var exactDispatch: ExactServiceCollectionDispatch<ServiceRefreshOutcome>? = null
            val outcome = when (attempt.job.mode) {
                ProviderRefreshMode.NATIVE_API -> collectNativeProviderUsage(
                    attempt.job,
                    automaticRefresh = manualAccountId == null,
                )
                ProviderRefreshMode.HIDDEN_WEB_COLLECTOR -> dispatchExactHiddenCollection(
                    attempt,
                    coordinator,
                ) { onTimeout ->
                    if (exactHiddenCollectionNeedsNamedProfile(attempt.accountId.providerId)) {
                        try {
                            coordinator.withExactCollectorOperation(attempt) { operation ->
                                collectWebProviderUsage(
                                    attempt.job,
                                    automaticRefresh = manualAccountId == null,
                                    onTimeout = onTimeout,
                                    exactOperation = operation,
                                )
                            }
                        } catch (error: ExactProviderCollectorUnavailable) {
                            ServiceRefreshOutcome.Failure(
                                ProviderRefreshFailure.interactiveAuthRequired(
                                    "Exact account Profile lease is unavailable (${error.message.orEmpty()})."
                                )
                            )
                        }
                    } else {
                        collectWebProviderUsage(
                            attempt.job,
                            automaticRefresh = manualAccountId == null,
                            onTimeout = onTimeout,
                        )
                    }
                }.also { exactDispatch = it }.outcome
            }
            if (exactDispatch?.timedOut == true) {
                attempt = exactDispatch.next ?: break
                continue
            }
            val next = when (outcome) {
                is ServiceRefreshOutcome.Snapshot -> withContext(Dispatchers.IO) {
                    (coordinator.publish(attempt, outcome.snapshot) as? ProviderRefreshCallbackResult.Accepted)?.next
                }
                is ServiceRefreshOutcome.Payload -> {
                    val snapshot = withContext(Dispatchers.IO) {
                        ProviderUsageNormalizer.normalize(
                            attempt.accountId.providerId,
                            outcome.rawPayload,
                            ProviderPayloadSource.STRUCTURED_SCRIPT,
                        )
                    }
                    if (snapshot == null) {
                        withContext(Dispatchers.IO) { coordinator.fail(attempt, requeue = true) }
                    } else {
                        withContext(Dispatchers.IO) {
                            (coordinator.publish(attempt, snapshot) as? ProviderRefreshCallbackResult.Accepted)?.next
                        }
                    }
                }
                is ServiceRefreshOutcome.Failure -> {
                    val requiresLogin = ProviderRefreshFailureClassifier.requiresInteractiveAuth(
                        attempt.accountId.providerId,
                        outcome.failure.kind,
                    )
                    withContext(Dispatchers.IO) {
                        if (requiresLogin) coordinator.requireReauthentication(attempt.accountId)
                        else coordinator.fail(attempt, requeue = true)
                    }
                }
                ServiceRefreshOutcome.Cancelled -> withContext(Dispatchers.IO) {
                    coordinator.fail(attempt, requeue = false)
                }
            }
            attempt = next ?: break
        }
        withContext(Dispatchers.IO) {
            UsageSurfaceRefresher.refresh(applicationContext, repository)
            ProviderCardNotificationRuntime.evaluate(applicationContext, BuildConfig.MULTI_ACCOUNT_ENABLED)
        }
    }

    private suspend fun refreshProvider(job: ProviderRefreshJob, automaticRefresh: Boolean) {
        val effectiveJob = resolveRuntimeRefreshJob(job)
        val startingSnapshot = withContext(Dispatchers.IO) {
            val previous = repository.readSnapshots().firstOrNull { it.providerId == effectiveJob.providerId }
            repository.markCollecting(effectiveJob.providerId)
            UsageSurfaceRefresher.refresh(applicationContext, repository)
            previous
        }
        val providerMeterStart = RefreshCycleMeter.sample()
        val outcome = when (effectiveJob.mode) {
            ProviderRefreshMode.NATIVE_API -> collectNativeProviderUsage(effectiveJob, automaticRefresh)
            ProviderRefreshMode.HIDDEN_WEB_COLLECTOR -> ProviderWebSessionMaintenanceGate.withMaintenanceLock(effectiveJob.providerId) {
                collectWebProviderUsage(effectiveJob, automaticRefresh)
            }
        }
        Log.d(TAG, "outcome provider=${effectiveJob.providerId.storageId} type=${outcome::class.java.simpleName}")
        RefreshCycleMeter.log(TAG, providerMeterStart, effectiveJob.providerId.storageId)
        val providerStillTracked = withContext(Dispatchers.IO) {
            repository.readSnapshots().any { it.providerId == effectiveJob.providerId }
        }
        if (!providerStillTracked) {
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
                markCopilotWarmUpPending(effectiveJob.providerId, pending = false)
            }
            is ServiceRefreshOutcome.Payload -> {
                val snapshot = withContext(Dispatchers.IO) {
                    ProviderUsageNormalizer.normalize(
                        effectiveJob.providerId,
                        outcome.rawPayload,
                        ProviderPayloadSource.STRUCTURED_SCRIPT
                    )
                }
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
                    markCopilotWarmUpPending(effectiveJob.providerId, pending = false)
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
                // 페이로드가 와도 쓸 수 있는 사용량이 없으면 수집에 성공한 게 아니다.
                if (snapshot == null) markCopilotWarmUpPending(effectiveJob.providerId, pending = true)
            }
            is ServiceRefreshOutcome.Failure -> {
                Log.w(
                    TAG,
                    "failure provider=${effectiveJob.providerId.storageId} kind=${outcome.failure.kind} message=${safeLogValue(outcome.failure.message)}"
                )
                refreshStateRepository.recordFailure(outcome.failure.kind.name)
                markCopilotWarmUpPending(effectiveJob.providerId, pending = true)
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
        withContext(Dispatchers.IO) { UsageSurfaceRefresher.refresh(applicationContext, repository) }
        if (effectiveJob.providerId == ProviderId.CLAUDE) {
            maybePrimeClaudeSession()
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
        automaticRefresh: Boolean,
        onTimeout: (suspend () -> Unit)? = null,
        exactOperation: ExactProviderCollectorOperation<WebView, NamedProfileLease>? = null,
    ): ServiceRefreshOutcome {
        val requestId = ++nextRequestId
        webJobLastUrls[requestId] = job.startUrl
        val result = withTimeoutOrNull(timeoutMillisForWebJob(job)) {
            suspendCancellableCoroutine { continuation ->
                mainHandler.post {
                    val warmUpUrl = webSessionWarmUpUrl(job)
                    // 워밍업을 실제로 시작하는 지점은 여기 한 곳뿐이다. 위 함수는 타임아웃
                    // 예산 계산에서도 불리므로 거기서 시각을 갱신하면 두 번째 호출이 null을
                    // 받아 30분 강제 워밍업이 영영 실행되지 않는다.
                    if (warmUpUrl != null && job.providerId == ProviderId.COPILOT) {
                        CopilotWarmUpState.markWarmUpStarted()
                    }
                    if (warmUpUrl != null &&
                        ProviderSessionRevivePolicy.isReviveUrl(job.providerId, warmUpUrl)
                    ) {
                        // 이번 주기에서 실제로 provider 페이지를 로드하므로 여기서 대기를 해제한다.
                        ProviderSessionReviveStore.clear(job.providerId)
                        Log.i(
                            TAG,
                            "sessionRevive provider=${job.providerId.storageId} " +
                                "warmUp=${hostOf(warmUpUrl)}${pathOf(warmUpUrl)}"
                        )
                    }
                    val active = ServiceWebRefreshJob(
                        requestId = requestId,
                        job = job,
                        exactOperation = exactOperation,
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
        when (result) {
            null -> onTimeout?.invoke()
            else -> Unit
        }
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
            codexNativeUsageFallbackOutcome(job, exactOperation)?.let { return it }
        }
        return outcome
    }

    /**
     * Reruns Codex usage collection natively (the same wham/usage path the web collector uses) to
     * decide whether an interactive-auth signal is a real sign-out or a transient session-probe 403.
     * Returns a usage [ServiceRefreshOutcome.Payload] when usage is still available, or null to keep
     * the original auth-required failure.
     */
    private suspend fun codexNativeUsageFallbackOutcome(
        job: ProviderRefreshJob,
        exactOperation: ExactProviderCollectorOperation<WebView, NamedProfileLease>?,
    ): ServiceRefreshOutcome? {
        val userAgent = ProviderWebViewUserAgent.hiddenCollectorUserAgent(this, ProviderId.CODEX)
        val bridgeResult = withContext(Dispatchers.IO) {
            ProviderNativeUsagePayloadFetcher.bridgeUsagePayloadWithFetcher(
                providerId = ProviderId.CODEX,
                userAgent = userAgent,
                cookieHeaderForUrl = { url -> cookieHeaderForJob(job, url, exactOperation) },
                bridgePageUrl = null,
                geminiRpcIds = emptyList(),
                requestHeadersForUrl = { url -> requestHeadersForJob(job, url, exactOperation) },
                fetchJson = { providerId, url, fetchUserAgent, requestHeaders ->
                    fetchProviderJsonForJob(job, exactOperation, providerId, url, fetchUserAgent, requestHeaders)
                },
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
        val exactOperation = active.exactOperation
        val usesNamedProfile = jobUsesNamedProfileSession(job)
        if (usesNamedProfile &&
            (exactOperation == null || exactOperation.binding != job.binding)
        ) {
            completeWebJob(
                active.requestId,
                ServiceRefreshOutcome.Failure(
                    ProviderRefreshFailure.interactiveAuthRequired("Exact account Profile lease is unavailable.")
                ),
            )
            return
        }
        val webView = if (usesNamedProfile) {
            requireNotNull(exactOperation).webView
        } else {
            retainedWebViews.getOrPut(job.providerId) { WebView(this) }
        }
        val cookieManager = if (usesNamedProfile) {
            requireNotNull(exactOperation).profileLease.requireAndroidCookieManager()
        } else {
            CookieManager.getInstance()
        }
        val collectorUserAgent = ProviderWebViewUserAgent.hiddenCollectorUserAgent(
            this@ProviderBackgroundRefreshService,
            job.providerId,
        )
        webView.settings.javaScriptEnabled = true
        webView.settings.domStorageEnabled = true
        webView.settings.databaseEnabled = true
        webView.settings.allowFileAccess = false
        webView.settings.javaScriptCanOpenWindowsAutomatically = true
        webView.settings.setSupportMultipleWindows(false)
        webView.settings.userAgentString = collectorUserAgent
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.LOLLIPOP) {
            cookieManager.setAcceptThirdPartyCookies(webView, true)
        }
        webView.addJavascriptInterface(
            ServiceUsageBridge(job.accountId, active.requestId, collectorUserAgent),
            BRIDGE_NAME,
        )
        webView.webChromeClient = ServiceCollectorChromeClient()
        webView.webViewClient = ServiceCollectorWebViewClient(job.accountId, active.requestId)
        if (!usesNamedProfile) {
            prepareSharedWebSessionForCollection(webView, job.providerId)
        } else {
            cookieManager.setAcceptCookie(true)
            cookieManager.flush()
            webView.onResume()
            webView.resumeTimers()
        }
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
        if (job.providerId == ProviderId.CLAUDE && active.warmUpUrl == null && hasAnyClaudeNativeFetchHeaders(active)) {
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

    private fun currentWebJobFor(accountId: ProviderAccountId): ServiceWebRefreshJob? {
        return activeWebJob?.takeIf { it.job.accountId == accountId }
    }

    private fun retainedWebViewFor(active: ServiceWebRefreshJob): WebView? {
        return if (jobUsesNamedProfileSession(active.job)) {
            active.exactOperation?.webView
        } else {
            retainedWebViews[active.job.providerId]
        }
    }

    private fun flushCookies(active: ServiceWebRefreshJob) {
        if (jobUsesNamedProfileSession(active.job)) {
            active.exactOperation?.profileLease?.requireAndroidCookieManager()?.flush()
        } else {
            CookieManager.getInstance().flush()
        }
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

    private fun injectCollectorIfReady(ownerAccountId: ProviderAccountId, view: WebView, url: String, pageText: String) {
        val active = currentWebJobFor(ownerAccountId) ?: return
        val providerId = ownerAccountId.providerId
        if (ProviderAboutBlankCollectorPolicy.isEnabled(providerId) && url != "about:blank") return
        val cookies = collectorCookiesFor(active, url)
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
            observedAccountId = active.observedCodexAccountId,
            pageText = pageText,
            pageUrl = url,
            awaitInteractiveLoginUsage = providerId == ProviderId.CODEX || providerId == ProviderId.GEMINI,
            providerRequestHeaders = replaySafeProviderRequestHeadersFor(active, url)
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

    private fun maybeCompleteSessionReviveFromResource(ownerAccountId: ProviderAccountId, view: WebView, url: String) {
        val active = currentWebJobFor(ownerAccountId) ?: return
        val providerId = ownerAccountId.providerId
        if (!active.warmUpPending) return
        if (ProviderSessionRevivePolicy.reviveUrl(providerId) == null) return
        if (!ProviderWebCollectorScripts.shouldRunCollectorOnResource(providerId, url)) return
        val requestId = active.requestId
        mainHandler.post {
            val current = currentWebJobFor(ownerAccountId) ?: return@post
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
        flushCookies(active)
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
        private val ownerAccountId: ProviderAccountId,
        private val ownerRequestId: Long,
    ) : WebViewClient() {
        private val ownerProviderId: ProviderId get() = ownerAccountId.providerId
        private fun activeJob(): ServiceWebRefreshJob? =
            currentWebJobFor(ownerAccountId)?.takeIf { it.requestId == ownerRequestId }

        override fun onPageStarted(view: WebView, url: String, favicon: android.graphics.Bitmap?) {
            val active = activeJob() ?: return
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
            injectCollectorIfReady(ownerAccountId, view, effectiveUrl, "")
        }

        override fun shouldOverrideUrlLoading(view: WebView, request: WebResourceRequest): Boolean {
            val active = activeJob() ?: return true
            val url = request.url.toString()
            if (shouldWaitForGeminiRefreshSignInRedirect(active, url)) {
                Log.d(TAG, "allowSignInRedirect provider=gemini to=${hostOf(url)}${pathOf(url)}")
                return false
            }
            return !ProviderDefinitionRegistry.isCollectorNavigationAllowed(active.job.providerId, url)
        }

        override fun shouldInterceptRequest(view: WebView, request: WebResourceRequest): WebResourceResponse? {
            if (activeJob() == null) return null
            val url = request.url.toString()
            captureCodexAccountId(ownerAccountId, url)
            captureCodexNativeFetchHeaders(ownerAccountId, ownerProviderId, url, request.requestHeaders.orEmpty())
            captureClaudeNativeFetchHeaders(ownerAccountId, ownerProviderId, url, request.requestHeaders.orEmpty())
            maybeStartCodexAboutBlankCollection(ownerAccountId, view, url)
            maybeStartClaudeAboutBlankCollection(ownerAccountId, view, url)
            maybeCompleteSessionReviveFromResource(ownerAccountId, view, url)
            return null
        }

        override fun onLoadResource(view: WebView, url: String) {
            val active = activeJob() ?: return
            val pageUrl = effectiveCollectorPageUrl(ownerProviderId, active.requestId, view.url ?: url)
            recordWebJobUrl(active.requestId, pageUrl)
            if (isWebSessionWarmUpPage(active, pageUrl)) return
            if (!ProviderWebCollectorScripts.shouldRunCollectorFromResource(ownerProviderId, pageUrl, url)) return
            val requestId = active.requestId
            view.evaluateJavascript(PAGE_CAPTURE_SCRIPT) { encoded ->
                if (activeJob()?.requestId != requestId) return@evaluateJavascript
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
                injectCollectorIfReady(ownerAccountId, view, pageUrl, pageText)
            }
        }

        override fun onPageFinished(view: WebView, url: String) {
            val active = activeJob() ?: return
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
                injectCollectorIfReady(ownerAccountId, view, effectiveUrl, "")
                return
            }
            view.evaluateJavascript(PAGE_CAPTURE_SCRIPT) { encoded ->
                if (activeJob()?.requestId != requestId) return@evaluateJavascript
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
                injectCollectorIfReady(ownerAccountId, view, effectiveUrl, pageText)
                maybeScheduleGeminiTerminalCheck(active, view, effectiveUrl)
            }
        }

        override fun onReceivedError(view: WebView, request: WebResourceRequest, error: WebResourceError) {
            if (!request.isForMainFrame) return
            val active = activeJob() ?: return
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
            val active = activeJob() ?: return
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
        private val ownerAccountId: ProviderAccountId,
        private val ownerRequestId: Long,
        private val collectorUserAgent: String
    ) {
        private val ownerProviderId: ProviderId get() = ownerAccountId.providerId
        private fun activeJob(): ServiceWebRefreshJob? =
            currentWebJobFor(ownerAccountId)?.takeIf { it.requestId == ownerRequestId }

        @JavascriptInterface
        fun postUsagePayload(rawPayload: String) {
            mainHandler.post {
                val active = activeJob() ?: return@post
                val pageUrl = webJobLastUrls[active.requestId].orEmpty().ifBlank { active.job.startUrl }
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
                flushCookies(active)
                if (jobUsesSharedWebSession(active.job)) ProviderSessionReviveStore.clear(ownerProviderId)
                completeWebJob(active.requestId, ServiceRefreshOutcome.Payload(rawPayload))
            }
        }
        @JavascriptInterface
        fun postClaudeSubscriptionDetailsPlanStructure(rawRecord: String) {
            if (!BuildConfig.DEBUG || ownerProviderId != ProviderId.CLAUDE) return
            mainHandler.post {
                if (!BuildConfig.DEBUG || activeJob() == null) return@post
                val safeRecord = safeClaudeSubscriptionDetailsPlanStructureRecord(rawRecord) ?: return@post
                Log.d(PLAN_PROVENANCE_DIAGNOSTICS_TAG, safeRecord)
            }
        }


        @JavascriptInterface
        fun postCollectorError(rawError: String) {
            mainHandler.post {
                val active = activeJob() ?: return@post
                val pageUrl = webJobLastUrls[active.requestId].orEmpty().ifBlank { active.job.startUrl }
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
                    retainedWebViewFor(active)?.let { webView ->
                        runCatching { webView.stopLoading() }
                        if (webView.url.isNullOrBlank()) {
                            webView.loadUrl(active.job.startUrl)
                        } else {
                            webView.reload()
                        }
                    }
                    return@post
                }
                if (jobUsesSharedWebSession(active.job) && ProviderSessionReviveStore.arm(ownerProviderId, errorKind)) {
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
            val active = activeJob()
                ?: return JSONObject().put("ok", false).put("error", "no_active_refresh_job").toString()
            val headers = requestHeadersForJob(active, url)
            return fetchProviderJsonForJob(active, url, collectorUserAgent, headers)
        }

        @JavascriptInterface
        fun fetchProviderUsagePayload(): String {
            if (!ProviderAboutBlankCollectorPolicy.isEnabled(ownerProviderId)) {
                return JSONObject().put("ok", false).put("error", "provider_not_allowlisted").toString()
            }
            if (!isNativeFetchBridgePageAllowed(ownerProviderId)) {
                return JSONObject().put("ok", false).put("error", "blocked_bridge_page").toString()
            }
            val active = activeJob()
                ?: return JSONObject().put("ok", false).put("error", "no_active_refresh_job").toString()
            return ProviderNativeUsagePayloadFetcher.bridgeUsagePayloadWithFetcher(
                providerId = ownerProviderId,
                userAgent = collectorUserAgent,
                cookieHeaderForUrl = { url -> cookieHeaderForJob(active, url) },
                bridgePageUrl = nativeUsageBridgePageUrl(ownerProviderId),
                geminiRpcIds = emptyList(),
                requestHeadersForUrl = { url ->
                    requestHeadersForJob(active, url)
                },
                accountId = active.job.binding?.accountId,
                fetchJson = { _, url, userAgent, requestHeaders ->
                    fetchProviderJsonForJob(active, url, userAgent, requestHeaders)
                },
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
            val active = activeJob() ?: return false
            if (active.job.providerId != providerId) return false
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

    private fun fetchProviderJsonForJob(
        active: ServiceWebRefreshJob,
        url: String,
        userAgent: String,
        requestHeaders: Map<String, String>,
    ): String = fetchProviderJsonForJob(
        active.job,
        active.exactOperation,
        active.job.providerId,
        url,
        userAgent,
        requestHeaders,
    )

    private fun fetchProviderJsonForJob(
        job: ProviderRefreshJob,
        exactOperation: ExactProviderCollectorOperation<WebView, NamedProfileLease>?,
        providerId: ProviderId,
        url: String,
        userAgent: String,
        requestHeaders: Map<String, String>,
    ): String {
        if (providerId != job.providerId) {
            return JSONObject().put("ok", false).put("error", "provider_mismatch").toString()
        }
        val binding = job.binding
        if (!jobUsesNamedProfileSession(job)) {
            return ProviderNativeJsonBridge.fetchJson(providerId, url, userAgent, requestHeaders)
        }
        val operation = exactOperation?.takeIf { it.binding == binding }
            ?: return JSONObject().put("ok", false).put("error", "exact_profile_cookie_unavailable").toString()
        return ProviderNativeJsonBridge.fetchJson(
            ProviderNativeJsonRequest(
                providerId = providerId,
                url = url,
                userAgent = userAgent,
                requestHeaders = requestHeaders,
                cookieSource = operation.profileLease.cookieSource,
            )
        )
    }

    private fun requestHeadersForJob(active: ServiceWebRefreshJob, url: String): Map<String, String> {
        if (jobUsesNamedProfileSession(active.job)) {
            if (active.exactOperation?.binding != active.job.binding) return emptyMap()
            return when (active.job.providerId) {
                ProviderId.CODEX -> CodexNativeHeaderStore.headersFor(
                    active.exactNativeFetchHeaders,
                    url,
                    CODEX_NATIVE_HEADER_FALLBACK_KEY,
                )
                ProviderId.CLAUDE -> ClaudeNativeHeaderStore.headersFor(
                    active.exactNativeFetchHeaders,
                    url,
                    CLAUDE_NATIVE_HEADER_WILDCARD_KEY,
                )
                else -> emptyMap()
            }
        }
        return requestHeadersForJob(active.job, url, exactOperation = null)
    }

    private fun requestHeadersForJob(
        job: ProviderRefreshJob,
        url: String,
        exactOperation: ExactProviderCollectorOperation<WebView, NamedProfileLease>?,
    ): Map<String, String> {
        val binding = job.binding
        if (jobUsesNamedProfileSession(job)) {
            val storedHeaders = exactOperation
                ?.takeIf { it.binding == binding }
                ?.nativeHeaders
                .orEmpty()
            return when (job.providerId) {
                ProviderId.CODEX -> CodexNativeHeaderStore.headersFor(
                    storedHeaders,
                    url,
                    CODEX_NATIVE_HEADER_FALLBACK_KEY,
                )
                ProviderId.CLAUDE -> ClaudeNativeHeaderStore.headersFor(
                    storedHeaders,
                    url,
                    CLAUDE_NATIVE_HEADER_WILDCARD_KEY,
                )
                else -> emptyMap()
            }
        }
        return when (job.providerId) {
            ProviderId.CODEX -> codexNativeFetchHeadersFor(url)
            ProviderId.CLAUDE -> claudeNativeFetchHeadersFor(url)
            else -> emptyMap()
        }
    }

    private fun cookieHeaderForJob(active: ServiceWebRefreshJob, url: String): String? =
        cookieHeaderForJob(active.job, url, active.exactOperation)

    private fun cookieHeaderForJob(
        job: ProviderRefreshJob,
        url: String,
        exactOperation: ExactProviderCollectorOperation<WebView, NamedProfileLease>?,
    ): String? {
        val uri = runCatching { URI(url) }.getOrNull() ?: return null
        val origin = "${uri.scheme}://${uri.host}"
        val binding = job.binding
        if (jobUsesNamedProfileSession(job)) {
            return exactOperation
                ?.takeIf { it.binding == binding }
                ?.profileLease
                ?.cookieSource
                ?.cookieHeader(url, origin)
        }
        return CookieManager.getInstance().getCookie(url)?.takeIf(String::isNotBlank)
            ?: CookieManager.getInstance().getCookie(origin)?.takeIf(String::isNotBlank)
    }

    private class ServiceCollectorChromeClient : WebChromeClient()

    private fun maybeStartCodexAboutBlankCollection(ownerAccountId: ProviderAccountId, view: WebView, resourceUrl: String) {
        val providerId = ownerAccountId.providerId
        if (providerId != ProviderId.CODEX) return
        val active = currentWebJobFor(ownerAccountId) ?: return
        if (webJobLastUrls[active.requestId] == "about:blank") return
        if (!shouldStartCodexNativeCollectionFromResource(resourceUrl)) return
        if (!hasCodexNativeFetchAuthContext(active, resourceUrl) && !hasCodexSessionCookies(active, resourceUrl)) return
        mainHandler.post {
            if (currentWebJobFor(ownerAccountId)?.requestId != active.requestId) return@post
            if (webJobLastUrls[active.requestId] == "about:blank") return@post
            collectorInjectionKeys.removeAll { it.startsWith("${active.requestId}:${providerId.storageId}:") }
            recordWebJobUrl(active.requestId, "about:blank")
            Log.d(TAG, "redirectUsage provider=codex to=about:blank from=${hostOf(resourceUrl)}${pathOf(resourceUrl)}")
            view.stopLoading()
            view.loadUrl("about:blank")
        }
    }

    private fun maybeStartClaudeAboutBlankCollection(ownerAccountId: ProviderAccountId, view: WebView, resourceUrl: String) {
        val providerId = ownerAccountId.providerId
        if (providerId != ProviderId.CLAUDE) return
        val active = currentWebJobFor(ownerAccountId) ?: return
        if (webJobLastUrls[active.requestId] == "about:blank") return
        if (!ProviderLoginStrategy.shouldStartClaudeNativeCollectionFromResource(resourceUrl)) return
        if (!hasClaudeNativeFetchHeaders(active, resourceUrl)) return
        mainHandler.post {
            if (currentWebJobFor(ownerAccountId)?.requestId != active.requestId) return@post
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

    private fun captureCodexNativeFetchHeaders(
        ownerAccountId: ProviderAccountId,
        providerId: ProviderId,
        url: String,
        requestHeaders: Map<String, String>,
    ) {
        if (providerId != ProviderId.CODEX) return
        if (!ProviderNativeJsonBridge.isAllowedJsonUrl(ProviderId.CODEX, url)) return
        val active = currentWebJobFor(ownerAccountId) ?: return
        if (jobUsesNamedProfileSession(active.job) && active.job.providerId == ProviderId.CODEX) {
            if (!CodexNativeHeaderStore.capture(
                    active.exactNativeFetchHeaders,
                    url,
                    requestHeaders,
                    CODEX_NATIVE_HEADER_FALLBACK_KEY,
                )
            ) return
        } else {
            if (!CodexNativeHeaderStore.capture(
                    codexNativeFetchHeaders,
                    url,
                    requestHeaders,
                    CODEX_NATIVE_HEADER_FALLBACK_KEY,
                )
            ) return
        }
        val headerNames = CodexNativeHeaderStore.forwardableHeaders(requestHeaders)
            .keys
            .sorted()
            .joinToString("|")
        Log.d(TAG, "capturedNativeHeaders provider=codex path=${pathOf(url)} names=$headerNames")
        saveCodexNativeAuthContext(active)
    }

    private fun codexNativeFetchHeadersFor(url: String): Map<String, String> {
        return CodexNativeHeaderStore.headersFor(codexNativeFetchHeaders, url, CODEX_NATIVE_HEADER_FALLBACK_KEY)
    }

    private fun captureClaudeNativeFetchHeaders(
        ownerAccountId: ProviderAccountId,
        providerId: ProviderId,
        url: String,
        requestHeaders: Map<String, String>,
    ) {
        if (providerId != ProviderId.CLAUDE) return
        if (!ProviderNativeJsonBridge.isAllowedJsonUrl(ProviderId.CLAUDE, url)) return
        val active = currentWebJobFor(ownerAccountId) ?: return
        if (jobUsesNamedProfileSession(active.job) && active.job.providerId == ProviderId.CLAUDE) {
            if (!ClaudeNativeHeaderStore.capture(
                    active.exactNativeFetchHeaders,
                    url,
                    requestHeaders,
                    CLAUDE_NATIVE_HEADER_WILDCARD_KEY,
                )
            ) return
        } else {
            if (!ClaudeNativeHeaderStore.capture(
                    claudeNativeFetchHeaders,
                    url,
                    requestHeaders,
                    CLAUDE_NATIVE_HEADER_WILDCARD_KEY,
                )
            ) return
        }
        val headerNames = CodexNativeHeaderStore.forwardableHeaders(requestHeaders)
            .keys
            .sorted()
            .joinToString("|")
        Log.d(TAG, "capturedNativeHeaders provider=claude route=allowlisted_json names=$headerNames")
        saveClaudeNativeRequestContext(active)
    }

    private fun claudeNativeFetchHeadersFor(url: String): Map<String, String> {
        return ClaudeNativeHeaderStore.headersFor(claudeNativeFetchHeaders, url, CLAUDE_NATIVE_HEADER_WILDCARD_KEY)
    }

    private fun replaySafeProviderRequestHeadersFor(active: ServiceWebRefreshJob, url: String): Map<String, String> {
        return when (active.job.providerId) {
            ProviderId.CLAUDE -> ClaudeNativeHeaderStore.replaySafeHeaders(requestHeadersForJob(active, url))
            else -> emptyMap()
        }
    }

    private fun hasClaudeNativeFetchHeaders(active: ServiceWebRefreshJob, url: String): Boolean {
        return requestHeadersForJob(active, url).any { (_, value) -> value.isNotBlank() }
    }

    private fun hasAnyClaudeNativeFetchHeaders(active: ServiceWebRefreshJob): Boolean {
        val headers = if (jobUsesNamedProfileSession(active.job)) {
            active.exactNativeFetchHeaders
        } else {
            claudeNativeFetchHeaders
        }
        return headers.values.any { values ->
            values.values.any { it.isNotBlank() }
        }
    }

    private fun clearClaudeNativeFetchHeaders(providerId: ProviderId) {
        if (providerId == ProviderId.CLAUDE) {
            claudeNativeFetchHeaders.clear()
        }
    }

    private fun saveClaudeNativeRequestContext(active: ServiceWebRefreshJob) {
        val storedHeaders = if (jobUsesNamedProfileSession(active.job)) {
            active.exactNativeFetchHeaders
        } else {
            claudeNativeFetchHeaders
        }
        val requestContext = ClaudeNativeHeaderStore.snapshotRequestContext(storedHeaders)
        if (requestContext.isEmpty()) return
        val binding = active.job.binding?.takeIf { it.accountId.providerId == ProviderId.CLAUDE }
        if (binding == null) {
            ClaudeNativeRequestContextStore(applicationContext).save(requestContext)
        } else {
            ClaudeNativeRequestContextStore(applicationContext).saveExact(binding, requestContext)
        }
    }

    private fun saveCodexNativeAuthContext(active: ServiceWebRefreshJob) {
        val storedHeaders = if (jobUsesNamedProfileSession(active.job)) {
            active.exactNativeFetchHeaders
        } else {
            codexNativeFetchHeaders
        }
        val authContext = CodexNativeHeaderStore.snapshotAuthContext(storedHeaders)
        if (authContext.isEmpty()) return
        val binding = active.job.binding?.takeIf { it.accountId.providerId == ProviderId.CODEX }
        if (binding == null) {
            CodexNativeAuthContextStore(applicationContext).save(authContext)
        } else {
            CodexNativeAuthContextStore(applicationContext).saveExact(binding, authContext)
        }
    }

    private fun debugNativeAuthContextForSnapshot(providerId: ProviderId): Map<String, Map<String, String>> {
        if (providerId != ProviderId.CODEX) return emptyMap()
        return CodexNativeHeaderStore.snapshotAuthContext(codexNativeFetchHeaders)
    }

    private fun shouldExportBackgroundDebugSnapshot(providerId: ProviderId): Boolean {
        return providerId != ProviderId.GEMINI
    }

    private fun hasCodexNativeFetchAuthContext(active: ServiceWebRefreshJob, url: String): Boolean {
        return requestHeadersForJob(active, url).any { (name, value) ->
            value.isNotBlank() && (
                name.equals("Authorization", ignoreCase = true) ||
                    name.equals("ChatGPT-Account-ID", ignoreCase = true) ||
                    name.equals("OAI-Session-Id", ignoreCase = true)
                )
        }
    }

    private fun hasCodexSessionCookies(active: ServiceWebRefreshJob, url: String): Boolean {
        return !cookieHeaderForJob(active, url).isNullOrBlank()
    }

    private fun captureCodexAccountId(ownerAccountId: ProviderAccountId, url: String) {
        if (ownerAccountId.providerId != ProviderId.CODEX) return
        val active = currentWebJobFor(ownerAccountId) ?: return
        val accountId = runCatching {
            val uri = URI(url)
            if (uri.path != "/backend-api/subscriptions") return@runCatching null
            uri.query
                ?.split("&")
                ?.firstOrNull { it.startsWith("account_id=") }
                ?.substringAfter("=")
                ?.takeIf { it.isNotBlank() }
        }.getOrNull() ?: return
        active.observedCodexAccountId = accountId
    }

    private fun collectorCookiesFor(active: ServiceWebRefreshJob, url: String): Map<String, String> {
        val cookieUrl = if (active.job.providerId == ProviderId.CLAUDE && url == "about:blank") {
            CLAUDE_ABOUT_BLANK_BASE_URL
        } else {
            url
        }
        return cookieHeaderForJob(active, cookieUrl)
            ?.split(";")
            ?.mapNotNull { cookie ->
                val parts = cookie.trim().split("=", limit = 2)
                if (parts.size == 2) parts[0] to parts[1] else null
            }
            ?.toMap()
            .orEmpty()
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
        val exactOperation: ExactProviderCollectorOperation<WebView, NamedProfileLease>? = null,
        val exactNativeFetchHeaders: MutableMap<String, Map<String, String>> =
            exactOperation?.nativeHeaders?.toMutableMap() ?: mutableMapOf(),
        val warmUpUrl: String? = null,
        var warmUpPending: Boolean = false,
        var warmUpTransitionScheduled: Boolean = false,
        val collectorRetryCounts: MutableMap<String, Int> = mutableMapOf(),
        var lastGeminiRefreshRedirectKey: String? = null,
        var lastGeminiRefreshRedirectAtMs: Long = 0L,
        var geminiUsageRedirectAttempts: Int = 0,
        var geminiTerminalCheckScheduled: Boolean = false,
        var geminiSignInClickAttempts: Int = 0,
        var observedCodexAccountId: String? = null,
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
        const val EXTRA_PROVIDER_ACCOUNT_ID = "provider_account_id"
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

        fun createRefreshIntent(
            context: Context,
            accountId: ProviderAccountId,
            appWidgetId: Int = AppWidgetManager.INVALID_APPWIDGET_ID,
        ): Intent = Intent(context, ProviderBackgroundRefreshService::class.java)
            .setAction(ACTION_REFRESH)
            .putExtra(WidgetRefreshActions.EXTRA_APP_WIDGET_ID, appWidgetId)
            .putExtra(WidgetRefreshActions.EXTRA_PROVIDER_ID, accountId.providerId.storageId)
            .putExtra(EXTRA_PROVIDER_ACCOUNT_ID, ProviderAccountIdStorageCodec.encode(accountId))

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

        fun createSessionResetIntent(context: Context, accountId: ProviderAccountId): Intent {
            return createSessionResetIntent(context, accountId.providerId)
                .putExtra(EXTRA_PROVIDER_ACCOUNT_ID, ProviderAccountIdStorageCodec.encode(accountId))
        }

        internal suspend fun <T> dispatchExactHiddenCollection(
            attempt: ProviderRefreshAttempt,
            coordinator: ExactServiceAttemptCoordinator,
            collector: suspend (suspend () -> Unit) -> T,
        ): ExactServiceCollectionDispatch<T> {
            var timedOut = false
            var timeoutNext: ProviderRefreshAttempt? = null
            val outcome = ProviderWebSessionMaintenanceGate.withMaintenanceLock(
                requireNotNull(attempt.job.binding)
            ) {
                collector {
                    timedOut = true
                    timeoutNext = withContext(Dispatchers.IO) { coordinator.timeout(attempt) }
                }
            }
            return ExactServiceCollectionDispatch(outcome, timedOut, timeoutNext)
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

    /**
     * 부작용이 없어야 한다. 이 함수는 타임아웃 예산 계산과 잡 생성에서 각각 호출되므로,
     * 여기서 재활성 대기 상태를 소비하면 두 번째 호출이 null을 돌려받아 워밍업이 건너뛰어진다.
     * 소비는 잡을 만들 때 한 번만 한다.
     */
    private fun webSessionWarmUpUrl(job: ProviderRefreshJob): String? {
        if (!jobUsesSharedWebSession(job)) return null
        return sharedWebSessionWarmUpUrl(
            job = job,
            // github.com 홈은 한 번 로드에 90KB에 가깝다(실측). 쿠키가 살아 있는 동안에는
            // 다시 받을 이유가 없으므로 워밍업을 건너뛴다.
            copilotNeedsWarmUp = CopilotWarmUpState.needsWarmUp(),
            pendingReviveUrl = ProviderSessionReviveStore.pendingReviveUrl(job.providerId),
        )
    }

    /** Copilot 워밍업은 수집이 실패했을 때만 다시 하도록 표시한다. */
    private fun markCopilotWarmUpPending(providerId: ProviderId, pending: Boolean) {
        if (providerId != ProviderId.COPILOT) return
        Log.d(TAG, "copilotWarmUp pending=$pending")
        if (pending) CopilotWarmUpState.requireWarmUp() else CopilotWarmUpState.markCollectionSucceeded()
    }
}
