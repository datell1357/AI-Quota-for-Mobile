package com.aiquota.mobile.ui

import androidx.compose.runtime.Composable
import com.aiquota.mobile.local.DASHBOARD_CARD_MODE_COLUMN_COUNT
import com.aiquota.mobile.local.DASHBOARD_CARD_MODE_TABLET_COLUMN_COUNT
import com.aiquota.mobile.local.DASHBOARD_CARD_MODE_VISIBLE_COUNT
import com.aiquota.mobile.local.DashboardViewMode
import androidx.compose.ui.platform.LocalConfiguration
import kotlin.math.ceil
import kotlin.math.roundToInt

data class AppLayoutMetrics(
    val contentHorizontalPaddingDp: Int,
    val contentVerticalPaddingDp: Int,
    val topBarHorizontalPaddingDp: Int,
    val topBarVerticalPaddingDp: Int,
    val topBarSettingsYOffsetDp: Int,
    /** 상단바 광고 자리의 최소 높이. 광고를 넣지 않으면 이 높이는 잡히지 않는다. */
    val topBarAdMinHeightDp: Int,
    val mainContentTopLiftDp: Int,
    val navHorizontalPaddingDp: Int,
    val navVerticalPaddingDp: Int,
    val navGapDp: Int,
    val navBarMinHeightDp: Int,
    val navBarMaxWidthDp: Int,
    val navChipWidthDp: Int,
    val navChipHeightDp: Int,
    val navChipHorizontalPaddingDp: Int,
    val navChipVerticalPaddingDp: Int,
    val sectionSpacingDp: Int,
    val cardPaddingDp: Int,
    val cardSpacingDp: Int,
    val dashboardVisibleProviderCount: Int,
    val dashboardGridColumnCount: Int,
    val dashboardTitleHeightDp: Int,
    val dashboardCardMinHeightDp: Int,
    /** 카드 폭이 좁아 여백·아이콘을 줄여야 하는지. 한 줄에 한 장이거나 카드형일 때 참이다. */
    val dashboardCompactCard: Boolean,
    /** 카드형 전용. 카드가 작아 글자까지 한 단계 줄이고 사용량 라벨도 짧게 쓴다. */
    val dashboardDenseText: Boolean = false,
    /** 태블릿 폭(600dp 이상)인지. 카드형 열 수처럼 폭에 따라 갈리는 판단에 쓴다. */
    val isTablet: Boolean = false
)

fun appLayoutMetrics(
    screenWidthDp: Int,
    screenHeightDp: Int
): AppLayoutMetrics {
    val compactWidth = screenWidthDp.coerceAtLeast(320)
    val compactHeight = screenHeightDp.coerceAtLeast(480)
    val widthScale = (compactWidth / 411f).coerceIn(1f, 1.8f)
    val heightScale = (compactHeight / 800f).coerceIn(0.95f, 1.25f)
    val isTablet = compactWidth >= 600

    fun scaled(base: Int, max: Int): Int {
        return (base * widthScale * heightScale).roundToInt().coerceAtMost(max)
    }

    val narrowPhone = !isTablet && compactWidth <= 360
    val navHorizontalPadding = when {
        isTablet -> scaled(14, 28)
        narrowPhone -> 8
        else -> scaled(10, 12)
    }
    val navVerticalPadding = if (isTablet) scaled(12, 18) else scaled(9, 12)
    val navChipVerticalPadding = if (isTablet) scaled(7, 10) else scaled(3, 4)
    val navGap = when {
        isTablet -> scaled(6, 10)
        narrowPhone -> 3
        else -> scaled(5, 6)
    }
    val routeCount = 6
    val availableNavWidth = compactWidth - (navHorizontalPadding * 2) - (navGap * (routeCount - 1))
    val fluidChipWidth = (availableNavWidth / routeCount.toFloat()).toInt()
    val navChipWidth = if (isTablet) {
        fluidChipWidth.coerceIn(72, 92)
    } else {
        fluidChipWidth.coerceIn(48, 64)
    }
    val navChipHeight = if (isTablet) scaled(70, 80) else scaled(70, 76)
    val dashboardGridColumnCount = if (isTablet) 2 else 1
    val dashboardVisibleProviderCount = if (isTablet) 4 else 3

    return AppLayoutMetrics(
        contentHorizontalPaddingDp = if (isTablet) scaled(22, 38) else scaled(14, 20),
        contentVerticalPaddingDp = if (isTablet) scaled(18, 28) else scaled(12, 18),
        topBarHorizontalPaddingDp = if (isTablet) scaled(22, 36) else scaled(16, 22),
        topBarVerticalPaddingDp = if (isTablet) scaled(18, 26) else scaled(14, 18),
        topBarSettingsYOffsetDp = if (isTablet) 5 else 4,
        // AdMob 앵커드 어댑티브 배너 기준 높이. 폰은 50dp, 태블릿은 리더보드(728x90)에 맞춘다.
        topBarAdMinHeightDp = if (isTablet) 90 else 50,
        mainContentTopLiftDp = if (isTablet) 8 else 8,
        navHorizontalPaddingDp = navHorizontalPadding,
        navVerticalPaddingDp = navVerticalPadding,
        navGapDp = navGap,
        // 제스처 바 자리는 windowInsetsPadding(navigationBars)이 실측으로 잡는다.
        // 여기에 고정 여백을 더하면 두 번 밀려 하단이 비어 보인다.
        navBarMinHeightDp = navVerticalPadding * 2 + navChipHeight,
        // 태블릿도 화면 폭을 그대로 쓴다. 칩 6개 폭으로 묶어 두면 큰 화면에서 가운데만
        // 좁게 쓰고 나머지 provider는 스크롤해야 보인다.
        navBarMaxWidthDp = compactWidth,
        navChipWidthDp = navChipWidth,
        navChipHeightDp = navChipHeight,
        navChipHorizontalPaddingDp = if (isTablet) scaled(8, 12) else scaled(6, 8),
        navChipVerticalPaddingDp = navChipVerticalPadding,
        sectionSpacingDp = if (isTablet) scaled(14, 20) else scaled(9, 12),
        cardPaddingDp = if (isTablet) scaled(14, 20) else scaled(9, 12),
        cardSpacingDp = if (isTablet) scaled(10, 14) else scaled(7, 10),
        dashboardVisibleProviderCount = dashboardVisibleProviderCount,
        dashboardGridColumnCount = dashboardGridColumnCount,
        dashboardTitleHeightDp = if (isTablet) scaled(38, 48) else scaled(36, 42),
        dashboardCardMinHeightDp = if (isTablet) scaled(180, 220) else scaled(176, 220),
        dashboardCompactCard = dashboardGridColumnCount == 1,
        isTablet = isTablet
    )
}

/**
 * 카드형은 한 화면에 여섯 개를 담는다. 폰은 세로로 긴 화면이라 2열 3행, 태블릿은 가로로
 * 넓은 화면이라 3열 2행이 화면 비율에 맞는다. 목록형은 기존 지표를 그대로 쓴다.
 */
fun AppLayoutMetrics.forDashboardViewMode(mode: DashboardViewMode): AppLayoutMetrics {
    if (mode != DashboardViewMode.CARD) return this
    val columnCount = if (isTablet) {
        DASHBOARD_CARD_MODE_TABLET_COLUMN_COUNT
    } else {
        DASHBOARD_CARD_MODE_COLUMN_COUNT
    }
    return copy(
        dashboardGridColumnCount = columnCount,
        dashboardVisibleProviderCount = DASHBOARD_CARD_MODE_VISIBLE_COUNT,
        // 폰은 3행이라 카드를 낮춰야 여섯 개가 들어간다. 태블릿은 2행이라 낮출 필요가 없다.
        dashboardCardMinHeightDp = if (isTablet) dashboardCardMinHeightDp else (dashboardCardMinHeightDp * 3) / 5,
        // 카드 폭이 좁아지므로 넓은 카드용 여백·글자 크기를 그대로 쓰면 내용이 겹치거나 잘린다.
        dashboardCompactCard = true,
        dashboardDenseText = true
    )
}

fun dashboardProviderCardHeightDp(
    viewportHeightDp: Int,
    layoutMetrics: AppLayoutMetrics
): Int {
    val visibleCount = layoutMetrics.dashboardVisibleProviderCount.coerceAtLeast(1)
    val columnCount = layoutMetrics.dashboardGridColumnCount.coerceAtLeast(1)
    val visibleRowCount = ceil(visibleCount / columnCount.toFloat())
        .roundToInt()
        .coerceAtLeast(1)
    val availableHeight = viewportHeightDp -
        layoutMetrics.contentVerticalPaddingDp -
        layoutMetrics.dashboardTitleHeightDp -
        layoutMetrics.sectionSpacingDp * visibleRowCount
    val fittedHeight = ceil(availableHeight / visibleRowCount.toFloat())
        .roundToInt()

    return fittedHeight.coerceAtLeast(layoutMetrics.dashboardCardMinHeightDp)
}

@Composable
fun rememberAppLayoutMetrics(): AppLayoutMetrics {
    val configuration = LocalConfiguration.current
    return appLayoutMetrics(
        screenWidthDp = configuration.screenWidthDp,
        screenHeightDp = configuration.screenHeightDp
    )
}
