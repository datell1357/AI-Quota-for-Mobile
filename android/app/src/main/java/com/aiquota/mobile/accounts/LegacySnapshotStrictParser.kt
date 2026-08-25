package com.aiquota.mobile.accounts

import android.util.JsonReader
import android.util.JsonToken
import com.aiquota.mobile.local.ProviderConnectionState
import com.aiquota.mobile.local.ProviderId
import com.aiquota.mobile.local.ProviderRefreshState
import com.aiquota.mobile.local.ProviderUsageLine
import com.aiquota.mobile.local.ProviderUsageSnapshot
import com.aiquota.mobile.local.UsageSeverity
import java.io.StringReader

internal object LegacySnapshotStrictParser {
    fun parse(raw: String): List<ProviderUsageSnapshot>? {
        if (raw.isBlank()) return emptyList()
        if (raw.toByteArray(Charsets.UTF_8).size > MAX_RAW_BYTES) return null
        return runCatching {
            JsonReader(StringReader(raw)).use { reader ->
                reader.isLenient = false
                val rootFields = mutableSetOf<String>()
                val providers = mutableListOf<ProviderUsageSnapshot>()
                reader.beginObject()
                while (reader.hasNext()) {
                    val name = uniqueName(reader, rootFields)
                    require(name == "providers")
                    reader.beginArray()
                    while (reader.hasNext()) {
                        require(providers.size < MAX_PROVIDERS)
                        providers += readProvider(reader)
                    }
                    reader.endArray()
                }
                reader.endObject()
                require(rootFields == setOf("providers"))
                require(reader.peek() == JsonToken.END_DOCUMENT)
                require(providers.map { it.providerId }.distinct().size == providers.size)
                providers.sortedBy { ProviderId.defaultOrder().indexOf(it.providerId) }
            }
        }.getOrNull()
    }

    private fun readProvider(reader: JsonReader): ProviderUsageSnapshot {
        val fields = mutableSetOf<String>()
        var providerId: ProviderId? = null
        var displayName: String? = null
        var connection: ProviderConnectionState? = null
        var refresh: ProviderRefreshState? = null
        var plan: String? = null
        var planSeen = false
        var account: String? = null
        var updatedAt: String? = null
        var updatedSeen = false
        var statusUpdatedAt: String? = null
        var statusSeen = false
        var message: String? = null
        var lines: List<ProviderUsageLine>? = null
        reader.beginObject()
        while (reader.hasNext()) {
            when (val name = uniqueName(reader, fields)) {
                "providerId" -> providerId = ProviderId.fromStorageId(requiredString(reader))
                "displayName" -> displayName = nullableString(reader)
                "connectionState" -> connection = enumValue<ProviderConnectionState>(requiredString(reader))
                "refreshState" -> refresh = enumValue<ProviderRefreshState>(requiredString(reader))
                "planLabel", "plan" -> {
                    require(!planSeen)
                    planSeen = true
                    plan = nullableString(reader)
                }
                "account" -> account = nullableString(reader)
                "updatedAt", "fetchedAt" -> {
                    require(!updatedSeen)
                    updatedSeen = true
                    updatedAt = nullableString(reader)
                }
                "statusUpdatedAt", "stateUpdatedAt" -> {
                    require(!statusSeen)
                    statusSeen = true
                    statusUpdatedAt = nullableString(reader)
                }
                "message" -> message = nullableString(reader)
                "lines" -> lines = readLines(reader)
                else -> error("Unknown provider field")
            }
        }
        reader.endObject()
        val id = requireNotNull(providerId)
        requireNotNull(connection)
        requireNotNull(refresh)
        val usageLines = requireNotNull(lines)
        return ProviderUsageSnapshot(
            providerId = id,
            displayName = displayName ?: id.displayName,
            connectionState = connection,
            refreshState = refresh,
            planLabel = plan,
            account = account,
            updatedAt = updatedAt.orEmpty(),
            statusUpdatedAt = statusUpdatedAt ?: updatedAt.orEmpty(),
            message = message,
            lines = usageLines
        )
    }

    private fun readLines(reader: JsonReader): List<ProviderUsageLine> = buildList {
        reader.beginArray()
        while (reader.hasNext()) {
            require(size < MAX_LINES)
            add(readLine(reader))
        }
        reader.endArray()
    }

    private fun readLine(reader: JsonReader): ProviderUsageLine {
        val fields = mutableSetOf<String>()
        var key: String? = null
        var label: String? = null
        var remainingPercent: Float? = null
        var usedPercent: Double? = null
        var remainingText: String? = null
        var resetText: String? = null
        var detailText: String? = null
        var severity: UsageSeverity? = null
        var usedAmount: Double? = null
        var limitAmount: Double? = null
        var remainingAmount: Double? = null
        var unit: String? = null
        var category: String? = null
        var windowText: String? = null
        var startsAt: String? = null
        var resetsAt: String? = null
        var source: String? = null
        var confidence: Float? = null
        reader.beginObject()
        while (reader.hasNext()) {
            when (val name = uniqueName(reader, fields)) {
                "key" -> key = nullableString(reader)
                "label" -> label = nullableString(reader)
                "remainingPercent" -> remainingPercent = nullableRatio(reader)
                "usedPercent" -> usedPercent = nullableNumber(reader, 0.0, 100.0)
                "remainingText" -> remainingText = nullableString(reader)
                "resetText" -> resetText = nullableString(reader)
                "detailText" -> detailText = nullableString(reader)
                "severity" -> severity = nullableEnum<UsageSeverity>(reader)
                "usedAmount" -> usedAmount = nullableNumber(reader, 0.0, MAX_AMOUNT)
                "limitAmount" -> limitAmount = nullableNumber(reader, 0.0, MAX_AMOUNT)
                "remainingAmount" -> remainingAmount = nullableNumber(reader, 0.0, MAX_AMOUNT)
                "unit" -> unit = nullableString(reader)
                "category" -> category = nullableString(reader)
                "windowText" -> windowText = nullableString(reader)
                "startsAt" -> startsAt = nullableString(reader)
                "resetsAt" -> resetsAt = nullableString(reader)
                "source" -> source = nullableString(reader)
                "confidence" -> confidence = nullableRatio(reader)
                else -> error("Unknown line field")
            }
        }
        reader.endObject()
        require(usedPercent == null || remainingPercent != null)
        val resolvedLabel = label?.takeIf { it.isNotBlank() } ?: "Usage"
        return ProviderUsageLine(
            key = key?.takeIf { it.isNotBlank() } ?: resolvedLabel.lowercase().replace(Regex("[^a-z0-9]+"), "_").trim('_'),
            label = resolvedLabel,
            remainingPercent = remainingPercent,
            remainingText = remainingText.orEmpty(),
            resetText = resetText,
            detailText = detailText,
            severity = severity ?: UsageSeverity.UNKNOWN,
            usedAmount = usedAmount,
            limitAmount = limitAmount,
            remainingAmount = remainingAmount,
            unit = unit,
            category = category,
            windowText = windowText,
            startsAt = startsAt,
            resetsAt = resetsAt,
            sourceLabel = source,
            confidence = confidence
        )
    }

    private fun uniqueName(reader: JsonReader, fields: MutableSet<String>): String =
        reader.nextName().also { require(it.length <= MAX_NAME && fields.add(it)) }

    private fun requiredString(reader: JsonReader): String = nullableString(reader) ?: error("String required")

    private fun nullableString(reader: JsonReader): String? {
        if (reader.peek() == JsonToken.NULL) {
            reader.nextNull()
            return null
        }
        require(reader.peek() == JsonToken.STRING)
        return reader.nextString().also { require(it.length <= MAX_STRING) }
    }

    private fun nullableRatio(reader: JsonReader): Float? =
        nullableNumber(reader, 0.0, 1.0)?.toFloat()

    private fun nullableNumber(reader: JsonReader, minimum: Double, maximum: Double): Double? {
        if (reader.peek() == JsonToken.NULL) {
            reader.nextNull()
            return null
        }
        require(reader.peek() == JsonToken.NUMBER)
        return reader.nextDouble().also { require(it.isFinite() && it in minimum..maximum) }
    }

    private inline fun <reified T : Enum<T>> enumValue(value: String): T =
        requireNotNull(enumValues<T>().singleOrNull { it.name == value })

    private inline fun <reified T : Enum<T>> nullableEnum(reader: JsonReader): T? =
        nullableString(reader)?.let { enumValue<T>(it) }

    private const val MAX_RAW_BYTES = 2_097_152
    private const val MAX_PROVIDERS = 32
    private const val MAX_LINES = 256
    private const val MAX_NAME = 64
    private const val MAX_STRING = 16_384
    private const val MAX_AMOUNT = 1.0e15
}
