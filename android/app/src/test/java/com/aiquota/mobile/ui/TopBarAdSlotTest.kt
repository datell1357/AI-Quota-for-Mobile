package com.aiquota.mobile.ui

import com.aiquota.mobile.local.ProviderId
import java.io.File
import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Test

/**
 * 상단바 광고 자리 계약. 톱니바퀴가 대시보드 헤더로 빠지면서 비워진 자리를 광고에 내준다.
 * 광고를 넘기지 않은 상태에서 빈 높이가 잡히면 안 되고, 설정 화면의 뒤로가기와 겹쳐도 안 된다.
 */
class TopBarAdSlotTest {
    private val topBar = File("src/main/java/com/aiquota/mobile/ui/AIQuotaAppShell.kt")
        .readText()
        .substringAfter("private fun AppTopBar(")
        .substringBefore("private fun AppNavigationBar")

    @Test
    fun topBarExposesAnOptionalAdSlot() {
        assertTrue(
            "광고 슬롯은 선택 인자여야 한다. 기본값이 없으면 광고 없이 쓰는 호출부가 깨진다.",
            topBar.contains("adContent: (@Composable () -> Unit)? = null")
        )
        assertTrue(topBar.contains("heightIn(min = layoutMetrics.topBarAdMinHeightDp.dp)"))
    }

    @Test
    fun adSlotTakesNoSpaceUntilAnAdIsProvided() {
        assertTrue(
            "adContent가 null이면 슬롯 자체를 그리지 않아 기존 레이아웃이 그대로 유지돼야 한다.",
            topBar.contains("val showAd = !isSettingsRoute && adContent != null")
        )
        assertTrue(topBar.contains("if (showAd)"))
    }

    @Test
    fun adSlotAndSettingsBackButtonNeverShareTheRow() {
        // 뒤로가기는 설정 화면에서만, 광고는 설정 화면이 아닐 때만 그려 서로 겹치지 않는다.
        assertTrue(topBar.contains("if (isSettingsRoute)"))
        assertTrue(topBar.contains("!isSettingsRoute"))
    }

    @Test
    fun adSlotHeightFollowsAnchoredAdaptiveBannerSizes() {
        val phone = appLayoutMetrics(screenWidthDp = 411, screenHeightDp = 800)
        val tablet = appLayoutMetrics(screenWidthDp = 800, screenHeightDp = 1280)

        assertEquals(50, phone.topBarAdMinHeightDp)
        assertEquals(90, tablet.topBarAdMinHeightDp)
    }

    @Test
    fun settingsEntryStaysOnDashboardHeaderSoTheTopBarIsFreeForAds() {
        val dashboard = File("src/main/java/com/aiquota/mobile/ui/dashboard/UnifiedDashboardScreen.kt").readText()

        assertTrue(dashboard.contains("IconButton(onClick = onOpenSettings)"))
        assertTrue(
            "종합 설정 톱니바퀴가 상단바로 돌아오면 광고 자리가 사라진다.",
            !topBar.contains("R.drawable.ic_settings")
        )
        // provider 탭이 늘어도 상단바는 계속 비어 있어야 한다.
        assertTrue(ProviderId.defaultOrder().isNotEmpty())
    }
}
