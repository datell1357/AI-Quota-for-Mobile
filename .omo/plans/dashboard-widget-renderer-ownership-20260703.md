# dashboard-widget-renderer-ownership-20260703 - Work Plan

## TL;DR (For humans)
**What you'll get:** 대시보드 위젯과 배터리 위젯이 각자 자기 화면만 갱신합니다. 배터리 설정 중 대시보드가 잠깐 보이지 않고, 대시보드는 기존 이미지와 새 이미지 사이를 깜빡이지 않습니다.

**Why this approach:** 현재 대시보드는 Glance와 직접 RemoteViews가 같은 위젯을 번갈아 갱신합니다. 기존 사용자 위젯을 끊지 않기 위해 provider 이름은 유지하고, 내부 렌더링 소유권만 RemoteViews 단일 경로로 정리합니다.

**What it will NOT do:** provider 로그인/수집/세션 코드는 건드리지 않습니다. DOM scan, fallback, stale usage 표시 정책도 바꾸지 않습니다. 대시보드 widget provider component 이름도 바꾸지 않습니다.

**Effort:** Medium
**Risk:** Medium - 기존 Glance receiver 내부 구현을 AppWidgetProvider 방식으로 바꾸지만 manifest component 이름은 유지해야 합니다.
**Decisions to sanity-check:** `AIQuotaUnifiedGlanceWidgetReceiver` 이름은 유지하고 내부만 AppWidgetProvider로 전환합니다.

Your next move: `$omo:start-work $omo:teammode $omo:ulw-loop`로 실행하면 됩니다. Full execution detail follows below.

---

> TL;DR (machine): Medium risk widget ownership fix; preserve dashboard component name, remove Glance overwrite path, add provider-scoped configure refresh and emulator no-flicker QA.

## Scope
### Must have
- 대시보드 위젯 렌더링 경로를 단일 RemoteViews 소유 구조로 정리한다.
- `AIQuotaUnifiedGlanceWidgetReceiver` manifest component 이름은 유지한다.
- 배터리 위젯 설정 변경 시 `R.layout.ai_quota_widget_dashboard_immediate`가 배터리 appWidgetId에 적용되지 않게 한다.
- 대시보드 위젯 설정 변경 후 1초 이내 반영되고 10초 동안 기존 이미지로 되돌아가거나 깜빡이지 않게 한다.
- `UsageSurfaceRefresher`의 전역 위젯 갱신도 대시보드 RemoteViews 렌더러를 사용하게 한다.
- 배터리 위젯의 기존 `AIQuotaCircularWidgetProvider` 렌더링은 유지한다.

### Must NOT have (guardrails, anti-slop, scope boundaries)
- provider 로그인, 세션, collector, native bridge, DOM scan, fallback, usage payload 코드를 수정하지 않는다.
- 대시보드 위젯 component class 이름을 변경하지 않는다.
- 기존 사용자의 launcher widget binding을 깨는 manifest component 교체를 하지 않는다.
- 위젯 반영 확인을 grep-only로 끝내지 않는다. emulator 홈 화면에서 실제 widget surface를 캡처한다.
- 실패 테스트를 삭제하거나 완화하지 않는다.

## Verification strategy
> Zero human intervention - all verification is agent-executed.
- Test decision: TDD. 먼저 source-policy/unit seam에서 RED를 만들고, 구현 후 GREEN을 확인한다.
- Focused test command:
  `export JAVA_HOME="/c/Program Files/Android/Android Studio/jbr" && gradle -p android --no-daemon -Pkotlin.incremental=false :app:testDebugUnitTest --tests "com.aiquota.mobile.widget.DashboardWidgetConfigureActivityTest" --tests "com.aiquota.mobile.widget.DashboardWidgetImmediateUpdaterTest" --tests "com.aiquota.mobile.widget.DashboardWidgetImmediateRendererTest" --tests "com.aiquota.mobile.providers.UsageSurfaceRefresherTest" --tests "com.aiquota.mobile.widget.CircularWidgetSizeTest" --tests "com.aiquota.mobile.widget.UnifiedDashboardWidgetSizeTest" --tests "com.aiquota.mobile.widget.WidgetSystemUpdatePeriodTest" --tests "com.aiquota.mobile.widget.WidgetManualRefreshActionTest" --tests "com.aiquota.mobile.widget.WidgetPickerOrderTest"`
- Build command:
  `export JAVA_HOME="/c/Program Files/Android/Android Studio/jbr" && gradle -p android --no-daemon -Pkotlin.incremental=false :app:assembleDebug`
- Real surface QA:
  - install: `gradle -p android --no-daemon -Pkotlin.incremental=false :app:installDebug`
  - inspect widgets: `adb -s emulator-5554 shell dumpsys appwidget`
  - capture UI: `adb -s emulator-5554 exec-out screencap -p > <evidence>.png` and `adb -s emulator-5554 shell uiautomator dump /sdcard/<name>.xml`
  - manual refresh trigger: `adb -s emulator-5554 shell am broadcast -n com.aiquota.mobile/.widget.WidgetManualRefreshReceiver -a u.sage.widget.action.REFRESH --ei com.aiquota.mobile.widget.extra.APP_WIDGET_ID <id>`
- Evidence root: `.omo/evidence/dashboard-widget-renderer-ownership-20260703/`

## Execution strategy
### Parallel execution waves
- Wave 1: RED tests and exact failure evidence.
- Wave 2: dashboard renderer ownership conversion and configure provider routing.
- Wave 3: global widget refresher conversion and focused GREEN tests.
- Wave 4: emulator home-screen visual QA and final scope audit.

### Dependency matrix
| Todo | Depends on | Blocks | Can parallelize with |
| --- | --- | --- | --- |
| T01 | none | T02, T03, T04 | none |
| T02 | T01 RED | T04, T05 | T03 after RED is captured |
| T03 | T01 RED | T05 | T02 |
| T04 | T02 | T05 | none |
| T05 | T02, T03, T04 | T06 | none |
| T06 | T05 | final | none |

## Todos
> Implementation + Test = ONE todo. Never separate.
<!-- APPEND TASK BATCHES BELOW THIS LINE WITH edit/apply_patch - never rewrite the headers above. -->

- [ ] T01. Capture RED for renderer ownership conflicts
  What to do / Must NOT do: Add failing tests only. Do not edit production code. Tests must fail for the actual ownership bugs: battery can receive dashboard RemoteViews, dashboard receiver is still Glance-owned, global refresher can still call Glance updateAll.
  Parallelization: Wave 1 | Blocked by: none | Blocks: T02, T03, T04
  References (executor has NO interview context - be exhaustive):
  - `android/app/src/main/java/com/aiquota/mobile/widget/DashboardWidgetConfigureActivity.kt:674-685`
  - `android/app/src/main/java/com/aiquota/mobile/widget/DashboardWidgetImmediateUpdater.kt:7-10`
  - `android/app/src/main/java/com/aiquota/mobile/widget/DashboardWidgetImmediateRenderer.kt:27-33`
  - `android/app/src/main/java/com/aiquota/mobile/widget/DashboardWidgetImmediateRenderer.kt:99`
  - `android/app/src/main/java/com/aiquota/mobile/providers/UsageSurfaceRefresher.kt:128-134`
  - `android/app/src/main/java/com/aiquota/mobile/widget/AIQuotaGlanceWidget.kt:442-449`
  Acceptance criteria (agent-executable): Focused Gradle command exits non-zero and failures name the missing provider guard / Glance ownership / global Glance overwrite.
  QA scenarios (name the exact tool + invocation):
  - happy RED: run focused Gradle command above; expect failure; Evidence `.omo/evidence/dashboard-widget-renderer-ownership-20260703/t01-red-renderer-ownership.txt`
  - failure guard: grep touched test diff for forbidden weakening tokens `.skip`, `@Ignore`, removed assertions; Evidence `.omo/evidence/dashboard-widget-renderer-ownership-20260703/t01-test-guard-scan.txt`
  Commit: N | test(widget): 위젯 렌더링 소유권 회귀 테스트 추가

- [ ] T02. Make dashboard receiver keep its component name but render through RemoteViews
  What to do / Must NOT do: Change `AIQuotaUnifiedGlanceWidgetReceiver` so it no longer extends `GlanceAppWidgetReceiver`; it should extend `AppWidgetProvider` and call the dashboard RemoteViews renderer from `onUpdate` and `onAppWidgetOptionsChanged`. Keep the class name and manifest entry unchanged. Add an `updateAll(context)` entry point on either the receiver companion or `DashboardWidgetImmediateRenderer`. Do not rename the receiver or change `AndroidManifest.xml` unless compile requires an import-only adjustment.
  Parallelization: Wave 2 | Blocked by: T01 | Blocks: T04, T05
  References:
  - `android/app/src/main/AndroidManifest.xml:113-121`
  - `android/app/src/main/java/com/aiquota/mobile/widget/AIQuotaGlanceWidget.kt:442-449`
  - `android/app/src/main/java/com/aiquota/mobile/widget/DashboardWidgetImmediateRenderer.kt:24-35`
  - `android/app/src/main/java/com/aiquota/mobile/widget/AIQuotaCircularWidgetProvider.kt:69-86`
  Acceptance criteria (agent-executable): Tests assert `AIQuotaUnifiedGlanceWidgetReceiver` is an `AppWidgetProvider`, the manifest receiver name remains `.widget.AIQuotaUnifiedGlanceWidgetReceiver`, and dashboard updateAll uses `DashboardWidgetImmediateRenderer`.
  QA scenarios:
  - happy GREEN: run focused Gradle command; Evidence `.omo/evidence/dashboard-widget-renderer-ownership-20260703/t02-green-dashboard-provider.txt`
  - failure guard: `grep -R "AIQuotaUnifiedGlanceWidget().updateAll\|GlanceAppWidgetReceiver" android/app/src/main/java/com/aiquota/mobile/providers/UsageSurfaceRefresher.kt android/app/src/main/java/com/aiquota/mobile/widget/DashboardWidgetImmediateUpdater.kt android/app/src/main/java/com/aiquota/mobile/widget/DashboardWidgetConfigureActivity.kt`; expected no dashboard overwrite path; Evidence `.omo/evidence/dashboard-widget-renderer-ownership-20260703/t02-no-glance-overwrite-scan.txt`
  Commit: Y | fix(widget): 대시보드 위젯 렌더러 소유권 통일

- [ ] T03. Route configuration refresh by actual widget provider type
  What to do / Must NOT do: Make `DashboardWidgetImmediateUpdater.schedule(...)` no-op unless `appWidgetId` belongs to `AIQuotaUnifiedGlanceWidgetReceiver`. In `DashboardWidgetConfigureActivity.refreshConfiguredWidgets()`, call dashboard renderer for dashboard widgets and battery renderer for `AIQuotaCircularWidgetProvider`. If needed, expose a minimal `AIQuotaCircularWidgetProvider.update(context, appWidgetId)` wrapper around existing private updateWidgets. Do not call broad `UsageSurfaceRefresher.refreshWidgetSurfaces(...)` from configuration for dashboard widgets.
  Parallelization: Wave 2 | Blocked by: T01 | Blocks: T05
  References:
  - `android/app/src/main/java/com/aiquota/mobile/widget/DashboardWidgetConfigureActivity.kt:674-685`
  - `android/app/src/main/java/com/aiquota/mobile/widget/DashboardWidgetImmediateUpdater.kt:7-10`
  - `android/app/src/main/java/com/aiquota/mobile/widget/AIQuotaCircularWidgetProvider.kt:69-86`
  - `android/app/src/main/res/xml/ai_quota_widget_large.xml`
  - `android/app/src/main/res/xml/ai_quota_widget_circular.xml`
  Acceptance criteria (agent-executable): Tests prove battery configuration cannot invoke `R.layout.ai_quota_widget_dashboard_immediate`, and dashboard configuration cannot call circular renderer.
  QA scenarios:
  - happy GREEN: run focused Gradle command; Evidence `.omo/evidence/dashboard-widget-renderer-ownership-20260703/t03-green-config-provider-routing.txt`
  - failure guard: source scan confirms `DashboardWidgetImmediateUpdater.schedule` contains provider class check and `DashboardWidgetConfigureActivity` branches on `AIQuotaUnifiedGlanceWidgetReceiver::class.java.name` / `AIQuotaCircularWidgetProvider::class.java.name`; Evidence `.omo/evidence/dashboard-widget-renderer-ownership-20260703/t03-provider-guard-scan.txt`
  Commit: Y | fix(widget): 위젯 설정 갱신을 provider별로 분리

- [ ] T04. Replace global dashboard Glance update with dashboard RemoteViews updateAll
  What to do / Must NOT do: In `UsageSurfaceRefresher.updateWidgetSurfaces`, replace `AIQuotaUnifiedGlanceWidget().updateAll(appContext)` with the dashboard RemoteViews updateAll path from T02. Keep `AIQuotaCircularWidgetProvider.updateAll(appContext)` and `ProviderUsageWidgetProvider.updateAll(appContext)` unchanged. This file is in the providers package but is widget-surface infrastructure; do not touch provider-specific collectors or repositories.
  Parallelization: Wave 3 | Blocked by: T02 | Blocks: T05
  References:
  - `android/app/src/main/java/com/aiquota/mobile/providers/UsageSurfaceRefresher.kt:52-64`
  - `android/app/src/main/java/com/aiquota/mobile/providers/UsageSurfaceRefresher.kt:128-134`
  - `android/app/src/main/java/com/aiquota/mobile/widget/WidgetManualRefreshReceiver.kt:12-20`
  Acceptance criteria (agent-executable): `UsageSurfaceRefresherTest` proves no `AIQuotaUnifiedGlanceWidget().updateAll(appContext)` call remains and dashboard updateAll is the RemoteViews path.
  QA scenarios:
  - happy GREEN: run focused Gradle command; Evidence `.omo/evidence/dashboard-widget-renderer-ownership-20260703/t04-green-surface-refresher.txt`
  - failure guard: `git diff -- android/app/src/main/java/com/aiquota/mobile/providers | grep -E "Glm|Claude|Codex|Cursor|Gemini|Copilot|WebLogin|Collector|Native"` must show no unrelated provider implementation changes except `UsageSurfaceRefresher.kt`; Evidence `.omo/evidence/dashboard-widget-renderer-ownership-20260703/t04-provider-scope-scan.txt`
  Commit: Y | fix(widget): 전역 대시보드 갱신 경로 통일

- [ ] T05. Focused regression and build verification
  What to do / Must NOT do: Run focused tests, build debug, run diff checks, and scan for forbidden provider/DOM/fallback changes. Do not broaden into provider QA.
  Parallelization: Wave 3 | Blocked by: T02, T03, T04 | Blocks: T06
  References:
  - `android/app/src/test/java/com/aiquota/mobile/widget/DashboardWidgetConfigureActivityTest.kt`
  - `android/app/src/test/java/com/aiquota/mobile/widget/DashboardWidgetImmediateUpdaterTest.kt`
  - `android/app/src/test/java/com/aiquota/mobile/widget/DashboardWidgetImmediateRendererTest.kt`
  - `android/app/src/test/java/com/aiquota/mobile/providers/UsageSurfaceRefresherTest.kt`
  Acceptance criteria (agent-executable):
  - Focused Gradle command exits 0.
  - `:app:assembleDebug` exits 0.
  - `git diff --check` exits 0 for touched files.
  - Forbidden scan finds no DOM scan/fallback/provider collection additions.
  QA scenarios:
  - happy GREEN: focused Gradle command; Evidence `.omo/evidence/dashboard-widget-renderer-ownership-20260703/t05-focused-tests.txt`
  - build GREEN: assembleDebug command; Evidence `.omo/evidence/dashboard-widget-renderer-ownership-20260703/t05-assemble-debug.txt`
  - failure guard: diff/forbidden scans; Evidence `.omo/evidence/dashboard-widget-renderer-ownership-20260703/t05-scope-guardrails.txt`
  Commit: N | chore(widget): 위젯 렌더러 회귀 검증

- [ ] T06. Real emulator home-screen QA for no flash and no flicker
  What to do / Must NOT do: Install the debug APK and drive the actual launcher widgets. Use existing dashboard/battery widgets if present; if absent, pin them through the app and record the setup. Capture screenshots, XML, logcat markers, and action logs. Do not rely on tests alone.
  Parallelization: Wave 4 | Blocked by: T05 | Blocks: final
  References:
  - `android/app/src/main/java/com/aiquota/mobile/widget/WidgetRefreshActions.kt:7-34`
  - `android/app/src/main/java/com/aiquota/mobile/widget/WidgetManualRefreshReceiver.kt:12-20`
  - `android/app/src/main/java/com/aiquota/mobile/widget/PinnedWidgetRequester.kt:42-58`
  Acceptance criteria (agent-executable):
  - Battery scenario: after changing battery widget settings, screenshots/XML at under 1s, 5s, and 10s show battery/circular layout only; dashboard row layout never appears in that widget slot.
  - Dashboard scenario: after changing dashboard widget settings, screenshots/XML at under 1s, 5s, and 10s show the changed provider set continuously; no old provider set reappears.
  - Manual/global refresh scenario: broadcast `u.sage.widget.action.REFRESH` for the dashboard appWidgetId; 1s/5s/10s screenshots remain on the same dashboard renderer and provider set.
  QA scenarios:
  - battery no-flash:
    `adb -s emulator-5554 shell dumpsys appwidget` to find battery id, open `DashboardWidgetConfigureActivity --ei appWidgetId <batteryId>`, change hidden provider, press Done, capture under 1s/5s/10s.
    Evidence `.omo/evidence/dashboard-widget-renderer-ownership-20260703/t06-battery-no-dashboard-flash/`
  - dashboard no-flicker:
    `adb -s emulator-5554 shell dumpsys appwidget` to find dashboard id, open `DashboardWidgetConfigureActivity --ei appWidgetId <dashboardId>`, change hidden provider, press Done, capture under 1s/5s/10s.
    Evidence `.omo/evidence/dashboard-widget-renderer-ownership-20260703/t06-dashboard-no-flicker/`
  - global refresh no-overwrite:
    `adb -s emulator-5554 shell am broadcast -n com.aiquota.mobile/.widget.WidgetManualRefreshReceiver -a u.sage.widget.action.REFRESH --ei com.aiquota.mobile.widget.extra.APP_WIDGET_ID <dashboardId>`, capture under 1s/5s/10s.
    Evidence `.omo/evidence/dashboard-widget-renderer-ownership-20260703/t06-dashboard-global-refresh/`
  Commit: Y | test(widget): 대시보드와 배터리 위젯 실기기 검증 증거 추가

## Final verification wave
> Runs in parallel after ALL todos. ALL must APPROVE. Surface results and wait for the user's explicit okay before declaring complete.
- [ ] F1. Plan compliance audit
  - Confirm every touched production file is listed in this plan or justified as a compile-only import.
  - Evidence `.omo/evidence/dashboard-widget-renderer-ownership-20260703/f1-plan-compliance.txt`
- [ ] F2. Code quality review
  - Review diff for unnecessary abstractions, component rename risk, and provider scope creep.
  - Evidence `.omo/evidence/dashboard-widget-renderer-ownership-20260703/f2-code-quality.txt`
- [ ] F3. Real manual QA
  - Re-check T06 evidence directories contain screenshots/XML/action logs for all three scenarios.
  - Evidence `.omo/evidence/dashboard-widget-renderer-ownership-20260703/f3-real-qa-index.txt`
- [ ] F4. Scope fidelity
  - Run diff scans proving no provider login/session/collector/native bridge/DOM fallback changes were introduced.
  - Evidence `.omo/evidence/dashboard-widget-renderer-ownership-20260703/f4-scope-fidelity.txt`

## Commit strategy
- Commit 1: `fix(widget): 대시보드 위젯 렌더러 소유권 통일`
  - Include dashboard receiver/renderer and related tests.
- Commit 2: `fix(widget): 위젯 설정 갱신을 provider별로 분리`
  - Include configuration routing and battery single-widget update helper if needed.
- Commit 3: `fix(widget): 전역 대시보드 갱신 경로 통일`
  - Include `UsageSurfaceRefresher.kt` widget-surface change and tests.
- Commit 4: `test(widget): 대시보드와 배터리 위젯 실기기 검증 추가`
  - Include `.omo/evidence/dashboard-widget-renderer-ownership-20260703/` evidence only if the repo convention accepts evidence commits; otherwise leave evidence untracked and report paths.
- If combining commits is necessary due shared tests, use one Conventional Commit:
  `fix(widget): 위젯 렌더링 소유권 충돌 해소`
  with footer `Plan: .omo/plans/dashboard-widget-renderer-ownership-20260703.md`.

## Success criteria
- Battery widget setting changes never display dashboard layout in the battery widget slot.
- Dashboard widget setting changes apply within 1 second and remain stable at 5 and 10 seconds.
- Dashboard widget manual/global refresh does not switch between Glance and RemoteViews appearances.
- Existing dashboard launcher component remains `.widget.AIQuotaUnifiedGlanceWidgetReceiver`.
- Battery widget remains `.widget.AIQuotaCircularWidgetProvider`.
- Focused widget tests and debug build pass.
- No provider login/session/collector/native bridge/DOM fallback changes are present in the final diff.
