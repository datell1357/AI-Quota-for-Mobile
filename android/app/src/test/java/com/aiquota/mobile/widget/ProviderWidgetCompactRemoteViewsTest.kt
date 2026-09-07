package com.aiquota.mobile.widget

import android.view.View
import android.view.ViewGroup
import android.widget.FrameLayout
import android.widget.TextView
import android.graphics.Rect
import android.appwidget.AppWidgetManager
import android.os.Bundle
import androidx.test.core.app.ApplicationProvider
import com.aiquota.mobile.accounts.*
import com.aiquota.mobile.local.ProviderId
import com.aiquota.mobile.local.ProviderConnectionState
import com.aiquota.mobile.local.ProviderUsageLine
import com.aiquota.mobile.local.ProviderUsageSnapshot
import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner
import org.robolectric.annotation.Config

@RunWith(RobolectricTestRunner::class)
@Config(sdk = [32], qualifiers = "xhdpi", application = android.app.Application::class)
class ProviderWidgetCompactRemoteViewsTest {
    private val accountId = ProviderAccountId(
        ProviderId.CLAUDE,
        AccountKey.parseOpaque("acct_00000000000000000000000000000001"),
    )

    @Test
    fun compactRemoteViewsRendersResetCaptionInsideTwoByOneBounds() {
        val context = ApplicationProvider.getApplicationContext<android.content.Context>()
        org.junit.Assume.assumeTrue(
            "Run with -Paiquota.testIncludeAndroidResources=true",
            context.resources.getIdentifier("ai_quota_widget_provider_immediate", "layout", context.packageName) != 0,
        )
        context.applicationInfo.processName = context.packageName
        org.robolectric.shadows.ShadowApplication.setProcessName(context.packageName)
        org.robolectric.shadows.ShadowProcess.setProcessName(context.packageName)
        context.deleteDatabase("ai_quota_accounts_v2.db")
        MainProcessAccountAuthority.open(context).use { authority ->
            authority.register(
                AuthorityAccountSeed(
                    account = AccountRecord(
                        id = accountId,
                        state = AccountState.ACTIVE,
                        authState = AccountAuthState.AUTHENTICATED,
                        deletionState = AccountDeletionState.NONE,
                        generation = AccountGeneration.of(1),
                        sessionRevision = SessionRevision.of(1),
                        alias = "Claude",
                        modifiedVersion = DisplayVersion.ZERO,
                    ),
                    snapshot = ProviderUsageSnapshot(
                        providerId = ProviderId.CLAUDE,
                        connectionState = ProviderConnectionState.CONNECTED,
                        lines = listOf(
                            ProviderUsageLine(
                                label = "5시간 세션",
                                remainingPercent = 1f,
                                remainingText = "100% 남음",
                                resetText = "2시간 후 초기화",
                            ),
                        ),
                    ),
                ),
            )
        }
        val appWidgetId = 901
        AppWidgetManager.getInstance(context).updateAppWidgetOptions(
            appWidgetId,
            Bundle().apply {
                putInt(AppWidgetManager.OPTION_APPWIDGET_MIN_WIDTH, 160)
                putInt(AppWidgetManager.OPTION_APPWIDGET_MAX_WIDTH, 160)
                putInt(AppWidgetManager.OPTION_APPWIDGET_MIN_HEIGHT, 80)
                putInt(AppWidgetManager.OPTION_APPWIDGET_MAX_HEIGHT, 80)
            },
        )
        val parent = FrameLayout(context)
        val remoteViews = ProviderWidgetImmediateRenderer.remoteViews(context, appWidgetId, accountId)
        val root = remoteViews.apply(context, parent) as ViewGroup
        parent.addView(root)
        root.measure(
            View.MeasureSpec.makeMeasureSpec(320, View.MeasureSpec.EXACTLY),
            View.MeasureSpec.makeMeasureSpec(160, View.MeasureSpec.EXACTLY),
        )
        root.layout(0, 0, 320, 160)

        val reset = root.findViewById<TextView>(com.aiquota.mobile.R.id.provider_immediate_reset)
        val line = root.findViewById<View>(com.aiquota.mobile.R.id.provider_immediate_line_1)
        val secondLine = root.findViewById<View>(com.aiquota.mobile.R.id.provider_immediate_line_2)
        assertEquals(View.VISIBLE, line.visibility)
        assertEquals(View.GONE, secondLine.visibility)
        assertEquals(View.VISIBLE, reset.visibility)
        assertEquals("2시간 후 초기화", reset.text.toString())
        val rootBounds = Rect()
        root.getDrawingRect(rootBounds)
        val resetBounds = Rect()
        reset.getDrawingRect(resetBounds)
        root.offsetDescendantRectToMyCoords(reset, resetBounds)
        assertTrue("reset caption must remain inside 80dp host", rootBounds.contains(resetBounds))
        context.deleteDatabase("ai_quota_accounts_v2.db")
    }
}
