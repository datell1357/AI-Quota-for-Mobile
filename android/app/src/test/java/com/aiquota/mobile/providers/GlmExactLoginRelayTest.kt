package com.aiquota.mobile.providers

import android.app.Application
import android.content.Context
import android.content.Intent
import android.os.Bundle
import androidx.test.core.app.ApplicationProvider
import com.aiquota.mobile.accounts.AccountKey
import com.aiquota.mobile.accounts.ProviderAccountId
import com.aiquota.mobile.accounts.ProviderAccountIdStorageCodec
import com.aiquota.mobile.local.ProviderConnectionState
import com.aiquota.mobile.local.ProviderId
import com.aiquota.mobile.local.ProviderUsageSnapshot
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertNull
import org.junit.Assert.assertThrows
import org.junit.Assert.assertTrue
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner
import org.robolectric.annotation.Config

@RunWith(RobolectricTestRunner::class)
@Config(application = Application::class, sdk = [28])
class GlmExactLoginRelayTest {
    private val context: Context get() = ApplicationProvider.getApplicationContext()

    @Test
    fun launchIntentCarriesExactGlmAccountAndParentOwnedNonce() {
        val account = glmDefault()
        val nonce = "parent-owned-nonce"

        val intent = GlmExactLoginRelay.launchIntent(context, account, nonce)
        val launch = requireNotNull(GlmExactLoginRelay.readLaunch(intent))

        assertEquals(GlmWebLoginActivity::class.java.name, intent.component?.className)
        assertEquals(account, launch.accountId)
        assertEquals(nonce, launch.nonce)
    }

    @Test
    fun launchIntentRejectsNonGlmAccountAndBlankParentNonce() {
        assertThrows(IllegalArgumentException::class.java) {
            GlmExactLoginRelay.launchIntent(
                context,
                ProviderAccountId(ProviderId.CLAUDE, AccountKey.reservedDefault()),
                "parent-owned-nonce",
            )
        }
        assertThrows(IllegalArgumentException::class.java) {
            GlmExactLoginRelay.launchIntent(context, glmDefault(), " \t")
        }
    }

    @Test
    fun readLaunchRejectsMissingOrMalformedRelay() {
        val directGlmIntent = WebLoginActivity.createIntent(
            context,
            ProviderId.GLM,
            GlmProviderUrls.WEB_LOGIN_URL,
        )
        val malformedAccount = Intent()
            .putExtra(RELAY_NONCE_EXTRA, "parent-owned-nonce")
            .putExtra(WebLoginActivity.EXTRA_PROVIDER_ACCOUNT_ID, "malformed-account")
        val wrongProvider = WebLoginActivity.createIntent(
            context,
            ProviderAccountId(ProviderId.CLAUDE, AccountKey.reservedDefault()),
        ).putExtra(RELAY_NONCE_EXTRA, "parent-owned-nonce")

        assertNull(GlmExactLoginRelay.readLaunch(directGlmIntent))
        assertNull(GlmExactLoginRelay.readLaunch(malformedAccount))
        assertNull(GlmExactLoginRelay.readLaunch(wrongProvider))
    }

    @Test
    fun consumeResultAcceptsNoPlanSnapshotAndCapturedGlmContext() {
        val account = glmDefault()
        val nonce = "parent-owned-nonce"
        val snapshot = ProviderUsageSnapshot(
            providerId = ProviderId.GLM,
            connectionState = ProviderConnectionState.CONNECTED,
            planLabel = GlmNoSubscriptionPolicy.PLAN_LABEL,
            message = GlmNoSubscriptionPolicy.MESSAGE,
            lines = emptyList(),
        )
        val headers = mapOf("Authorization" to "Bearer synthetic-header")

        val result = requireNotNull(
            GlmExactLoginRelay.consumeResult(
                GlmExactLoginRelay.successResultIntent(
                    account,
                    nonce,
                    snapshot,
                    "synthetic-cookie",
                    headers,
                ),
                expectedAccount = account,
                nonce = nonce,
            )
        )

        assertEquals(snapshot, result.snapshot)
        assertEquals("synthetic-cookie", result.cookieHeader)
        assertEquals(headers, result.requestHeaders)
    }

    @Test
    fun pendingSnapshotRequiresUsableCookieAndAuthorizationOnBothSides() {
        val account = glmDefault()
        val nonce = "parent-owned-nonce"
        val snapshot = ProviderUsageSnapshot.connectedWithoutUsage(
            ProviderId.GLM,
            "Authenticated; usage pending",
        )

        listOf(
            null to emptyMap<String, String>(),
            "session=test" to emptyMap(),
            null to mapOf("Authorization" to "Bearer synthetic"),
            "session=test" to mapOf("Authorization" to " "),
        ).forEach { (cookie, headers) ->
            assertNull(GlmExactLoginRelay.successResultIntent(account, nonce, snapshot, cookie, headers))
            assertNull(GlmExactLoginRelay.consumeResult(
                resultData(account, nonce, snapshot, cookie, headers), account, nonce,
            ))
        }
        val valid = GlmExactLoginRelay.successResultIntent(
            account, nonce, snapshot, "session=test", mapOf("authorization" to "Bearer synthetic"),
        )
        assertEquals(snapshot, requireNotNull(GlmExactLoginRelay.consumeResult(valid, account, nonce)).snapshot)
    }

    @Test
    fun consumeResultRejectsWrongNonceAccountStatusAndPayload() {
        val account = glmDefault()
        val snapshot = ProviderUsageSnapshot.connectedWithoutUsage(
            ProviderId.GLM,
            "Authenticated; usage pending",
        )
        val valid = resultData(account, "parent-owned-nonce", snapshot, null, emptyMap())
        val wrongAccount = resultData(
            ProviderAccountId(ProviderId.ANTIGRAVITY, AccountKey.reservedDefault()),
            "parent-owned-nonce",
            snapshot,
            null,
            emptyMap(),
        )
        val failedStatus = resultData(
            account,
            "parent-owned-nonce",
            snapshot,
            null,
            emptyMap(),
        ).putExtra(RELAY_STATUS_EXTRA, "FAILED")
        val malformedPayload = resultData(
            account,
            "parent-owned-nonce",
            snapshot,
            null,
            emptyMap(),
        ).putExtra(RELAY_SNAPSHOT_EXTRA, "not-json")

        assertNull(
            GlmExactLoginRelay.consumeResult(
                valid,
                expectedAccount = account,
                nonce = "different-parent-nonce",
            )
        )
        assertNull(
            GlmExactLoginRelay.consumeResult(
                wrongAccount,
                expectedAccount = account,
                nonce = "parent-owned-nonce",
            )
        )
        assertNull(
            GlmExactLoginRelay.consumeResult(
                failedStatus,
                expectedAccount = account,
                nonce = "parent-owned-nonce",
            )
        )
        assertNull(
            GlmExactLoginRelay.consumeResult(
                malformedPayload,
                expectedAccount = account,
                nonce = "parent-owned-nonce",
            )
        )
    }

    @Test
    fun canceledResultNeverConsumesAsSuccessfulAuthentication() {
        val account = glmDefault()
        val nonce = "parent-owned-nonce"

        assertNull(
            GlmExactLoginRelay.consumeResult(
                GlmExactLoginRelay.failureResultIntent(account, nonce),
                expectedAccount = account,
                nonce = nonce,
            )
        )
    }

    @Test
    fun successBuilderAndConsumerRejectAggregateContextOverBinderBudget() {
        val account = glmDefault()
        val nonce = "parent-owned-nonce"
        val snapshot = ProviderUsageSnapshot.connectedWithoutUsage(
            ProviderId.GLM,
            "Authenticated; usage pending",
        )
        val oversizedHeaders = linkedMapOf(
            "X-Provider-Context-A" to "x".repeat(64 * 1024),
            "X-Provider-Context-B" to "y".repeat(64 * 1024),
        )

        assertNull(
            GlmExactLoginRelay.successResultIntent(
                account,
                nonce,
                snapshot,
                null,
                oversizedHeaders,
            )
        )
        assertNull(
            GlmExactLoginRelay.consumeResult(
                resultData(account, nonce, snapshot, null, oversizedHeaders),
                expectedAccount = account,
                nonce = nonce,
            )
        )
    }

    private fun resultData(
        account: ProviderAccountId,
        nonce: String,
        snapshot: ProviderUsageSnapshot,
        cookieHeader: String?,
        requestHeaders: Map<String, String>,
    ): Intent = Intent().apply {
        putExtra(
            WebLoginActivity.EXTRA_PROVIDER_ACCOUNT_ID,
            ProviderAccountIdStorageCodec.encode(account),
        )
        putExtra(RELAY_NONCE_EXTRA, nonce)
        putExtra(RELAY_STATUS_EXTRA, RELAY_SUCCESS_STATUS)
        putExtra(RELAY_SNAPSHOT_EXTRA, ProviderSnapshotCodec.encode(listOf(snapshot)))
        cookieHeader?.let { putExtra(RELAY_COOKIE_HEADER_EXTRA, it) }
        putExtra(RELAY_REQUEST_HEADERS_EXTRA, Bundle().apply {
            requestHeaders.forEach { (key, value) -> putString(key, value) }
        })
    }

    private fun glmDefault() = ProviderAccountId(ProviderId.GLM, AccountKey.reservedDefault())

    companion object {
        private const val RELAY_NONCE_EXTRA =
            "com.aiquota.mobile.extra.GLM_EXACT_LOGIN_RELAY_NONCE"
        private const val RELAY_STATUS_EXTRA =
            "com.aiquota.mobile.extra.GLM_EXACT_LOGIN_RELAY_STATUS"
        private const val RELAY_SNAPSHOT_EXTRA =
            "com.aiquota.mobile.extra.GLM_EXACT_LOGIN_RELAY_SNAPSHOT"
        private const val RELAY_COOKIE_HEADER_EXTRA =
            "com.aiquota.mobile.extra.GLM_EXACT_LOGIN_RELAY_COOKIE_HEADER"
        private const val RELAY_REQUEST_HEADERS_EXTRA =
            "com.aiquota.mobile.extra.GLM_EXACT_LOGIN_RELAY_REQUEST_HEADERS"
        private const val RELAY_SUCCESS_STATUS = "SUCCESS"
    }
}
