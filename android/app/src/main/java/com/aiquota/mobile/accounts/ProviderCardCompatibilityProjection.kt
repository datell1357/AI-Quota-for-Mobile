package com.aiquota.mobile.accounts

import android.content.Context
import com.aiquota.mobile.local.ProviderCardPreferenceProjection
import com.aiquota.mobile.local.ProviderCardPreferenceProjectionResult
import com.aiquota.mobile.local.ProviderId
import com.aiquota.mobile.providers.ProviderNotificationManagedState
import com.aiquota.mobile.providers.ProviderNotificationStateProjection
import com.aiquota.mobile.widget.WidgetSnapshotProjection

data class ProviderCardCompatibilityPrimarySnapshot(
    val authorityVersion: DisplayVersion,
    val accounts: Map<ProviderId, ProviderAccountId?>,
    val orderedAccounts: List<ProviderAccountId>,
)

internal enum class ProviderCardProjectionBoundary {
    PREFERENCES_APPLIED,
    NOTIFICATIONS_APPLIED,
    WIDGETS_APPLIED,
}

internal fun interface ProviderCardProjectionBoundaryCheck {
    fun proceed(boundary: ProviderCardProjectionBoundary): Boolean

    companion object {
        val ALWAYS = ProviderCardProjectionBoundaryCheck { true }
    }
}

/** Restart-safe cross-store projection guarded by the immutable authority version. */
internal class ProviderCardCompatibilityProjection(
    context: Context,
    private val authority: MainProcessAccountAuthority,
    private val boundaryCheck: ProviderCardProjectionBoundaryCheck = ProviderCardProjectionBoundaryCheck.ALWAYS,
) {
    private val preferences = ProviderCardPreferenceProjection(context.applicationContext)
    private val notifications = ProviderNotificationStateProjection(context.applicationContext)
    private val widgets = WidgetSnapshotProjection(context.applicationContext)

    fun reconcile(): Boolean {
        repeat(MAX_VERSION_RETRIES) {
            val selected = authority.compatibilityPrimarySnapshot()
            val beforePreferences = preferences.captureManagedState()
            val beforeNotifications = notifications.captureManagedState()
            val beforeWidgets = widgets.captureManagedState()
            var appliedPreferences: ManagedPreferencesState? = null
            var appliedNotifications: ProviderNotificationManagedState? = null
            var appliedWidgets: ManagedPreferencesState? = null

            val preferenceResult = preferences.reconcile(selected.accounts, selected.orderedAccounts)
            appliedPreferences = preferences.captureManagedState()
            if (preferenceResult is ProviderCardPreferenceProjectionResult.WriteFailed ||
                !boundaryCheck.proceed(ProviderCardProjectionBoundary.PREFERENCES_APPLIED)
            ) {
                rollback(
                    beforePreferences,
                    beforeNotifications,
                    beforeWidgets,
                    appliedPreferences,
                    appliedNotifications,
                    appliedWidgets,
                )
                return false
            }

            val notificationResult = notifications.reconcile(selected.accounts)
            appliedNotifications = notifications.captureManagedState()
            if (!notificationResult ||
                !boundaryCheck.proceed(ProviderCardProjectionBoundary.NOTIFICATIONS_APPLIED)
            ) {
                rollback(
                    beforePreferences,
                    beforeNotifications,
                    beforeWidgets,
                    appliedPreferences,
                    appliedNotifications,
                    appliedWidgets,
                )
                return false
            }

            val widgetResult = widgets.reconcile(selected.accounts)
            appliedWidgets = widgets.captureManagedState()
            if (!widgetResult || !boundaryCheck.proceed(ProviderCardProjectionBoundary.WIDGETS_APPLIED)) {
                rollback(
                    beforePreferences,
                    beforeNotifications,
                    beforeWidgets,
                    appliedPreferences,
                    appliedNotifications,
                    appliedWidgets,
                )
                return false
            }

            if (authority.compatibilityPrimarySnapshot().authorityVersion == selected.authorityVersion) return true
            if (!rollback(
                    beforePreferences,
                    beforeNotifications,
                    beforeWidgets,
                    appliedPreferences,
                    appliedNotifications,
                    appliedWidgets,
                )
            ) return false
        }
        return false
    }

    private fun rollback(
        beforePreferences: ManagedPreferencesState,
        beforeNotifications: ProviderNotificationManagedState,
        beforeWidgets: ManagedPreferencesState,
        appliedPreferences: ManagedPreferencesState?,
        appliedNotifications: ProviderNotificationManagedState?,
        appliedWidgets: ManagedPreferencesState?,
    ): Boolean {
        val widgetsRestored = appliedWidgets?.let { widgets.restoreManagedState(beforeWidgets, it) } ?: true
        val notificationsRestored = appliedNotifications?.let {
            notifications.restoreManagedState(beforeNotifications, it)
        } ?: true
        val preferencesRestored = appliedPreferences?.let {
            preferences.restoreManagedState(beforePreferences, it)
        } ?: true
        return widgetsRestored && notificationsRestored && preferencesRestored
    }

    private companion object {
        const val MAX_VERSION_RETRIES = 3
    }
}
