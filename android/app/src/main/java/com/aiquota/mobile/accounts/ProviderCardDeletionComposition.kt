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
                        createAndroidAccountCredentialVault(appContext),
                        hasLiveProfileLease = { lifecycle.liveLeaseCount(it) > 0 },
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

    /**
     * Deletion steps drive WebView profiles, so they need the UI thread; the compatibility
     * projection they normally share a pass with does blocking disk writes and is reconciled
     * separately off the startup path.
     */
    @Synchronized
    fun resumePendingDeletions(context: Context): List<ProviderCardDeletionResult> {
        appContext = context.applicationContext
        val hasPending = MainProcessAccountAuthority.open(context).use { authority ->
            // 프로세스가 새로 떴으니 진행 중인 로그인은 있을 수 없다. 중단된 채 남은 카드를
            // 먼저 풀어야 "연결 중"에 갇히지 않는다.
            authority.resumeInterruptedLogins()
            authority.pendingProviderCardDeletions().isNotEmpty()
        }
        if (!hasPending) return emptyList()
        return deletion().resumePending()
    }

    @Synchronized
    fun reconcileCompatibilityProjection(context: Context) {
        MainProcessAccountAuthority.open(context).use { authority ->
            ProviderCardCompatibilityProjection(context.applicationContext, authority).reconcile()
        }
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
