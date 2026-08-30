package com.aiquota.mobile.accounts

class ProviderCardDeletionCoordinator internal constructor(
    private val authority: MainProcessAccountAuthority,
    private val credentials: ExactCredentialEraser,
    private val profiles: ExactProfileEraser,
    private val providerCleanup: ProviderSpecificAccountCleanup,
    private val artifacts: ExactCardArtifactEraser,
    private val compatibility: CompatibilityProjectionClearer,
    private val faultInjector: ProviderCardDeletionFaultInjector = ProviderCardDeletionFaultInjector.NONE,
    private val clock: ProviderCardDeletionClock = ProviderCardDeletionClock.SYSTEM,
    private val tokens: ProviderCardDeletionTokenFactory = ProviderCardDeletionTokenFactory.SECURE,
) : ProviderCardDeletionApi {
    override fun delete(accountId: ProviderAccountId): ProviderCardDeletionResult =
        deleteAfterBegin(authority.beginProviderCardDeletion(accountId))

    override fun delete(
        accountId: ProviderAccountId,
        expectedVersion: DisplayVersion,
    ): ProviderCardDeletionResult = deleteAfterBegin(
        authority.beginProviderCardDeletion(accountId, expectedVersion)
    )

    private fun deleteAfterBegin(begin: BeginProviderCardDeletionResult): ProviderCardDeletionResult =
        when (begin) {
            BeginProviderCardDeletionResult.Missing ->
                ProviderCardDeletionResult.Rejected(ProviderCardDeletionRejection.ACCOUNT_MISSING)
            BeginProviderCardDeletionResult.Stale ->
                ProviderCardDeletionResult.Rejected(ProviderCardDeletionRejection.VERSION_MISMATCH)
            is BeginProviderCardDeletionResult.Ready -> continueAfterBegin(begin.record)
        }

    internal fun continueAfterBegin(record: ProviderCardDeletionRecord): ProviderCardDeletionResult {
        if (record.step == ProviderCardDeletionStep.TOMBSTONED && record.journalRevision == 1L) {
            faultInjector.afterPersisted(ProviderCardDeletionStep.TOMBSTONED)
        }
        return drive(record)
    }

    fun resumePending(): List<ProviderCardDeletionResult> =
        authority.pendingProviderCardDeletions().map(::delete)

    private fun drive(initial: ProviderCardDeletionRecord): ProviderCardDeletionResult {
        var record = initial
        while (true) {
            when (record.step) {
                ProviderCardDeletionStep.TOMBSTONED -> {
                    record = authority.cancelDeletedCardWork(record.accountId)
                    persisted(record)
                }
                ProviderCardDeletionStep.WORK_CANCELLED -> {
                    record = authority.clearDeletedCardPrimary(record.accountId)
                    persisted(record)
                }
                ProviderCardDeletionStep.PRIMARY_CLEARED ->
                    return credentialStep(record)
                ProviderCardDeletionStep.CREDENTIAL_ERASED ->
                    return profileStep(record)
                ProviderCardDeletionStep.PROFILE_ERASED ->
                    return providerCleanupStep(record)
                ProviderCardDeletionStep.PROVIDER_CLEANUP -> {
                    record = authority.eraseDeletedCardUsage(record.accountId)
                    persisted(record)
                }
                ProviderCardDeletionStep.USAGE_ERASED ->
                    return artifactStep(record)
                ProviderCardDeletionStep.ARTIFACTS_ERASED ->
                    return compatibilityStep(record)
                ProviderCardDeletionStep.COMPATIBILITY_CLEARED -> {
                    record = authority.finalizeProviderCardDeletion(record.accountId)
                    persisted(record)
                }
                ProviderCardDeletionStep.ERASED ->
                    return ProviderCardDeletionResult.Completed(record)
            }
        }
    }

    private fun credentialStep(record: ProviderCardDeletionRecord): ProviderCardDeletionResult =
        withClaim(record) { claim ->
            if (!credentials.erase(record.accountId)) {
                fail(claim, ProviderCardDeletionFailure.CREDENTIAL_ERASURE_FAILED)
            } else {
                advance(claim, ProviderCardDeletionStep.CREDENTIAL_ERASED)
            }
        }

    private fun profileStep(record: ProviderCardDeletionRecord): ProviderCardDeletionResult =
        withClaim(record) { claim ->
            var callbackResult: ProviderCardDeletionResult? = null
            val accepted = profiles.erase(record.accountId) { result ->
                callbackResult = if (result is ProfileDataErasureResult.Failed) {
                    fail(claim, ProviderCardDeletionFailure.PROFILE_ERASURE_FAILED)
                } else {
                    advance(claim, ProviderCardDeletionStep.PROFILE_ERASED)
                }
            }
            if (!accepted) {
                fail(claim, ProviderCardDeletionFailure.PROFILE_ERASURE_FAILED)
            } else {
                callbackResult ?: ProviderCardDeletionResult.InProgress(record)
            }
        }

    private fun providerCleanupStep(record: ProviderCardDeletionRecord): ProviderCardDeletionResult =
        withClaim(record) { claim ->
            val policy = ProviderCardCatalogPolicy.classify(record.accountId.providerId)
            val exactSingle = policy is ProviderCardProviderPolicy.Released &&
                policy.multiplicity == ProviderCardMultiplicity.SINGLE_RESERVED_DEFAULT &&
                record.accountId.accountKey == AccountKey.reservedDefault()
            if (exactSingle && providerCleanup.supports(record.accountId.providerId) &&
                !providerCleanup.erase(record.accountId)
            ) {
                fail(claim, ProviderCardDeletionFailure.PROVIDER_CLEANUP_FAILED)
            } else {
                advance(claim, ProviderCardDeletionStep.PROVIDER_CLEANUP)
            }
        }

    private fun artifactStep(record: ProviderCardDeletionRecord): ProviderCardDeletionResult =
        withClaim(record) { claim ->
            if (!artifacts.erase(record.accountId)) {
                fail(claim, ProviderCardDeletionFailure.ARTIFACT_ERASURE_FAILED)
            } else {
                advance(claim, ProviderCardDeletionStep.ARTIFACTS_ERASED)
            }
        }

    private fun compatibilityStep(record: ProviderCardDeletionRecord): ProviderCardDeletionResult =
        withClaim(record) { claim ->
            if (!compatibility.clear(record.accountId)) {
                fail(claim, ProviderCardDeletionFailure.COMPATIBILITY_CLEAR_FAILED)
            } else {
                advance(claim, ProviderCardDeletionStep.COMPATIBILITY_CLEARED)
            }
        }

    private inline fun withClaim(
        record: ProviderCardDeletionRecord,
        operation: (ProviderCardDeletionClaim) -> ProviderCardDeletionResult,
    ): ProviderCardDeletionResult {
        val now = clock.nowMillis()
        val expires = Math.addExact(now, CLAIM_LEASE_MILLIS)
        return when (
            val result = authority.claimProviderCardDeletion(
                record,
                tokens.create(),
                now,
                expires,
            )
        ) {
            is ProviderCardDeletionClaimResult.Claimed -> operation(result.claim)
            is ProviderCardDeletionClaimResult.InProgress -> ProviderCardDeletionResult.InProgress(result.record)
            is ProviderCardDeletionClaimResult.Missing ->
                ProviderCardDeletionResult.Rejected(ProviderCardDeletionRejection.ACCOUNT_MISSING)
        }
    }

    private fun advance(
        claim: ProviderCardDeletionClaim,
        next: ProviderCardDeletionStep,
    ): ProviderCardDeletionResult {
        val advanced = authority.advanceClaimedProviderCardDeletion(claim, next, clock.nowMillis())
            ?: return currentResult(claim.record.accountId)
        persisted(advanced)
        return drive(advanced)
    }

    private fun fail(
        claim: ProviderCardDeletionClaim,
        failure: ProviderCardDeletionFailure,
    ): ProviderCardDeletionResult {
        val failed = authority.failClaimedProviderCardDeletion(claim, failure, clock.nowMillis())
            ?: return currentResult(claim.record.accountId)
        return ProviderCardDeletionResult.Failed(failed)
    }

    private fun currentResult(accountId: ProviderAccountId): ProviderCardDeletionResult {
        val current = authority.providerCardDeletion(accountId)
            ?: return ProviderCardDeletionResult.Rejected(ProviderCardDeletionRejection.ACCOUNT_MISSING)
        return classify(current)
    }

    private fun classify(record: ProviderCardDeletionRecord): ProviderCardDeletionResult = when {
        record.step == ProviderCardDeletionStep.ERASED -> ProviderCardDeletionResult.Completed(record)
        record.failure != null -> ProviderCardDeletionResult.Failed(record)
        else -> ProviderCardDeletionResult.InProgress(record)
    }

    private fun persisted(record: ProviderCardDeletionRecord) {
        faultInjector.afterPersisted(record.step)
    }

    private companion object {
        const val CLAIM_LEASE_MILLIS = 60_000L
    }
}
