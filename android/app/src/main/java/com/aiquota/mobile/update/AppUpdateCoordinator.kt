package com.aiquota.mobile.update

import androidx.activity.ComponentActivity
import androidx.activity.result.ActivityResultLauncher
import androidx.activity.result.IntentSenderRequest
import com.google.android.play.core.appupdate.AppUpdateInfo
import com.google.android.play.core.appupdate.AppUpdateManager
import com.google.android.play.core.appupdate.AppUpdateOptions
import com.google.android.play.core.install.InstallStateUpdatedListener
import com.google.android.play.core.install.model.AppUpdateType
import com.google.android.play.core.install.model.InstallStatus
import com.google.android.play.core.install.model.UpdateAvailability

class AppUpdateCoordinator(
    private val activity: ComponentActivity,
    private val appUpdateManager: AppUpdateManager = AppUpdateManagerProvider.create(activity)
) {
    var onUpdateAvailable: () -> Unit = {}
    var onUpdateDownloaded: () -> Unit = {}

    private var availableUpdateInfo: AppUpdateInfo? = null

    private val installListener = InstallStateUpdatedListener { state ->
        if (state.installStatus() == InstallStatus.DOWNLOADED) {
            onUpdateDownloaded()
        }
    }

    fun checkForStoreUpdate() {
        appUpdateManager.appUpdateInfo.addOnSuccessListener { appUpdateInfo ->
            val updateAvailable = AppUpdatePolicy.shouldShowStoreUpdatePrompt(appUpdateInfo.toSignal())
            availableUpdateInfo = appUpdateInfo.takeIf { updateAvailable }
            AppUpdateStateStore.setUpdateAvailable(activity, updateAvailable)
            if (updateAvailable) {
                onUpdateAvailable()
            }
        }
    }

    /**
     * Starts an in-app flexible update: Play downloads the new version in the background while
     * the app stays usable, then [onUpdateDownloaded] fires so we can offer to install it.
     * Falls back to the store listing when a flexible in-app update is not permitted (e.g. the
     * app was not installed from Google Play).
     */
    fun startFlexibleUpdate(launcher: ActivityResultLauncher<IntentSenderRequest>) {
        val appUpdateInfo = availableUpdateInfo
        if (appUpdateInfo == null || !appUpdateInfo.isUpdateTypeAllowed(AppUpdateType.FLEXIBLE)) {
            openStoreListing()
            return
        }
        appUpdateManager.registerListener(installListener)
        val started = runCatching {
            appUpdateManager.startUpdateFlowForResult(
                appUpdateInfo,
                launcher,
                AppUpdateOptions.newBuilder(AppUpdateType.FLEXIBLE).build()
            )
        }.getOrDefault(false)
        if (started) {
            AppUpdateDemoDriver.driveAfterFlowStart(appUpdateManager)
        } else {
            appUpdateManager.unregisterListener(installListener)
            openStoreListing()
        }
    }

    fun completeFlexibleUpdate() {
        appUpdateManager.completeUpdate()
    }

    /** If an update finished downloading while the app was away, re-surface the install prompt. */
    fun resumeDownloadedUpdate() {
        appUpdateManager.appUpdateInfo.addOnSuccessListener { appUpdateInfo ->
            if (appUpdateInfo.installStatus() == InstallStatus.DOWNLOADED) {
                onUpdateDownloaded()
            }
        }
    }

    fun dispose() {
        runCatching { appUpdateManager.unregisterListener(installListener) }
    }

    fun openStoreListing() {
        AppUpdateStoreNavigator.open(activity)
    }

    private fun AppUpdateInfo.toSignal(): AppUpdateSignal {
        return AppUpdateSignal(
            updateAvailable = updateAvailability() == UpdateAvailability.UPDATE_AVAILABLE,
            immediateAllowed = false,
            developerTriggeredUpdateInProgress = false
        )
    }
}
