package com.aiquota.mobile.providers

import com.aiquota.mobile.local.ProviderId
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertNull
import org.junit.Assert.assertTrue
import org.junit.Test

class GlmUsagePageRoutesTest {
    @Test
    fun myPlanPageRedirectsToUsagePage() {
        assertEquals(
            GlmProviderUrls.WEB_USAGE_URL,
            GlmUsagePageRoutes.usageUrlFrom("https://z.ai/manage-apikey/coding-plan/personal/my-plan")
        )
        assertEquals(
            GlmProviderUrls.WEB_USAGE_URL,
            GlmUsagePageRoutes.usageUrlFrom("https://www.z.ai/manage-apikey/coding-plan/personal/my-plan?tab=plan")
        )
        assertEquals(
            GlmProviderUrls.WEB_USAGE_URL,
            GlmUsagePageRoutes.usageUrlFrom("https://z.ai/manage-apikey/coding-plan/personal/my-plan/#usage")
        )
    }

    @Test
    fun usagePageDoesNotRedirectAgain() {
        assertNull(GlmUsagePageRoutes.usageUrlFrom("https://z.ai/manage-apikey/coding-plan/personal/usage"))
        assertNull(GlmUsagePageRoutes.usageUrlFrom("https://z.ai/manage-apikey/apikey-list"))
        assertNull(GlmUsagePageRoutes.usageUrlFrom("https://chat.z.ai/"))
        assertNull(GlmUsagePageRoutes.usageUrlFrom("https://example.com/manage-apikey/coding-plan/personal/my-plan"))
    }

    @Test
    fun chatPageIsLoginCompletionSignalOnly() {
        assertTrue(GlmUsagePageRoutes.isChatUrl("https://z.ai/chat"))
        assertTrue(GlmUsagePageRoutes.isChatUrl("https://www.z.ai/chat?model=glm-4.5"))
        assertNull(GlmUsagePageRoutes.usageUrlFrom("https://z.ai/chat"))
    }

    @Test
    fun authenticatedChatResourceCanStartNativeCollectionAgainstUsagePage() {
        assertNull(
            GlmUsagePageRoutes.nativeCollectionUrlAfterAuthenticatedResource("https://chat.z.ai/auth")
        )
        assertNull(
            GlmUsagePageRoutes.nativeCollectionUrlAfterAuthenticatedResource("https://chat.z.ai/auth?provider=google")
        )
        assertEquals(
            GlmProviderUrls.WEB_USAGE_URL,
            GlmUsagePageRoutes.nativeCollectionUrlAfterAuthenticatedResource("https://z.ai/chat")
        )
        assertEquals(
            GlmProviderUrls.WEB_USAGE_URL,
            GlmUsagePageRoutes.nativeCollectionUrlAfterAuthenticatedResource(
                "https://z.ai/manage-apikey/coding-plan/personal/my-plan"
            )
        )
        assertEquals(
            GlmProviderUrls.WEB_USAGE_URL,
            GlmUsagePageRoutes.nativeCollectionUrlAfterAuthenticatedResource(GlmProviderUrls.WEB_USAGE_URL)
        )
        assertNull(
            GlmUsagePageRoutes.nativeCollectionUrlAfterAuthenticatedResource("https://z.ai/")
        )
    }

    @Test
    fun authenticatedChatAppResourceRedirectsToUsagePageBeforeNativeCollection() {
        assertEquals(
            GlmProviderUrls.WEB_USAGE_URL,
            GlmUsagePageRoutes.usageRedirectUrlAfterAuthenticatedResource("https://chat.z.ai/auth")
        )
        assertEquals(
            GlmProviderUrls.WEB_USAGE_URL,
            GlmUsagePageRoutes.usageRedirectUrlAfterAuthenticatedResource("https://chat.z.ai/auth?provider=google")
        )
        assertNull(
            GlmUsagePageRoutes.usageRedirectUrlAfterAuthenticatedResource(GlmProviderUrls.WEB_USAGE_URL)
        )
    }

    @Test
    fun authenticatedChatAuthShellIsNotRefreshLoginPageAfterSessionEvidence() {
        val authShellUrl = GlmProviderUrls.WEB_LOGIN_URL

        assertTrue(GlmUsagePageRoutes.isAuthenticatedChatAppUrl(authShellUrl))
        assertEquals(
            GlmProviderUrls.WEB_USAGE_URL,
            GlmUsagePageRoutes.usageRedirectUrlAfterAuthenticatedResource(authShellUrl)
        )
        assertFalse(
            "GLM authenticated chat auth shell must not be swallowed by refresh-login classification",
            ProviderWebCollectorScripts.isRefreshLoginPage(ProviderId.GLM, authShellUrl)
        )
    }

    @Test
    fun chatRootDoesNotBecomeCollectorSuccessWithoutSessionEvidence() {
        val chatRootUrl = "https://chat.z.ai/"

        assertEquals(
            GlmProviderUrls.WEB_USAGE_URL,
            GlmUsagePageRoutes.usageRedirectUrlAfterAuthenticatedResource(chatRootUrl)
        )
        assertNull(GlmLoginPostRedirects.usageRedirectUrl(ProviderId.GLM, chatRootUrl))
        assertFalse(
            "GLM chat root needs authenticated/session evidence before collector success",
            ProviderWebCollectorScripts.shouldRunCollector(
                ProviderId.GLM,
                chatRootUrl,
                emptyMap(),
                ""
            )
        )
    }

    @Test
    fun webOAuthRefreshUsesStoredSessionNativeApiInsteadOfHiddenWebCollector() {
        val job = ProviderRefreshJob(
            providerId = ProviderId.GLM,
            mode = ProviderRefreshMode.NATIVE_API,
            startUrl = ""
        )

        val resolved = GlmRuntimeRefreshJobs.resolve(job, GlmConnectionMode.WEB_OAUTH)

        assertEquals(ProviderRefreshMode.NATIVE_API, resolved.mode)
        assertEquals("", resolved.startUrl)
    }

    @Test
    fun authorizedQuotaResourceMatchesOnlyObservedQuotaLimitApi() {
        assertTrue(
            GlmUsagePageRoutes.isAuthorizedQuotaResource(
                "https://api.z.ai/api/monitor/usage/quota/limit"
            )
        )
        assertFalse(
            GlmUsagePageRoutes.isAuthorizedQuotaResource(
                "https://api.z.ai/api/monitor/usage/model-usage"
            )
        )
        assertFalse(
            GlmUsagePageRoutes.isAuthorizedQuotaResource(
                "https://api.z.ai/api/monitor/usage/tool-usage"
            )
        )
        assertFalse(
            GlmUsagePageRoutes.isAuthorizedQuotaResource(
                "https://chat.z.ai/api/v1/users/user/settings/update"
            )
        )
    }
}
