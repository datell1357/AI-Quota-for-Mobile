package com.aiquota.mobile.ui.dashboard

import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.BoxWithConstraints
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.widthIn
import androidx.compose.foundation.lazy.grid.GridCells
import androidx.compose.foundation.lazy.grid.LazyVerticalGrid
import androidx.compose.foundation.lazy.grid.itemsIndexed
import androidx.compose.foundation.rememberScrollState
import androidx.compose.foundation.verticalScroll
import androidx.compose.material3.Icon
import androidx.compose.material3.IconButton
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.OutlinedButton
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.getValue
import androidx.compose.runtime.key
import androidx.compose.runtime.mutableStateMapOf
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.res.painterResource
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.unit.dp
import com.aiquota.mobile.R
import com.aiquota.mobile.accounts.ProviderAccountId
import com.aiquota.mobile.accounts.ProviderAccountIdStorageCodec
import com.aiquota.mobile.accounts.ProviderCardDisplayRecord
import com.aiquota.mobile.local.DashboardViewMode
import com.aiquota.mobile.ui.AIQuotaTheme
import com.aiquota.mobile.ui.AppLayoutMetrics
import com.aiquota.mobile.ui.dashboardProviderCardHeightDp
import com.aiquota.mobile.ui.forDashboardViewMode
import com.aiquota.mobile.ui.rememberAppLayoutMetrics
import kotlin.math.roundToInt

/** Existing dashboard chrome with exact account-card interaction keys. Visual redesign stays in Todo 21/22. */
@Composable
internal fun ExactDashboardCardsContent(
    cards: List<ProviderCardDisplayRecord>,
    busyAccountIds: Set<ProviderAccountId>,
    errors: Map<ProviderAccountId, String>,
    gaugeColors: Map<ProviderAccountId, String>,
    onCardSelected: (ProviderAccountId) -> Unit,
    onConnectCard: (ProviderAccountId) -> Unit,
    onReorderCard: (ProviderAccountId, Int) -> Unit,
    onAddWidget: () -> Unit,
    onOpenSettings: () -> Unit,
    viewMode: DashboardViewMode,
    onSelectViewMode: (DashboardViewMode) -> Unit,
    modifier: Modifier = Modifier,
) {
    val layoutMetrics = rememberAppLayoutMetrics().forDashboardViewMode(viewMode)
    val colors = AIQuotaTheme.colors
    val scrollState = rememberScrollState()
    val content = providerCardDashboardContent(cards, busyAccountIds, errors)
    val contentById = content.associateBy(ProviderCardDashboardContent::accountId)
    val orderedIds = content.map(ProviderCardDashboardContent::accountId)
    val centers = remember { mutableStateMapOf<ProviderAccountId, DashboardCardCenter>() }
    var draggedAccount by remember { mutableStateOf<ProviderAccountId?>(null) }
    var previewTargetIndex by remember { mutableStateOf<Int?>(null) }
    val previewIds = ProviderCardOrder.previewExactVisibleOrder(orderedIds, draggedAccount, previewTargetIndex)
    val visibleCenters = previewIds.map { centers[it] ?: DashboardCardCenter(Float.NaN, Float.NaN) }

    BoxWithConstraints(modifier = modifier) {
        val cardHeightDp = dashboardProviderCardHeightDp(maxHeight.value.roundToInt(), layoutMetrics)
        val columns = layoutMetrics.dashboardGridColumnCount.coerceAtLeast(1)
        Column(
            modifier = Modifier
                .fillMaxSize()
                .verticalScroll(scrollState)
                .padding(
                    horizontal = layoutMetrics.contentHorizontalPaddingDp.dp,
                    vertical = layoutMetrics.contentVerticalPaddingDp.dp,
                ),
            verticalArrangement = Arrangement.spacedBy(layoutMetrics.sectionSpacingDp.dp),
        ) {
            Row(
                modifier = Modifier.fillMaxWidth().height(layoutMetrics.dashboardTitleHeightDp.dp),
                horizontalArrangement = Arrangement.spacedBy(8.dp),
                verticalAlignment = Alignment.CenterVertically,
            ) {
                Row(
                    modifier = Modifier.weight(1f),
                    horizontalArrangement = Arrangement.spacedBy(8.dp),
                    verticalAlignment = Alignment.CenterVertically,
                ) {
                    Text(
                        text = stringResource(R.string.dashboard_title),
                        modifier = Modifier.weight(1f, fill = false),
                        style = MaterialTheme.typography.titleLarge,
                        color = colors.textPrimary,
                        fontWeight = FontWeight.Bold,
                        maxLines = 1,
                        overflow = TextOverflow.Ellipsis,
                    )
                    IconButton(onClick = onOpenSettings) {
                        Icon(
                            painter = painterResource(R.drawable.ic_settings),
                            contentDescription = stringResource(R.string.nav_settings),
                            tint = colors.textSecondary,
                        )
                    }
                }
                OutlinedButton(onClick = onAddWidget, modifier = Modifier.widthIn(min = 104.dp)) {
                    Text(stringResource(R.string.dashboard_add_widget), maxLines = 1)
                }
                DashboardViewModeButtons(viewMode, onSelectViewMode)
            }

            if (previewIds.isEmpty()) {
                EmptyDashboardState(layoutMetrics)
            } else if (columns == 1) {
                previewIds.forEachIndexed { index, accountId ->
                    key(accountId) {
                        ExactProviderUsageCard(
                            content = contentById.getValue(accountId),
                            index = index,
                            centers = visibleCenters,
                            cardHeightDp = cardHeightDp,
                            layoutMetrics = layoutMetrics,
                            previewTargetIndex = previewTargetIndex,
                            gaugeColor = gaugeColors[accountId],
                            onCardSelected = onCardSelected,
                            onConnectCard = onConnectCard,
                            onReorderCard = onReorderCard,
                            onCenter = { center -> centers[accountId] = center },
                            onDragging = { dragging ->
                                draggedAccount = accountId.takeIf { dragging }
                                if (!dragging) previewTargetIndex = null
                            },
                            onPreviewTarget = { previewTargetIndex = it },
                        )
                    }
                }
            } else {
                val rows = ((previewIds.size + columns - 1) / columns).coerceAtLeast(1)
                val gridHeight = cardHeightDp * rows + layoutMetrics.sectionSpacingDp * (rows - 1)
                LazyVerticalGrid(
                    columns = GridCells.Fixed(columns),
                    modifier = Modifier.fillMaxWidth().height(gridHeight.dp),
                    userScrollEnabled = false,
                    horizontalArrangement = Arrangement.spacedBy(layoutMetrics.sectionSpacingDp.dp),
                    verticalArrangement = Arrangement.spacedBy(layoutMetrics.sectionSpacingDp.dp),
                ) {
                    itemsIndexed(previewIds, key = { _, id -> ProviderAccountIdStorageCodec.encode(id) }) { index, accountId ->
                        ExactProviderUsageCard(
                            content = contentById.getValue(accountId),
                            index = index,
                            centers = visibleCenters,
                            cardHeightDp = cardHeightDp,
                            layoutMetrics = layoutMetrics,
                            previewTargetIndex = previewTargetIndex,
                            gaugeColor = gaugeColors[accountId],
                            onCardSelected = onCardSelected,
                            onConnectCard = onConnectCard,
                            onReorderCard = onReorderCard,
                            onCenter = { center -> centers[accountId] = center },
                            onDragging = { dragging ->
                                draggedAccount = accountId.takeIf { dragging }
                                if (!dragging) previewTargetIndex = null
                            },
                            onPreviewTarget = { previewTargetIndex = it },
                        )
                    }
                }
            }
        }
    }
}

@Composable
private fun ExactProviderUsageCard(
    content: ProviderCardDashboardContent,
    index: Int,
    centers: List<DashboardCardCenter>,
    cardHeightDp: Int,
    layoutMetrics: AppLayoutMetrics,
    previewTargetIndex: Int?,
    gaugeColor: String?,
    onCardSelected: (ProviderAccountId) -> Unit,
    onConnectCard: (ProviderAccountId) -> Unit,
    onReorderCard: (ProviderAccountId, Int) -> Unit,
    onCenter: (DashboardCardCenter) -> Unit,
    onDragging: (Boolean) -> Unit,
    onPreviewTarget: (Int?) -> Unit,
) {
    val id = content.accountId
    ProviderUsageCard(
        providerId = id.providerId,
        interactionKey = ProviderAccountIdStorageCodec.encode(id),
        snapshot = content.snapshot,
        visibleIndex = index,
        visibleCardCenters = centers,
        dropPlacement = null,
        previewTargetIndex = previewTargetIndex,
        cardHeightDp = cardHeightDp,
        layoutMetrics = layoutMetrics,
        gaugeColorHex = gaugeColor,
        modifier = Modifier.fillMaxWidth(),
        onProviderSelected = { onCardSelected(id) },
        onConnectProvider = { onConnectCard(id) },
        onReorderProvider = { _, target -> onReorderCard(id, target) },
        onCardCenterChanged = { _, center -> onCenter(center) },
        onDragStateChanged = { _, dragging -> onDragging(dragging) },
        onDropSlotChanged = {},
        onPreviewTargetChanged = onPreviewTarget,
        onDragOverlayChanged = { _, _, _ -> },
        onAutoScroll = {},
    )
}
