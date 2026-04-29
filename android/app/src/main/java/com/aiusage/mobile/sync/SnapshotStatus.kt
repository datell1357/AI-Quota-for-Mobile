package com.aiusage.mobile.sync

enum class SnapshotStatus {
    NotLinked,
    Fresh,
    Stale,
    Offline,
    ProviderError,
    Revoked
}

fun resolveSnapshotStatus(
    ageSeconds: Long?,
    hasProviderError: Boolean,
    revoked: Boolean = false
): SnapshotStatus {
    if (revoked) return SnapshotStatus.Revoked
    if (ageSeconds == null) return SnapshotStatus.NotLinked
    if (ageSeconds >= 24 * 60 * 60) return SnapshotStatus.Offline
    if (hasProviderError) return SnapshotStatus.ProviderError
    if (ageSeconds >= 15 * 60) return SnapshotStatus.Stale
    return SnapshotStatus.Fresh
}

