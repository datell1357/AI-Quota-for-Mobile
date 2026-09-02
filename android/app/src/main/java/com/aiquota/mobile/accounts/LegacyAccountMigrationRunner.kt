package com.aiquota.mobile.accounts

import android.content.Context
import com.aiquota.mobile.providers.LegacySessionCarryOver

internal object LegacyAccountMigrationRunner {
    fun runIfEnabled(context: Context, enabled: Boolean): LegacyMigrationResult? =
        runIfEnabled(enabled) { run(context) }

    internal fun <T> runIfEnabled(enabled: Boolean, operation: () -> T): T? {
        if (!enabled) return null
        return operation()
    }

    fun run(context: Context): LegacyMigrationResult? {
        val appContext = context.applicationContext
        val result = runCatching {
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
        if (result is LegacyMigrationResult.Completed) {
            val cards = MainProcessAccountAuthority.open(appContext).use { authority ->
                ConnectedProviderCardMigration(AndroidLegacyMigrationSource(appContext), authority).run()
            }
            if (cards is ConnectedProviderCardMigrationResult.Completed && !cards.resumed && cards.importedAccountCount > 0) {
                runCatching { LegacySessionCarryOver(appContext).run() }
            }
        }
        MainProcessAccountFeature.start(appContext)
        return result
    }
}
