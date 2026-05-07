# Android Foreground Refresh Design

## Summary

AI Usage Mobile should keep the current conservative sync model by default while offering an opt-in precise refresh mode for users who want Android widgets and the pinned notification to stay closer to the Windows desktop countdown.

The approved model is:

- App in foreground: refresh latest snapshot every 1 minute.
- App in background or stopped: keep the existing WorkManager-based 5 minute refresh fallback.
- Home screen widgets: render only from local display cache, then update after app, worker, or service refresh.
- Pinned notification: remain cache-based and silent.
- Optional precise mode: after user approval, run a data sync foreground service that refreshes approximately every 1 minute and updates both cache-backed surfaces.

This design keeps Play Store and battery risk lower than forcing a foreground service for every user.

## Current Context

The Android app currently uses:

- `MainActivity` foreground loop with `delay(60_000)` for in-app refresh.
- `SnapshotRepository.scheduleWidgetRefresh(uid)` with `OneTimeWorkRequestBuilder<SnapshotSyncWorker>()`, 5 minute delay, and `ExistingWorkPolicy.REPLACE`.
- `SnapshotSyncWorker` to refresh Firestore snapshot, write `WidgetSnapshotCache`, update pinned notification, and call `AIUsageGlanceWidget().updateAll(context)`.
- AppWidget XML `android:updatePeriodMillis="1800000"`, which Android limits to no more than once every 30 minutes.

The practical problem is that widget countdown text is rendered statically. If Android delays background work, the cached raw snapshot can still be correct while the rendered countdown appears older than the Windows desktop app.

## Goals

- Provide near-1-minute refresh when the user explicitly accepts the persistent foreground behavior.
- Preserve the existing 5 minute WorkManager refresh as the default and fallback.
- Keep widgets and notification consistent with the active providers and order in the Windows snapshot.
- Avoid provider credentials, raw logs, local paths, and API tokens in widget or notification cache.
- Make the behavior clear in the app so users understand why a persistent notification is required.

## Non-Goals

- Do not use exact alarms for 1 minute periodic refresh.
- Do not request special alarm permissions.
- Do not start a foreground service automatically after boot.
- Do not force all users into foreground service mode.
- Do not change Windows upload behavior in this repo.
- Do not implement iOS or Apple sign-in as part of this feature.

## Android Policy Constraints

Android AppWidget `updatePeriodMillis` cannot deliver updates more often than once every 30 minutes, so 1 minute widget refresh must be driven by app code rather than widget metadata.

Android foreground services require a visible ongoing notification and, on modern Android versions, an appropriate foreground service type. The matching type for this feature is `dataSync`, because the service fetches cloud data and updates local display state.

For Android 13 and later, notification permission is also required before the app can show the persistent notification. If notification permission is missing, precise mode cannot start and the app should fall back to WorkManager.

References:

- Android AppWidget `updatePeriodMillis`: https://developer.android.com/reference/android/appwidget/AppWidgetProviderInfo#updatePeriodMillis
- Android foreground service types: https://developer.android.com/develop/background-work/services/fgs/service-types

## User Experience

### First Run Prompt

After login succeeds and the app has a signed-in user, show a one-time prompt:

Title:

- English: `Keep widgets closer to real time?`
- Korean: `위젯을 더 실시간에 가깝게 유지할까요?`

Body:

- English: `AI Usage can keep a silent pinned notification active to refresh limits about every minute. If you skip this, widgets refresh in the background about every 5 minutes when Android allows it.`
- Korean: `AI Usage는 조용한 고정 알림을 유지해 약 1분마다 한도를 갱신할 수 있습니다. 건너뛰면 Android가 허용할 때 백그라운드에서 약 5분 간격으로 위젯을 갱신합니다.`

Actions:

- `Enable 1-minute refresh` / `1분 갱신 켜기`
- `Use standard refresh` / `기본 갱신 사용`

The prompt should not block basic app usage.

### Settings

Add a settings row near the existing status bar gauges option:

- Label: `1-minute pinned refresh` / `1분 고정 갱신`
- Description: `Keeps a silent notification active to refresh widgets more often.` / `조용한 고정 알림을 유지해 위젯을 더 자주 갱신합니다.`

States:

- Off: foreground service stopped, WorkManager remains scheduled.
- On: foreground service starts after notification permission is granted.
- Permission missing: show a short action to request notification permission.

## Architecture

### New Components

`ForegroundRefreshService`

- A standard Android `Service`.
- Declared with `android:foregroundServiceType="dataSync"`.
- Starts with `ContextCompat.startForegroundService`.
- Immediately calls `startForeground` with the existing AI Usage notification channel.
- Runs a coroutine loop while active:
  - read stored uid from `SnapshotRepository.storedUid()`
  - call `SnapshotRepository.refreshLatestSnapshot(uid)`
  - delay 60 seconds
- Stops itself if no uid is stored or sign-out clears the user.

`ForegroundRefreshController`

- Owns preference state for precise refresh:
  - `precise_refresh_enabled`
  - `precise_refresh_prompt_seen`
- Provides start/stop helpers used by `MainActivity`, settings UI, and sign-out flow.
- Keeps WorkManager fallback scheduled even when foreground mode is enabled.

### Existing Components

`SnapshotRepository`

- Remains the single path for Firestore fetch, cache write, notification update, and Glance widget update.
- No duplicate Firestore parsing logic should be introduced in the service.

`SnapshotSyncWorker`

- Continues as the 5 minute background fallback.
- Should not be cancelled when precise mode starts.
- May run near the foreground service; duplicate refreshes are acceptable because each write overwrites the display cache.

`UsageLimitNotificationController`

- Continues to build the visual pinned notification.
- Needs a foreground-compatible notification builder path so the service can call `startForeground` with the same visual style.

## Data Flow

Standard mode:

1. User signs in.
2. App refreshes every 1 minute while foreground.
3. `SnapshotSyncWorker` refreshes about every 5 minutes in background when Android schedules it.
4. Each refresh writes `WidgetSnapshotCache`.
5. Notification and Glance widgets render from cache.

Precise mode:

1. User enables 1-minute pinned refresh.
2. App verifies notification permission.
3. App starts `ForegroundRefreshService`.
4. Service posts the ongoing silent notification.
5. Service refreshes snapshot every 60 seconds.
6. Each refresh writes cache, updates pinned notification, and calls Glance `updateAll`.
7. WorkManager fallback remains scheduled.

Sign-out:

1. Clear stored uid.
2. Stop foreground service.
3. Cancel pinned notification.
4. Cancel or replace background work using existing sign-out behavior.

## Error Handling

- If Firestore refresh fails, the service should keep running and retry after the next 60 second delay.
- If there is no stored uid, stop the service.
- If notification permission is denied, disable precise mode and keep WorkManager fallback.
- If Android kills the service, the app should restart it only when the user opens the app or toggles the setting again. Do not auto-restart from boot.
- Provider-level errors remain represented by the snapshot provider status and should still render in the app, widget, and notification.

## Battery And Store Positioning

The Play Store-safe framing is:

- Default background sync remains WorkManager-based.
- 1-minute mode is explicit and user controlled.
- The persistent notification makes background activity visible.
- The service performs cloud sync for user-visible widgets and notification gauges.

Store listing and privacy text should avoid promising exact 1 minute delivery. Use wording such as `about every minute` or `near real time`.

## Testing Plan

Unit and source tests:

- Verify manifest contains `FOREGROUND_SERVICE` and `FOREGROUND_SERVICE_DATA_SYNC`.
- Verify service is declared with `foregroundServiceType="dataSync"`.
- Verify settings strings exist in English and Korean.
- Verify sign-out path stops foreground refresh.

Android build:

- Run `:app:testDebugUnitTest`.
- Run `:app:assembleDebug`.

Emulator QA:

- Start app with signed-in user.
- Enable 1-minute pinned refresh.
- Confirm notification permission flow on Android 13+.
- Confirm foreground service notification appears and is silent.
- Put app in background.
- Confirm widget cache `updated_at` changes after approximately 1 minute.
- Confirm home widget and expanded notification update after service refresh.
- Disable setting and confirm service stops while WorkManager fallback remains.

## Open Risks

- Android may still delay or stop foreground work under aggressive OEM battery policies.
- A persistent notification can feel heavy for casual users, so the prompt must make the trade-off clear.
- Play Store review may ask why foreground service is needed; release notes and Data Safety text should describe user-visible syncing for widgets and notification gauges.
