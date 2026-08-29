package com.aiquota.mobile.widget

import android.app.PendingIntent
import android.content.Context
import android.content.Intent
import androidx.test.core.app.ApplicationProvider
import com.aiquota.mobile.AppRouteIntentRequest
import com.aiquota.mobile.MainActivity
import com.aiquota.mobile.accounts.AccountKey
import com.aiquota.mobile.accounts.ProviderAccountId
import com.aiquota.mobile.local.ProviderId
import com.aiquota.mobile.ui.AppRoute
import org.junit.Assert.assertEquals
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner
import org.robolectric.Shadows.shadowOf

@RunWith(RobolectricTestRunner::class)
class CircularWidgetHomeRoutingTest {
    @Test
    fun circularDashboardRootNavigatesHomeWhileLauncherAbsencePreservesExactDetail() {
        val context = ApplicationProvider.getApplicationContext<Context>()
        val exactB = AppRoute.ProviderDetail(
            ProviderAccountId(
                ProviderId.CODEX,
                AccountKey.parseOpaque("acct_00000000000000000000000000000002"),
            )
        )
        val launcherIntent = Intent(context, MainActivity::class.java)
            .setAction(Intent.ACTION_MAIN)
            .addCategory(Intent.CATEGORY_LAUNCHER)
        val launcherRequest = MainActivity.routeRequestFromIntent(launcherIntent) { null }

        assertEquals(AppRouteIntentRequest.Absent, launcherRequest)
        assertEquals(exactB, launcherRequest.applyTo(exactB))

        val widgetRequest = MainActivity.routeRequestFromIntent(circularRootIntent(context)) { null }
        assertEquals(AppRouteIntentRequest.Navigate(AppRoute.Home), widgetRequest)
        assertEquals(AppRoute.Home, widgetRequest.applyTo(exactB))
    }

    private fun circularRootIntent(context: Context): Intent {
        val factory = AIQuotaCircularWidgetProvider.Companion::class.java.getDeclaredMethod(
            "mainActivityPendingIntent",
            Context::class.java,
        ).apply { isAccessible = true }
        val pendingIntent = factory.invoke(AIQuotaCircularWidgetProvider.Companion, context) as PendingIntent
        return shadowOf(pendingIntent).savedIntent
    }
}
