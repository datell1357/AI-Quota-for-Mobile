package com.aiquota.mobile.providers

import android.app.Application
import android.content.Context
import androidx.test.core.app.ApplicationProvider
import com.aiquota.mobile.accounts.AccountAuthState
import com.aiquota.mobile.accounts.AccountKey
import com.aiquota.mobile.accounts.MainProcessAccountAuthority
import com.aiquota.mobile.accounts.ProviderAccountId
import com.aiquota.mobile.accounts.ProviderAccountIdStorageCodec
import com.aiquota.mobile.accounts.ProviderCardAddResult
import com.aiquota.mobile.local.ProviderConnectionState
import com.aiquota.mobile.local.ProviderId
import com.aiquota.mobile.local.ProviderUsageSnapshot
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertNotNull
import org.junit.Assert.assertNull
import org.junit.Assert.assertTrue
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner
import org.robolectric.annotation.Config

@RunWith(RobolectricTestRunner::class)
@Config(application = Application::class, sdk = [28])
class ExactSingleAccountLoginTest {
    private val context: Context get() = ApplicationProvider.getApplicationContext()

    @Test
    fun glmAndAntigravityIntentsCarryTheirExactAccount() {
        val glm = ProviderAccountId(ProviderId.GLM, AccountKey.reservedDefault())
        val antigravity = ProviderAccountId(ProviderId.ANTIGRAVITY, AccountKey.reservedDefault())

        val intents = listOf(
            GlmApiKeyActivity.createIntent(context, glm) to glm,
            AntigravityLoopbackOAuthActivity.createIntent(context, antigravity) to antigravity,
        )

        intents.forEach { (intent, account) ->
            assertEquals(
                account,
                ProviderAccountIdStorageCodec.decodeOrNull(
                    intent.getStringExtra(WebLoginActivity.EXTRA_PROVIDER_ACCOUNT_ID)
                ),
            )
        }
    }

    @Test
    fun successfulDedicatedLoginAuthenticatesAndPublishesUsageToExactCard() {
        listOf(ProviderId.GLM, ProviderId.ANTIGRAVITY).forEach { provider ->
            MainProcessAccountAuthority.openInMemoryForTest(context).use { authority ->
                val account = enroll(authority, provider)
                val session = requireNotNull(ExactSingleAccountLogin.start(authority, account))
                val snapshot = ProviderUsageSnapshot.connectedWithoutUsage(provider, "usage pending")
                var credentialWrites = 0

                val accepted = session.complete(snapshot) { credentialWrites++; true }

                assertTrue(accepted)
                assertEquals(1, credentialWrites)
                val record = requireNotNull(authority.accountUsageRecord(account))
                assertEquals(AccountAuthState.AUTHENTICATED, record.account.authState)
                assertEquals(snapshot, record.snapshot)
            }
        }
    }

    @Test
    fun lateLoginAfterDisconnectCannotRestoreCredentialsOrUsage() {
        MainProcessAccountAuthority.openInMemoryForTest(context).use { authority ->
            val account = enroll(authority, ProviderId.ANTIGRAVITY)
            val session = requireNotNull(ExactSingleAccountLogin.start(authority, account))
            assertTrue(authority.logoutExact(account) { true })
            var credentialWrites = 0

            val accepted = session.complete(
                ProviderUsageSnapshot.connectedWithoutUsage(account.providerId, "late")
            ) { credentialWrites++; true }

            assertFalse(accepted)
            assertEquals(0, credentialWrites)
            val record = requireNotNull(authority.accountUsageRecord(account))
            assertEquals(AccountAuthState.REAUTH_REQUIRED, record.account.authState)
            assertEquals(ProviderConnectionState.DISCONNECTED, record.snapshot.connectionState)
        }
    }

    @Test
    fun failedCredentialPersistenceDoesNotAuthenticateOrPublishSnapshot() {
        MainProcessAccountAuthority.openInMemoryForTest(context).use { authority ->
            val account = enroll(authority, ProviderId.GLM)
            val session = requireNotNull(ExactSingleAccountLogin.start(authority, account))

            val accepted = session.complete(
                ProviderUsageSnapshot.connectedWithoutUsage(account.providerId, "not saved")
            ) { false }

            assertFalse(accepted)
            assertEquals(AccountAuthState.AUTHENTICATING, authority.accountUsageRecord(account)?.account?.authState)
            assertEquals(ProviderConnectionState.DISCONNECTED, authority.accountUsageRecord(account)?.snapshot?.connectionState)
        }
    }

    @Test
    fun credentialStorageExceptionDoesNotAuthenticateOrEscapeIntoActivity() {
        MainProcessAccountAuthority.openInMemoryForTest(context).use { authority ->
            val account = enroll(authority, ProviderId.GLM)
            val session = requireNotNull(ExactSingleAccountLogin.start(authority, account))

            assertFalse(session.complete(
                ProviderUsageSnapshot.connectedWithoutUsage(account.providerId, "not saved")
            ) { throw java.security.KeyStoreException("synthetic storage failure") })
            assertEquals(AccountAuthState.AUTHENTICATING, authority.accountUsageRecord(account)?.account?.authState)
            assertEquals(ProviderConnectionState.DISCONNECTED, authority.accountUsageRecord(account)?.snapshot?.connectionState)
        }
    }

    @Test
    fun recreationResumesBindingAndCancellationMarksOnlyCurrentSession() {
        MainProcessAccountAuthority.openInMemoryForTest(context).use { authority ->
            val account = enroll(authority, ProviderId.GLM)
            val first = requireNotNull(ExactSingleAccountLogin.start(authority, account))
            val resumed = ExactSingleAccountLogin.start(authority, account, first.binding)
            assertNotNull(resumed)
            assertEquals(first.binding, resumed?.binding)
            val next = requireNotNull(ExactSingleAccountLogin.start(authority, account))

            assertFalse(first.cancel())
            assertNull(ExactSingleAccountLogin.start(authority, account, first.binding))
            assertTrue(next.cancel())
            assertEquals(AccountAuthState.REAUTH_REQUIRED, authority.accountUsageRecord(account)?.account?.authState)
        }
    }

    @Test
    fun dedicatedSessionRejectsNamedProvidersAndMissingCards() {
        MainProcessAccountAuthority.openInMemoryForTest(context).use { authority ->
            val claude = enroll(authority, ProviderId.CLAUDE)

            assertNull(ExactSingleAccountLogin.start(authority, claude))
            assertNull(ExactSingleAccountLogin.start(authority, ProviderAccountId(ProviderId.GLM, AccountKey.reservedDefault())))
        }
    }

    private fun enroll(authority: MainProcessAccountAuthority, provider: ProviderId): ProviderAccountId =
        (authority.enrollDisconnectedProviderCard(provider, null) as ProviderCardAddResult.Added).account.id
}
