package com.aiquota.mobile.ui

import android.app.Activity
import android.view.View
import androidx.core.view.ViewCompat
import androidx.core.view.WindowCompat
import androidx.core.view.WindowInsetsCompat
import androidx.core.view.WindowInsetsControllerCompat

/**
 * targetSdk 35+에서는 시스템 표시줄이 화면을 덮는다. Compose를 쓰지 않는 화면(순수 Activity)은
 * enableEdgeToEdge()를 쓸 수 없어 같은 일을 직접 한다. [rootView]에 인셋만큼 패딩을 줘서
 * 콘텐츠가 상태 표시줄·제스처 바에 가리지 않게 하고, 시스템 표시줄 뒤에 깔리는 밝은 창
 * 배경에 맞춰 아이콘을 어둡게 지정한다(안 그러면 흰 배경에 흰 아이콘이 되어 시계조차
 * 안 보인다 — 2026-08-11 태블릿 실측).
 *
 * WebLoginActivity·AntigravityLoopbackOAuthActivity·GeminiCliLoopbackOAuthActivity가 이
 * 함수를 쓴다. 셋 다 배너·WebView를 화면 전체에 FrameLayout으로 직접 배치하는 같은 구조라
 * 각자 복사해 두면 하나만 고치고 나머지를 잊기 쉽다(2026-08-19 Play Console 재지적으로
 * AntigravityLoopbackOAuthActivity·GeminiCliLoopbackOAuthActivity가 빠진 걸 알았다).
 */
fun Activity.applyEdgeToEdgeInsets(rootView: View) {
    WindowCompat.setDecorFitsSystemWindows(window, false)
    WindowInsetsControllerCompat(window, rootView).apply {
        isAppearanceLightStatusBars = true
        isAppearanceLightNavigationBars = true
    }
    ViewCompat.setOnApplyWindowInsetsListener(rootView) { view, windowInsets ->
        val bars = windowInsets.getInsets(
            WindowInsetsCompat.Type.systemBars() or WindowInsetsCompat.Type.displayCutout()
        )
        view.setPadding(bars.left, bars.top, bars.right, bars.bottom)
        windowInsets
    }
}
