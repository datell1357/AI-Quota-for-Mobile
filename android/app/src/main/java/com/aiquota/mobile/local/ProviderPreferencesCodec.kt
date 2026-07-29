package com.aiquota.mobile.local

object ProviderPreferencesCodec {
    fun decodeOrder(value: String): List<ProviderId> {
        val decoded = value
            .split(STORAGE_SEPARATOR)
            .mapNotNull { ProviderId.fromStorageId(it) }
            .distinct()
        return normalizeOrder(decoded)
    }

    fun encodeOrder(order: List<ProviderId>): String {
        return order.distinct().joinToString(STORAGE_SEPARATOR) { it.storageId }
    }

    fun decodeHidden(value: String): Set<ProviderId> {
        return value
            .split(STORAGE_SEPARATOR)
            .mapNotNull { ProviderId.fromStorageId(it) }
            .toSet()
    }

    fun encodeHidden(hidden: Set<ProviderId>): String {
        return ProviderId.defaultOrder()
            .filter { it in hidden }
            .joinToString(STORAGE_SEPARATOR) { it.storageId }
    }

    fun moveProvider(order: List<ProviderId>, providerId: ProviderId, targetIndex: Int): List<ProviderId> {
        val normalized = normalizeOrder(order).toMutableList()
        normalized.remove(providerId)
        normalized.add(targetIndex.coerceIn(0, normalized.size), providerId)
        return normalized
    }

    fun setHidden(hidden: Set<ProviderId>, providerId: ProviderId, hiddenState: Boolean): Set<ProviderId> {
        return if (hiddenState) {
            hidden + providerId
        } else {
            hidden - providerId
        }
    }

    fun visibleProviders(order: List<ProviderId>, hidden: Set<ProviderId>): List<ProviderId> {
        return normalizeOrder(order).filterNot { it in hidden }
    }

    private fun normalizeOrder(order: List<ProviderId>): List<ProviderId> {
        // 노출 대상은 defaultOrder()가 정한다. 이전 빌드에서 저장된 순서에 지금은 노출하지
        // 않는 provider가 남아 있어도 화면에 다시 나타나지 않게 걸러낸다.
        val released = ProviderId.defaultOrder()
        return (order + released).distinct().filter { it in released }
    }

    private const val STORAGE_SEPARATOR = ","
}
