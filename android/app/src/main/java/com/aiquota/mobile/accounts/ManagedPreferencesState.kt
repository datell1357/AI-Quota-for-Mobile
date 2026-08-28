package com.aiquota.mobile.accounts

import android.content.SharedPreferences

internal data class ManagedPreferencesState(
    val values: Map<String, ManagedPreferenceValue>,
)

internal sealed interface ManagedPreferenceValue {
    data class Text(val value: String) : ManagedPreferenceValue
    data class Flag(val value: Boolean) : ManagedPreferenceValue
    data class Integer(val value: Int) : ManagedPreferenceValue
    data class LongInteger(val value: Long) : ManagedPreferenceValue
    data class Decimal(val value: Float) : ManagedPreferenceValue
    data class TextSet(val value: Set<String>) : ManagedPreferenceValue
}

internal object ManagedPreferencesStateStore {
    fun capture(
        preferences: SharedPreferences,
        isManaged: (String) -> Boolean,
    ): ManagedPreferencesState = ManagedPreferencesState(
        preferences.all.mapNotNull { (key, value) ->
            if (!isManaged(key)) null else value.toManagedValue()?.let { key to it }
        }.toMap(),
    )

    /** Restores only keys still equal to this attempt's applied value. */
    fun restore(
        preferences: SharedPreferences,
        before: ManagedPreferencesState,
        applied: ManagedPreferencesState,
    ): Boolean {
        val editor = preferences.edit()
        var changed = false
        (before.values.keys + applied.values.keys).forEach { key ->
            val current = preferences.all[key].toManagedValue()
            if (current != applied.values[key]) return@forEach
            val prior = before.values[key]
            if (prior == current) return@forEach
            changed = true
            if (prior == null) editor.remove(key) else editor.put(key, prior)
        }
        return !changed || editor.commit()
    }

    private fun Any?.toManagedValue(): ManagedPreferenceValue? = when (this) {
        is String -> ManagedPreferenceValue.Text(this)
        is Boolean -> ManagedPreferenceValue.Flag(this)
        is Int -> ManagedPreferenceValue.Integer(this)
        is Long -> ManagedPreferenceValue.LongInteger(this)
        is Float -> ManagedPreferenceValue.Decimal(this)
        is Set<*> -> takeIf { all { value -> value is String } }
            ?.mapTo(linkedSetOf()) { value -> value as String }
            ?.let(ManagedPreferenceValue::TextSet)
        else -> null
    }

    private fun SharedPreferences.Editor.put(
        key: String,
        value: ManagedPreferenceValue,
    ): SharedPreferences.Editor = when (value) {
        is ManagedPreferenceValue.Text -> putString(key, value.value)
        is ManagedPreferenceValue.Flag -> putBoolean(key, value.value)
        is ManagedPreferenceValue.Integer -> putInt(key, value.value)
        is ManagedPreferenceValue.LongInteger -> putLong(key, value.value)
        is ManagedPreferenceValue.Decimal -> putFloat(key, value.value)
        is ManagedPreferenceValue.TextSet -> putStringSet(key, value.value.toSet())
    }
}
