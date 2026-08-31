package com.aiquota.mobile.ui

import android.provider.Settings
import androidx.compose.runtime.Composable
import androidx.compose.ui.platform.LocalContext

@Composable
internal fun systemAnimationsEnabled(): Boolean {
    val context = LocalContext.current
    return Settings.Global.getFloat(
        context.contentResolver,
        Settings.Global.ANIMATOR_DURATION_SCALE,
        1f
    ) > 0f
}
