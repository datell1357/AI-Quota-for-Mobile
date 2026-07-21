package com.aiquota.mobile.update

import android.content.Context
import com.google.android.play.core.appupdate.AppUpdateManager
import com.google.android.play.core.appupdate.AppUpdateManagerFactory

object AppUpdateManagerProvider {
    fun create(context: Context): AppUpdateManager = AppUpdateManagerFactory.create(context)
}
