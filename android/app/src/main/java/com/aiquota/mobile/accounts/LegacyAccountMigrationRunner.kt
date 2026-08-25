package com.aiquota.mobile.accounts

import android.content.Context

internal object LegacyAccountMigrationRunner {
    fun runIfEnabled(context: Context, enabled: Boolean): LegacyMigrationResult? =
        runIfEnabled(enabled) { run(context) }

    internal fun <T> runIfEnabled(enabled: Boolean, operation: () -> T): T? {
        if (!enabled) return null
        return operation()
    }

    fun run(context: Context): LegacyMigrationResult? = runCatching {
        MainProcessAccountAuthority.open(context.applicationContext).use { authority ->
            LegacyAccountMigration(
                source = AndroidLegacyMigrationSource(context.applicationContext),
                journal = AndroidLegacyMigrationJournal(context.applicationContext),
                authority = authority,
                vault = createAndroidAccountCredentialVault(context.applicationContext),
                projectionStore = AndroidLegacyMigrationSource(context.applicationContext)
            ).run()
        }
    }.getOrNull()
}
