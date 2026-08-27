package com.aiquota.mobile.accounts

import android.app.Service
import android.content.BroadcastReceiver
import android.content.Context
import android.content.Intent
import android.content.IntentFilter
import android.os.IBinder
import android.os.Process
import com.aiquota.mobile.local.ProviderId

class NamedProfileAuthorityProbeService : Service() {
    override fun onBind(intent: Intent?): IBinder? = null

    override fun onStartCommand(intent: Intent?, flags: Int, startId: Int): Int {
        val command = requireNotNull(intent?.action)
        val database = requireNotNull(intent.getStringExtra(NamedProfileAuthorityProbeContract.EXTRA_DATABASE))
        val accountKey = requireNotNull(intent.getStringExtra(NamedProfileAuthorityProbeContract.EXTRA_ACCOUNT_KEY))
        val profileName = requireNotNull(intent.getStringExtra(NamedProfileAuthorityProbeContract.EXTRA_PROFILE_NAME))
        val token = requireNotNull(intent.getStringExtra(NamedProfileAuthorityProbeContract.EXTRA_TOKEN))
        val accountId =
            ProviderAccountId(
                ProviderId.CLAUDE,
                AccountKey.fromStorage(accountKey),
            )
        val name = WebProfileName.fromStorage(profileName)
        when (command) {
            NamedProfileAuthorityProbeContract.ACTION_RACE_CREATE -> {
                lateinit var receiver: BroadcastReceiver
                receiver =
                    object : BroadcastReceiver() {
                        override fun onReceive(context: Context, trigger: Intent) {
                            if (trigger.getStringExtra(NamedProfileAuthorityProbeContract.EXTRA_TOKEN) != token) return
                            unregisterReceiver(receiver)
                            val code =
                                try {
                                    AndroidNamedProfileLifecycleStore(this@NamedProfileAuthorityProbeService, database).use {
                                        it.create(accountId, name)
                                    }
                                    NamedProfileAuthorityProbeContract.RESULT_CREATED
                                } catch (_: ProfileNameCollisionException) {
                                    NamedProfileAuthorityProbeContract.RESULT_COLLISION
                                }
                            sendResult(token, code)
                            stopSelf(startId)
                        }
                    }
                registerReceiver(
                    receiver,
                    IntentFilter(NamedProfileAuthorityProbeContract.ACTION_TRIGGER),
                    Context.RECEIVER_EXPORTED,
                )
                sendResult(token, NamedProfileAuthorityProbeContract.RESULT_READY)
            }
            NamedProfileAuthorityProbeContract.ACTION_COMPLETE -> {
                val row =
                    AndroidNamedProfileLifecycleStore(this, database).use {
                        it.complete(accountId)
                    }
                sendResult(
                    token,
                    NamedProfileAuthorityProbeContract.RESULT_COMPLETED,
                    row.state.name,
                )
                stopSelf(startId)
            }
            else -> error("Unknown named profile authority probe command")
        }
        return START_NOT_STICKY
    }

    private fun sendResult(token: String, code: Int, state: String? = null) {
        sendBroadcast(
            Intent(NamedProfileAuthorityProbeContract.ACTION_RESULT)
                .setPackage(packageName)
                .putExtra(NamedProfileAuthorityProbeContract.EXTRA_TOKEN, token)
                .putExtra(NamedProfileAuthorityProbeContract.EXTRA_CODE, code)
                .putExtra(NamedProfileAuthorityProbeContract.EXTRA_PID, Process.myPid())
                .putExtra(NamedProfileAuthorityProbeContract.EXTRA_STATE, state)
        )
    }
}

object NamedProfileAuthorityProbeContract {
    const val ACTION_RACE_CREATE = "com.aiquota.mobile.debug.NAMED_PROFILE_RACE_CREATE"
    const val ACTION_COMPLETE = "com.aiquota.mobile.debug.NAMED_PROFILE_COMPLETE"
    const val ACTION_TRIGGER = "com.aiquota.mobile.debug.NAMED_PROFILE_TRIGGER"
    const val ACTION_RESULT = "com.aiquota.mobile.debug.NAMED_PROFILE_RESULT"
    const val EXTRA_DATABASE = "database"
    const val EXTRA_ACCOUNT_KEY = "account_key"
    const val EXTRA_PROFILE_NAME = "profile_name"
    const val EXTRA_TOKEN = "token"
    const val EXTRA_CODE = "code"
    const val EXTRA_PID = "pid"
    const val EXTRA_STATE = "state"
    const val RESULT_READY = 1
    const val RESULT_CREATED = 2
    const val RESULT_COLLISION = 3
    const val RESULT_COMPLETED = 4
}
