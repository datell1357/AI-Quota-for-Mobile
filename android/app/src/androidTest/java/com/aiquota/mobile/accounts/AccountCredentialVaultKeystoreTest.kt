package com.aiquota.mobile.accounts

import android.content.Context
import android.util.Log
import androidx.test.core.app.ApplicationProvider
import androidx.test.ext.junit.runners.AndroidJUnit4
import com.aiquota.mobile.local.ProviderId
import org.junit.Assert.assertArrayEquals
import org.junit.Assert.assertNull
import org.junit.Assert.assertTrue
import org.junit.Test
import org.junit.runner.RunWith

@RunWith(AndroidJUnit4::class)
class AccountCredentialVaultKeystoreTest {
    @Test
    fun realKeystoreBindsAccountsAndDeletesOnlyExactAlias() {
        val context = ApplicationProvider.getApplicationContext<Context>()
        val vault = createAndroidAccountCredentialVault(context)
        val bindings = fixtureBindings()
        bindings.forEach { vault.delete(it.accountId) }

        try {
            bindings.forEachIndexed { index, binding ->
                assertTrue(vault.put(binding, fixtureBundle(index)))
                assertTrue(fixtureBundle(index).contentEquals(requireNotNull(vault.decrypt(binding))))
            }
            Log.i(TAG, "VAULT_QA_ROUND_TRIP_COUNT=4")

            val first = bindings.first()
            val sibling = bindings[1]
            val firstEnvelope = requireNotNull(vault.lookup(first.accountId))
            assertNull(vault.decrypt(sibling, firstEnvelope))
            Log.i(TAG, "VAULT_QA_AAD_MISMATCH_COUNT=1")

            val siblingBytes = requireNotNull(vault.lookup(sibling.accountId)).encodedBytes()
            assertTrue(vault.delete(first.accountId))
            assertNull(vault.lookup(first.accountId))
            assertNull(vault.decrypt(first, firstEnvelope))
            assertTrue(vault.isAbsent(first.accountId))
            assertArrayEquals(siblingBytes, requireNotNull(vault.lookup(sibling.accountId)).encodedBytes())
            assertTrue(fixtureBundle(1).contentEquals(requireNotNull(vault.decrypt(sibling))))
            Log.i(TAG, "VAULT_QA_DELETE_ABSENT_COUNT=1")
            Log.i(TAG, "VAULT_QA_SIBLING_PRESERVED_COUNT=1")
        } finally {
            bindings.forEach { vault.delete(it.accountId) }
            assertTrue(bindings.all { vault.isAbsent(it.accountId) })
            Log.i(TAG, "VAULT_QA_TEST_ALIAS_RESIDUE=0")
        }
    }

    private fun fixtureBindings(): List<CredentialVaultBinding> = listOf(
        binding(ProviderId.CLAUDE, ACCOUNT_A),
        binding(ProviderId.CLAUDE, ACCOUNT_B),
        binding(ProviderId.CODEX, ACCOUNT_C),
        binding(ProviderId.CODEX, ACCOUNT_D),
    )

    private fun binding(providerId: ProviderId, account: String): CredentialVaultBinding =
        CredentialVaultBinding(
            schema = CredentialVaultSchema.CURRENT,
            accountId = CredentialVaultAccountId.parse(
                ProviderAccountId(providerId, AccountKey.parseOpaque(account))
            ),
            generation = AccountGeneration.of(7),
            sessionRevision = SessionRevision.of(11),
            secretRevision = SecretRevision.of(13),
        )

    private fun fixtureBundle(index: Int): CredentialBundle =
        CredentialBundle.fromBytes("instrumentation-secret-$index".toByteArray())

    private companion object {
        const val TAG = "AccountVaultKeystore"
        const val ACCOUNT_A = "acct_00000000000000000000000000000001"
        const val ACCOUNT_B = "acct_00000000000000000000000000000002"
        const val ACCOUNT_C = "acct_00000000000000000000000000000003"
        const val ACCOUNT_D = "acct_00000000000000000000000000000004"
    }
}
