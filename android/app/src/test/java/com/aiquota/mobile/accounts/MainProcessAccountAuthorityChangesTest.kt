package com.aiquota.mobile.accounts

import android.app.Application
import android.content.Context
import androidx.test.core.app.ApplicationProvider
import com.aiquota.mobile.local.ProviderId
import com.aiquota.mobile.local.ProviderUsageSnapshot
import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner
import org.robolectric.annotation.Config

@RunWith(RobolectricTestRunner::class)
@Config(application = Application::class, sdk = [28])
class MainProcessAccountAuthorityChangesTest {
    private val context: Context get() = ApplicationProvider.getApplicationContext()

    @Test
    fun secondaryAccountUsageCommitNotifiesWithoutLegacyProjection() {
        MainProcessAccountAuthority.openInMemoryForTest(context).use { authority ->
            authority.enrollDisconnectedProviderCard(ProviderId.CODEX, null)
            val secondary = (authority.enrollDisconnectedProviderCard(ProviderId.CODEX, null) as ProviderCardAddResult.Added).account.id
            val record = requireNotNull(authority.accountUsageRecord(secondary))
            val before = MainProcessAccountAuthority.changes.value

            val result = authority.writeAccountUsage(AccountUsageWrite(
                secondary, record.version, record.account.generation, record.account.sessionRevision,
                ProviderUsageSnapshot.connectedWithoutUsage(ProviderId.CODEX, "secondary update"),
            ))

            assertTrue(result is AccountUsageWriteResult.Committed)
            assertTrue(MainProcessAccountAuthority.changes.value > before)
        }
    }

    @Test
    fun catalogReadsDoNotTriggerAnotherReload() {
        MainProcessAccountAuthority.openInMemoryForTest(context).use { authority ->
            authority.enrollDisconnectedProviderCard(ProviderId.GLM, null)
            val before = MainProcessAccountAuthority.changes.value

            authority.activeProviderCards(0, 10)

            assertEquals(before, MainProcessAccountAuthority.changes.value)
        }
    }

    @Test
    fun rolledBackWritesDoNotPublishChanges() {
        val fault = AccountAuthorityFaultInjector { point ->
            if (point == AccountAuthorityFaultPoint.VERSION) error("test rollback")
        }
        MainProcessAccountAuthority.open(context, null, fault).use { authority ->
            val before = MainProcessAccountAuthority.changes.value
            val account = AccountRecord(
                ProviderAccountId(ProviderId.GLM, AccountKey.reservedDefault()),
                AccountState.ACTIVE, AccountAuthState.SIGNED_OUT, AccountDeletionState.NONE,
                AccountGeneration.of(0), SessionRevision.of(0),
            )

            val result = runCatching {
                authority.register(AuthorityAccountSeed(account, ProviderUsageSnapshot.disconnected(ProviderId.GLM)))
            }

            assertTrue(result.isFailure)
            assertEquals(before, MainProcessAccountAuthority.changes.value)
            assertEquals(0, authority.activeProviderCards(0, 10).totalCount)
        }
    }
}
