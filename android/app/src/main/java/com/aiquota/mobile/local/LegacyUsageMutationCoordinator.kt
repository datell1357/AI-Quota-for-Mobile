package com.aiquota.mobile.local

import java.util.concurrent.locks.ReentrantLock
import kotlin.concurrent.withLock

internal object LegacyUsageMutationCoordinator {
    private val lock = ReentrantLock()

    fun <T> withLock(block: () -> T): T = lock.withLock(block)
}
