package com.aiquota.mobile.ui

import java.io.File
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test

class ProviderCatalogResourceContractTest {
    @Test
    fun englishAndKoreanResourceKeysStayInParity() {
        val english = readStrings("src/main/res/values/strings.xml")
        val korean = readStrings("src/main/res/values-ko/strings.xml")

        assertEquals("English and Korean string resources must expose the same keys", english.keys, korean.keys)
    }

    @Test
    fun task23CatalogAndSettingsCopyExistsInBothLocales() {
        val required = setOf(
            "provider_catalog_empty_prompt",
            "provider_catalog_add_action",
            "provider_catalog_remove_action",
            "provider_removal_selected_count",
            "provider_removal_confirmation_consequence",
            "provider_picker_disabled_description",
            "provider_onboarding_later",
            "provider_enrollment_error_alias_conflict",
            "provider_status_auth_required",
            "provider_connect",
            "provider_reconnect",
            "settings_version"
        )
        val english = readStrings("src/main/res/values/strings.xml")
        val korean = readStrings("src/main/res/values-ko/strings.xml")

        assertTrue("English Task 23 copy is incomplete", english.keys.containsAll(required))
        assertTrue("Korean Task 23 copy is incomplete", korean.keys.containsAll(required))
        required.forEach { key ->
            assertFalse("English resource $key is blank", english.getValue(key).isBlank())
            assertFalse("Korean resource $key is blank", korean.getValue(key).isBlank())
        }
    }

    @Test
    fun settingsVersionPlaceholdersStayAlignedAcrossLocales() {
        val english = readStrings("src/main/res/values/strings.xml")
        val korean = readStrings("src/main/res/values-ko/strings.xml")
        val placeholderPattern = Regex("%([0-9]+)\\$[sd]")

        assertEquals(
            placeholderPattern.findAll(english.getValue("settings_version")).map { it.groupValues[1] }.toList(),
            placeholderPattern.findAll(korean.getValue("settings_version")).map { it.groupValues[1] }.toList()
        )
    }

    @Test
    fun providerIconImageIsDecorativeByDefaultAndSupportsOptInDescription() {
        val source = File("src/main/java/com/aiquota/mobile/ui/provider/ProviderIcon.kt").readText()

        assertTrue(source.contains("contentDescription: String? = null"))
        assertTrue(source.contains("contentDescription = contentDescription"))
        assertFalse(source.contains("contentDescription = providerId.displayName"))
    }

    private fun readStrings(path: String): Map<String, String> {
        val entryPattern = Regex(
            """<string\s+name="([^"]+)"[^>]*>(.*?)</string>""",
            setOf(RegexOption.DOT_MATCHES_ALL)
        )
        return entryPattern.findAll(File(path).readText()).associate {
            it.groupValues[1] to it.groupValues[2].trim()
        }
    }
}
