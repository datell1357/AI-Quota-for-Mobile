package com.aiquota.mobile.notification

import android.content.Context
import android.widget.FrameLayout
import android.widget.RemoteViews
import androidx.test.core.app.ApplicationProvider
import com.aiquota.mobile.R
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner

@RunWith(RobolectricTestRunner::class)
@org.robolectric.annotation.Config(sdk = [32], qualifiers = "xhdpi", application = android.app.Application::class)
class NotificationLayoutInflateTest {
    private val context: Context get() = ApplicationProvider.getApplicationContext()

    private fun assumeAndroidResources() {
        org.junit.Assume.assumeTrue(
            "Run with -Paiquota.testIncludeAndroidResources=true",
            context.resources.getIdentifier("notification_usage_gauges", "layout", context.packageName) != 0,
        )
    }

    @Test fun expandedLayoutInflates() {
        assumeAndroidResources()
        RemoteViews(context.packageName, R.layout.notification_usage_gauges)
            .apply(context, FrameLayout(context))
    }

    @Test fun compactLayoutInflates() {
        assumeAndroidResources()
        RemoteViews(context.packageName, R.layout.notification_usage_compact)
            .apply(context, FrameLayout(context))
    }
}
