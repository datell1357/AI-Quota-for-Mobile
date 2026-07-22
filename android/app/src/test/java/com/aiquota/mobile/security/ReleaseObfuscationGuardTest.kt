package com.aiquota.mobile.security

import java.io.File
import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Test

/**
 * Guards the release obfuscation posture.
 *
 * R8 renames classes but the app resolves many entry points by name at runtime: manifest
 * components, WorkManager workers, and WebView JavaScript bridge methods. A missing keep rule
 * still builds successfully and only fails at runtime, so these checks pin the contract.
 */
class ReleaseObfuscationGuardTest {
    private val appDir: File
        get() {
            val root = File(System.getProperty("user.dir"))
            return if (root.name == "app") root else File(root, "android/app")
        }

    private val proguardRules: String
        get() = File(appDir, "proguard-rules.pro").readNormalizedText()

    private val manifest: String
        get() = File(appDir, "src/main/AndroidManifest.xml").readNormalizedText()

    @Test
    fun releaseBuildKeepsMinificationEnabled() {
        val build = File(appDir, "build.gradle.kts").readNormalizedText()

        assertTrue(
            "Release build must keep R8 minification enabled so class names stay obfuscated.",
            build.contains("isMinifyEnabled = true")
        )
        assertTrue(
            "Release build must apply proguard-rules.pro.",
            build.contains("\"proguard-rules.pro\"")
        )
    }

    /**
     * Manifest components themselves are kept automatically by the AGP-generated aapt rules
     * (verified against mapping.txt: components without an explicit rule keep their names).
     * What this guards instead is that every class we *do* pin explicitly still exists, so the
     * rules cannot silently rot into no-ops after a rename or move.
     */
    @Test
    fun everyExplicitlyKeptAppClassStillExists() {
        val keptAppClasses = Regex("""-keep class (com\.aiquota\.mobile\.[A-Za-z0-9_.]+)""")
            .findAll(proguardRules)
            .map { it.groupValues[1] }
            .toSortedSet()

        assertTrue("Expected explicit keep rules for app classes.", keptAppClasses.isNotEmpty())

        val stale = keptAppClasses.filterNot { fqcn -> declaresClass(fqcn.substringAfterLast('.')) }

        assertEquals(
            "proguard-rules.pro pins classes that no longer exist; the rule is a silent no-op " +
                "and the real class may now be getting obfuscated. Stale: $stale",
            emptyList<String>(),
            stale
        )
    }

    @Test
    fun manifestComponentsResolveToRealClasses() {
        val componentNames = Regex("""android:name="(\.[A-Za-z0-9_.]+)"""")
            .findAll(manifest)
            .map { "com.aiquota.mobile" + it.groupValues[1] }
            .toSortedSet()

        assertTrue("Expected manifest components to be discoverable.", componentNames.isNotEmpty())

        val missing = componentNames.filterNot { fqcn -> declaresClass(fqcn.substringAfterLast('.')) }

        assertEquals(
            "Manifest declares components that have no source class. Missing: $missing",
            emptyList<String>(),
            missing
        )
    }

    @Test
    fun javascriptBridgeMethodNamesAreKept() {
        assertTrue(
            "WebView collector scripts call bridge methods by name, so @JavascriptInterface " +
                "members must never be renamed.",
            proguardRules.contains("@android.webkit.JavascriptInterface <methods>;")
        )
    }

    @Test
    fun workManagerWorkerConstructorIsKept() {
        assertTrue(
            "WorkManager instantiates workers reflectively by class name.",
            proguardRules.contains("com.aiquota.mobile.sync.ForegroundRefreshHealthWorker")
        )
    }

    @Test
    fun appAuthRedirectReceiverIsKept() {
        assertTrue(
            "AppAuth resolves its redirect receiver by name for OAuth loopback flows.",
            proguardRules.contains("-keep class net.openid.appauth.RedirectUriReceiverActivity")
        )
    }

    @Test
    fun obfuscationIsNotDisabledWholesale() {
        val rules = proguardRules

        listOf("-dontobfuscate", "-keep class com.aiquota.mobile.** { *; }").forEach { marker ->
            assertTrue(
                "$marker would defeat class-name obfuscation for the whole app.",
                !rules.contains(marker)
            )
        }
    }

    /**
     * Kotlin allows several classes per file and components live across source sets, so resolve
     * by declaration rather than by file path.
     */
    private fun declaresClass(simpleName: String): Boolean {
        val declaration = Regex("""\bclass\s+$simpleName\b""")
        return sequenceOf("src/main/java", "src/debug/java", "src/release/java")
            .map { File(appDir, it) }
            .filter { it.isDirectory }
            .flatMap { it.walkTopDown().filter { file -> file.extension == "kt" } }
            .any { declaration.containsMatchIn(it.readText()) }
    }
}

private fun File.readNormalizedText(): String = readText().replace("\r\n", "\n")
