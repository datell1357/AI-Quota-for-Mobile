package com.aiquota.mobile.accounts

import com.aiquota.mobile.local.ProviderId
import org.junit.Assert.assertArrayEquals
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertNull
import org.junit.Assert.assertTrue
import org.junit.Test

class AccountCredentialVaultContractTest {
    private val store = InMemoryCredentialEnvelopeStore()
    private val crypto = FakeCredentialVaultCrypto()
    private val vault = AccountCredentialVault(store, crypto)

    @Test
    fun claudeAndCodexSiblingBundlesRoundTripIndependently() {
        val fixtures = listOf(
            vaultBinding(ProviderId.CLAUDE, ACCOUNT_A) to vaultBundle("claude-a"),
            vaultBinding(ProviderId.CLAUDE, ACCOUNT_B) to vaultBundle("claude-b"),
            vaultBinding(ProviderId.CODEX, ACCOUNT_C) to vaultBundle("codex-a"),
            vaultBinding(ProviderId.CODEX, ACCOUNT_D) to vaultBundle("codex-b"),
        )

        fixtures.forEach { (binding, bundle) -> assertTrue(vault.put(binding, bundle)) }

        fixtures.forEach { (binding, bundle) ->
            assertTrue(bundle.contentEquals(requireNotNull(vault.decrypt(binding))))
        }
        assertEquals(4, fixtures.map { vault.lookup(it.first.accountId)!!.encodedBytes().contentHashCode() }.toSet().size)
    }

    @Test
    fun everyAadTupleFieldIsAuthenticated() {
        val binding = vaultBinding()
        val bundle = vaultBundle("aad")
        assertTrue(vault.put(binding, bundle))
        val envelope = requireNotNull(vault.lookup(binding.accountId))
        val mutations = listOf(
            binding.copy(schema = CredentialVaultSchema.of(2)),
            vaultBinding(providerId = ProviderId.CODEX),
            vaultBinding(accountToken = ACCOUNT_B),
            binding.copy(generation = AccountGeneration.of(8)),
            binding.copy(sessionRevision = SessionRevision.of(12)),
            binding.copy(secretRevision = SecretRevision.of(14)),
        )

        mutations.forEach { mutation -> assertNull(vault.decrypt(mutation, envelope)) }
        assertTrue(bundle.contentEquals(requireNotNull(vault.decrypt(binding, envelope))))
    }

    @Test
    fun canonicalAadEncodingIsDeterministicAndUnambiguous() {
        val binding = vaultBinding()
        val first = CredentialVaultAad.encode(binding)
        val second = CredentialVaultAad.encode(binding.copy())

        assertArrayEquals(first, second)
        val mutations = listOf(
            binding.copy(schema = CredentialVaultSchema.of(2)),
            vaultBinding(providerId = ProviderId.CODEX),
            vaultBinding(accountToken = ACCOUNT_B),
            binding.copy(generation = AccountGeneration.of(8)),
            binding.copy(sessionRevision = SessionRevision.of(12)),
            binding.copy(secretRevision = SecretRevision.of(14)),
        )
        mutations.forEach { assertFalse(first.contentEquals(CredentialVaultAad.encode(it))) }
    }

    @Test
    fun ciphertextCannotMoveFromAccountAtoAccountB() {
        val accountA = vaultBinding(accountToken = ACCOUNT_A)
        val accountB = vaultBinding(accountToken = ACCOUNT_B)
        assertTrue(vault.put(accountA, vaultBundle("a")))
        val envelopeA = requireNotNull(vault.lookup(accountA.accountId))
        assertTrue(vault.put(accountB, vaultBundle("b")))

        assertNull(vault.decrypt(accountB, envelopeA))
        assertTrue(vaultBundle("b").contentEquals(requireNotNull(vault.decrypt(accountB))))
    }

    @Test
    fun deletingAliasFailsClosedAndPreservesSiblingCiphertextBytes() {
        val accountA = vaultBinding(accountToken = ACCOUNT_A)
        val accountB = vaultBinding(accountToken = ACCOUNT_B)
        assertTrue(vault.put(accountA, vaultBundle("a")))
        assertTrue(vault.put(accountB, vaultBundle("b")))
        val retainedA = requireNotNull(vault.lookup(accountA.accountId))
        val siblingBefore = requireNotNull(vault.lookup(accountB.accountId)).encodedBytes()

        assertTrue(vault.delete(accountA.accountId))

        assertNull(vault.lookup(accountA.accountId))
        assertNull(vault.decrypt(accountA))
        assertNull(vault.decrypt(accountA, retainedA))
        assertTrue(vault.isAbsent(accountA.accountId))
        assertArrayEquals(siblingBefore, requireNotNull(vault.lookup(accountB.accountId)).encodedBytes())
        assertTrue(vaultBundle("b").contentEquals(requireNotNull(vault.decrypt(accountB))))
    }

    @Test
    fun staleGenerationSessionAndSecretRevisionFailClosed() {
        val current = vaultBinding(generation = 20, sessionRevision = 30, secretRevision = 40)
        assertTrue(vault.put(current, vaultBundle("current")))
        val envelope = requireNotNull(vault.lookup(current.accountId))

        assertNull(vault.decrypt(current.copy(generation = AccountGeneration.of(19)), envelope))
        assertNull(vault.decrypt(current.copy(sessionRevision = SessionRevision.of(29)), envelope))
        assertNull(vault.decrypt(current.copy(secretRevision = SecretRevision.of(39)), envelope))
    }

    companion object {
        const val ACCOUNT_A = "acct_00000000000000000000000000000001"
        const val ACCOUNT_B = "acct_00000000000000000000000000000002"
        const val ACCOUNT_C = "acct_00000000000000000000000000000003"
        const val ACCOUNT_D = "acct_00000000000000000000000000000004"
    }
}
