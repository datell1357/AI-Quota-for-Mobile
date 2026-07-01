package com.aiquota.mobile.providers

import com.aiquota.mobile.local.ProviderId
import org.junit.Assert.assertEquals
import org.junit.Assert.assertNull
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
        assertEquals(
            GlmProviderUrls.WEB_USAGE_URL,
            GlmUsagePageRoutes.usageUrlFrom("https://z.ai/chat")
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
}
