package com.aiquota.mobile.widget

import android.app.Activity
import android.appwidget.AppWidgetHostView
import android.appwidget.AppWidgetManager
import android.os.Bundle
import android.view.ViewGroup
import android.widget.LinearLayout
import com.aiquota.mobile.accounts.ProviderAccountId

class ProviderWidgetHostDebugActivity : Activity() {
    private lateinit var root: LinearLayout
    private val hosts = mutableMapOf<Int, AppWidgetHostView>()

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        root = LinearLayout(this).apply {
            orientation = LinearLayout.VERTICAL
        }
        setContentView(root)
    }

    fun renderWidget(appWidgetId: Int, accountId: ProviderAccountId): AppWidgetHostView {
        val host = hosts[appWidgetId] ?: AppWidgetHostView(this).also { created ->
            val providerInfo = AppWidgetManager.getInstance(this).installedProviders.single {
                it.provider.packageName == packageName &&
                    it.provider.className == ProviderUsageWidgetProvider::class.java.name
            }
            created.setAppWidget(appWidgetId, providerInfo)
            root.addView(
                created,
                LinearLayout.LayoutParams(
                    ViewGroup.LayoutParams.MATCH_PARENT,
                    420,
                ),
            )
            hosts[appWidgetId] = created
        }
        host.updateAppWidget(ProviderWidgetImmediateRenderer.remoteViews(this, appWidgetId, accountId))
        return host
    }
}
