package com.aiquota.mobile.ui.dashboard

import androidx.compose.foundation.focusable
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.padding
import androidx.compose.material3.Button
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.focus.FocusRequester
import androidx.compose.ui.focus.focusRequester
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.semantics.contentDescription
import androidx.compose.ui.semantics.semantics
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.unit.dp
import com.aiquota.mobile.R
import com.aiquota.mobile.ui.AppLayoutMetrics

/**
 * 카드가 하나도 없을 때의 대시보드. 카드 자리에 패널을 얹으면 창 하나가 떠 있는 것처럼 보여
 * 나머지 화면과 겉돈다. 테두리 없이 안내 문구와 추가 버튼만 대시보드 가운데에 둔다.
 */
@Composable
internal fun ProviderCatalogEmptyState(
    layoutMetrics: AppLayoutMetrics,
    onAddProvider: () -> Unit,
    focusRequester: FocusRequester? = null,
) {
    Column(
        modifier = Modifier
            .fillMaxWidth()
            .padding(layoutMetrics.cardPaddingDp.dp),
        horizontalAlignment = Alignment.CenterHorizontally,
        verticalArrangement = Arrangement.spacedBy(layoutMetrics.cardSpacingDp.dp),
    ) {
        Text(
            text = stringResource(R.string.provider_catalog_empty_prompt),
            fontWeight = FontWeight.SemiBold,
            textAlign = TextAlign.Center,
        )
        val addDescription = stringResource(R.string.provider_catalog_add_action)
        Button(
            onClick = onAddProvider,
            modifier = Modifier
                .then(
                    if (focusRequester == null) Modifier else {
                        Modifier.focusRequester(focusRequester).focusable()
                    },
                )
                .semantics { contentDescription = addDescription },
        ) {
            Text(stringResource(R.string.provider_catalog_add))
        }
    }
}
