package com.aiquota.mobile.accounts

import android.content.Context
import android.util.Log
import androidx.test.core.app.ApplicationProvider
import androidx.test.ext.junit.runners.AndroidJUnit4
import com.aiquota.mobile.local.ProviderId
import javax.crypto.AEADBadTagException
import org.junit.Assert.assertArrayEquals
import org.junit.Assert.assertEquals
import org.junit.Assert.assertNull
import org.junit.Assert.assertTrue
import org.junit.Test
import org.junit.runner.RunWith

@RunWith(AndroidJUnit4::class)
class AccountCredentialVaultKeystoreTest {
    @Test
    fun realKeystorePersistsReopensAndRejectsDeletedEnvelopeAfterRecreate() {
        val context = ApplicationProvider.getApplicationContext<Context>()
        val bindings = fixtureBindings()
        createAndroidAccountCredentialVault(context).also { cleanup ->
            bindings.forEach { cleanup.delete(it.accountId) }
        }

        try {
            productionKeystoreCryptoAuthenticatesSameKeyAad()

            val vault1 = createAndroidAccountCredentialVault(context)
            bindings.forEachIndexed { index, binding ->
                assertTrue(vault1.put(binding, fixtureBundle(index)))
            }
            Log.i(TAG, "VAULT_QA_ROUND_TRIP_COUNT=4")

            val vault2 = createAndroidAccountCredentialVault(context)
            bindings.forEachIndexed { index, binding ->
                assertTrue(fixtureBundle(index).contentEquals(requireNotNull(vault2.decrypt(binding))))
            }
            Log.i(TAG, "VAULT_QA_FRESH_INSTANCE_READ_COUNT=4")

            val first = bindings.first()
            val sibling = bindings[1]
            val oldEnvelope = requireNotNull(vault2.lookup(first.accountId))
            assertNull(vault2.decrypt(sibling, oldEnvelope))
            Log.i(TAG, "VAULT_QA_AAD_MISMATCH_COUNT=1")

            val siblingBytes = requireNotNull(vault2.lookup(sibling.accountId)).encodedBytes()
            assertTrue(vault2.delete(first.accountId))
            assertNull(vault2.lookup(first.accountId))
            assertNull(vault2.decrypt(first, oldEnvelope))
            assertTrue(vault2.isAbsent(first.accountId))
            Log.i(TAG, "VAULT_QA_DELETE_ABSENT_COUNT=1")

            val recreatedBundle = fixtureBundle(RECREATED_BUNDLE_INDEX)
            assertTrue(vault2.put(first, recreatedBundle))
            assertNull(vault2.decrypt(first, oldEnvelope))
            Log.i(TAG, "VAULT_QA_DELETE_RECREATE_STALE_COUNT=1")

            val vault3 = createAndroidAccountCredentialVault(context)
            assertTrue(recreatedBundle.contentEquals(requireNotNull(vault3.decrypt(first))))
            assertNull(vault3.decrypt(first, oldEnvelope))
            assertArrayEquals(siblingBytes, requireNotNull(vault3.lookup(sibling.accountId)).encodedBytes())
            assertTrue(fixtureBundle(1).contentEquals(requireNotNull(vault3.decrypt(sibling))))
            Log.i(TAG, "VAULT_QA_FRESH_INSTANCE_RECREATE_COUNT=1")
            Log.i(TAG, "VAULT_QA_SIBLING_PRESERVED_COUNT=1")
        } finally {
            val cleanup = createAndroidAccountCredentialVault(context)
            bindings.forEach { cleanup.delete(it.accountId) }
            assertTrue(bindings.all { cleanup.isAbsent(it.accountId) })
            Log.i(TAG, "VAULT_QA_TEST_ALIAS_RESIDUE=0")
        }
    }

    private fun productionKeystoreCryptoAuthenticatesSameKeyAad() {
        val crypto = createAndroidKeystoreCredentialVaultCrypto()
        val original = binding(ProviderId.CLAUDE, AAD_ACCOUNT)
        val plaintext = "instrumentation-aad-fixture".toByteArray()
        crypto.deleteAlias(original.accountId)

        try {
            val encrypted = crypto.encrypt(
                accountId = original.accountId,
                aad = CredentialVaultAad.encode(original),
                plaintext = plaintext,
            )
            assertArrayEquals(
                plaintext,
                requireNotNull(
                    crypto.decrypt(
                        accountId = original.accountId,
                        aad = CredentialVaultAad.encode(original),
                        payload = encrypted,
                    )
                ),
            )
            val mutations = listOf(
                original.copy(schema = CredentialVaultSchema.of(2)),
                binding(ProviderId.CODEX, AAD_ACCOUNT),
                binding(ProviderId.CLAUDE, MUTATED_AAD_ACCOUNT),
            )
            val authenticationFailures = mutations.map { mutation ->
                runCatching {
                    crypto.decrypt(
                        accountId = original.accountId,
                        aad = CredentialVaultAad.encode(mutation),
                        payload = encrypted,
                    )
                }.exceptionOrNull()
            }

            assertEquals(3, authenticationFailures.count { it is AEADBadTagException })
            assertArrayEquals(
                plaintext,
                requireNotNull(
                    crypto.decrypt(
                        accountId = original.accountId,
                        aad = CredentialVaultAad.encode(original),
                        payload = encrypted,
                    )
                ),
            )
            Log.i(TAG, "VAULT_QA_PRODUCTION_KEYSTORE_SAME_KEY_AAD_FAILURE_COUNT=3")
        } finally {
            plaintext.fill(0)
            assertTrue(crypto.deleteAlias(original.accountId))
            assertTrue(!crypto.containsAlias(original.accountId))
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
        const val RECREATED_BUNDLE_INDEX = 4
        const val ACCOUNT_A = "acct_00000000000000000000000000000001"
        const val ACCOUNT_B = "acct_00000000000000000000000000000002"
        const val ACCOUNT_C = "acct_00000000000000000000000000000003"
        const val ACCOUNT_D = "acct_00000000000000000000000000000004"
        const val AAD_ACCOUNT = "acct_00000000000000000000000000000005"
        const val MUTATED_AAD_ACCOUNT = "acct_00000000000000000000000000000006"
    }
}
