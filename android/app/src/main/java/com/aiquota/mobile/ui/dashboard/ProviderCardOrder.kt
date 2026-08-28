package com.aiquota.mobile.ui.dashboard

import com.aiquota.mobile.accounts.ProviderAccountId
import com.aiquota.mobile.local.ProviderId
import com.aiquota.mobile.local.ProviderPreferencesCodec

object ProviderCardOrder {
    fun moveUp(order: List<ProviderId>, providerId: ProviderId): List<ProviderId> {
        return moveToTargetIndex(order, providerId, targetIndex(order, providerId, -1))
    }

    fun moveDown(order: List<ProviderId>, providerId: ProviderId): List<ProviderId> {
        return moveToTargetIndex(order, providerId, targetIndex(order, providerId, 1))
    }

    fun moveToTargetIndex(
        order: List<ProviderId>,
        providerId: ProviderId,
        targetIndex: Int
    ): List<ProviderId> {
        return ProviderPreferencesCodec.moveProvider(order, providerId, targetIndex)
    }

    fun moveToVisibleTargetIndex(
        order: List<ProviderId>,
        hidden: Set<ProviderId>,
        providerId: ProviderId,
        targetVisibleIndex: Int
    ): List<ProviderId> {
        val normalized = normalizedOrder(order)
        val visible = ProviderPreferencesCodec.visibleProviders(normalized, hidden)
        if (providerId !in visible || visible.size <= 1) return normalized

        val reorderedVisible = visible.toMutableList()
        reorderedVisible.remove(providerId)
        reorderedVisible.add(targetVisibleIndex.coerceIn(0, reorderedVisible.size), providerId)

        val nextVisible = ArrayDeque(reorderedVisible)
        return normalized.map { candidate ->
            if (candidate in hidden) candidate else nextVisible.removeFirst()
        }
    }

    fun previewVisibleOrder(
        visibleOrder: List<ProviderId>,
        draggedProvider: ProviderId?,
        targetVisibleIndex: Int?
    ): List<ProviderId> {
        val normalizedVisibleOrder = visibleOrder.distinct()
        if (
            draggedProvider == null ||
            targetVisibleIndex == null ||
            draggedProvider !in normalizedVisibleOrder
        ) {
            return normalizedVisibleOrder
        }
        if (normalizedVisibleOrder.size <= 1) return normalizedVisibleOrder

        val preview = normalizedVisibleOrder.toMutableList()
        preview.remove(draggedProvider)
        preview.add(targetVisibleIndex.coerceIn(0, preview.size), draggedProvider)
        return preview
    }

    fun targetIndex(order: List<ProviderId>, providerId: ProviderId, offset: Int): Int {
        val normalized = normalizedOrder(order)
        val currentIndex = normalized.indexOf(providerId).takeIf { it >= 0 } ?: 0
        return (currentIndex + offset).coerceIn(0, normalized.lastIndex)
    }

    fun normalizedOrder(order: List<ProviderId>): List<ProviderId> {
        return ProviderPreferencesCodec.decodeOrder(ProviderPreferencesCodec.encodeOrder(order))
    }

    /** Exact-card ordering helper. Durable dashboard rank remains owned by the account catalog. */
    fun moveExactToTargetIndex(
        order: List<ProviderAccountId>,
        accountId: ProviderAccountId,
        targetIndex: Int,
    ): List<ProviderAccountId> = moveDistinct(order, accountId, targetIndex)

    fun moveExactToVisibleTargetIndex(
        order: List<ProviderAccountId>,
        hidden: Set<ProviderAccountId>,
        accountId: ProviderAccountId,
        targetVisibleIndex: Int,
    ): List<ProviderAccountId> {
        val normalized = order.distinct()
        val visible = normalized.filterNot { it in hidden }
        if (accountId !in visible || visible.size <= 1) return normalized
        val reordered = moveDistinct(visible, accountId, targetVisibleIndex)
        val nextVisible = ArrayDeque(reordered)
        return normalized.map { candidate -> if (candidate in hidden) candidate else nextVisible.removeFirst() }
    }

    fun previewExactVisibleOrder(
        visibleOrder: List<ProviderAccountId>,
        draggedAccount: ProviderAccountId?,
        targetVisibleIndex: Int?,
    ): List<ProviderAccountId> {
        val normalized = visibleOrder.distinct()
        if (draggedAccount == null || targetVisibleIndex == null || draggedAccount !in normalized) return normalized
        return moveDistinct(normalized, draggedAccount, targetVisibleIndex)
    }

    private fun <T> moveDistinct(order: List<T>, item: T, targetIndex: Int): List<T> {
        val result = order.distinct().toMutableList()
        if (!result.remove(item)) return result
        result.add(targetIndex.coerceIn(0, result.size), item)
        return result
    }
}
