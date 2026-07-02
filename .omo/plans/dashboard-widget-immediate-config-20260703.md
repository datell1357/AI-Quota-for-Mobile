# dashboard-widget-immediate-config-20260703 - Work Plan

## TL;DR (For humans)
**What you'll get:** 대시보드 위젯 설정에서 provider 순서를 바꾸거나 provider를 숨기면, 배터리 위젯처럼 홈 화면 대시보드 위젯에도 몇 초 안에 바로 반영되게 합니다.

**Why this approach:** 현재 대시보드 위젯은 Glance 전체 갱신과 15분 시스템 주기에 기대는 경로가 섞여 있고, 배터리 위젯은 특정 위젯을 직접 다시 그립니다. 대시보드도 설정 변경 직후 해당 위젯 ID만 즉시 다시 그리도록 같은 원칙의 작은 helper를 추가합니다.

**What it will NOT do:** provider 로그인/수집/세션 코드는 건드리지 않습니다. 위젯 설정 반영을 위해 usage snapshot을 새로 만들거나 네트워크 수집을 시작하지 않습니다. 시스템 위젯 주기 15분 설정도 바꾸지 않습니다.

**Effort:** Short
**Risk:** Medium - Glance 위젯은 launcher/host 타이밍 영향을 받으므로 단발 업데이트가 아니라 짧은 재시도와 실제 홈 화면 QA가 필요합니다.
**Decisions to sanity-check:** 기존 `UsageSurfaceRefresher.refreshWidgetSurfaces()`는 fallback으로 유지하고, 새 즉시 경로는 대시보드 Glance widget ID에만 적용합니다.

Your next move: `$omo:start-work`로 실행하면 됩니다. Full execution detail follows below.

---

> TL;DR (machine): Short, medium-risk widget-layer fix: add appWidgetId-scoped Glance dashboard immediate update + retries, wire it from dashboard widget configuration, prove with RED/GREEN tests and home-screen widget QA.

## Scope
### Must have
- Dashboard widget configuration changes must request an immediate update for the configured `appWidgetId` without waiting for the global 2-second debounce or the 15-minute launcher update period.
- The immediate path must use Glance's appWidgetId-specific route: `GlanceAppWidgetManager(context).getGlanceIdBy(appWidgetId)` then `AIQuotaUnifiedGlanceWidget().update(context, glanceId)`.
- The immediate path must include short retries to survive launcher/configuration callback timing.
- `DashboardWidgetConfigureActivity` must still save per-widget provider order/hidden state before requesting widget updates.
- Existing broad widget surface refresh must remain as fallback so circular/battery widgets configured by the same activity keep working.
- Existing dashboard widget content must still read only `WidgetSnapshotCache` plus per-widget order/hidden preferences.
- Real home-screen widget QA must show a provider reorder/hide reflected within seconds after leaving the configuration screen.

### Must NOT have (guardrails, anti-slop, scope boundaries)
- Must not edit `android/app/src/main/java/com/aiquota/mobile/providers/` or provider tests.
- Must not start provider collection, `ProviderBackgroundRefreshService`, hidden WebView work, or network calls from passive/config widget update.
- Must not call `UsageSurfaceRefresher.refresh(` from dashboard widget configuration.
- Must not rewrite `WidgetSnapshotCache` or `LocalUsageRepository` for a widget order/hidden-only change.
- Must not change `android:updatePeriodMillis` in widget XML.
- Must not add dependencies, app-wide abstractions, or new launcher/widget frameworks.
- Must not revert or clean up unrelated dirty worktree files.

## Verification strategy
> Zero human intervention - all verification is agent-executed.
- Test decision: TDD with focused Gradle/JUnit source-policy seam tests, plus Android emulator home-screen widget QA.
- RED evidence: `.omo/evidence/dashboard-widget-immediate-config-20260703/t01-red-dashboard-widget-immediate.txt`
- GREEN evidence: `.omo/evidence/dashboard-widget-immediate-config-20260703/t02-green-dashboard-widget-immediate.txt`
- Wiring/regression evidence: `.omo/evidence/dashboard-widget-immediate-config-20260703/t03-green-dashboard-config-wire.txt`
- Real widget evidence: `.omo/evidence/dashboard-widget-immediate-config-20260703/t04-emulator-dashboard-widget-immediate/`
- Scope evidence: `.omo/evidence/dashboard-widget-immediate-config-20260703/t05-scope-guardrails.txt`

## Execution strategy
### Parallel execution waves
- Wave 1: baseline + RED tests for the missing appWidgetId-scoped dashboard immediate update seam.
- Wave 2: add widget helper and wire configuration refresh.
- Wave 3: focused regression + emulator home-screen widget QA + scope guardrails.

### Dependency matrix
| Todo | Depends on | Blocks | Can parallelize with |
| --- | --- | --- | --- |
| T01 | none | T02, T03 | none |
| T02 | T01 RED | T03, T04 | none |
| T03 | T01 RED | T04, T05 | none |
| T04 | T02, T03 | final | T05 |
| T05 | T02, T03 | final | T04 |

## Todos
> Implementation + Test = ONE todo. Never separate.
<!-- APPEND TASK BATCHES BELOW THIS LINE WITH edit/apply_patch - never rewrite the headers above. -->
- [ ] T01. Capture the missing immediate dashboard widget update as RED
  What to do / Must NOT do: Add focused failing tests under `android/app/src/test/java/com/aiquota/mobile/widget/` proving dashboard configuration currently has no dashboard-specific immediate update helper and no appWidgetId-scoped Glance update call. Do not edit production code in this todo.
  Parallelization: Wave 1 | Blocked by: none | Blocks: T02, T03
  References (executor has NO interview context - be exhaustive): `android/app/src/main/java/com/aiquota/mobile/widget/DashboardWidgetConfigureActivity.kt:674-681`, `android/app/src/main/java/com/aiquota/mobile/providers/UsageSurfaceRefresher.kt:63-80`, `android/app/src/main/java/com/aiquota/mobile/providers/UsageSurfaceRefresher.kt:128-134`, `android/app/src/main/java/com/aiquota/mobile/widget/AIQuotaGlanceWidget.kt:55-62`, `android/app/src/test/java/com/aiquota/mobile/widget/DashboardWidgetConfigureActivityTest.kt:35-64`
  Acceptance criteria (agent-executable): Running `JAVA_HOME="/c/Program Files/Android/Android Studio/jbr" PATH="/c/Program Files/Android/Android Studio/jbr/bin:$PATH" gradle -p android --no-daemon -Pkotlin.incremental=false :app:testDebugUnitTest --tests "com.aiquota.mobile.widget.DashboardWidgetConfigureActivityTest" --tests "com.aiquota.mobile.widget.DashboardWidgetImmediateUpdaterTest"` exits non-zero before production edits and fails on assertions requiring `DashboardWidgetImmediateUpdater`, `getGlanceIdBy(appWidgetId)`, and targeted `AIQuotaUnifiedGlanceWidget().update(...)`.
  QA scenarios (name the exact tool + invocation): Failure scenario: run the Gradle command above and redirect full output to `.omo/evidence/dashboard-widget-immediate-config-20260703/t01-red-dashboard-widget-immediate.txt`; PASS if the new test fails by assertion, not by compilation error. Happy scenario is T02/T03 GREEN.
  Commit: N | Covered by final commit

- [ ] T02. Add a widget-scoped Glance dashboard immediate updater
  What to do / Must NOT do: Add `android/app/src/main/java/com/aiquota/mobile/widget/DashboardWidgetImmediateUpdater.kt`. It should expose `schedule(context: Context, appWidgetId: Int)`, ignore `AppWidgetManager.INVALID_APPWIDGET_ID`, use `context.applicationContext`, launch a coroutine, and for each short retry delay call `GlanceAppWidgetManager(appContext).getGlanceIdBy(appWidgetId)` followed by `AIQuotaUnifiedGlanceWidget().update(appContext, glanceId)`. Catch/log failures because the same configure activity can be used for circular widgets where the id may not resolve as a dashboard Glance widget. Do not import provider services or repositories.
  Parallelization: Wave 2 | Blocked by: T01 | Blocks: T03, T04
  References (executor has NO interview context - be exhaustive): `android/app/src/main/java/com/aiquota/mobile/widget/AIQuotaGlanceWidget.kt:442-450`, `android/app/src/main/java/com/aiquota/mobile/widget/ProviderWidgetPostConfigureUpdater.kt:1-18`, `android/app/src/main/java/com/aiquota/mobile/widget/ProviderWidgetConfigureActivity.kt:166-175`, AndroidX Glance docs: `GlanceAppWidget.update(context, GlanceId)` and `GlanceAppWidgetManager.getGlanceIdBy(appWidgetId)`
  Acceptance criteria (agent-executable): The new `DashboardWidgetImmediateUpdaterTest` passes and verifies: retry delays include `0L` and no delay is greater than `1_500L`; source contains `GlanceAppWidgetManager(appContext).getGlanceIdBy(appWidgetId)`; source contains `AIQuotaUnifiedGlanceWidget().update(appContext, glanceId)`; source does not contain `WidgetAutoRefreshStarter`, `ProviderBackgroundRefreshService`, `LocalUsageRepository`, `WidgetSnapshotCache.write`, or `UsageSurfaceRefresher.refresh(`.
  QA scenarios (name the exact tool + invocation): Happy scenario: run `JAVA_HOME="/c/Program Files/Android/Android Studio/jbr" PATH="/c/Program Files/Android/Android Studio/jbr/bin:$PATH" gradle -p android --no-daemon -Pkotlin.incremental=false :app:testDebugUnitTest --tests "com.aiquota.mobile.widget.DashboardWidgetImmediateUpdaterTest"` and save output to `.omo/evidence/dashboard-widget-immediate-config-20260703/t02-green-dashboard-widget-immediate.txt`; PASS if `BUILD SUCCESSFUL`. Failure scenario: run `rg -n "ProviderBackgroundRefreshService|LocalUsageRepository|WidgetAutoRefreshStarter|UsageSurfaceRefresher.refresh\\(" android/app/src/main/java/com/aiquota/mobile/widget/DashboardWidgetImmediateUpdater.kt` and save to `.omo/evidence/dashboard-widget-immediate-config-20260703/t02-forbidden-helper-scan.txt`; PASS if no forbidden matches.
  Commit: N | Covered by final commit

- [ ] T03. Wire dashboard widget configuration to the immediate updater without breaking circular fallback
  What to do / Must NOT do: In `DashboardWidgetConfigureActivity.refreshConfiguredWidgets()`, call `DashboardWidgetImmediateUpdater.schedule(applicationContext, appWidgetId)` before the existing `UsageSurfaceRefresher.refreshWidgetSurfaces(applicationContext)`. Keep the existing save order in drag-drop, hide, restore, and Done paths. Do not replace the broad refresh, because the same activity configures `AIQuotaCircularWidgetProvider`.
  Parallelization: Wave 2 | Blocked by: T01, T02 | Blocks: T04, T05
  References (executor has NO interview context - be exhaustive): `android/app/src/main/java/com/aiquota/mobile/widget/DashboardWidgetConfigureActivity.kt:470-475`, `android/app/src/main/java/com/aiquota/mobile/widget/DashboardWidgetConfigureActivity.kt:637-652`, `android/app/src/main/java/com/aiquota/mobile/widget/DashboardWidgetConfigureActivity.kt:674-681`, `android/app/src/main/java/com/aiquota/mobile/widget/AIQuotaCircularWidgetProvider.kt:29-41`, `android/app/src/test/java/com/aiquota/mobile/widget/DashboardWidgetConfigureActivityTest.kt:51-64`, `android/app/src/test/java/com/aiquota/mobile/widget/DashboardWidgetConfigureActivityTest.kt:124-154`
  Acceptance criteria (agent-executable): `DashboardWidgetConfigureActivityTest` passes with a new assertion that `refreshConfiguredWidgets()` contains both `DashboardWidgetImmediateUpdater.schedule(applicationContext, appWidgetId)` and `UsageSurfaceRefresher.refreshWidgetSurfaces(applicationContext)`, in that order. The same test must still assert `!text.contains("UsageSurfaceRefresher.refresh(")` and no `LocalUsageRepository` usage.
  QA scenarios (name the exact tool + invocation): Happy scenario: run `JAVA_HOME="/c/Program Files/Android/Android Studio/jbr" PATH="/c/Program Files/Android/Android Studio/jbr/bin:$PATH" gradle -p android --no-daemon -Pkotlin.incremental=false :app:testDebugUnitTest --tests "com.aiquota.mobile.widget.DashboardWidgetConfigureActivityTest" --tests "com.aiquota.mobile.widget.WidgetSystemUpdatePeriodTest"` and save output to `.omo/evidence/dashboard-widget-immediate-config-20260703/t03-green-dashboard-config-wire.txt`; PASS if `BUILD SUCCESSFUL`. Failure scenario: run `git diff -- android/app/src/main/java/com/aiquota/mobile/providers android/app/src/test/java/com/aiquota/mobile/providers` and compare against the baseline captured before this task; PASS if there is no provider delta from this task.
  Commit: N | Covered by final commit

- [ ] T04. Prove real home-screen dashboard widget reflects configuration immediately
  What to do / Must NOT do: Install the debug APK, use the app's existing widget add flow or an existing dashboard widget on `emulator-5554`, re-open `DashboardWidgetConfigureActivity` for that widget id, hide or reorder one visible provider, press Done, return to the launcher, and verify launcher UI XML/screenshot reflects the new provider order/hidden state within 5 seconds. Do not require provider login and do not trigger manual usage refresh.
  Parallelization: Wave 3 | Blocked by: T02, T03 | Blocks: final
  References (executor has NO interview context - be exhaustive): `android/app/src/main/java/com/aiquota/mobile/widget/PinnedWidgetRequester.kt:45-58`, `android/app/src/main/java/com/aiquota/mobile/ui/AIQuotaAppShell.kt:507-509`, `android/app/src/main/java/com/aiquota/mobile/ui/AIQuotaAppShell.kt:755-840`, `android/app/src/main/java/com/aiquota/mobile/widget/DashboardWidgetConfigureActivity.kt:637-687`, `android/app/src/main/res/xml/ai_quota_widget_large.xml:1-17`
  Acceptance criteria (agent-executable): Evidence directory `.omo/evidence/dashboard-widget-immediate-config-20260703/t04-emulator-dashboard-widget-immediate/` contains: install log with `BUILD SUCCESSFUL`; before/after launcher screenshots; before/after launcher UI XML; config activity screenshot/XML; extracted widget marker file showing the removed provider is absent or reordered provider sequence changed within 5 seconds after Done; cleanup receipt for temporary `/sdcard` dumps. If the launcher cannot pin widgets on the emulator, record `PinnedWidgetRequester` status/log and do not claim real-surface PASS.
  QA scenarios (name the exact tool + invocation): Happy scenario: use Git Bash with `DEVICE=emulator-5554 E=.omo/evidence/dashboard-widget-immediate-config-20260703/t04-emulator-dashboard-widget-immediate`; run `JAVA_HOME="/c/Program Files/Android/Android Studio/jbr" PATH="/c/Program Files/Android/Android Studio/jbr/bin:$PATH" gradle -p android --no-daemon :app:installDebug > "$E/install.txt" 2>&1`; launch with `adb -s "$DEVICE" shell monkey -p com.aiquota.mobile 1`; drive the in-app `위젯 추가` -> `대시보드` -> launcher pin confirmation flow with `uiautomator dump` plus `adb shell input tap` using bounds from text nodes; read the configured id from `adb -s "$DEVICE" shell run-as com.aiquota.mobile cat shared_prefs/ai_quota_provider_preferences.xml`; start reconfiguration with `adb -s "$DEVICE" shell am start -n com.aiquota.mobile/.widget.DashboardWidgetConfigureActivity --ei appWidgetId "$WIDGET_ID"`; tap a remove/reorder control using UIAutomator bounds; tap `완료`; return home with `adb -s "$DEVICE" shell input keyevent KEYCODE_HOME`; dump XML with `MSYS_NO_PATHCONV=1 adb -s "$DEVICE" shell uiautomator dump /sdcard/dashboard-widget-after.xml` and `MSYS_NO_PATHCONV=1 adb -s "$DEVICE" exec-out cat /sdcard/dashboard-widget-after.xml > "$E/dashboard-widget-after.xml"`; PASS if marker extraction proves the widget changed within 5 seconds. Failure scenario: capture the same XML/screenshot 10 seconds after Done; FAIL if the old order/hidden provider is still visible, because that reproduces the user's delayed dashboard widget behavior.
  Commit: N | Covered by final commit

- [ ] T05. Run focused regression and scope guardrails
  What to do / Must NOT do: Run focused widget tests and final diff checks. Keep unrelated dirty provider files out of the task. Do not stage, commit, or revert unrelated files unless the user explicitly asks.
  Parallelization: Wave 3 | Blocked by: T02, T03 | Blocks: final
  References (executor has NO interview context - be exhaustive): `android/app/src/test/java/com/aiquota/mobile/widget/DashboardWidgetConfigureActivityTest.kt`, `android/app/src/test/java/com/aiquota/mobile/widget/WidgetGaugeParserTest.kt`, `android/app/src/test/java/com/aiquota/mobile/widget/WidgetSystemUpdatePeriodTest.kt`, `android/app/src/test/java/com/aiquota/mobile/widget/PinnedWidgetRequesterTest.kt`, `.omo/drafts/dashboard-widget-immediate-config-20260703.status.txt`
  Acceptance criteria (agent-executable): Focused tests pass; `git diff --check` passes for touched files; provider diff after normalized baseline comparison has no new delta; forbidden scans find no `ProviderBackgroundRefreshService`, `LocalUsageRepository`, `WidgetSnapshotCache.write`, `requestBackgroundRefresh`, or `UsageSurfaceRefresher.refresh(` additions in the new helper or dashboard configuration diff.
  QA scenarios (name the exact tool + invocation): Happy scenario: run `JAVA_HOME="/c/Program Files/Android/Android Studio/jbr" PATH="/c/Program Files/Android/Android Studio/jbr/bin:$PATH" gradle -p android --no-daemon -Pkotlin.incremental=false :app:testDebugUnitTest --tests "com.aiquota.mobile.widget.DashboardWidgetImmediateUpdaterTest" --tests "com.aiquota.mobile.widget.DashboardWidgetConfigureActivityTest" --tests "com.aiquota.mobile.widget.WidgetGaugeParserTest" --tests "com.aiquota.mobile.widget.WidgetSystemUpdatePeriodTest" --tests "com.aiquota.mobile.widget.PinnedWidgetRequesterTest"` and save output to `.omo/evidence/dashboard-widget-immediate-config-20260703/t05-green-focused-widget-tests.txt`; PASS if `BUILD SUCCESSFUL`. Failure scenario: run `git diff --name-only -- android/app/src/main/java/com/aiquota/mobile/providers android/app/src/test/java/com/aiquota/mobile/providers` before and after implementation, normalize line-number prefixes if any, and save comparison to `.omo/evidence/dashboard-widget-immediate-config-20260703/t05-provider-diff-vs-baseline.txt`; PASS if no new provider delta.
  Commit: Y | `fix(widget): 대시보드 위젯 설정 변경 즉시 반영`

## Final verification wave
> Runs in parallel after ALL todos. ALL must APPROVE. Surface results and wait for the user's explicit okay before declaring complete.
- [ ] F1. Plan compliance audit: confirm every Must Have has a RED/GREEN or emulator evidence artifact under `.omo/evidence/dashboard-widget-immediate-config-20260703/`.
- [ ] F2. Code quality review: re-read `DashboardWidgetImmediateUpdater.kt` and `DashboardWidgetConfigureActivity.kt` diff; confirm the change is widget-scoped, appWidgetId-scoped, retry-bounded, and does not introduce a new broad refresh abstraction.
- [ ] F3. Real manual QA: inspect `t04-emulator-dashboard-widget-immediate` screenshots/XML/marker extraction and confirm the launcher dashboard widget visibly changes within 5 seconds.
- [ ] F4. Scope fidelity: confirm task-owned changes are limited to widget package/test files and `.omo/evidence/dashboard-widget-immediate-config-20260703/`; provider diffs are baseline-only.

## Commit strategy
- One commit after T01-T05 and F1-F4 pass.
- Stage only task-owned files:
  - `android/app/src/main/java/com/aiquota/mobile/widget/DashboardWidgetImmediateUpdater.kt`
  - `android/app/src/main/java/com/aiquota/mobile/widget/DashboardWidgetConfigureActivity.kt`
  - `android/app/src/test/java/com/aiquota/mobile/widget/DashboardWidgetImmediateUpdaterTest.kt`
  - `android/app/src/test/java/com/aiquota/mobile/widget/DashboardWidgetConfigureActivityTest.kt`
  - `.omo/evidence/dashboard-widget-immediate-config-20260703/`
  - `.omo/plans/dashboard-widget-immediate-config-20260703.md`
- Do not stage unrelated provider, `.idea`, prior `.omo`, or settings-topbar files.
- Commit message:
  `fix(widget): 대시보드 위젯 설정 변경 즉시 반영`
- If the user requests push after implementation, push the current `26version-code` branch only after commit succeeds.

## Success criteria
- Dashboard widget order/hidden provider changes are visible on the home-screen widget within 5 seconds after configuration Done.
- Battery/circular widget configuration remains functional because the existing broad surface refresh fallback is preserved.
- Widget configuration still refreshes cached surfaces only; it does not start provider collection or rewrite usage snapshots.
- Focused widget tests pass.
- Emulator home-screen widget QA passes with screenshot/XML evidence.
- No provider/session/collector/background-refresh code is modified by this task.
