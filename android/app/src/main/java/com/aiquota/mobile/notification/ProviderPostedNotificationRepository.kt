package com.aiquota.mobile.notification

import android.content.Context
import com.aiquota.mobile.accounts.AccountGeneration
import com.aiquota.mobile.accounts.DisplayVersion
import com.aiquota.mobile.accounts.ProviderAccountId
import com.aiquota.mobile.accounts.SessionRevision
import com.aiquota.mobile.providers.ProviderAccountLineKeyCodec
import com.aiquota.mobile.providers.ProviderCardNotificationSnapshot
import com.aiquota.mobile.providers.ProviderResetNotification
import com.aiquota.mobile.providers.ProviderUsageThresholdNotification
import org.json.JSONObject

internal sealed interface PostedProviderNotification {
    val accountId: ProviderAccountId
    val alias: String

    data class Reset(val event: ProviderResetNotification) : PostedProviderNotification {
        override val accountId: ProviderAccountId get() = event.accountId
        override val alias: String get() = event.alias
    }

    data class Threshold(val event: ProviderUsageThresholdNotification) : PostedProviderNotification {
        override val accountId: ProviderAccountId get() = event.accountId
        override val alias: String get() = event.alias
    }
}

internal class ProviderPostedNotificationRepository(context: Context) {
    private val preferences = context.applicationContext.getSharedPreferences(PREFERENCES_NAME, Context.MODE_PRIVATE)

    fun save(notification: PostedProviderNotification): Boolean = synchronized(LOCK) {
        val root = readRoot()
        root.put(storageKey(notification), encode(notification))
        preferences.edit().putString(KEY_POSTED, root.toString()).commit()
    }

    fun readExact(accountId: ProviderAccountId): List<PostedProviderNotification> = synchronized(LOCK) {
        val root = readRoot()
        buildList {
            val keys = root.keys()
            while (keys.hasNext()) {
                decode(root.optJSONObject(keys.next()))?.takeIf { it.accountId == accountId }?.let(::add)
            }
        }
    }

    fun clearExact(accountId: ProviderAccountId): Boolean = synchronized(LOCK) {
        val root = readRoot()
        root.keys().asSequence().toList().forEach { key ->
            if (decode(root.optJSONObject(key))?.accountId == accountId) root.remove(key)
        }
        preferences.edit().putString(KEY_POSTED, root.toString()).commit()
    }

    private fun storageKey(notification: PostedProviderNotification): String = when (notification) {
        is PostedProviderNotification.Reset ->
            "reset:${ProviderAccountLineKeyCodec.encode(notification.event.accountLineKey)}"
        is PostedProviderNotification.Threshold ->
            "threshold:${ProviderAccountLineKeyCodec.encode(notification.event.accountLineKey)}"
    }

    private fun encode(notification: PostedProviderNotification): JSONObject = when (notification) {
        is PostedProviderNotification.Reset -> notification.event.let { event ->
            JSONObject()
                .put(FIELD_KIND, "reset")
                .put(FIELD_LINE_KEY, ProviderAccountLineKeyCodec.encode(event.accountLineKey))
                .put(FIELD_ALIAS, event.alias)
                .put(FIELD_LINE_LABEL, event.lineLabel)
                .put(FIELD_LINE_INDEX, event.lineIndex)
                .put(FIELD_GENERATION, event.generation.value)
                .put(FIELD_SESSION, event.sessionRevision.value)
                .put(FIELD_VERSION, event.version.value)
                .put(FIELD_DISAMBIGUATE, event.disambiguateAccount)
        }
        is PostedProviderNotification.Threshold -> notification.event.let { event ->
            JSONObject()
                .put(FIELD_KIND, "threshold")
                .put(FIELD_LINE_KEY, ProviderAccountLineKeyCodec.encode(event.accountLineKey))
                .put(FIELD_ALIAS, event.alias)
                .put(FIELD_LINE_LABEL, event.lineLabel)
                .put(FIELD_LINE_INDEX, event.lineIndex)
                .put(FIELD_THRESHOLD, event.thresholdPercent)
                .put(FIELD_GENERATION, event.generation.value)
                .put(FIELD_SESSION, event.sessionRevision.value)
                .put(FIELD_VERSION, event.version.value)
                .put(FIELD_DISAMBIGUATE, event.disambiguateAccount)
        }
    }

    private fun decode(root: JSONObject?): PostedProviderNotification? {
        root ?: return null
        val key = ProviderAccountLineKeyCodec.decodeOrNull(root.optString(FIELD_LINE_KEY)) ?: return null
        val alias = root.optString(FIELD_ALIAS).takeIf(String::isNotBlank) ?: return null
        val label = root.optString(FIELD_LINE_LABEL)
        val index = root.optInt(FIELD_LINE_INDEX, -1).takeIf { it >= 0 } ?: return null
        val generation = root.optLong(FIELD_GENERATION, -1L).takeIf { it > 0L } ?: return null
        val session = root.optLong(FIELD_SESSION, -1L).takeIf { it > 0L } ?: return null
        val version = root.optLong(FIELD_VERSION, -1L).takeIf { it >= 0L } ?: return null
        val disambiguate = root.optBoolean(FIELD_DISAMBIGUATE, false)
        return runCatching {
            when (root.optString(FIELD_KIND)) {
                "reset" -> PostedProviderNotification.Reset(
                    ProviderResetNotification(
                        key,
                        alias,
                        label,
                        index,
                        AccountGeneration.of(generation),
                        SessionRevision.of(session),
                        DisplayVersion.of(version),
                        disambiguate,
                    )
                )
                "threshold" -> PostedProviderNotification.Threshold(
                    ProviderUsageThresholdNotification(
                        key,
                        alias,
                        label,
                        index,
                        root.optInt(FIELD_THRESHOLD, -1).takeIf { it in 1..99 } ?: return null,
                        AccountGeneration.of(generation),
                        SessionRevision.of(session),
                        DisplayVersion.of(version),
                        disambiguate,
                    )
                )
                else -> return null
            }
        }.getOrNull()
    }

    private fun readRoot(): JSONObject = preferences.getString(KEY_POSTED, null)
        ?.let { runCatching { JSONObject(it) }.getOrNull() }
        ?: JSONObject()

    private companion object {
        val LOCK = Any()
        const val PREFERENCES_NAME = "ai_quota_provider_notification_identity"
        const val KEY_POSTED = "posted_v1"
        const val FIELD_DISAMBIGUATE = "disambiguate"
        const val FIELD_KIND = "kind"
        const val FIELD_LINE_KEY = "line_key"
        const val FIELD_ALIAS = "alias"
        const val FIELD_LINE_LABEL = "line_label"
        const val FIELD_LINE_INDEX = "line_index"
        const val FIELD_THRESHOLD = "threshold"
        const val FIELD_GENERATION = "generation"
        const val FIELD_SESSION = "session"
        const val FIELD_VERSION = "version"
    }
}

object ProviderNotificationAliasUpdater {
    fun update(context: Context, card: ProviderCardNotificationSnapshot): Int =
        ProviderPostedNotificationRepository(context).readExact(card.accountId).count { posted ->
            when (posted) {
                is PostedProviderNotification.Reset -> {
                    val event = posted.event
                    if (event.alias == card.alias && event.generation == card.generation &&
                        event.sessionRevision == card.sessionRevision && event.version == card.version
                    ) return@count false
                    ProviderResetNotificationController.notifyReset(
                        context,
                        event.copy(
                            alias = card.alias,
                            generation = card.generation,
                            sessionRevision = card.sessionRevision,
                            version = card.version,
                        ),
                        true,
                    ) != null
                }
                is PostedProviderNotification.Threshold -> {
                    val event = posted.event
                    if (event.alias == card.alias && event.generation == card.generation &&
                        event.sessionRevision == card.sessionRevision && event.version == card.version
                    ) return@count false
                    ProviderUsageThresholdNotificationController.notifyLowUsage(
                        context,
                        event.copy(
                            alias = card.alias,
                            generation = card.generation,
                            sessionRevision = card.sessionRevision,
                            version = card.version,
                        ),
                        true,
                    ) != null
                }
            }
        }
}
