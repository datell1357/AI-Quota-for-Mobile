package com.aiquota.mobile.ui.dashboard

import androidx.compose.foundation.BorderStroke
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material3.Button
import androidx.compose.material3.Surface
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.ui.Modifier
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.dp
import com.aiquota.mobile.R
import com.aiquota.mobile.ui.AIQuotaTheme
import com.aiquota.mobile.ui.AppLayoutMetrics

@Composable
internal fun ProviderCatalogEmptyState(
    layoutMetrics: AppLayoutMetrics,
    onAddProvider: () -> Unit,
) {
    val colors = AIQuotaTheme.colors
    Surface(
        modifier = Modifier.fillMaxWidth(),
        shape = RoundedCornerShape(12.dp),
        color = colors.panel,
        border = BorderStroke(1.dp, colors.borderSoft),
    ) {
        Column(
            modifier = Modifier.padding(layoutMetrics.cardPaddingDp.dp),
            verticalArrangement = Arrangement.spacedBy(layoutMetrics.cardSpacingDp.dp),
        ) {
            Text(
                text = stringResource(R.string.provider_catalog_empty_prompt),
                fontWeight = FontWeight.SemiBold,
            )
            Button(onClick = onAddProvider) {
                Text(stringResource(R.string.provider_catalog_add))
            }
        }
    }
}
