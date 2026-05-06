package com.aiusage.mobile.sync

import java.time.Instant

fun deduplicateDevicesByName(devices: List<SnapshotDevice>): List<SnapshotDevice> {
    val latestByName = linkedMapOf<String, SnapshotDevice>()
    devices
        .sortedByDescending { timestampMillis(it.lastSeenAt) }
        .forEach { device ->
            latestByName.putIfAbsent(device.deviceName.normalizedDeviceNameKey(), device)
        }
    return latestByName.values.toList()
}

private fun String.normalizedDeviceNameKey(): String {
    return trim().lowercase().ifBlank { this }
}

private fun timestampMillis(value: String?): Long {
    return value?.let { runCatching { Instant.parse(it).toEpochMilli() }.getOrDefault(0L) } ?: 0L
}
