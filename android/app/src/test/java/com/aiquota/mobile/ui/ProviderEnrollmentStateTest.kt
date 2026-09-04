package com.aiquota.mobile.ui

import androidx.compose.foundation.shape.CornerSize
import androidx.compose.ui.unit.dp
import com.aiquota.mobile.local.AppTheme
import com.aiquota.mobile.local.ProviderId
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertNull
import org.junit.Assert.assertTrue
import org.junit.Test

class ProviderEnrollmentStateTest {
    @Test
    fun selectedProviderAndNameRestoreWhenActivityIsRecreated() {
        // Given
        val state = ProviderEnrollmentState.explicitAdd()
        state.select(ProviderId.CURSOR)
        state.advance()
        state.alias = "Work"

        // When
        val restored = ProviderEnrollmentState.restore(state.savedState())

        // Then
        assertTrue(restored.visible)
        assertEquals(ProviderEnrollmentOrigin.EXPLICIT_ADD, restored.origin)
        assertEquals(ProviderEnrollmentStep.NAMING, restored.step)
        assertEquals(ProviderId.CURSOR, restored.selectedProvider)
        assertEquals("Work", restored.alias)
    }

    @Test
    fun firstRunTogglesSeveralProvidersRestoresThemAndSubmitsAutomaticAliasesInDisplayOrder() {
        // Given
        val state = ProviderEnrollmentState.firstRun()
        state.select(ProviderId.CURSOR)
        state.select(ProviderId.CLAUDE)
        state.select(ProviderId.CODEX)
        state.select(ProviderId.CODEX) // toggled back off

        // When
        state.advance() // first run has no naming step
        val restored = ProviderEnrollmentState.restore(state.savedState())

        // Then
        assertEquals(ProviderEnrollmentStep.PICKER, state.step)
        assertEquals(setOf(ProviderId.CURSOR, ProviderId.CLAUDE), restored.selectedProviders)
        assertNull(restored.selectedProvider)
        assertEquals(
            listOf(
                ProviderEnrollmentSubmission(ProviderId.CLAUDE, null),
                ProviderEnrollmentSubmission(ProviderId.CURSOR, null),
            ),
            restored.bulkSubmissions(),
        )
    }

    /**
     * 나중에 누른 추가에서도 여러 개를 한 번에 고를 수 있다. 하나만 고르면 이름을 지어 추가하고,
     * 둘 이상이면 자동 이름으로 한 번에 추가한다.
     */
    @Test
    fun explicitAddTakesSeveralProvidersAndBulkAddsThem() {
        val state = ProviderEnrollmentState.explicitAdd()

        state.select(ProviderId.CURSOR)
        assertEquals(ProviderId.CURSOR, state.selectedProvider)
        assertFalse(state.addsInBulk)

        state.select(ProviderId.CODEX)
        assertEquals(setOf(ProviderId.CURSOR, ProviderId.CODEX), state.selectedProviders)
        assertTrue(state.addsInBulk)
        // 여럿을 고른 동안에는 이름 짓는 단계로 넘어가지 않는다.
        state.advance()
        assertEquals(ProviderEnrollmentStep.PICKER, state.step)
        assertEquals(
            listOf(ProviderId.CODEX, ProviderId.CURSOR),
            state.bulkSubmissions().map { it.providerId },
        )

        // 다시 눌러 해제하면 하나만 남고 이름 짓기로 돌아간다.
        state.select(ProviderId.CODEX)
        assertEquals(ProviderId.CURSOR, state.selectedProvider)
        assertFalse(state.addsInBulk)
        state.advance()
        assertEquals(ProviderEnrollmentStep.NAMING, state.step)
    }

    @Test
    fun backFromNamingClosesAndClearsWithoutSubmitting() {
        // Given
        val state = ProviderEnrollmentState.explicitAdd()
        state.select(ProviderId.CODEX)
        state.advance()
        state.alias = "Work"

        // When
        state.back()

        // Then
        assertFalse(state.visible)
        assertEquals(ProviderEnrollmentStep.PICKER, state.step)
        assertNull(state.selectedProvider)
        assertEquals("", state.alias)
        assertNull(state.submission())
    }

    @Test
    fun cancellingPickerClearsTransientInputAndCreatesNoRequest() {
        // Given
        val state = ProviderEnrollmentState.explicitAdd()
        state.select(ProviderId.CURSOR)
        state.advance()
        state.alias = "Work"

        // When
        state.close()

        // Then
        assertFalse(state.visible)
        assertNull(state.selectedProvider)
        assertEquals("", state.alias)
        assertNull(state.submission())
    }

    @Test
    fun dialogShapeUsesExistingThemeSpecificRadii() {
        // Given / When
        val macOS = providerEnrollmentDialogShape(AppTheme.MACOS)
        val windows = providerEnrollmentDialogShape(AppTheme.WINDOWS)

        // Then
        assertEquals(CornerSize(16.dp), macOS.topStart)
        assertEquals(CornerSize(2.dp), windows.topStart)
    }

    @Test
    fun blankNameSubmitsAutomaticAliasSelection() {
        // Given
        val state = ProviderEnrollmentState.explicitAdd()
        state.select(ProviderId.CURSOR)
        state.advance()
        state.alias = "   "

        // When
        val submission = state.submission()

        // Then
        assertEquals(ProviderId.CURSOR, submission?.providerId)
        assertNull(submission?.optionalAlias)
    }
}
