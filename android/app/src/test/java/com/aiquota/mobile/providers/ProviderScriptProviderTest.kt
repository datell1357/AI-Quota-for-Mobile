package com.aiquota.mobile.providers

import com.aiquota.mobile.local.ProviderId
import java.io.File
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test

class ProviderScriptProviderTest {
    @Test
    fun providerScriptProvidersKeepOnlyStoreMetadata() {
        ProviderId.values().forEach { providerId ->
            val metadata = ProviderScriptProviders.metadataFor(providerId)
            val stores = ProviderScriptProviders.storeNamesFor(providerId)

            assertEquals(providerId, metadata.providerId)
            assertEquals(stores, metadata.stores)
            assertEquals("account_data_${providerId.storageId}", stores.accountData)
            assertEquals("usage_data_${providerId.storageId}", stores.usageData)
            assertEquals("script_data_${providerId.storageId}", stores.scriptData)
        }
    }

    @Test
    fun providerScopedStateRepositoryMirrorsStoreApkStyleStores() {
        val source = File("src/main/java/com/aiquota/mobile/providers/ProviderScopedStateRepository.kt").readText()
        val localUsage = File("src/main/java/com/aiquota/mobile/local/LocalUsageRepository.kt").readText()

        assertTrue(source.contains("ProviderScriptProviders.storeNamesFor(providerId)"))
        assertTrue(source.contains("getSharedPreferences(stores.accountData"))
        assertTrue(source.contains("getSharedPreferences(stores.usageData"))
        assertTrue(source.contains("getSharedPreferences(stores.scriptData"))
        assertTrue(source.contains("ProviderSnapshotCodec.encode(listOf(snapshot))"))
        assertTrue(localUsage.contains("ProviderScopedStateRepository(appContext)"))
        assertTrue(localUsage.contains("scopedStateRepository.saveSnapshots(cleaned)"))
        assertTrue(localUsage.contains("scopedStateRepository.saveSnapshots(ordered)"))
    }

    @Test
    fun antigravityHiddenCollectorUsesStoreStyleUserAgent() {
        assertEquals("antigravity", ProviderWebViewUserAgent.hiddenCollectorUserAgent(ProviderId.ANTIGRAVITY))
        assertFalse(ProviderWebViewUserAgent.loginUserAgent().equals("antigravity"))
    }
}
