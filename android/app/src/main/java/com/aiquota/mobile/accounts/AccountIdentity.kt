package com.aiquota.mobile.accounts

import com.aiquota.mobile.local.ProviderId
import java.security.SecureRandom

@JvmInline
value class AccountKey private constructor(private val token: String) : Comparable<AccountKey> {
    override fun compareTo(other: AccountKey): Int = token.compareTo(other.token)

    override fun toString(): String = "AccountKey([opaque])"

    internal fun storageValue(): String = token

    companion object {
        private val TOKEN_PATTERN = Regex("acct_[0-9a-f]{32}")
        private val random = SecureRandom()

        fun create(): AccountKey {
            val bytes = ByteArray(16).also(random::nextBytes)
            return AccountKey("acct_" + bytes.joinToString("") { "%02x".format(it) })
        }

        fun reservedDefault(): AccountKey = AccountKey("default")

        fun parseOpaque(token: String): AccountKey {
            require(TOKEN_PATTERN.matches(token)) { "Malformed opaque account key" }
            return AccountKey(token)
        }

        internal fun fromStorage(token: String): AccountKey =
            if (token == "default") reservedDefault() else parseOpaque(token)
    }
}

data class ProviderAccountId(
    val providerId: ProviderId,
    val accountKey: AccountKey
)

@JvmInline
value class AccountGeneration private constructor(val value: Long) {
    fun next(): AccountGeneration {
        check(value < Long.MAX_VALUE) { "Account generation exhausted" }
        return AccountGeneration(value + 1)
    }

    companion object {
        fun of(value: Long): AccountGeneration {
            require(value >= 0) { "Account generation must be non-negative" }
            return AccountGeneration(value)
        }
    }
}

@JvmInline
value class SessionRevision private constructor(val value: Long) {
    fun next(): SessionRevision {
        check(value < Long.MAX_VALUE) { "Session revision exhausted" }
        return SessionRevision(value + 1)
    }

    companion object {
        fun of(value: Long): SessionRevision {
            require(value >= 0) { "Session revision must be non-negative" }
            return SessionRevision(value)
        }
    }
}

@JvmInline
value class DisplayVersion private constructor(val value: Long) {
    internal fun next(): DisplayVersion {
        check(value < Long.MAX_VALUE) { "Display version exhausted" }
        return DisplayVersion(value + 1)
    }

    companion object {
        val ZERO = DisplayVersion(0)

        fun of(value: Long): DisplayVersion {
            require(value >= 0) { "Display version must be non-negative" }
            return DisplayVersion(value)
        }
    }
}

@JvmInline
value class AttemptNonce private constructor(private val token: String) {
    override fun toString(): String = "AttemptNonce([opaque])"

    internal fun storageValue(): String = token

    companion object {
        private val TOKEN_PATTERN = Regex("attempt_[0-9a-z]{16,64}")

        fun parseOpaque(token: String): AttemptNonce {
            require(TOKEN_PATTERN.matches(token)) { "Malformed opaque attempt nonce" }
            return AttemptNonce(token)
        }

        internal fun fromStorage(token: String): AttemptNonce = parseOpaque(token)
    }
}
