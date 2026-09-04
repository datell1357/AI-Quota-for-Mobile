package com.aiquota.mobile.ui.dashboard

import android.view.accessibility.AccessibilityNodeInfo
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.gestures.scrollBy
import androidx.compose.foundation.focusable
import androidx.compose.foundation.layout.BoxWithConstraints
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.heightIn
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.layout.widthIn
import androidx.compose.foundation.lazy.grid.GridCells
import androidx.compose.foundation.lazy.grid.LazyVerticalGrid
import androidx.compose.foundation.lazy.grid.itemsIndexed
import androidx.compose.runtime.DisposableEffect
import androidx.compose.foundation.lazy.grid.rememberLazyGridState
import androidx.compose.material3.Icon
import androidx.compose.material3.IconButton
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.OutlinedButton
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateMapOf
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.rememberCoroutineScope
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.focus.FocusRequester
import androidx.compose.ui.focus.focusRequester
import androidx.compose.ui.layout.LocalPinnableContainer
import androidx.compose.ui.layout.onGloballyPositioned
import androidx.compose.ui.layout.positionInRoot
import androidx.compose.ui.res.painterResource
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.unit.dp
import androidx.compose.ui.viewinterop.AndroidView
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
import com.aiquota.mobile.ui.systemAnimationsEnabled
import kotlinx.coroutines.launch
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
    onAddProvider: () -> Unit,
    onAddProviderFromEmptyState: (() -> Unit)? = null,
    onRemoveProvider: () -> Unit,
    removeProviderFocusRequester: FocusRequester? = null,
    addProviderFocusRequester: FocusRequester? = null,
    emptyStateAddProviderFocusRequester: FocusRequester? = null,
    modifier: Modifier = Modifier,
) {
    val layoutMetrics = rememberAppLayoutMetrics().forDashboardViewMode(viewMode)
    val colors = AIQuotaTheme.colors
    val scrollState = rememberLazyGridState()
    val coroutineScope = rememberCoroutineScope()
    val content = providerCardDashboardContent(cards, busyAccountIds, errors)
    val contentById = content.associateBy(ProviderCardDashboardContent::accountId)
    val orderedIds = content.map(ProviderCardDashboardContent::accountId)
    var previousAccountIds by remember { mutableStateOf(orderedIds) }
    val centers = remember { mutableStateMapOf<ProviderAccountId, DashboardCardCenter>() }
    var draggedAccount by remember { mutableStateOf<ProviderAccountId?>(null) }
    var previewTargetIndex by remember { mutableStateOf<Int?>(null) }
    var dropSlotIndex by remember { mutableStateOf<Int?>(null) }
    var dashboardRootPosition by remember { mutableStateOf(DashboardCardCenter(0f, 0f)) }
    var dragOverlayBounds by remember { mutableStateOf<DashboardCardBounds?>(null) }
    var dragOverlayOffsetX by remember { mutableStateOf(0f) }
    var dragOverlayOffsetY by remember { mutableStateOf(0f) }
    val previewIds = ProviderCardOrder.previewExactVisibleOrder(orderedIds, draggedAccount, previewTargetIndex)
    val visibleCenters = previewIds.map { centers[it] ?: DashboardCardCenter(Float.NaN, Float.NaN) }

    LaunchedEffect(orderedIds) {
        val addedIndex = orderedIds.indexOfLast { it !in previousAccountIds }
        if (previousAccountIds.isNotEmpty() && addedIndex >= 0) {
            scrollState.scrollToItem(addedIndex)
        }
        previousAccountIds = orderedIds
    }

    BoxWithConstraints(
        modifier = modifier.onGloballyPositioned { coordinates ->
            val position = coordinates.positionInRoot()
            dashboardRootPosition = DashboardCardCenter(position.x, position.y)
        }
    ) {
        val density = androidx.compose.ui.platform.LocalDensity.current
        val animationsEnabled = systemAnimationsEnabled()
        val cardHeightDp = dashboardProviderCardHeightDp(maxHeight.value.roundToInt(), layoutMetrics)
        val columns = layoutMetrics.dashboardGridColumnCount.coerceAtLeast(1)
        val viewportTopY = dashboardRootPosition.y
        val viewportBottomY = dashboardRootPosition.y + with(density) { maxHeight.toPx() }
        val edgeThresholdPx = with(density) { 96.dp.toPx() }
        val onAutoScroll: (Float) -> Unit = { draggedCenterY ->
            val delta = dashboardAutoScrollDelta(
                draggedCenterY = draggedCenterY,
                viewportTopY = viewportTopY,
                viewportBottomY = viewportBottomY,
                edgeThresholdPx = edgeThresholdPx,
            )
            if (delta != 0f) {
                coroutineScope.launch { scrollState.scrollBy(delta) }
            }
        }
        val onDragOverlayChanged: (DashboardCardBounds?, Float, Float) -> Unit = { bounds, offsetX, offsetY ->
            dragOverlayBounds = bounds
            dragOverlayOffsetX = offsetX
            dragOverlayOffsetY = offsetY
        }
        AndroidView(
            factory = ::ProviderCardCatalogAccessibilityScrollView,
            modifier = Modifier.fillMaxSize(),
            update = { scrollView ->
                scrollView.onAccessibilityScroll = { action ->
                    coroutineScope.launch {
                        val targetIndex = when (action) {
                            AccessibilityNodeInfo.ACTION_SCROLL_FORWARD -> previewIds.lastIndex
                            AccessibilityNodeInfo.ACTION_SCROLL_BACKWARD -> 0
                            else -> return@launch
                        }
                        if (targetIndex >= 0) {
                            scrollState.scrollToItem(targetIndex)
                        }
                    }
                }
            },
        )
        Column(
            modifier = Modifier
                .fillMaxSize()
                .padding(
                    horizontal = layoutMetrics.contentHorizontalPaddingDp.dp,
                    vertical = layoutMetrics.contentVerticalPaddingDp.dp,
                ),
        ) {
            Column(
                modifier = Modifier.fillMaxWidth(),
                verticalArrangement = Arrangement.spacedBy(layoutMetrics.cardSpacingDp.dp),
            ) {
                Row(
                    modifier = Modifier.fillMaxWidth().heightIn(min = DashboardCatalogActionSize),
                    verticalAlignment = Alignment.CenterVertically,
                ) {
                    Text(
                        text = stringResource(R.string.dashboard_title),
                        modifier = Modifier.weight(1f),
                        style = MaterialTheme.typography.titleLarge,
                        color = colors.textPrimary,
                        fontWeight = FontWeight.Bold,
                        maxLines = 1,
                        overflow = TextOverflow.Ellipsis,
                    )
                    IconButton(
                        onClick = onOpenSettings,
                        modifier = Modifier.size(DashboardCatalogActionSize),
                    ) {
                        Icon(
                            painter = painterResource(R.drawable.ic_settings),
                            contentDescription = stringResource(R.string.nav_settings),
                            tint = colors.textSecondary,
                        )
                    }
                    IconButton(
                        onClick = onAddProvider,
                        modifier = Modifier
                            .size(DashboardCatalogActionSize)
                            .then(
                                if (addProviderFocusRequester == null) Modifier else {
                                    Modifier.focusRequester(addProviderFocusRequester).focusable()
                                },
                            ),
                    ) {
                        Icon(
                            painter = painterResource(R.drawable.ic_add_provider),
                            contentDescription = stringResource(R.string.provider_catalog_add_action),
                            tint = colors.textSecondary,
                        )
                    }
                    IconButton(
                        onClick = onRemoveProvider,
                        modifier = Modifier
                            .size(DashboardCatalogActionSize)
                            .then(
                                if (removeProviderFocusRequester == null) Modifier else {
                                    Modifier.focusRequester(removeProviderFocusRequester)
                                },
                            ),
                    ) {
                        Icon(
                            painter = painterResource(R.drawable.ic_remove_provider),
                            contentDescription = stringResource(R.string.provider_catalog_remove_action),
                            tint = colors.textSecondary,
                        )
                    }
                }
                Row(
                    modifier = Modifier.fillMaxWidth(),
                    horizontalArrangement = Arrangement.spacedBy(8.dp, Alignment.End),
                    verticalAlignment = Alignment.CenterVertically,
                ) {
                    OutlinedButton(onClick = onAddWidget, modifier = Modifier.widthIn(min = 104.dp)) {
                        Text(stringResource(R.string.dashboard_add_widget), maxLines = 1)
                    }
                    DashboardViewModeButtons(viewMode, onSelectViewMode)
                }
            }
            // 카드가 없을 때는 격자 대신 남은 영역 가운데에 안내를 둔다. 격자의 첫 칸에 넣으면
            // 안내가 화면 맨 위에 붙어 카드가 하나 놓인 것처럼 보인다.
            if (previewIds.isEmpty()) {
                Box(
                    modifier = Modifier.fillMaxWidth().weight(1f),
                    contentAlignment = Alignment.Center,
                ) {
                    ProviderCatalogEmptyState(
                        layoutMetrics = layoutMetrics,
                        onAddProvider = onAddProviderFromEmptyState ?: onAddProvider,
                        focusRequester = emptyStateAddProviderFocusRequester,
                    )
                }
            } else {
                LazyVerticalGrid(
                    columns = GridCells.Fixed(columns),
                    state = scrollState,
                    modifier = Modifier.fillMaxWidth().weight(1f),
                    horizontalArrangement = Arrangement.spacedBy(layoutMetrics.sectionSpacingDp.dp),
                    verticalArrangement = Arrangement.spacedBy(layoutMetrics.sectionSpacingDp.dp),
                ) {
                    itemsIndexed(previewIds, key = { _, id -> ProviderAccountIdStorageCodec.encode(id) }) { index, accountId ->
                        val cardModifier = if (accountId == draggedAccount || !animationsEnabled) {
                            Modifier.fillMaxWidth()
                        } else {
                            Modifier.animateItem().fillMaxWidth()
                        }
                        // Auto-scrolling a drag past the viewport would otherwise dispose this item
                        // and cancel the gesture, so the dragged card stays composed while held.
                        val pinnableContainer = LocalPinnableContainer.current
                        DisposableEffect(accountId == draggedAccount, pinnableContainer) {
                            val pinned = if (accountId == draggedAccount) pinnableContainer?.pin() else null
                            onDispose { pinned?.release() }
                        }
                        ExactProviderUsageCard(
                            content = contentById.getValue(accountId),
                            index = index,
                            centers = visibleCenters,
                            cardHeightDp = cardHeightDp,
                            layoutMetrics = layoutMetrics,
                            previewTargetIndex = previewTargetIndex,
                            dropSlotIndex = dropSlotIndex,
                            isPlaceholder = accountId == draggedAccount,
                            isDragging = draggedAccount != null,
                            gaugeColor = gaugeColors[accountId],
                            showConnectAction = contentById.getValue(accountId).showConnectAction,
                            onCardSelected = onCardSelected,
                            onConnectCard = onConnectCard,
                            onReorderCard = onReorderCard,
                            onCenter = { center -> centers[accountId] = center },
                            onDragging = { dragging ->
                                draggedAccount = accountId.takeIf { dragging }
                                if (dragging) {
                                    previewTargetIndex = orderedIds.indexOf(accountId).takeIf { it >= 0 }
                                } else {
                                    previewTargetIndex = null
                                    dropSlotIndex = null
                                }
                            },
                            onDropSlot = { dropSlotIndex = it },
                            onPreviewTarget = { previewTargetIndex = it },
                            onDragOverlayChanged = onDragOverlayChanged,
                            onAutoScroll = onAutoScroll,
                            modifier = cardModifier,
                        )
                    }
                }
            }
        }
        val overlayAccount = draggedAccount
        val overlayBounds = dragOverlayBounds
        if (overlayAccount != null && overlayBounds != null) {
            val overlayContent = contentById[overlayAccount]
            if (overlayContent != null) {
                DashboardDragOverlay(
                    providerId = overlayAccount.providerId,
                    snapshot = overlayContent.snapshot,
                    gaugeColorHex = gaugeColors[overlayAccount],
                    bounds = overlayBounds,
                    offsetX = dragOverlayOffsetX,
                    offsetY = dragOverlayOffsetY,
                    rootPosition = dashboardRootPosition,
                    cardHeightDp = cardHeightDp,
                    layoutMetrics = layoutMetrics,
                )
            }
        }
    }
}

private val DashboardCatalogActionSize = 48.dp

@Composable
private fun ExactProviderUsageCard(
    content: ProviderCardDashboardContent,
    index: Int,
    centers: List<DashboardCardCenter>,
    cardHeightDp: Int,
    layoutMetrics: AppLayoutMetrics,
    previewTargetIndex: Int?,
    dropSlotIndex: Int?,
    isPlaceholder: Boolean,
    isDragging: Boolean,
    gaugeColor: String?,
    showConnectAction: Boolean,
    onCardSelected: (ProviderAccountId) -> Unit,
    onConnectCard: (ProviderAccountId) -> Unit,
    onReorderCard: (ProviderAccountId, Int) -> Unit,
    onCenter: (DashboardCardCenter) -> Unit,
    onDragging: (Boolean) -> Unit,
    onDropSlot: (Int?) -> Unit,
    onPreviewTarget: (Int?) -> Unit,
    onDragOverlayChanged: (DashboardCardBounds?, Float, Float) -> Unit,
    onAutoScroll: (Float) -> Unit,
    modifier: Modifier,
) {
    val id = content.accountId
    ProviderUsageCard(
        providerId = id.providerId,
        interactionKey = ProviderAccountIdStorageCodec.encode(id),
        snapshot = content.snapshot,
        visibleIndex = index,
        visibleCardCenters = centers,
        dropPlacement = dashboardDropPlacement(
            visibleIndex = index,
            visibleCount = centers.size,
            isDragging = isDragging,
            dropSlotIndex = dropSlotIndex,
        ),
        previewTargetIndex = previewTargetIndex,
        cardHeightDp = cardHeightDp,
        layoutMetrics = layoutMetrics,
        gaugeColorHex = gaugeColor,
        showConnectAction = showConnectAction,
        modifier = modifier,
        isPlaceholder = isPlaceholder,
        onProviderSelected = { onCardSelected(id) },
        onConnectProvider = { onConnectCard(id) },
        onReorderProvider = { _, target -> onReorderCard(id, target) },
        onMoveUp = { onReorderCard(id, index - 1) },
        onMoveDown = { onReorderCard(id, index + 1) },
        onCardCenterChanged = { _, center -> onCenter(center) },
        onDragStateChanged = { _, dragging -> onDragging(dragging) },
        onDropSlotChanged = onDropSlot,
        onPreviewTargetChanged = onPreviewTarget,
        onDragOverlayChanged = onDragOverlayChanged,
        onAutoScroll = onAutoScroll,
    )
}
