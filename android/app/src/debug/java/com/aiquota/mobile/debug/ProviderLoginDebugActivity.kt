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
            startActivity(WebLoginActivity.createIntent(this, providerId))
        }
        finish()
    }

    companion object {
        const val EXTRA_PROVIDER_ID = "provider_id"
    }
}
