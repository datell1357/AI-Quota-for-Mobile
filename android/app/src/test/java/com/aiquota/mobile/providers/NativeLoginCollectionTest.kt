package com.aiquota.mobile.providers

import java.io.File
import org.junit.Assert.assertTrue
import org.junit.Test

/**
 * Grok·Kimi·Kiro의 수집 스크립트는 브리지를 한 번 부르고 결과를 그대로 넘기는 통로일 뿐이다.
 * 그런데 스크립트가 한 번이라도 실행되지 않으면 payload도 error도 오지 않아 사용자는 빈 화면에
 * 무한정 머문다(2026-08-09 Grok 실측: 브리지 스레드는 유휴, 렌더러도 정상, 로그도 없음).
 *
 * 로그인 화면에서는 WebView를 왕복하지 않고 곧바로 네이티브로 수집해, 다른 provider처럼
 * 즉시 앱으로 돌아가야 한다.
 */
class NativeLoginCollectionTest {
    private val source = File("src/main/java/com/aiquota/mobile/providers/WebLoginActivity.kt").readText()

    @Test
    fun collectionStartsAsSoonAsTheLoginPageIsLeft() {
        val start = source.substringAfter("private fun maybeStartAboutBlankNativeCollection")
            .substringBefore("private fun finishFromNativeUsagePayload")

        assertTrue(
            "about:blank로 옮겨간 즉시 수집을 시작해야 기다림이 생기지 않는다",
            start.contains("view.loadUrl(\"about:blank\")") &&
                start.contains("finishFromNativeUsagePayload()")
        )
        assertTrue(
            "스크립트 응답을 기다리는 지연이 남아 있으면 안 된다",
            !start.contains("postDelayed")
        )
    }

    @Test
    fun theRedundantCollectorScriptIsNotInjectedAnyMore() {
        // 주입 호출 지점은 onPageStarted·onLoadResource·onPageFinished로 흩어져 있어
        // 분기마다 막으면 새 경로가 생길 때 또 새어 나간다. 한 곳에서 잠근다.
        val inject = source.substringAfter("private fun injectCollectorIfReady")
            .substringBefore("private fun shouldKeepLoginOpenUntilUsagePayload")

        assertTrue(
            "네이티브로 이미 수집하므로 스크립트를 주입하면 같은 요청이 한 번 더 나간다",
            inject.contains("if (ABOUT_BLANK_NATIVE_LOGIN_PROVIDERS.contains(providerId)) return")
        )
    }

    @Test
    fun collectionIsBoundedAndRunsOffTheMainThread() {
        val finish = source.substringAfter("private fun finishFromNativeUsagePayload")
            .substringBefore("/** 브리지 응답 봉투에서")

        assertTrue("네트워크 수집을 메인 스레드에서 돌리면 안 된다", finish.contains("withContext(Dispatchers.IO)"))
        assertTrue(
            "수집이 끝나지 않아도 화면은 반드시 닫혀야 한다",
            finish.contains("withTimeoutOrNull(NATIVE_USAGE_COLLECTION_TIMEOUT_MS)")
        )
        assertTrue(
            "성공하면 연결, 실패하면 사용량 없이 연결로 마무리한다",
            finish.contains("finishSuccessfulLogin(payload)") && finish.contains("finishConnectedWithoutUsage(")
        )
    }

    @Test
    fun onlyVerifiedPayloadsCountAsSuccess() {
        val trusted = source.substringAfter("private fun trustedUsagePayloadOrNull")
            .substringBefore("private fun nativeUsagePayloadJson")

        assertTrue(
            "ok=false 봉투는 payload로 인정하지 않는다",
            trusted.contains("if (!envelope.optBoolean(\"ok\", false)) return null")
        )
        assertTrue("payload가 없으면 성공으로 보지 않는다", trusted.contains("envelope.optJSONObject(\"payload\") ?: return null"))
    }

    @Test
    fun bridgeAndLoginShareOneCollectionPath() {
        val bridge = source.substringAfter("fun fetchProviderUsagePayload()")
            .substringBefore("fun parseCodexFetchedPayload")

        assertTrue(
            "브리지와 로그인 수집이 같은 경로를 써야 결과가 갈리지 않는다",
            bridge.contains("return nativeUsagePayloadJson()")
        )
        assertTrue(
            source.contains("private fun nativeUsagePayloadJson(): String") &&
                source.contains("ProviderNativeUsagePayloadFetcher.bridgeUsagePayload(")
        )
    }
}
