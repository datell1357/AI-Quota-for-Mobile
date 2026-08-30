package com.aiquota.mobile.ui

import android.os.Bundle
import androidx.test.runner.AndroidJUnitRunner

class AIQuotaInstrumentationRunner : AndroidJUnitRunner() {
    override fun onCreate(arguments: Bundle) {
        val characterization = ProviderCardCatalogCharacterizationTest::class.java.name
        val existing = arguments.getString(ARGUMENT_NOT_CLASS)
        arguments.putString(
            ARGUMENT_NOT_CLASS,
            listOfNotNull(existing?.takeIf(String::isNotBlank), characterization).joinToString(","),
        )
        super.onCreate(arguments)
    }

    private companion object {
        const val ARGUMENT_NOT_CLASS = "notClass"
    }
}
