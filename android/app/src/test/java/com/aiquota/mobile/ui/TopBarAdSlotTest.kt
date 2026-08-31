package com.aiquota.mobile.ui

import com.aiquota.mobile.local.ProviderId
import java.io.File
import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Test

/**
 * 상단바 광고 자리 계약. 톱니바퀴가 대시보드 헤더로 빠지면서 비워진 자리를 광고에 내준다.
 * 광고를 넘기지 않은 상태에서 빈 높이가 잡히면 안 되고, 설정 화면의 뒤로가기와 겹쳐도 안 된다.
 * 설정 화면에서도 광고는 뜬다 — 겹침은 세로로 쌓아서 푼다.
 *
 * provider 상세 화면만 예외다. 10개 provider가 아이콘·이름만 다를 뿐 레이아웃이 동일해
 * AdMob이 "복제된 콘텐츠가 있는 화면에 게재된 광고"로 지적했다(2026-08-19).
 */
class TopBarAdSlotTest {
    private val shell = File("src/main/java/com/aiquota/mobile/ui/AIQuotaAppShell.kt").readText()
    private val banner = File("src/main/java/com/aiquota/mobile/ui/ads/TopBarAdBanner.kt").readText()
    private val exactDashboard =
        File("src/main/java/com/aiquota/mobile/ui/dashboard/ExactAccountDashboardScreen.kt").readText()
    private val emptyState =
        File("src/main/java/com/aiquota/mobile/ui/dashboard/ProviderCatalogEmptyState.kt").readText()
    private val topBar = shell
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
            topBar.contains("val showAd = adContent != null")
        )
        assertTrue(topBar.contains("if (showAd)"))
    }

    @Test
    fun adSlotAndSettingsBackButtonNeverShareTheRow() {
        // 한 Box에 겹쳐 놓으면 배너가 뒤로가기를 덮는다. 광고를 가리는 건 AdMob 정책에도 걸린다.
        // 뒤로가기를 상태 표시줄 바로 아래에 붙이고 그 아래 폭 전체를 배너에 준다.
        val stack = topBar.substringAfter("Column(modifier = Modifier.fillMaxWidth())")
        val adIdx = stack.indexOf("adContent?.invoke()")
        val backIdx = stack.indexOf("R.drawable.ic_arrow_back")

        assertTrue("광고와 뒤로가기를 한 Column에 쌓는다", adIdx >= 0 && backIdx >= 0)
        assertTrue(
            "배너가 최상단이어야 다른 화면과 같은 자리에 온다. 뒤로가기는 그 아래 본문 바로 위.",
            adIdx < backIdx
        )
        assertTrue(
            "위 여백은 다른 화면과 동일하게 둔다",
            topBar.contains("top = layoutMetrics.topBarVerticalPaddingDp.dp")
        )
        assertTrue(
            "터치 영역은 지키되 아이콘을 작게 그려 본문과의 간격을 줄인다",
            topBar.contains("Modifier.requiredSize(SettingsBackButtonSize)") &&
                topBar.contains("Modifier.size(SettingsBackIconSize)")
        )
    }

    @Test
    fun settingsScreenAlsoShowsTheAd() {
        // 설정 화면만 광고를 빼면 그만큼 노출을 잃는다. 이제 경로와 무관하게 슬롯을 띄운다.
        assertTrue(
            "설정 화면이라고 광고를 빼지 않는다",
            !topBar.contains("!isSettingsRoute && adContent != null")
        )
        assertTrue("뒤로가기는 설정 화면에서만 그린다", topBar.contains("if (isSettingsRoute)"))
    }

    @Test
    fun providerDetailScreensNeverShowTheAd() {
        // 10개 provider 상세 화면이 아이콘·이름만 다를 뿐 레이아웃이 동일해 AdMob이 복제된
        // 콘텐츠로 지적했다. 구조가 유일한 대시보드·설정 화면에만 광고를 남긴다.
        assertTrue(
            "provider 상세 화면은 showAd 계산에서 제외해야 한다",
            topBar.contains("val showAd = adContent != null && route !is AppRoute.ProviderDetail")
        )
    }

    @Test
    fun adSlotHeightFollowsAnchoredAdaptiveBannerSizes() {
        val phone = appLayoutMetrics(screenWidthDp = 411, screenHeightDp = 800)
        val tablet = appLayoutMetrics(screenWidthDp = 800, screenHeightDp = 1280)

        assertEquals(50, phone.topBarAdMinHeightDp)
        assertEquals(90, tablet.topBarAdMinHeightDp)
    }

    @Test
    fun providerPickerBlocksAdFocusUntilAddInvokerFocusReturns() {
        assertTrue(
            shell.contains(
                "val topBarAdFocusEnabled = providerEnrollment?.state?.visible != true && " +
                    "providerAddFocusRequester == null",
            ),
        )
        assertTrue(shell.contains("TopBarAdBanner(focusEnabled = topBarAdFocusEnabled)"))
        assertTrue(banner.contains("fun TopBarAdBanner(focusEnabled: Boolean = true"))
        assertTrue(banner.contains("view.findFocus()?.clearFocus()"))
        assertTrue(banner.contains("ViewGroup.FOCUS_BLOCK_DESCENDANTS"))
        assertTrue(banner.contains("view.descendantFocusability = initialDescendantFocusability"))
        assertTrue(
            exactDashboard.contains("Modifier.focusRequester(addProviderFocusRequester).focusable()"),
        )
        assertTrue(emptyState.contains("Modifier.focusRequester(focusRequester).focusable()"))
    }

    @Test
    fun settingsEntryStaysOnDashboardHeaderSoTheTopBarIsFreeForAds() {
        val dashboard = File("src/main/java/com/aiquota/mobile/ui/dashboard/UnifiedDashboardScreen.kt").readText()

        assertTrue(dashboard.contains("onClick = onOpenSettings"))
        assertTrue(
            "종합 설정 톱니바퀴가 상단바로 돌아오면 광고 자리가 사라진다.",
            !topBar.contains("R.drawable.ic_settings")
        )
        // provider 탭이 늘어도 상단바는 계속 비어 있어야 한다.
        assertTrue(ProviderId.defaultOrder().isNotEmpty())
    }
}
