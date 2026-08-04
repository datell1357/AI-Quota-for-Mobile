package com.aiquota.mobile.providers

import com.aiquota.mobile.local.ProviderId
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test

/**
 * Grok 로그인은 grok.com → accounts.x.ai → x.com/i/oauth2/authorize로 이어진다.
 * x.com이 허용 호스트에 없으면 마지막 단계에서 navigation이 차단돼 무한 로딩이 된다.
 */
class GrokLoginHostsTest {
    private val definition = ProviderDefinitionRegistry.definitionFor(ProviderId.GROK)

    @Test
    fun grokLoginAllowsXAccountAuthorization() {
        assertTrue(
            "x.com 인증 단계가 막히면 로그인이 완료되지 않는다.",
            ProviderDefinitionRegistry.isAllowed(ProviderId.GROK, "https://x.com/i/oauth2/authorize?client_id=x")
        )
        assertTrue(definition.allowedHosts.contains("x.com"))
        assertTrue(definition.allowedHosts.contains("accounts.x.ai"))
    }

    @Test
    fun grokLoginKeepsExistingGrokAndXaiHosts() {
        listOf("grok.com", "www.grok.com", "auth.grok.com", "accounts.x.ai", "x.ai").forEach { host ->
            assertTrue("$host 는 계속 허용돼야 한다", definition.allowedHosts.contains(host))
        }
    }

    @Test
    fun grokDisconnectDoesNotLogTheUserOutOfX() {
        // x.com은 Grok의 로그인 IdP다. 연결 해제로 X 세션까지 지우면 안 된다.
        val cookieUrls = ProviderWebSessionClearPolicy.cookieUrls(ProviderId.GROK)

        assertFalse(cookieUrls.any { it.contains("x.com") })
        assertTrue(cookieUrls.contains("https://grok.com"))
    }
}
