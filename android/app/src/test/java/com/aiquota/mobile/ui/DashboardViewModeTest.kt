package com.aiquota.mobile.ui

import com.aiquota.mobile.local.DASHBOARD_CARD_MODE_COLUMN_COUNT
import com.aiquota.mobile.local.DASHBOARD_CARD_MODE_VISIBLE_COUNT
import com.aiquota.mobile.local.DashboardViewMode
import java.io.File
import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Test

/**
 * 대시보드는 목록형(기존)과 카드형(2열 6개)을 오간다.
 */
class DashboardViewModeTest {
    private val phone = appLayoutMetrics(screenWidthDp = 411, screenHeightDp = 800)
    private val tablet = appLayoutMetrics(screenWidthDp = 800, screenHeightDp = 1280)

    @Test
    fun listModeKeepsExistingLayout() {
        assertEquals(phone, phone.forDashboardViewMode(DashboardViewMode.LIST))
        assertEquals(tablet, tablet.forDashboardViewMode(DashboardViewMode.LIST))
        assertEquals(1, phone.dashboardGridColumnCount)
    }

    @Test
    fun cardModeShowsSixProvidersInTwoColumns() {
        listOf(phone, tablet).forEach { base ->
            val card = base.forDashboardViewMode(DashboardViewMode.CARD)

            assertEquals(DASHBOARD_CARD_MODE_COLUMN_COUNT, card.dashboardGridColumnCount)
            assertEquals(DASHBOARD_CARD_MODE_VISIBLE_COUNT, card.dashboardVisibleProviderCount)
            assertTrue(
                "여섯 개가 한 화면에 들어가려면 카드가 더 낮아야 한다",
                card.dashboardCardMinHeightDp < base.dashboardCardMinHeightDp
            )
        }
    }

    @Test
    fun cardModeFitsSixCardsWhereListFitsThree() {
        val viewport = 700
        val listHeight = dashboardProviderCardHeightDp(
            viewportHeightDp = viewport,
            layoutMetrics = phone.forDashboardViewMode(DashboardViewMode.LIST)
        )
        val cardMetrics = phone.forDashboardViewMode(DashboardViewMode.CARD)
        val cardHeight = dashboardProviderCardHeightDp(viewportHeightDp = viewport, layoutMetrics = cardMetrics)

        // 목록형은 세로로 3장, 카드형은 3행 × 2열이라 같은 화면에 6장이 들어간다.
        assertEquals(3, phone.dashboardVisibleProviderCount)
        assertEquals(6, cardMetrics.dashboardVisibleProviderCount)
        // 행 수가 같으므로 카드 높이는 비슷하되, 2열이라 한 화면에 담기는 개수가 두 배가 된다.
        assertTrue("카드 높이가 목록형보다 크면 안 된다", cardHeight <= listHeight)
    }

    @Test
    fun storageIdRoundTripFallsBackToList() {
        assertEquals(DashboardViewMode.LIST, DashboardViewMode.DEFAULT)
        assertEquals(DashboardViewMode.LIST, DashboardViewMode.fromStorageId("bogus"))
        assertEquals(DashboardViewMode.CARD, DashboardViewMode.fromStorageId("CARD"))
    }

    @Test
    fun settingsButtonSitsNextToTheTitleAndModeButtonsFollowAddWidget() {
        val source = File("src/main/java/com/aiquota/mobile/ui/dashboard/UnifiedDashboardScreen.kt").readText()
        val header = source.substringAfter("layoutMetrics.dashboardTitleHeightDp")
            .substringBefore("if (visibleProviders.isEmpty())")

        val settings = header.indexOf("R.string.nav_settings")
        val titleGroupWeight = header.indexOf("modifier = Modifier.weight(1f)")
        val addWidget = header.indexOf("R.string.dashboard_add_widget")
        val modeButtons = header.indexOf("DashboardViewModeButtons")

        assertTrue("제목과 설정 버튼이 남는 폭을 가져가 나머지를 오른쪽으로 민다", titleGroupWeight in 0 until settings)
        assertTrue("설정 버튼은 제목 바로 옆, 위젯 추가보다 앞에 온다", settings in 0 until addWidget)
        assertTrue("모드 선택 버튼은 위젯 추가 오른쪽에 온다", addWidget < modeButtons)
    }

    @Test
    fun bothModeButtonsStaySquareEvenWhenTheHeaderIsTight() {
        val source = File("src/main/java/com/aiquota/mobile/ui/dashboard/UnifiedDashboardScreen.kt").readText()

        assertTrue(
            "폭이 모자랄 때 마지막 버튼만 찌그러지지 않도록 requiredSize로 고정한다",
            source.contains("Modifier.requiredSize(DashboardHeaderButtonSize)")
        )
        assertTrue(
            "제목이 대신 줄어들어야 버튼이 온전한 정사각형으로 남는다",
            source.contains("Modifier.weight(1f, fill = false)")
        )
    }

    @Test
    fun bothModeButtonsAreSelectableRatherThanOneToggle() {
        val source = File("src/main/java/com/aiquota/mobile/ui/dashboard/UnifiedDashboardScreen.kt").readText()
        val buttons = source.substringAfter("private fun DashboardViewModeButtons")
            .substringBefore("private fun DashboardViewModeButton(")

        assertTrue(
            "목록형 버튼이 목록형을 직접 선택한다",
            buttons.contains("onSelectViewMode(DashboardViewMode.LIST)")
        )
        assertTrue(
            "카드형 버튼이 카드형을 직접 선택한다",
            buttons.contains("onSelectViewMode(DashboardViewMode.CARD)")
        )
        assertTrue("지금 모드를 강조한다", buttons.contains("selected = viewMode == DashboardViewMode.LIST"))
    }

    @Test
    fun cardModeUsesSmallerTextAndShorterLabels() {
        assertTrue("카드형만 글자를 줄인다", phone.forDashboardViewMode(DashboardViewMode.CARD).dashboardDenseText)
        assertTrue("목록형은 그대로 둔다", !phone.forDashboardViewMode(DashboardViewMode.LIST).dashboardDenseText)

        val source = File("src/main/java/com/aiquota/mobile/ui/dashboard/UnifiedDashboardScreen.kt").readText()
        assertTrue(
            "카드형에서는 사용량 라벨을 짧게 쓴다",
            source.contains("if (dense) compactUsageLabel(it) else it")
        )
    }
}
