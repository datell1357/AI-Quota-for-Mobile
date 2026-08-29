package com.aiquota.mobile.notification

import android.app.PendingIntent
import android.content.Context
import android.net.Uri
import androidx.core.app.NotificationManagerCompat
import com.aiquota.mobile.MainActivity
import com.aiquota.mobile.accounts.ProviderAccountId
import com.aiquota.mobile.providers.ProviderAccountLineKey
import com.aiquota.mobile.providers.ProviderAccountLineKeyCodec
import java.nio.ByteBuffer
import java.security.MessageDigest
import org.json.JSONObject

enum class ProviderNotificationKind(val storageId: String) {
    RESET("reset"),
    THRESHOLD("threshold");

    companion object {
        fun fromStorageId(value: String): ProviderNotificationKind? = entries.firstOrNull { it.storageId == value }
    }
}

data class ProviderNotificationIdentity(
    val kind: ProviderNotificationKind,
    val accountLineKey: ProviderAccountLineKey,
    val tag: String,
    val notificationId: Int,
    val requestCode: Int,
    val data: Uri,
)

class ProviderNotificationIdentityRepository(
    context: Context,
    private val initialId: (String) -> Int = ::stableNotificationId,
) {
    private val preferences = context.applicationContext.getSharedPreferences(PREFERENCES_NAME, Context.MODE_PRIVATE)

    fun identity(
        kind: ProviderNotificationKind,
        key: ProviderAccountLineKey,
    ): ProviderNotificationIdentity = synchronized(LOCK) {
        val canonical = canonical(kind, key)
        val allocations = readAllocations()
        val id = allocations[canonical] ?: allocate(canonical, allocations).also { allocated ->
            allocations[canonical] = allocated
            check(preferences.edit().putString(KEY_ALLOCATIONS, encode(allocations)).commit())
        }
        identity(kind, key, id)
    }

    fun identitiesExact(accountId: ProviderAccountId): List<ProviderNotificationIdentity> = synchronized(LOCK) {
        readAllocations().mapNotNull { (canonical, id) ->
            decodeCanonical(canonical)?.takeIf { it.second.accountId == accountId }
                ?.let { (kind, key) -> identity(kind, key, id) }
        }.sortedWith(compareBy(ProviderNotificationIdentity::notificationId, ProviderNotificationIdentity::tag))
    }

    fun removeExact(accountId: ProviderAccountId): List<ProviderNotificationIdentity> = synchronized(LOCK) {
        val removed = identitiesExact(accountId)
        if (removed.isNotEmpty()) {
            val allocations = readAllocations()
            removed.forEach { allocations.remove(canonical(it.kind, it.accountLineKey)) }
            check(preferences.edit().putString(KEY_ALLOCATIONS, encode(allocations)).commit())
        }
        removed
    }

    private fun allocate(canonical: String, allocations: Map<String, Int>): Int {
        val used = allocations.values.toSet()
        var candidate = initialId(canonical).let { if (it <= 0) 1 else it }
        while (candidate in used) candidate = if (candidate == Int.MAX_VALUE) 1 else candidate + 1
        return candidate
    }

    private fun readAllocations(): MutableMap<String, Int> {
        val raw = preferences.getString(KEY_ALLOCATIONS, null) ?: return linkedMapOf()
        val root = runCatching { JSONObject(raw) }.getOrNull() ?: return linkedMapOf()
        return buildMap {
            val names = root.keys()
            while (names.hasNext()) {
                val canonical = names.next()
                val id = root.optInt(canonical, 0)
                if (id > 0 && decodeCanonical(canonical) != null && id !in values) put(canonical, id)
            }
        }.toMutableMap()
    }

    private fun encode(allocations: Map<String, Int>): String = JSONObject().also { root ->
        allocations.toSortedMap().forEach(root::put)
    }.toString()

    private fun identity(
        kind: ProviderNotificationKind,
        key: ProviderAccountLineKey,
        id: Int,
    ): ProviderNotificationIdentity {
        val encoded = ProviderAccountLineKeyCodec.encode(key)
        return ProviderNotificationIdentity(
            kind,
            key,
            "provider_${kind.storageId}:$encoded",
            id,
            id,
            Uri.Builder()
                .scheme("aiquota")
                .authority("notification")
                .appendPath(kind.storageId)
                .appendPath(encoded)
                .build(),
        )
    }

    private fun canonical(kind: ProviderNotificationKind, key: ProviderAccountLineKey): String =
        "${kind.storageId}:${ProviderAccountLineKeyCodec.encode(key)}"

    private fun decodeCanonical(value: String): Pair<ProviderNotificationKind, ProviderAccountLineKey>? {
        val separator = value.indexOf(':')
        if (separator <= 0) return null
        val kind = ProviderNotificationKind.fromStorageId(value.substring(0, separator)) ?: return null
        val key = ProviderAccountLineKeyCodec.decodeOrNull(value.substring(separator + 1)) ?: return null
        return kind to key
    }

    private companion object {
        val LOCK = Any()
        const val PREFERENCES_NAME = "ai_quota_provider_notification_identity"
        const val KEY_ALLOCATIONS = "allocations_v1"
    }
}

internal object ProviderNotificationDetailIntent {
    fun pendingIntent(context: Context, identity: ProviderNotificationIdentity): PendingIntent =
        PendingIntent.getActivity(
            context,
            identity.requestCode,
            MainActivity.createProviderDetailIntent(context, identity.accountLineKey.accountId)
                .setAction("com.aiquota.mobile.notification.action.${identity.kind.name}_DETAIL")
                .setData(identity.data),
            PendingIntent.FLAG_UPDATE_CURRENT or PendingIntent.FLAG_IMMUTABLE,
        )
}

object ProviderNotificationArtifacts {
    fun eraseExact(context: Context, accountId: ProviderAccountId): Boolean {
        val repository = ProviderNotificationIdentityRepository(context)
        val identities = repository.identitiesExact(accountId)
        val cancelled = runCatching {
            val manager = NotificationManagerCompat.from(context)
            identities.forEach { identity -> manager.cancel(identity.tag, identity.notificationId) }
        }.isSuccess
        return cancelled &&
            ProviderPostedNotificationRepository(context).clearExact(accountId) &&
            repository.removeExact(accountId) == identities
    }
}

private fun stableNotificationId(canonical: String): Int {
    val digest = MessageDigest.getInstance("SHA-256").digest(canonical.toByteArray(Charsets.UTF_8))
    return ByteBuffer.wrap(digest, 0, Int.SIZE_BYTES).int and Int.MAX_VALUE
}
