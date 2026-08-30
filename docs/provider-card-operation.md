# Provider-card operation

This document describes the shipped debug behavior and the evidence used to qualify it. The release build remains deliberately disabled.

## Identity and supported providers

A card is identified only by immutable `ProviderAccountId(providerId, accountKey)`. Alias, provider name, email, rank, path text, and remote identity are display metadata and must never be used to route, refresh, authenticate, delete, notify, or bind a widget.

The picker order is Claude, Codex, Cursor, Grok, Kiro, OpenCode, GLM, Antigravity, Gemini, and Copilot. Claude and Codex allow multiple sibling cards. All other providers allow one reserved-default card. Automatic sibling aliases use the lowest available title-case suffix, such as `Codex`, `Codex 2`, and `Codex 3`. Custom aliases are globally unique after Unicode whitespace trim and locale-independent case normalization.

## User flow

- A fresh debug install opens the provider picker. `Later` persists the onboarding choice and opens an empty dashboard without creating an account or starting login.
- Add selects a provider, proposes an alias, and creates a disconnected card only. Authentication starts only when Connect is pressed on that exact card.
- Dashboard, detail, settings, refresh, WebView/Profile, widgets, notifications, preferences, and bottom navigation carry the exact account ID. Missing exact identity returns Home or a typed error; there is no default or sibling fallback.
- Session or Profile loss marks only the affected card `REAUTH_REQUIRED`. Siblings keep their own state and session.
- Remove selects exact cards, names them in an irreversible confirmation, tombstones first, and erases only those cards' credentials, Profile/session, usage, schedules, widget/notification state, and preferences. There is no Undo and no implicit sibling promotion.
- Existing-user migration creates cards only for connected or usage-bearing providers. Legacy Claude/Codex records retain their reserved-default identity.

## Operator checks

Use API 37 AVD `VerifyAdFix` on `emulator-5554`. The checked-in script builds and installs both APKs, clears app data, drives the rendered app, runs focused instrumentation, captures screenshots/UI XML, and restores process, locale, geometry, density, and font scale:

```bash
scripts/provider-card-emulator-qualification.sh .omo/evidence/task-24-emulator-qualification/operator-run
```

The non-device regression lane is:

```bash
cd android
./gradlew --no-daemon testDebugUnitTest lintDebug assembleDebug
```

Before a release decision, confirm the source boundary remains:

```text
debug   MULTI_ACCOUNT_ENABLED=true
release MULTI_ACCOUNT_ENABLED=false
```

Do not run real-provider traffic as automated QA. Synthetic app-assets fixtures cover login/session behavior; real account login remains an explicit, manual operation.

## Evidence index

All paths are relative to the UI worktree unless prefixed with `../`.

| Scope | Evidence |
| --- | --- |
| Tasks 1-8, account worktree freeze through lifecycle hardening | [`../.omo/evidence/claude-codex-multi-account-profiles/task-1`](../../.omo/evidence/claude-codex-multi-account-profiles/task-1) through [`task-8`](../../.omo/evidence/claude-codex-multi-account-profiles/task-8) |
| Tasks 9-17, account identity/migration/routing runtime | `../.omo/evidence/ulw/01a04e98-a025-7461-bb95-c0db6c728676/G002/a1` and `../.omo/evidence/prometheus-todo-13-provider-account-routing` |
| Task 18 onboarding | commits `4c53a544`, `d9d7378f`; catalog instrumentation is included in Task 23 evidence |
| Task 19 Add/naming | `.omo/evidence/task-19-add-provider-correction-20260829` |
| Task 20 exact Remove | [`.omo/evidence/task-20-remove-provider-20260830`](../.omo/evidence/task-20-remove-provider-20260830); RED: [`.omo/evidence/task-19-add-provider-correction-20260829/final/task20-boundary-red.log`](../.omo/evidence/task-19-add-provider-correction-20260829/final/task20-boundary-red.log); GREEN: [`.omo/evidence/task-25-final-gates/emulator-qualification-current/actions.log`](../.omo/evidence/task-25-final-gates/emulator-qualification-current/actions.log), [`verdict.txt`](../.omo/evidence/task-25-final-gates/emulator-qualification-current/verdict.txt); cleanup: [`cleanup.txt`](../.omo/evidence/task-25-final-gates/emulator-qualification-current/cleanup.txt) |
| Task 21 exact dashboard cards | `../.omo/evidence/task-21-dashboard-cards` and commit `b1714257` |
| Task 22 settings/detail/widget/notification surfaces | `.omo/evidence/task-22-adjacent-surfaces` and `.omo/evidence/ulw/01a04e98-a025-7461-bb95-c0db6c728676/G003/a1` |
| Task 23 localization/accessibility/responsive visual QA | `.omo/evidence/task-23-accessibility-visual` |
| Task 24 clean-install/restart/delete emulator qualification | `.omo/evidence/task-24-emulator-qualification/run-20260830-final3` |
| Task 25 mutation, build, 1,000-row, platform, and final emulator gates | `.omo/evidence/task-25-final-gates` |
| Task 26 handoff verification | [`.omo/evidence/task-26-handoff.txt`](../.omo/evidence/task-26-handoff.txt); zero-missing parser receipt: [`.omo/evidence/task-26-handoff.md`](../.omo/evidence/task-26-handoff.md) |
| F1-F4 final reviews | `.omo/evidence/final-F1-plan-compliance.md`, `.omo/evidence/final-F2-code-quality.md`, `.omo/evidence/final-F3-real-qa`, `.omo/evidence/final-F4-scope-fidelity.md` |

## Known limits and local prerequisites

- The feature is debug-only. No release build or release flag was changed by this work.
- `android/app/google-services.json` is ignored local configuration. Node source-contract tests expect the production Firebase project/app identifiers; a placeholder or test-project file makes those checks fail and must not be silently replaced.
- The complete Android instrumentation inventory is not one monolithic default-runner lane. Named-profile phase tests require their orchestration inputs, and platform accessibility tests require `ProviderCardCatalogInstrumentationRunner`. Use the checked-in qualification script and named focused lanes.
- The catalog is lazily composed so a 1,000-card production fixture does not exhaust the emulator heap. New cards are brought into the bounded grid while the dashboard controls remain reachable.
- The repository contains no `CLAUDE.md`; this document and `DESIGN.md` are the operator and interaction sources for this branch.

## Delivery state

The UI branch is local-only, has no upstream, and must not be pushed, merged, rebased, or opened as a PR without a separate user request. Existing evidence directories and local configuration are intentionally excluded from product commits.
