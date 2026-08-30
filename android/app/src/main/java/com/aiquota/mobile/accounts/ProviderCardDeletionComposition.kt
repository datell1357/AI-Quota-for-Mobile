package com.aiquota.mobile.accounts

import android.content.Context

class ProviderCardDeletionComposition private constructor(
    private val authority: MainProcessAccountAuthority,
    private val profileStore: AndroidNamedProfileLifecycleStore,
    private val usageRepository: AccountUsageRepository,
    private val coordinator: ProviderCardDeletionCoordinator,
) : ProviderCardDeletionApi, AutoCloseable {
    override fun delete(accountId: ProviderAccountId): ProviderCardDeletionResult =
        coordinator.delete(accountId)

    override fun delete(
        accountId: ProviderAccountId,
        expectedVersion: DisplayVersion,
    ): ProviderCardDeletionResult = coordinator.delete(accountId, expectedVersion)

    fun resumePending(): List<ProviderCardDeletionResult> = coordinator.resumePending()

    override fun close() {
        usageRepository.close()
        profileStore.close()
        authority.close()
    }

    companion object {
        fun open(context: Context): ProviderCardDeletionComposition {
            val appContext = context.applicationContext
            val authority = MainProcessAccountAuthority.open(appContext)
            val profileStore = AndroidNamedProfileLifecycleStore(appContext)
            val usageRepository = AccountUsageRepository.open(appContext)
            return try {
                val lifecycle = NamedProfileLifecycleManager(
                    profileStore,
                    AndroidXNamedProfilePlatform(appContext),
                )
                create(
                    authority = authority,
                    profileStore = profileStore,
                    usageRepository = usageRepository,
                    credentials = AccountVaultCredentialEraser(
                        createAndroidAccountCredentialVault(appContext)
                    ),
                    profiles = NamedProfileExactEraser(lifecycle),
                    providerCleanup = ConservativeSingleAccountProviderCleanup(appContext),
                    artifacts = CompositeExactCardArtifactEraser(
                        ConservativePreferenceArtifactStore(appContext),
                        ConservativeWidgetArtifactStore(appContext),
                        ConservativeNotificationArtifactStore(appContext),
                    ),
                    compatibility = AccountUsageCompatibilityProjectionClearer(usageRepository) {
                        ProviderCardCompatibilityProjection(appContext, authority).reconcile()
                    },
                )
            } catch (failure: Throwable) {
                usageRepository.close()
                profileStore.close()
                authority.close()
                throw failure
            }
        }

        internal fun create(
            authority: MainProcessAccountAuthority,
            profileStore: AndroidNamedProfileLifecycleStore,
            usageRepository: AccountUsageRepository,
            credentials: ExactCredentialEraser,
            profiles: ExactProfileEraser,
            providerCleanup: ProviderSpecificAccountCleanup,
            artifacts: ExactCardArtifactEraser,
            compatibility: CompatibilityProjectionClearer,
        ): ProviderCardDeletionComposition = ProviderCardDeletionComposition(
            authority,
            profileStore,
            usageRepository,
            ProviderCardDeletionCoordinator(
                authority,
                credentials,
                profiles,
                providerCleanup,
                artifacts,
                compatibility,
            ),
        )
    }
}

object MainProcessAccountFeature {
    private var appContext: Context? = null
    private var deletionComposition: ProviderCardDeletionComposition? = null

    @Synchronized
    fun start(context: Context): List<ProviderCardDeletionResult> {
        appContext = context.applicationContext
        val hasPending = MainProcessAccountAuthority.open(context).use { authority ->
            ProviderCardCompatibilityProjection(context.applicationContext, authority).reconcile()
            authority.pendingProviderCardDeletions().isNotEmpty()
        }
        if (!hasPending) return emptyList()
        return deletion().resumePending()
    }

    @Synchronized
    fun deletionApi(): ProviderCardDeletionApi = deletion()

    @Synchronized
    internal fun resetForTest() {
        deletionComposition?.close()
        deletionComposition = null
        appContext = null
    }

    private fun deletion(): ProviderCardDeletionComposition {
        deletionComposition?.let { return it }
        val context = checkNotNull(appContext) { "Main-process account feature has not started" }
        return ProviderCardDeletionComposition.open(context).also { deletionComposition = it }
    }
}
