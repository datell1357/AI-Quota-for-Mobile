package com.aiquota.mobile.local

import java.util.concurrent.locks.ReentrantLock
import kotlin.concurrent.withLock

internal object LegacyUsageMutationCoordinator {
    private val lock = ReentrantLock(true)

    fun <T> withLock(block: () -> T): T = lock.withLock(block)
}
