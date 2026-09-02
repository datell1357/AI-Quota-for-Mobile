package com.aiquota.mobile

import android.app.ActivityManager
import android.app.Application
import android.os.Build
import android.os.Process
import androidx.annotation.RequiresApi
import com.aiquota.mobile.accounts.LegacyAccountMigrationRunner
import com.aiquota.mobile.providers.GlmIsolatedWebViewProfile
import com.aiquota.mobile.update.AppUpdateCheckScheduler

class AIQuotaApplication : Application() {
    override fun onCreate() {
        val glmIsolatedProcess = GlmIsolatedWebViewProfile.configureIfNeeded(this)
        super.onCreate()
        if (glmIsolatedProcess) return
        val currentProcessName = selectCurrentProcessName(
            sdkInt = Build.VERSION.SDK_INT,
            currentPid = Process.myPid(),
            currentUid = Process.myUid(),
            candidates = ::legacyProcessCandidates,
            modernProcessName = {
                if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.P) modernProcessName() else ""
            },
        )
        if (currentProcessName != packageName) return
        if (BuildConfig.MULTI_ACCOUNT_ENABLED) {
            LegacyAccountMigrationRunner.startIfEnabled(
                this,
                enabled = MultiAccountStartupGate.isEnabled(),
            )
        }
        FirebaseGatewayBootstrap.install()
        AppUpdateCheckScheduler.schedule(this)
    }

    @RequiresApi(Build.VERSION_CODES.P)
    private fun modernProcessName(): String = Application.getProcessName()

    private fun legacyProcessCandidates(): List<ProcessNameCandidate> {
        val activityManager = getSystemService(ActivityManager::class.java)
        return activityManager.runningAppProcesses.orEmpty().map {
            ProcessNameCandidate(pid = it.pid, uid = it.uid, processName = it.processName)
        }
    }
}

internal object MultiAccountStartupGate {
    @JvmStatic
    fun isEnabled(): Boolean = BuildConfig.MULTI_ACCOUNT_ENABLED
}

internal fun selectCurrentProcessName(
    sdkInt: Int,
    currentPid: Int,
    currentUid: Int,
    candidates: () -> Iterable<ProcessNameCandidate>,
    modernProcessName: () -> String,
): String? =
    if (sdkInt >= Build.VERSION_CODES.P) modernProcessName()
    else selectExactProcessName(currentPid, currentUid, candidates())

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
