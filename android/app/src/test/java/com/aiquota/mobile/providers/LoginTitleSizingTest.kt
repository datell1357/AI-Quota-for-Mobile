package com.aiquota.mobile.providers

import java.io.File
import org.junit.Assert.assertTrue
import org.junit.Test

/**
 * 로그인 화면 제목은 글자 크기(sp)에서 높이를 구해야 한다.
 *
 * 고정 픽셀 높이(96px)로 두면 화면 밀도와 사용자 글꼴 설정에 따라 글자가 커지는데 상자는
 * 그대로라 아랫부분(g·y 같은 내림자)이 잘린다(2026-08-12 실측). 같은 값을 WebView와 팝업의
 * 상단 오프셋도 쓰므로 어긋나면 본문 위치까지 틀어진다.
 */
class LoginTitleSizingTest {
    private val source = File("src/main/java/com/aiquota/mobile/providers/WebLoginActivity.kt").readText()

    @Test
    fun titleHeightIsMeasuredInsteadOfHardCoded() {
        assertTrue(
            "고정 픽셀 높이는 밀도·글꼴 설정을 따라가지 못한다",
            !source.contains("private fun loginTitleHeight(): Int = 96")
        )
        assertTrue(
            source.contains("private fun loginTitleHeight(): Int = loginTitleHeightPx") &&
                source.contains("titleView.measure(")
        )
    }

    @Test
    fun titlePaddingScalesWithDensity() {
        assertTrue(
            "raw 픽셀 여백은 밀도가 낮은 기기에서 과하고 높은 기기에서 모자라다",
            !source.contains("setPadding(32, 24, 32, 24)")
        )
        assertTrue(source.contains("setPadding(dpToPx(16), dpToPx(8), dpToPx(16), dpToPx(8))"))
        assertTrue(source.contains("resources.displayMetrics.density"))
    }

    @Test
    fun contentOffsetsShareTheSameTitleHeight() {
        // 제목 상자와 본문 오프셋이 서로 다른 값을 쓰면 배너 아래가 겹치거나 벌어진다.
        val layoutParams = source.substringAfter("private fun loginWebViewLayoutParams")
            .substringBefore("private fun attachLoginAdBanner")

        assertTrue(layoutParams.contains("loginAdHeight + loginTitleHeight()"))
        assertTrue(
            "제목 뷰도 같은 높이로 배치한다",
            source.contains("FrameLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, loginTitleHeight())")
        )
    }
}
