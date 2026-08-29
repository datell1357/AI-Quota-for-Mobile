package com.aiquota.mobile.providers

object ProviderRefreshQueuePolicy {
    const val MAX_ATTEMPTS_PER_BATCH = 4

    fun merge(
        existing: List<ProviderRefreshJob>,
        incoming: List<ProviderRefreshJob>,
        prioritize: Boolean
    ): List<ProviderRefreshJob> {
        val existingByAccount = existing.associateBy { it.accountId }
        val bestIncoming = incoming
            .withIndex()
            .sortedWith(compareBy<IndexedValue<ProviderRefreshJob>> { it.value.qos }.thenBy { it.index })
            .map { it.value }
            .distinctBy { it.accountId }
        val acceptedIncoming = bestIncoming.filter { job ->
            val existingJob = existingByAccount[job.accountId]
            existingJob == null || prioritize || job.qos < existingJob.qos
        }
        val acceptedAccounts = acceptedIncoming.map { it.accountId }.toSet()
        val remainingExisting = existing.filterNot { it.accountId in acceptedAccounts }
        val acceptedHasCriticalQos = acceptedIncoming.any { it.qos <= ProviderRefreshPlan.RESET_REFRESH_QOS }
        val merged = if (prioritize || acceptedHasCriticalQos) {
            acceptedIncoming + remainingExisting
        } else {
            remainingExisting + acceptedIncoming
        }
        return merged.take(MAX_ATTEMPTS_PER_BATCH)
    }
}
