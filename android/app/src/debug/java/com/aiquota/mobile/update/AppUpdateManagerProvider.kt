package com.aiquota.mobile.update

import android.content.Context
import com.google.android.play.core.appupdate.AppUpdateManager
import com.google.android.play.core.appupdate.AppUpdateManagerFactory

// Debug builds use the real Play update manager (same as release). The FakeAppUpdateManager
// demo was removed because it reported an available update on every launch.
object AppUpdateManagerProvider {
    fun create(context: Context): AppUpdateManager = AppUpdateManagerFactory.create(context)
}
