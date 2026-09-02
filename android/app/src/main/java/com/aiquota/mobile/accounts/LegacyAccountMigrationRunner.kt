package com.aiquota.mobile.accounts

import android.content.Context
import android.os.Handler
import android.os.Looper
import com.aiquota.mobile.providers.LegacySessionCarryOver

internal object LegacyAccountMigrationRunner {
    fun runIfEnabled(context: Context, enabled: Boolean): LegacyMigrationResult? =
        runIfEnabled(enabled) { run(context) }

    internal fun <T> runIfEnabled(enabled: Boolean, operation: () -> T): T? {
        if (!enabled) return null
        return operation()
    }

    /**
     * Hashing every legacy store takes seconds on a cold start, so it must not run on the main
     * thread: it delayed the first frame of both the dashboard and the login screen, which showed
     * up as a blank window. Only the steps that need the UI thread are posted back to it.
     */
    fun startIfEnabled(context: Context, enabled: Boolean) {
        if (!enabled) return
        val appContext = context.applicationContext
        // Resuming an interrupted deletion needs the UI thread and must happen before anything
        // else touches those cards, so it stays on the startup path; everything else is disk work.
        runCatching { MainProcessAccountFeature.resumePendingDeletions(appContext) }
        Thread({
            runCatching { MainProcessAccountFeature.reconcileCompatibilityProjection(appContext) }
            val imported = runCatching { migrate(appContext) }.getOrDefault(false)
            if (imported) {
                Handler(Looper.getMainLooper()).post {
                    runCatching { LegacySessionCarryOver(appContext).run() }
                }
            }
        }, "aiquota-account-migration").start()
    }

    fun run(context: Context): LegacyMigrationResult? {
        val appContext = context.applicationContext
        val result = legacyMigration(appContext)
        if (result is LegacyMigrationResult.Completed) {
            finishOnMainThread(appContext, importedConnectedCards(appContext))
        } else {
            MainProcessAccountFeature.start(appContext)
        }
        return result
    }

    /** Returns true when connected provider cards were imported for the first time. */
    private fun migrate(appContext: Context): Boolean =
        legacyMigration(appContext) is LegacyMigrationResult.Completed &&
            importedConnectedCards(appContext)

    private fun legacyMigration(appContext: Context): LegacyMigrationResult? = runCatching {
        MainProcessAccountAuthority.open(appContext).use { authority ->
            val source = AndroidLegacyMigrationSource(appContext)
            LegacyAccountMigration(
                source = source,
                journal = AndroidLegacyMigrationJournal(appContext),
                authority = authority,
                vault = createAndroidAccountCredentialVault(appContext),
                projectionStore = source,
            ).run()
        }
    }.getOrNull()

    private fun importedConnectedCards(appContext: Context): Boolean {
        val cards = MainProcessAccountAuthority.open(appContext).use { authority ->
            ConnectedProviderCardMigration(AndroidLegacyMigrationSource(appContext), authority).run()
        }
        return cards is ConnectedProviderCardMigrationResult.Completed &&
            !cards.resumed &&
            cards.importedAccountCount > 0
    }

    /** Session carry-over and pending-deletion resume both drive WebView profiles. */
    private fun finishOnMainThread(appContext: Context, imported: Boolean) {
        if (imported) runCatching { LegacySessionCarryOver(appContext).run() }
        runCatching { MainProcessAccountFeature.start(appContext) }
    }
}
