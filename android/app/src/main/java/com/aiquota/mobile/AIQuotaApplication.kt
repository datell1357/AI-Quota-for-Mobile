package com.aiquota.mobile

import android.app.ActivityManager
import android.app.Application
import android.os.Build
import androidx.annotation.RequiresApi
import com.aiquota.mobile.accounts.LegacyAccountMigrationRunner
import com.aiquota.mobile.providers.GlmIsolatedWebViewProfile
import com.aiquota.mobile.update.AppUpdateCheckScheduler

class AIQuotaApplication : Application() {
    override fun onCreate() {
        val glmIsolatedProcess = GlmIsolatedWebViewProfile.configureIfNeeded(this)
        super.onCreate()
        if (glmIsolatedProcess) return
        val currentProcessName = selectApplicationProcessName(
            sdkInt = Build.VERSION.SDK_INT,
            modernProcessName = ::modernProcessName,
            legacyProcessName = ::legacyProcessName,
        )
        if (currentProcessName != packageName) return
        if (BuildConfig.MULTI_ACCOUNT_ENABLED) {
            LegacyAccountMigrationRunner.runIfEnabled(this, enabled = BuildConfig.MULTI_ACCOUNT_ENABLED)
        }
        FirebaseGatewayBootstrap.install()
        AppUpdateCheckScheduler.schedule(this)
    }

    @RequiresApi(Build.VERSION_CODES.P)
    private fun modernProcessName(): String = Application.getProcessName()

    private fun legacyProcessName(): String? {
        val processInfo = ActivityManager.RunningAppProcessInfo()
        ActivityManager.getMyMemoryState(processInfo)
        val activityManager = getSystemService(ActivityManager::class.java)
        return selectExactProcessName(
            currentPid = processInfo.pid,
            currentUid = processInfo.uid,
            candidates = activityManager.runningAppProcesses.orEmpty().map {
                ProcessNameCandidate(pid = it.pid, uid = it.uid, processName = it.processName)
            },
        )
    }
}

internal fun selectApplicationProcessName(
    sdkInt: Int,
    modernProcessName: () -> String,
    legacyProcessName: () -> String?,
): String? = if (sdkInt >= Build.VERSION_CODES.P) modernProcessName() else legacyProcessName()

internal data class ProcessNameCandidate(
    val pid: Int,
    val uid: Int,
    val processName: String?,
)

internal fun selectExactProcessName(
    currentPid: Int,
    currentUid: Int,
    candidates: Iterable<ProcessNameCandidate>,
): String? = candidates.firstOrNull { it.pid == currentPid && it.uid == currentUid }?.processName
