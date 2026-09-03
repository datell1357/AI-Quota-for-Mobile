package com.aiquota.mobile.ui

import androidx.compose.foundation.BorderStroke
import androidx.compose.foundation.background
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.ColumnScope
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.layout.width
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Surface
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.semantics.heading
import androidx.compose.ui.semantics.semantics
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.unit.dp
import com.aiquota.mobile.local.AppTheme

/**
 * The dashboard draws every provider card as a little desktop window. Dialogs and sheets use the
 * same chrome so that adding, naming and removing cards look like the rest of the app instead of
 * plain Material surfaces.
 */
@Composable
internal fun AIQuotaWindowFrame(
    title: String,
    modifier: Modifier = Modifier,
    titleModifier: Modifier = Modifier,
    content: @Composable ColumnScope.() -> Unit,
) {
    val colors = AIQuotaTheme.colors
    val macOS = colors.theme == AppTheme.MACOS
    Surface(
        modifier = modifier,
        shape = aiQuotaWindowShape(colors.theme),
        color = colors.cardChrome,
        border = BorderStroke(if (macOS) 1.dp else 2.dp, colors.border),
        shadowElevation = if (macOS) 12.dp else 2.dp,
    ) {
        Column {
            Row(
                modifier = Modifier
                    .fillMaxWidth()
                    .height(if (macOS) 30.dp else 22.dp)
                    .background(colors.titleBar)
                    .padding(horizontal = 6.dp),
                verticalAlignment = Alignment.CenterVertically,
            ) {
                if (macOS) {
                    AIQuotaWindowButton(0)
                    Spacer(Modifier.width(6.dp))
                    AIQuotaWindowButton(1)
                    Spacer(Modifier.width(6.dp))
                    AIQuotaWindowButton(2)
                    Spacer(Modifier.width(10.dp))
                }
                Text(
                    text = title,
                    modifier = titleModifier.then(Modifier.semantics { heading() }),
                    style = MaterialTheme.typography.labelMedium,
                    color = colors.titleText,
                    fontWeight = FontWeight.Bold,
                    maxLines = 1,
                    overflow = TextOverflow.Ellipsis,
                )
                if (!macOS) {
                    AIQuotaWindowButton(0)
                    Spacer(Modifier.width(3.dp))
                    AIQuotaWindowButton(1)
                    Spacer(Modifier.width(3.dp))
                    AIQuotaWindowButton(2)
                }
            }
            Column(
                modifier = Modifier.fillMaxWidth().background(colors.panel),
                verticalArrangement = Arrangement.Top,
                content = content,
            )
        }
    }
}

@Composable
private fun AIQuotaWindowButton(index: Int) {
    val colors = AIQuotaTheme.colors
    val macOS = colors.theme == AppTheme.MACOS
    val macColor = when (index) {
        0 -> colors.trafficRed
        1 -> colors.trafficYellow
        else -> colors.trafficGreen
    }
    Surface(
        modifier = Modifier.size(if (macOS) 10.dp else 11.dp),
        shape = RoundedCornerShape(if (macOS) 999.dp else 0.dp),
        color = if (macOS) macColor else colors.cardChrome,
        border = BorderStroke(1.dp, if (macOS) macColor else colors.borderSoft),
    ) {}
}

internal fun aiQuotaWindowShape(theme: AppTheme): RoundedCornerShape =
    RoundedCornerShape(if (theme == AppTheme.MACOS) 12.dp else 2.dp)

/** Rows inside those windows follow the same corner language as the window itself. */
internal fun aiQuotaRowShape(theme: AppTheme): RoundedCornerShape =
    RoundedCornerShape(if (theme == AppTheme.MACOS) 8.dp else 0.dp)
