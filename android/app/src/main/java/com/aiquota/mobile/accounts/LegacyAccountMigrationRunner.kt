package com.aiquota.mobile.accounts

import android.content.Context

internal object LegacyAccountMigrationRunner {
    fun run(context: Context): LegacyMigrationResult? = runCatching {
        MainProcessAccountAuthority.open(context.applicationContext).use { authority ->
            LegacyAccountMigration(
                source = AndroidLegacyMigrationSource(context.applicationContext),
                journal = AndroidLegacyMigrationJournal(context.applicationContext),
                authority = authority,
                vault = createAndroidAccountCredentialVault(context.applicationContext)
            ).run()
        }
    }.getOrNull()
}
