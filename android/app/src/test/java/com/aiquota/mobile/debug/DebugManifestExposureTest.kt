package com.aiquota.mobile.debug

import java.io.File
import javax.xml.parsers.DocumentBuilderFactory
import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Test

class DebugManifestExposureTest {
    @Test
    fun claudePrimeReceiverIsNotExternallyExported() {
        val manifestFile = File("src/debug/AndroidManifest.xml")
        assertTrue("Debug manifest must be present", manifestFile.isFile)

        val document = DocumentBuilderFactory.newInstance().apply {
            isNamespaceAware = true
        }.newDocumentBuilder().parse(manifestFile)
        val receiver = (0 until document.getElementsByTagName("receiver").length)
            .map(document.getElementsByTagName("receiver")::item)
            .firstOrNull { node ->
                node.attributes.getNamedItemNS(ANDROID_NAMESPACE, "name")?.nodeValue ==
                    ".debug.DebugClaudePrimeReceiver"
            }

        assertEquals(
            "false",
            requireNotNull(receiver)
                .attributes
                .getNamedItemNS(ANDROID_NAMESPACE, "exported")
                ?.nodeValue,
        )
    }

    private companion object {
        const val ANDROID_NAMESPACE = "http://schemas.android.com/apk/res/android"
    }
}
