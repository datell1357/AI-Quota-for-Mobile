package com.aiquota.mobile.accounts

import com.aiquota.mobile.local.ProviderId
import com.aiquota.mobile.local.ProviderUsageSnapshot
import com.aiquota.mobile.providers.ProviderSnapshotCodec

internal object LegacyRawProjectionCodec {
    fun replaceTargets(
        raw: String,
        targets: Map<ProviderId, ProviderUsageSnapshot>
    ): String? {
        if (raw.isBlank()) {
            val snapshots = targets.values.sortedBy { ProviderId.defaultOrder().indexOf(it.providerId) }
            return ProviderSnapshotCodec.encode(snapshots)
        }
        if (LegacySnapshotStrictParser.parse(raw) == null) return null
        val array = providersArray(raw) ?: return null
        val spans = objectSpans(raw, array.first, array.last) ?: return null
        val providerSpans = spans.map { span ->
            val objectRaw = raw.substring(span.first, span.last + 1)
            val snapshot = LegacySnapshotStrictParser.parse("{\"providers\":[$objectRaw]}")?.singleOrNull()
                ?: return null
            snapshot.providerId to span
        }
        val replacements = targets.mapValues { (_, snapshot) -> encodedObject(snapshot) }
        val missing = targets.keys
            .filterNot { target -> providerSpans.any { it.first == target } }
            .sortedBy(ProviderId::ordinal)
            .map { requireNotNull(replacements[it]) }
        val output = StringBuilder(raw.length + missing.sumOf(String::length))
        var offset = 0
        if (providerSpans.isEmpty()) {
            output.append(raw, 0, array.first + 1)
            output.append(missing.joinToString(","))
            output.append(raw, array.first + 1, raw.length)
            return output.toString()
        }
        providerSpans.forEachIndexed { index, (provider, span) ->
            output.append(raw, offset, span.first)
            output.append(replacements[provider] ?: raw.substring(span.first, span.last + 1))
            offset = span.last + 1
            if (index == providerSpans.lastIndex && missing.isNotEmpty()) {
                output.append(',').append(missing.joinToString(","))
            }
        }
        output.append(raw, offset, raw.length)
        return output.toString()
    }

    fun replaceManagedTargets(
        raw: String,
        managedProviders: Set<ProviderId>,
        targets: Map<ProviderId, ProviderUsageSnapshot>
    ): String? {
        require(targets.keys.all { it in managedProviders })
        if (raw.isBlank()) {
            return ProviderSnapshotCodec.encode(
                targets.values.sortedBy { ProviderId.defaultOrder().indexOf(it.providerId) }
            )
        }
        if (LegacySnapshotStrictParser.parse(raw) == null) return null
        val array = providersArray(raw) ?: return null
        val spans = objectSpans(raw, array.first, array.last) ?: return null
        val emitted = mutableSetOf<ProviderId>()
        val objects = buildList {
            spans.forEach { span ->
                val objectRaw = raw.substring(span.first, span.last + 1)
                val snapshot = LegacySnapshotStrictParser.parse("{\"providers\":[$objectRaw]}")?.singleOrNull()
                    ?: return null
                if (snapshot.providerId in managedProviders) {
                    targets[snapshot.providerId]?.let {
                        add(encodedObject(it))
                        emitted += snapshot.providerId
                    }
                } else {
                    add(objectRaw)
                }
            }
            targets.entries
                .filterNot { it.key in emitted }
                .sortedBy { ProviderId.defaultOrder().indexOf(it.key) }
                .forEach { add(encodedObject(it.value)) }
        }
        return buildString(raw.length) {
            append(raw, 0, array.first + 1)
            append(objects.joinToString(","))
            append(raw, array.last, raw.length)
        }
    }

    private fun encodedObject(snapshot: ProviderUsageSnapshot): String =
        ProviderSnapshotCodec.encode(listOf(snapshot)).removePrefix("{\"providers\":[").removeSuffix("]}")

    private fun providersArray(raw: String): IntRange? {
        val key = raw.indexOf("\"providers\"")
        if (key < 0) return null
        val colon = raw.indexOf(':', key + 11)
        if (colon < 0) return null
        val start = raw.indexOf('[', colon + 1)
        if (start < 0) return null
        var depth = 0
        var string = false
        var escaped = false
        for (index in start until raw.length) {
            val char = raw[index]
            if (string) {
                when {
                    escaped -> escaped = false
                    char == '\\' -> escaped = true
                    char == '"' -> string = false
                }
            } else {
                when (char) {
                    '"' -> string = true
                    '[' -> depth++
                    ']' -> if (--depth == 0) return start..index
                }
            }
        }
        return null
    }

    private fun objectSpans(raw: String, arrayStart: Int, arrayEnd: Int): List<IntRange>? {
        val spans = mutableListOf<IntRange>()
        var objectStart = -1
        var depth = 0
        var string = false
        var escaped = false
        for (index in arrayStart + 1 until arrayEnd) {
            val char = raw[index]
            if (string) {
                when {
                    escaped -> escaped = false
                    char == '\\' -> escaped = true
                    char == '"' -> string = false
                }
            } else {
                when (char) {
                    '"' -> string = true
                    '{' -> {
                        if (depth == 0) objectStart = index
                        depth++
                    }
                    '}' -> {
                        depth--
                        if (depth < 0) return null
                        if (depth == 0) spans += objectStart..index
                    }
                }
            }
        }
        return spans.takeIf { depth == 0 && !string }
    }
}
