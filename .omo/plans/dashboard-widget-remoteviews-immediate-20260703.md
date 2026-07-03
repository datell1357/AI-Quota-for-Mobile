# dashboard-widget-remoteviews-immediate-20260703 - Work Plan

## TL;DR (For humans)
**What you'll get:** 대시보드 위젯 설정에서 provider 숨김/순서 변경 후 완료를 누르면, 홈 화면 위젯이 한참 뒤가 아니라 즉시 바뀌도록 합니다.

**Why this approach:** 이전 조치는 여전히 Glance 갱신 경로라 launcher 반영 지연을 피하지 못했습니다. 이번에는 배터리/원형 위젯처럼 설정 완료 직후 해당 위젯 ID에 `RemoteViews`를 직접 밀어 넣습니다.

**What it will NOT do:** provider 로그인/수집/세션 코드는 건드리지 않습니다. 위젯 설정 반영을 위해 네트워크 수집이나 snapshot 재작성도 하지 않습니다.

**Effort:** Medium
**Risk:** Medium - Glance 화면과 RemoteViews 즉시 화면의 표시 parity를 맞춰야 하고, launcher 실기반 QA가 필요합니다.
**Decisions to sanity-check:** 기존 Glance 위젯 구조는 유지하고, 설정 변경 직후 즉시 반영 경로만 `RemoteViews`로 추가합니다.

Your next move: `$omo:start-work`로 실행하면 됩니다. Full execution detail follows below.

---

> TL;DR (machine): Medium-risk widget-only fix: add dashboard RemoteViews immediate renderer, wire config refresh before Glance fallback, prove with RED/GREEN tests and launcher QA under 1s.

## Scope
### Must have
- Dashboard widget configuration changes must update the configured `appWidgetId` through `AppWidgetManager.updateAppWidget(appWidgetId, RemoteViews)` immediately after the preference write.
- The direct renderer must use existing widget data sources: `WidgetSnapshotCache(context).read()` and `ProviderPreferencesRepository.dashboardWidgetProviderOrder(appWidgetId)` / `dashboardWidgetHiddenProviders(appWidgetId)`.
- The direct renderer must reuse existing dashboard shaping helpers: `dashboardWidgetPayload(...)` and `unifiedWidgetLayoutSpec(...)`.
- The direct renderer must preserve basic dashboard widget behavior: provider display names, provider icons, remaining text/status, progress bars, refresh button/spinner state, theme background, home click, and widget refresh click.
- `DashboardWidgetConfigureActivity.refreshConfiguredWidgets()` must invoke the direct RemoteViews renderer before the existing Glance/broad fallback.
- Existing Glance dashboard rendering must remain as the normal long-term renderer and periodic fallback.
- Real launcher QA must prove provider hide/order changes are reflected quickly enough that the previous Glance/debounce fallback cannot explain the pass.

### Must NOT have (guardrails, anti-slop, scope boundaries)
- Must not edit `android/app/src/main/java/com/aiquota/mobile/providers/` or provider tests.
- Must not start provider collection, `ProviderBackgroundRefreshService`, hidden WebView work, or network calls from dashboard widget configuration.
- Must not call `UsageSurfaceRefresher.refresh(` from dashboard widget configuration.
- Must not write `WidgetSnapshotCache`, `LocalUsageRepository`, provider snapshots, or fake/stale usage data for a widget order/hidden-only change.
- Must not change `android:updatePeriodMillis` in widget XML.
- Must not replace the existing Glance widget receiver, remove `AIQuotaUnifiedGlanceWidget`, or migrate the whole dashboard widget architecture.
- Must not stage, revert, or clean unrelated dirty worktree files.

## Verification strategy
> Zero human intervention - all verification is agent-executed.
- Test decision: TDD with focused Gradle/JUnit source-policy seam tests and a real Android emulator launcher QA.
- RED evidence root: `.omo/evidence/dashboard-widget-remoteviews-immediate-20260703/t01-red-dashboard-remoteviews.txt`
- GREEN evidence root: `.omo/evidence/dashboard-widget-remoteviews-immediate-20260703/t02-green-dashboard-remoteviews.txt`
- Wiring/regression evidence: `.omo/evidence/dashboard-widget-remoteviews-immediate-20260703/t03-green-dashboard-config-wire.txt`
- Real-surface evidence: `.omo/evidence/dashboard-widget-remoteviews-immediate-20260703/t04-emulator-dashboard-remoteviews-immediate/`
- Scope evidence: `.omo/evidence/dashboard-widget-remoteviews-immediate-20260703/t05-scope-guardrails.txt`

## Execution strategy
### Parallel execution waves
> Target 5-8 todos per wave. Fewer than 3 (except the final) means you under-split.
- Wave 1: RED tests that prove the current immediate path is still Glance-only and can pass without direct host update.
- Wave 2: Add the smallest dashboard RemoteViews renderer and wire it from configuration.
- Wave 3: Focused tests, forbidden scans, APK reinstall, launcher QA, and final scope audit.

### Dependency matrix
| Todo | Depends on | Blocks | Can parallelize with |
| --- | --- | --- | --- |
| T01 | none | T02, T03 | none |
| T02 | T01 RED | T03, T04, T05 | none |
| T03 | T01 RED, T02 | T04, T05 | none |
| T04 | T02, T03 | final | T05 |
| T05 | T02, T03 | final | T04 |

## Todos
> Implementation + Test = ONE todo. Never separate.
<!-- APPEND TASK BATCHES BELOW THIS LINE WITH edit/apply_patch - never rewrite the headers above. -->
- [ ] T01. Capture the missing direct dashboard RemoteViews update as RED
  What to do / Must NOT do: Add focused failing tests under `android/app/src/test/java/com/aiquota/mobile/widget/` proving the dashboard immediate update path must call `AppWidgetManager.updateAppWidget(appWidgetId, RemoteViews)` and must not rely only on `GlanceAppWidget.update(...)`. Do not edit production code in this todo.
  Parallelization: Wave 1 | Blocked by: none | Blocks: T02, T03
  References (executor has NO interview context - be exhaustive): `android/app/src/main/java/com/aiquota/mobile/widget/DashboardWidgetImmediateUpdater.kt:17-35`, `android/app/src/main/java/com/aiquota/mobile/widget/DashboardWidgetConfigureActivity.kt:674-682`, `android/app/src/main/java/com/aiquota/mobile/widget/ProviderWidgetImmediateRenderer.kt:23-29`, `android/app/src/main/java/com/aiquota/mobile/widget/AIQuotaCircularWidgetProvider.kt:86-104`, `android/app/src/test/java/com/aiquota/mobile/widget/DashboardWidgetImmediateUpdaterTest.kt:1-58`
  Acceptance criteria (agent-executable): Running `JAVA_HOME="/c/Program Files/Android/Android Studio/jbr" PATH="/c/Program Files/Android/Android Studio/jbr/bin:$PATH" gradle -p android --no-daemon -Pkotlin.incremental=false :app:testDebugUnitTest --tests "com.aiquota.mobile.widget.DashboardWidgetImmediateUpdaterTest" --tests "com.aiquota.mobile.widget.DashboardWidgetConfigureActivityTest"` exits non-zero before production edits because the new assertion requires direct `AppWidgetManager.getInstance(...).updateAppWidget(appWidgetId, ...)` in the dashboard immediate path.
  QA scenarios (name the exact tool + invocation): Failure scenario: run the Gradle command above and save full output to `.omo/evidence/dashboard-widget-remoteviews-immediate-20260703/t01-red-dashboard-remoteviews.txt`; PASS if the failure is an assertion requiring direct RemoteViews host update, not a compile error. Happy scenario is T02/T03 GREEN.
  Commit: N | Covered by final commit

- [ ] T02. Add a dashboard-specific RemoteViews immediate renderer
  What to do / Must NOT do: Add a renderer such as `DashboardWidgetImmediateRenderer.kt` in the widget package. It should expose `render(context: Context, appWidgetId: Int)`, return on `AppWidgetManager.INVALID_APPWIDGET_ID`, read `AppWidgetManager.getAppWidgetOptions(appWidgetId)`, build size-mapped `RemoteViews` on Android S+ using the existing size-list pattern, and call `AppWidgetManager.getInstance(context).updateAppWidget(appWidgetId, views)`. It must use `dashboardWidgetPayload(...)`, `unifiedWidgetLayoutSpec(...)`, `WidgetSnapshotCache(context).read()`, `ProviderPreferencesRepository`, `WidgetRefreshFeedback`, `widgetThemeColors`, and existing provider icon/progress helpers where feasible. Do not import provider services or repositories beyond existing local/widget dependencies.
  Parallelization: Wave 2 | Blocked by: T01 | Blocks: T03, T04, T05
  References (executor has NO interview context - be exhaustive): `android/app/src/main/java/com/aiquota/mobile/widget/ProviderWidgetImmediateRenderer.kt:23-55`, `android/app/src/main/java/com/aiquota/mobile/widget/AIQuotaCircularWidgetProvider.kt:70-115`, `android/app/src/main/java/com/aiquota/mobile/widget/WidgetGaugeParser.kt:24-112`, `android/app/src/main/java/com/aiquota/mobile/widget/WidgetGaugeLayout.kt:109-213`, `android/app/src/main/res/layout/ai_quota_widget_provider_immediate.xml`, `android/app/src/main/res/layout/ai_quota_widget_circular.xml`
  Acceptance criteria (agent-executable): `DashboardWidgetImmediateUpdaterTest` or a new `DashboardWidgetImmediateRendererTest` passes and verifies the renderer source contains `AppWidgetManager.getInstance`, `updateAppWidget(appWidgetId`, `RemoteViews`, `dashboardWidgetPayload`, `unifiedWidgetLayoutSpec`, `dashboardWidgetProviderOrder(appWidgetId)`, and `dashboardWidgetHiddenProviders(appWidgetId)`. The same test must verify the renderer source does not contain `ProviderBackgroundRefreshService`, `LocalUsageRepository`, `WidgetSnapshotCache.write`, `WidgetAutoRefreshStarter`, or `UsageSurfaceRefresher.refresh(`.
  QA scenarios (name the exact tool + invocation): Happy scenario: run `JAVA_HOME="/c/Program Files/Android/Android Studio/jbr" PATH="/c/Program Files/Android/Android Studio/jbr/bin:$PATH" gradle -p android --no-daemon -Pkotlin.incremental=false :app:testDebugUnitTest --tests "com.aiquota.mobile.widget.DashboardWidgetImmediateUpdaterTest" --tests "com.aiquota.mobile.widget.DashboardWidgetImmediateRendererTest"` and save output to `.omo/evidence/dashboard-widget-remoteviews-immediate-20260703/t02-green-dashboard-remoteviews.txt`; PASS if `BUILD SUCCESSFUL`. Failure scenario: run `rg -n "ProviderBackgroundRefreshService|LocalUsageRepository|WidgetSnapshotCache\\.write|WidgetAutoRefreshStarter|UsageSurfaceRefresher\\.refresh\\(" android/app/src/main/java/com/aiquota/mobile/widget/DashboardWidgetImmediateRenderer.kt android/app/src/main/java/com/aiquota/mobile/widget/DashboardWidgetImmediateUpdater.kt` and save output to `.omo/evidence/dashboard-widget-remoteviews-immediate-20260703/t02-forbidden-renderer-scan.txt`; PASS only with no matches.
  Commit: N | Covered by final commit

- [ ] T03. Wire configuration refresh to direct RemoteViews before Glance fallback
  What to do / Must NOT do: Update `DashboardWidgetImmediateUpdater.schedule(...)` or `DashboardWidgetConfigureActivity.refreshConfiguredWidgets()` so the direct dashboard RemoteViews renderer runs immediately before any Glance update or broad fallback. Prefer keeping the public call site in `DashboardWidgetConfigureActivity.refreshConfiguredWidgets()` simple: one dashboard-immediate call, then existing `UsageSurfaceRefresher.refreshWidgetSurfaces(applicationContext)` fallback. If `DashboardWidgetImmediateUpdater` remains, it must no longer be Glance-only; direct `updateAppWidget` must be the first attempted path. Do not remove the broad fallback because the configure activity still supports circular/widget surfaces.
  Parallelization: Wave 2 | Blocked by: T01, T02 | Blocks: T04, T05
  References (executor has NO interview context - be exhaustive): `android/app/src/main/java/com/aiquota/mobile/widget/DashboardWidgetConfigureActivity.kt:674-682`, `android/app/src/main/java/com/aiquota/mobile/widget/DashboardWidgetImmediateUpdater.kt:17-35`, `android/app/src/main/java/com/aiquota/mobile/providers/UsageSurfaceRefresher.kt:58-80`, `android/app/src/test/java/com/aiquota/mobile/widget/DashboardWidgetConfigureActivityTest.kt:64-80`
  Acceptance criteria (agent-executable): `DashboardWidgetConfigureActivityTest` passes with an assertion that `refreshConfiguredWidgets()` calls the dashboard direct RemoteViews update before `UsageSurfaceRefresher.refreshWidgetSurfaces(applicationContext)`. The test must assert no `UsageSurfaceRefresher.refresh(`, no `LocalUsageRepository`, and no provider refresh service references were added to dashboard configuration.
  QA scenarios (name the exact tool + invocation): Happy scenario: run `JAVA_HOME="/c/Program Files/Android/Android Studio/jbr" PATH="/c/Program Files/Android/Android Studio/jbr/bin:$PATH" gradle -p android --no-daemon -Pkotlin.incremental=false :app:testDebugUnitTest --tests "com.aiquota.mobile.widget.DashboardWidgetConfigureActivityTest" --tests "com.aiquota.mobile.widget.DashboardWidgetImmediateUpdaterTest" --tests "com.aiquota.mobile.widget.WidgetGaugeLayoutTest" --tests "com.aiquota.mobile.widget.WidgetGaugeParserTest"` and save output to `.omo/evidence/dashboard-widget-remoteviews-immediate-20260703/t03-green-dashboard-config-wire.txt`; PASS if `BUILD SUCCESSFUL`. Failure scenario: run `git diff -- android/app/src/main/java/com/aiquota/mobile/providers android/app/src/test/java/com/aiquota/mobile/providers` before and after this todo and save normalized comparison to `.omo/evidence/dashboard-widget-remoteviews-immediate-20260703/t03-provider-diff-guard.txt`; PASS if no new provider delta from this task.
  Commit: N | Covered by final commit

- [ ] T04. Prove real launcher widget updates immediately after configuration
  What to do / Must NOT do: Install the debug APK, use an existing dashboard widget or pin one on `emulator-5554`, open `DashboardWidgetConfigureActivity` for that widget id, hide one currently visible provider, tap Done, return to launcher, and capture screenshot/XML/logcat timestamps. This QA must prove the direct RemoteViews update caused the visible change quickly; do not accept a marker that only appears after the old 2-second debounce plus launcher lag. Do not trigger manual usage refresh or provider collection.
  Parallelization: Wave 3 | Blocked by: T02, T03 | Blocks: final
  References (executor has NO interview context - be exhaustive): `android/app/src/main/java/com/aiquota/mobile/widget/PinnedWidgetRequester.kt:45-58`, `android/app/src/main/java/com/aiquota/mobile/widget/DashboardWidgetConfigureActivity.kt:674-688`, `android/app/src/main/res/xml/ai_quota_widget_large.xml:1-17`, `.omo/evidence/dashboard-widget-immediate-config-20260703/t04-emulator-dashboard-widget-immediate/action-log.txt`
  Acceptance criteria (agent-executable): Evidence directory `.omo/evidence/dashboard-widget-remoteviews-immediate-20260703/t04-emulator-dashboard-remoteviews-immediate/` contains install log with `BUILD SUCCESSFUL`; before/after launcher screenshots; before/after launcher XML; config activity screenshot/XML; logcat excerpt containing direct appWidget update notification for the configured id; a marker proving a visible provider disappeared or order changed within 1 second of Done returning. If the first 1-second check fails, the todo is FAIL even if a later 2-10 second check eventually changes.
  QA scenarios (name the exact tool + invocation): Happy scenario: use Git Bash with `DEVICE=emulator-5554 E=.omo/evidence/dashboard-widget-remoteviews-immediate-20260703/t04-emulator-dashboard-remoteviews-immediate`; run `JAVA_HOME="/c/Program Files/Android/Android Studio/jbr" PATH="/c/Program Files/Android/Android Studio/jbr/bin:$PATH" gradle -p android --no-daemon :app:installDebug > "$E/install.txt" 2>&1`; run `adb -s "$DEVICE" logcat -c`; open the configured widget with `adb -s "$DEVICE" shell am start -n com.aiquota.mobile/.widget.DashboardWidgetConfigureActivity --ei appWidgetId "$WIDGET_ID"`; drive hide + Done using `uiautomator dump` bounds and `adb shell input tap`; immediately press home with `adb -s "$DEVICE" shell input keyevent KEYCODE_HOME`; dump launcher XML at roughly 0.5s and 1s using `MSYS_NO_PATHCONV=1 adb -s "$DEVICE" shell uiautomator dump /sdcard/dashboard-widget-after-1s.xml` then pull with `exec-out cat`; PASS only if the hidden/reordered provider state is absent/present correctly by the 1s XML and screenshot. Failure scenario: capture `.omo/evidence/dashboard-widget-remoteviews-immediate-20260703/t04-emulator-dashboard-remoteviews-immediate/failure-after-1s.*` and FAIL if the old provider/order remains at 1s, even if it later updates.
  Commit: N | Covered by final commit

- [ ] T05. Run focused regression, scope guardrails, and staged-diff audit
  What to do / Must NOT do: Run focused widget tests, resource compile/build, diff check, and forbidden scans. Keep unrelated provider/settings dirt out of staging. Do not push unless the user explicitly asks.
  Parallelization: Wave 3 | Blocked by: T02, T03 | Blocks: final
  References (executor has NO interview context - be exhaustive): `android/app/src/test/java/com/aiquota/mobile/widget/DashboardWidgetConfigureActivityTest.kt`, `android/app/src/test/java/com/aiquota/mobile/widget/WidgetGaugeLayoutTest.kt`, `android/app/src/test/java/com/aiquota/mobile/widget/WidgetGaugeParserTest.kt`, `android/app/src/test/java/com/aiquota/mobile/widget/PinnedWidgetRequesterTest.kt`, `android/app/src/main/res/layout/`
  Acceptance criteria (agent-executable): Focused widget tests pass; `:app:assembleDebug` passes; `git diff --check` passes for touched files; provider diff normalized comparison shows no new provider delta; staged-file audit includes only dashboard widget code/tests/resources plus `.omo/evidence/dashboard-widget-remoteviews-immediate-20260703/` and `.omo/plans/dashboard-widget-remoteviews-immediate-20260703.md`.
  QA scenarios (name the exact tool + invocation): Happy scenario: run `JAVA_HOME="/c/Program Files/Android/Android Studio/jbr" PATH="/c/Program Files/Android/Android Studio/jbr/bin:$PATH" gradle -p android --no-daemon -Pkotlin.incremental=false :app:testDebugUnitTest --tests "com.aiquota.mobile.widget.DashboardWidgetImmediateUpdaterTest" --tests "com.aiquota.mobile.widget.DashboardWidgetImmediateRendererTest" --tests "com.aiquota.mobile.widget.DashboardWidgetConfigureActivityTest" --tests "com.aiquota.mobile.widget.WidgetGaugeLayoutTest" --tests "com.aiquota.mobile.widget.WidgetGaugeParserTest" --tests "com.aiquota.mobile.widget.PinnedWidgetRequesterTest"` and save to `.omo/evidence/dashboard-widget-remoteviews-immediate-20260703/t05-green-focused-widget-tests.txt`; run `gradle -p android --no-daemon :app:assembleDebug` and save to `.omo/evidence/dashboard-widget-remoteviews-immediate-20260703/t05-assemble-debug.txt`; PASS if both are `BUILD SUCCESSFUL`. Failure scenario: run `rg -n "ProviderBackgroundRefreshService|LocalUsageRepository|WidgetSnapshotCache\\.write|requestBackgroundRefresh|UsageSurfaceRefresher\\.refresh\\(" <touched widget files>` and save to `.omo/evidence/dashboard-widget-remoteviews-immediate-20260703/t05-forbidden-widget-scan.txt`; PASS only with no forbidden additions.
  Commit: Y | `fix(widget): 대시보드 위젯 설정 즉시 반영`

## Final verification wave
> Runs in parallel after ALL todos. ALL must APPROVE. Surface results and wait for the user's explicit okay before declaring complete.
- [ ] F1. Plan compliance audit: confirm every Must Have has RED/GREEN or emulator evidence under `.omo/evidence/dashboard-widget-remoteviews-immediate-20260703/`.
- [ ] F2. Code quality review: re-read `DashboardWidgetImmediateUpdater`, the new dashboard renderer, the new layout, and `DashboardWidgetConfigureActivity` diff; confirm the fix is widget-scoped, direct `RemoteViews`, and does not introduce provider collection.
- [ ] F3. Real manual QA: inspect T04 screenshots/XML/logcat/action log and confirm the launcher dashboard widget changes by the 1-second checkpoint, not only a later fallback checkpoint.
- [ ] F4. Scope fidelity: confirm staged files are limited to widget code/tests/resources plus this plan/evidence; explicitly list unrelated dirty files left untouched.

## Commit strategy
- One commit after T01-T05 and F1-F4 pass.
- Stage only task-owned files:
  - `android/app/src/main/java/com/aiquota/mobile/widget/DashboardWidgetConfigureActivity.kt`
  - `android/app/src/main/java/com/aiquota/mobile/widget/DashboardWidgetImmediateUpdater.kt`
  - `android/app/src/main/java/com/aiquota/mobile/widget/DashboardWidgetImmediateRenderer.kt` or equivalent new renderer file
  - New dashboard RemoteViews layout/resource files under `android/app/src/main/res/layout/` and any directly required drawable/color resource changes
  - Widget tests under `android/app/src/test/java/com/aiquota/mobile/widget/`
  - `.omo/evidence/dashboard-widget-remoteviews-immediate-20260703/`
  - `.omo/plans/dashboard-widget-remoteviews-immediate-20260703.md`
- Do not stage unrelated provider, `.idea`, previous `.omo`, settings-topbar, or GLM/Cursor/Claude files.
- Commit message:
  `fix(widget): 대시보드 위젯 설정 즉시 반영`
- If the user requests push after implementation, push the current `26version-code` branch only after commit succeeds.

## Success criteria
- Dashboard widget provider hide/order settings are visible on the launcher widget by the 1-second QA checkpoint after Done.
- The evidence proves direct `AppWidgetManager.updateAppWidget(appWidgetId, RemoteViews)` is used for the configured dashboard widget ID.
- Existing dashboard Glance rendering remains available as fallback and periodic renderer.
- No provider/session/collector/background-refresh code is modified by this task.
- Focused widget tests and `assembleDebug` pass.
- Real emulator launcher QA passes with screenshot/XML/logcat evidence.
