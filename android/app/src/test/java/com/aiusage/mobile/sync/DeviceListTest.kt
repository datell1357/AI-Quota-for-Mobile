package com.aiusage.mobile.sync

import org.junit.Assert.assertEquals
import org.junit.Test

class DeviceListTest {
    @Test
    fun keepsOnlyNewestDeviceForSameDeviceName() {
        val devices = listOf(
            device("old", "Windows PC", SnapshotStatus.Stale, "2026-05-06T01:00:00Z"),
            device("new", "Windows PC", SnapshotStatus.ProviderError, "2026-05-06T03:00:00Z"),
            device("other", "Office PC", SnapshotStatus.Fresh, "2026-05-06T02:00:00Z")
        )

        val deduped = deduplicateDevicesByName(devices)

        assertEquals(listOf("new", "other"), deduped.map { it.deviceId })
        assertEquals(SnapshotStatus.ProviderError, deduped.first().status)
    }

    @Test
    fun comparesDeviceNamesCaseAndWhitespaceInsensitively() {
        val devices = listOf(
            device("old", " Windows PC ", SnapshotStatus.Stale, "2026-05-06T01:00:00Z"),
            device("new", "windows pc", SnapshotStatus.Fresh, "2026-05-06T02:00:00Z")
        )

        val deduped = deduplicateDevicesByName(devices)

        assertEquals(listOf("new"), deduped.map { it.deviceId })
    }

    private fun device(
        id: String,
        name: String,
        status: SnapshotStatus,
        lastSeenAt: String
    ): SnapshotDevice {
        return SnapshotDevice(
            deviceId = id,
            deviceName = name,
            status = status,
            lastSeenAt = lastSeenAt,
            fetchedAt = lastSeenAt,
            summary = status.name
        )
    }
}
