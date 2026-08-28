package com.aiquota.mobile.accounts

import android.content.Context
import com.aiquota.mobile.local.ProviderId

sealed interface ProviderCardProviderPolicy {
    data class Released(val multiplicity: ProviderCardMultiplicity) : ProviderCardProviderPolicy
    data object Unsupported : ProviderCardProviderPolicy
}

enum class ProviderCardMultiplicity {
    UNLIMITED,
    SINGLE_RESERVED_DEFAULT,
}

object ProviderCardCatalogPolicy {
    fun classify(providerId: ProviderId): ProviderCardProviderPolicy {
        val released = providerId in ProviderId.defaultOrder()
        val multiplicity = when (providerId) {
            ProviderId.CLAUDE,
            ProviderId.CODEX -> ProviderCardMultiplicity.UNLIMITED
            ProviderId.GLM,
            ProviderId.OPENCODE,
            ProviderId.GEMINI,
            ProviderId.COPILOT,
            ProviderId.ANTIGRAVITY,
            ProviderId.CURSOR,
            ProviderId.GROK,
            ProviderId.KIMI,
            ProviderId.KIRO -> ProviderCardMultiplicity.SINGLE_RESERVED_DEFAULT
        }
        return if (released) ProviderCardProviderPolicy.Released(multiplicity) else ProviderCardProviderPolicy.Unsupported
    }
}

sealed interface ProviderCardAliasSelection {
    data object Automatic : ProviderCardAliasSelection
    data class Custom(val value: String) : ProviderCardAliasSelection
}

data class AddProviderCardRequest(
    val providerId: ProviderId,
    val alias: ProviderCardAliasSelection = ProviderCardAliasSelection.Automatic,
)

enum class ProviderCardAliasValidationReason {
    BLANK,
    TOO_LONG,
    CONTROL_CHARACTER,
}

sealed interface ProviderCardAddRejection {
    data class UnsupportedProvider(val providerId: ProviderId) : ProviderCardAddRejection
    data class MultiplicityExceeded(val providerId: ProviderId) : ProviderCardAddRejection
    data class AliasValidation(
        val reason: ProviderCardAliasValidationReason,
    ) : ProviderCardAddRejection
    data class AliasConflict(val alias: String) : ProviderCardAddRejection
}

sealed interface ProviderCardAddResult {
    data class Added(val account: AccountRecord) : ProviderCardAddResult
    data class Rejected(val rejection: ProviderCardAddRejection) : ProviderCardAddResult
}

class ProviderCardCatalog private constructor(
    private val authority: MainProcessAccountAuthority,
) : AutoCloseable {
    fun add(request: AddProviderCardRequest): ProviderCardAddResult {
        val customAlias = when (val selection = request.alias) {
            ProviderCardAliasSelection.Automatic -> null
            is ProviderCardAliasSelection.Custom -> when (val validation = validateProviderCardAlias(selection.value)) {
                is ProviderCardAliasValidation.Valid -> validation.alias
                is ProviderCardAliasValidation.Invalid -> {
                    return ProviderCardAddResult.Rejected(
                        ProviderCardAddRejection.AliasValidation(validation.reason)
                    )
                }
            }
        }
        return authority.enrollDisconnectedProviderCard(
            providerId = request.providerId,
            customAlias = customAlias,
        )
    }

    fun add(providerId: ProviderId, optionalAlias: String? = null): ProviderCardAddResult {
        val trimmed = optionalAlias?.let(::trimProviderCardAlias)
        val selection = if (trimmed.isNullOrEmpty()) {
            ProviderCardAliasSelection.Automatic
        } else {
            ProviderCardAliasSelection.Custom(optionalAlias)
        }
        return add(AddProviderCardRequest(providerId, selection))
    }

    fun page(offset: Int, limit: Int): AccountCatalogPage = authority.catalog(offset, limit)

    override fun close() = authority.close()

    companion object {
        fun open(context: Context): ProviderCardCatalog = ProviderCardCatalog(MainProcessAccountAuthority.open(context))

        internal fun openForTest(authority: MainProcessAccountAuthority): ProviderCardCatalog =
            ProviderCardCatalog(authority)
    }
}

internal sealed interface ProviderCardAliasValidation {
    data class Valid(val alias: NormalizedProviderCardAlias) : ProviderCardAliasValidation
    data class Invalid(val reason: ProviderCardAliasValidationReason) : ProviderCardAliasValidation
}

internal fun validateProviderCardAlias(value: String): ProviderCardAliasValidation {
    val trimmed = trimProviderCardAlias(value)
    val codePoints = trimmed.codePointCount(0, trimmed.length)
    if (codePoints == 0) return ProviderCardAliasValidation.Invalid(ProviderCardAliasValidationReason.BLANK)
    if (codePoints > 40) return ProviderCardAliasValidation.Invalid(ProviderCardAliasValidationReason.TOO_LONG)
    var offset = 0
    while (offset < trimmed.length) {
        val codePoint = trimmed.codePointAt(offset)
        if (Character.isISOControl(codePoint)) {
            return ProviderCardAliasValidation.Invalid(ProviderCardAliasValidationReason.CONTROL_CHARACTER)
        }
        offset += Character.charCount(codePoint)
    }
    return ProviderCardAliasValidation.Valid(
        NormalizedProviderCardAlias(trimmed, trimmed.lowercase(java.util.Locale.ROOT))
    )
}

internal fun trimProviderCardAlias(value: String): String = value.trim { character ->
    character.isWhitespace() || Character.isSpaceChar(character)
}
