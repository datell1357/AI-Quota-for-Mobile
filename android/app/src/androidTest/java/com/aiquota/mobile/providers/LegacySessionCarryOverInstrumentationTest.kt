package com.aiquota.mobile.providers

import android.webkit.CookieManager
import androidx.test.ext.junit.runners.AndroidJUnit4
import androidx.test.platform.app.InstrumentationRegistry
import androidx.webkit.ProfileStore
import com.aiquota.mobile.accounts.AccountAuthState
import com.aiquota.mobile.accounts.AccountDeletionState
import com.aiquota.mobile.accounts.AccountGeneration
import com.aiquota.mobile.accounts.AccountKey
import com.aiquota.mobile.accounts.AccountLoginSessionBinding
import com.aiquota.mobile.accounts.AccountRecord
import com.aiquota.mobile.accounts.AccountState
import com.aiquota.mobile.accounts.AndroidNamedProfileLifecycleStore
import com.aiquota.mobile.accounts.AuthorityAccountSeed
import com.aiquota.mobile.accounts.MainProcessAccountAuthority
import com.aiquota.mobile.accounts.ProfileLifecycleState
import com.aiquota.mobile.accounts.ProviderAccountId
import com.aiquota.mobile.accounts.SessionRevision
import com.aiquota.mobile.local.ProviderId
import com.aiquota.mobile.local.ProviderUsageSnapshot
import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Test
import org.junit.runner.RunWith

@RunWith(AndroidJUnit4::class)
class LegacySessionCarryOverInstrumentationTest {
    @Test
    fun legacyCodexLoginIsCarriedIntoExactProfileWithoutReauth() {
        val instrumentation = InstrumentationRegistry.getInstrumentation()
        val context = instrumentation.targetContext.applicationContext
        val id = ProviderAccountId(ProviderId.CODEX, AccountKey.reservedDefault())
        val legacyUrl = "https://chatgpt.com/backend-api/me"

        // Given: the migrated default account, its legacy native context, and default-profile cookies
        MainProcessAccountAuthority.open(context).use { authority ->
            if (authority.accountUsageRecord(id) == null) {
                authority.register(
                    AuthorityAccountSeed(
                        account = AccountRecord(
                            id = id,
                            state = AccountState.ACTIVE,
                            authState = AccountAuthState.REAUTH_REQUIRED,
                            deletionState = AccountDeletionState.NONE,
                            generation = AccountGeneration.of(1),
                            sessionRevision = SessionRevision.of(1),
                        ),
                        snapshot = ProviderUsageSnapshot.connectedWithoutUsage(ProviderId.CODEX, "legacy"),
                    )
                )
            }
        }
        CodexNativeAuthContextStore(context).save(mapOf(legacyUrl to mapOf("Authorization" to "Bearer legacy")))
        instrumentation.runOnMainSync {
            CookieManager.getInstance().setCookie(
                "https://chatgpt.com",
                "__Secure-next-auth.session-token=legacy-token; Secure",
            )
            CookieManager.getInstance().flush()
        }

        // When
        var carried: Map<ProviderId, Boolean> = emptyMap()
        instrumentation.runOnMainSync { carried = LegacySessionCarryOver(context).run() }

        // Then
        assertEquals(true, carried[ProviderId.CODEX])
        MainProcessAccountAuthority.open(context).use { authority ->
            val account = requireNotNull(authority.accountUsageRecord(id)).account
            assertEquals(AccountAuthState.AUTHENTICATED, account.authState)
            val binding = AccountLoginSessionBinding(id, account.generation, account.sessionRevision)
            assertEquals(
                "Bearer legacy",
                CodexNativeAuthContextStore(context).restoreExact(binding)[legacyUrl]?.get("Authorization"),
            )
        }
        instrumentation.runOnMainSync {
            val row = AndroidNamedProfileLifecycleStore(context).use { requireNotNull(it.read(id)) }
            assertEquals(ProfileLifecycleState.ACTIVE, row.state)
            val profile = requireNotNull(ProfileStore.getInstance().getProfile(row.profileName.storageValue()))
            assertTrue(
                profile.cookieManager.getCookie("https://chatgpt.com").orEmpty()
                    .contains("__Secure-next-auth.session-token=legacy-token"),
            )
        }
    }
}
