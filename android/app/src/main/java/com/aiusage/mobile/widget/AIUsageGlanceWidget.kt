package com.aiusage.mobile.widget

import android.content.Context
import androidx.compose.runtime.Composable
import androidx.glance.GlanceId
import androidx.glance.GlanceModifier
import androidx.glance.appwidget.GlanceAppWidget
import androidx.glance.appwidget.GlanceAppWidgetReceiver
import androidx.glance.appwidget.provideContent
import androidx.glance.layout.Column
import androidx.glance.layout.fillMaxSize
import androidx.glance.text.Text

class AIUsageGlanceWidget : GlanceAppWidget() {
    override suspend fun provideGlance(context: Context, id: GlanceId) {
        provideContent {
            AIUsageWidgetContent()
        }
    }
}

@Composable
private fun AIUsageWidgetContent() {
    Column(modifier = GlanceModifier.fillMaxSize()) {
        Text("AI Usage")
        Text("Reads latest snapshot from local cache")
    }
}

class AIUsageGlanceWidgetReceiver : GlanceAppWidgetReceiver() {
    override val glanceAppWidget: GlanceAppWidget = AIUsageGlanceWidget()
}
