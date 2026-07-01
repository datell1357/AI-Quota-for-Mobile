package com.aiquota.mobile.debug

import android.app.Activity
import android.os.Bundle
import com.aiquota.mobile.local.ProviderId
import com.aiquota.mobile.providers.WebLoginActivity

class ProviderLoginDebugActivity : Activity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        val providerId = ProviderId.fromStorageId(intent.getStringExtra(EXTRA_PROVIDER_ID))
        if (providerId != null) {
            val startUrl = intent.getStringExtra(EXTRA_START_URL)
            val loginIntent = if (startUrl.isNullOrBlank()) {
                WebLoginActivity.createIntent(this, providerId)
            } else {
                WebLoginActivity.createIntent(this, providerId, startUrl)
            }
            startActivity(loginIntent)
        }
        finish()
    }

    companion object {
        const val EXTRA_PROVIDER_ID = "provider_id"
        const val EXTRA_START_URL = "start_url"
    }
}
