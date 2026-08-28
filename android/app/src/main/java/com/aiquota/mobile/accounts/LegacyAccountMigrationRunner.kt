package com.aiquota.mobile.accounts

import android.content.Context

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
            MainProcessAccountAuthority.open(appContext).use { authority ->
                ConnectedProviderCardMigration(AndroidLegacyMigrationSource(appContext), authority).run()
            }
        }
        return result
    }
}
