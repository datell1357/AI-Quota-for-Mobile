package com.aiquota.mobile.update

import com.google.android.play.core.appupdate.AppUpdateManager

/** Release builds use the real Play update flow; nothing to drive. */
object AppUpdateDemoDriver {
    fun driveAfterFlowStart(manager: AppUpdateManager) {}
}
