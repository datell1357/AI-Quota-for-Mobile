# Widget capacity notice — 2026-09-14

## Change

Dashboard and battery widget configuration now explains the maximum of six accounts, the selected count, and the display limit calculated from the launcher size options. Smaller or responsive sizes use the same capacity policy as the corresponding renderer; a range is shown when supported sizes differ.

The notice names accounts beyond the display limit in configured order. It updates when accounts are hidden, shown or reordered. Accounts without renderable data are identified separately and do not consume battery gauge capacity. English and Korean strings are included. Capacity and widget layout remain unchanged.

## Verification

- Targeted debug unit tests: 57 passed, zero failures/errors/skips (8 suites), including six new capacity regression tests.
- Debug APK build and emulator update installation succeeded; git diff --check passed.
- API 36 emulator, dashboard widget ID 2: four selected accounts showed limit 6; temporarily selecting eight showed the last two accounts (Codex, Codex 2) as not displayed. The configured order placed Cursor, Grok, Antigravity, Gemini, Claude, Claude 2 before these accounts.
- Restored dashboard selection to Claude, Claude 2, Codex, Codex 2 using its configuration UI.
- Battery widget ID 11: four selected accounts showed limit 6.
- Screenshots: ../../artifacts/widget-audit-20260914/capacity-dashboard-four.png, capacity-dashboard-eight.png, capacity-battery-four.png.
- Build log and test summary: ../../artifacts/widget-audit-20260914/capacity-tests-build.log and capacity-test-summary.json.
- Emulator UI was verified in English; Korean text is included in resources but was not visually verified under a Korean locale. Responsive size ranges and small-size capacities were checked by regression tests rather than resizing this emulator's home widgets.

## Item 2 recommendation (not implemented)

When a battery widget displays multiple accounts from the same provider, show a short one-line account alias below each corresponding gauge. Keep the existing compact presentation for providers appearing once in that widget. Use the configured account alias, truncate long text, and retain the full accessible label. This distinguishes Claude/Claude 2 and Codex/Codex 2 without increasing capacity.

## Superseding simplification and battery labels

The user subsequently requested removing the detailed notice. Configuration now shows only “최대 6개를 선택해주세요.” (English: “Please select up to 6 accounts.”). At six selected accounts, add buttons are disabled and the click handler also rejects further additions. Removing an account enables additions again. Opening settings with an older over-limit selection preserves the first six in configured order and hides the remainder.

Battery widgets now show a one-line, ellipsized account alias inside the existing ring, under a slightly smaller logo, only for providers with multiple displayed accounts. Ring size, grid, bitmap dimensions, individual-account click targets and full accessibility labels remain unchanged.

Validation: 59 targeted unit tests passed with no failures or skips; debug APK built and installed on API 36 emulator. Actual UI selected six accounts, showed disabled add buttons and rejected tapping a seventh. Restored the original four-account dashboard selection afterward. Visually checked Claude, Claude 2, Codex and Codex 2 captions in the existing battery widget, and the separate single-account-provider battery widget retained its logo-only layout. Screenshots: simple-six-top.png, simple-six-disabled.png, simple-battery-aliases-final.png in the artifact directory above. git diff --check passed. Korean resource text and long-label ellipsizing are implemented; this visual check used English locale and the existing short account names.

## Battery widget 1x3 capacity

The 1x3 battery widget now displays up to four accounts in one column and four rows. One to three accounts keep their existing one-column layout. Other widget sizes retain their previous capacities and grid policies. The narrow 1x3 layout uses reduced internal padding so four rings remain readable.

Validation: 23 targeted circular-widget tests passed with no failures or skips, the debug APK built and installed while preserving app data, and `git diff --check` passed. The existing 1x3 launcher widget visibly rendered Cursor, Grok, Antigravity and Gemini as four separate rings. Screenshot: `artifacts/widget-audit-20260914/battery-1x3-four-final.png`.
