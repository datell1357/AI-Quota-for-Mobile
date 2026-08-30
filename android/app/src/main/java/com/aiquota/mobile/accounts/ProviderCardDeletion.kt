package com.aiquota.mobile.accounts

import java.security.SecureRandom

enum class ProviderCardDeletionStep {
    TOMBSTONED,
    WORK_CANCELLED,
    PRIMARY_CLEARED,
    CREDENTIAL_ERASED,
    PROFILE_ERASED,
    PROVIDER_CLEANUP,
    USAGE_ERASED,
    ARTIFACTS_ERASED,
    COMPATIBILITY_CLEARED,
    ERASED,
}

enum class ProviderCardDeletionFailure {
    CREDENTIAL_ERASURE_FAILED,
    PROFILE_ERASURE_FAILED,
    PROVIDER_CLEANUP_FAILED,
    ARTIFACT_ERASURE_FAILED,
    COMPATIBILITY_CLEAR_FAILED,
}

data class ProviderCardDeletionRecord(
    val accountId: ProviderAccountId,
    val step: ProviderCardDeletionStep,
    val failure: ProviderCardDeletionFailure?,
    val journalRevision: Long,
    val authorityVersion: DisplayVersion,
) {
    init {
        require(journalRevision > 0) { "Deletion journal revision must be positive" }
        require(journalRevision >= step.ordinal + 1L) { "Deletion journal revision precedes its step" }
        if (step == ProviderCardDeletionStep.ERASED) require(failure == null)
    }
}

enum class ProviderCardDeletionRejection {
    ACCOUNT_MISSING,
    VERSION_MISMATCH,
}

sealed interface ProviderCardDeletionResult {
    data class Rejected(val reason: ProviderCardDeletionRejection) : ProviderCardDeletionResult
    data class InProgress(val record: ProviderCardDeletionRecord) : ProviderCardDeletionResult
    data class Failed(val record: ProviderCardDeletionRecord) : ProviderCardDeletionResult
    data class Completed(val record: ProviderCardDeletionRecord) : ProviderCardDeletionResult
}

interface ProviderCardDeletionApi {
    fun delete(accountId: ProviderAccountId): ProviderCardDeletionResult

    fun delete(
        accountId: ProviderAccountId,
        expectedVersion: DisplayVersion,
    ): ProviderCardDeletionResult = delete(accountId)
}

internal sealed interface BeginProviderCardDeletionResult {
    data class Ready(val record: ProviderCardDeletionRecord) : BeginProviderCardDeletionResult
    data object Missing : BeginProviderCardDeletionResult
    data object Stale : BeginProviderCardDeletionResult
}

@JvmInline
internal value class ProviderCardDeletionOwnerToken private constructor(val value: String) {
    companion object {
        private val random = SecureRandom()

        fun create(): ProviderCardDeletionOwnerToken {
            val bytes = ByteArray(32).also(random::nextBytes)
            return ProviderCardDeletionOwnerToken(bytes.joinToString("") { "%02x".format(it) })
        }

        fun parse(value: String): ProviderCardDeletionOwnerToken {
            require(Regex("[0-9a-f]{64}").matches(value)) { "Malformed deletion owner token" }
            return ProviderCardDeletionOwnerToken(value)
        }
    }
}

internal data class ProviderCardDeletionClaim(
    val record: ProviderCardDeletionRecord,
    val owner: ProviderCardDeletionOwnerToken,
    val expiresAtMillis: Long,
) {
    init {
        require(record.step != ProviderCardDeletionStep.ERASED)
        require(expiresAtMillis > 0)
    }
}

internal sealed interface ProviderCardDeletionClaimResult {
    data class Claimed(val claim: ProviderCardDeletionClaim) : ProviderCardDeletionClaimResult
    data class InProgress(val record: ProviderCardDeletionRecord) : ProviderCardDeletionClaimResult
    data class Missing(val accountId: ProviderAccountId) : ProviderCardDeletionClaimResult
}

internal fun interface ProviderCardDeletionClock {
    fun nowMillis(): Long

    companion object {
        val SYSTEM = ProviderCardDeletionClock(System::currentTimeMillis)
    }
}

internal fun interface ProviderCardDeletionTokenFactory {
    fun create(): ProviderCardDeletionOwnerToken

    companion object {
        val SECURE = ProviderCardDeletionTokenFactory(ProviderCardDeletionOwnerToken::create)
    }
}

fun interface ProviderCardDeletionFaultInjector {
    fun afterPersisted(step: ProviderCardDeletionStep)

    companion object {
        val NONE = ProviderCardDeletionFaultInjector { }
    }
}
