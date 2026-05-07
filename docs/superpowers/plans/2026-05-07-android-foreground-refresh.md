# Android Foreground Refresh Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** Add an opt-in Android foreground service that refreshes AI Usage snapshot cache, widgets, and pinned notification about every minute while keeping the existing WorkManager 5 minute fallback.

**Architecture:** `SnapshotRepository` remains the only Firestore/cache/widget update path. A new `ForegroundRefreshController` owns user preferences and service start/stop, while `ForegroundRefreshService` runs a coroutine loop and calls the repository every 60 seconds. `MainActivity` exposes first-run opt-in and settings controls, including notification permission handling.

**Tech Stack:** Android Kotlin, Jetpack Compose, Firebase Auth/Firestore, WorkManager, Glance AppWidget, Android foreground service with `dataSync`, Node source tests, Gradle Android unit tests.

---

## File Structure

- Modify: `test/mobile-source.test.js`
  - Add source-level assertions for foreground service manifest entries, controller/service classes, strings, sign-out integration, and notification builder helper.
- Modify: `android/app/src/main/AndroidManifest.xml`
  - Add foreground service permissions and declare `ForegroundRefreshService` with `android:foregroundServiceType="dataSync"`.
- Create: `android/app/src/main/java/com/aiusage/mobile/sync/ForegroundRefreshController.kt`
  - Own precise refresh preferences and service start/stop helpers.
- Create: `android/app/src/main/java/com/aiusage/mobile/sync/ForegroundRefreshService.kt`
  - Run the foreground 60 second refresh loop.
- Modify: `android/app/src/main/java/com/aiusage/mobile/notification/UsageLimitNotificationController.kt`
  - Expose a foreground-compatible notification builder.
- Modify: `android/app/src/main/java/com/aiusage/mobile/MainActivity.kt`
  - Add one-time prompt, settings toggle, permission handling, and sign-out stop.
- Modify: `android/app/src/main/res/values/strings.xml`
  - Add English strings for precise refresh prompt and settings.
- Modify: `android/app/src/main/res/values-ko/strings.xml`
  - Add Korean strings for precise refresh prompt and settings.

---

### Task 1: Source Test Coverage

**Files:**
- Modify: `test/mobile-source.test.js`

- [ ] **Step 1: Add failing source assertions**

In the `Android app has device-list snapshot sync and non-placeholder widget cache` test, add these source reads after `notificationController`:

```js
const manifest = source("android/app/src/main/AndroidManifest.xml");
const foregroundController = source("android/app/src/main/java/com/aiusage/mobile/sync/ForegroundRefreshController.kt");
const foregroundService = source("android/app/src/main/java/com/aiusage/mobile/sync/ForegroundRefreshService.kt");
```

In the same test, add these assertions after the notification assertions:

```js
assert.match(manifest, /android\.permission\.FOREGROUND_SERVICE/);
assert.match(manifest, /android\.permission\.FOREGROUND_SERVICE_DATA_SYNC/);
assert.match(manifest, /ForegroundRefreshService/);
assert.match(manifest, /android:foregroundServiceType="dataSync"/);
assert.match(foregroundController, /KEY_PRECISE_REFRESH_ENABLED/);
assert.match(foregroundController, /KEY_PRECISE_REFRESH_PROMPT_SEEN/);
assert.match(foregroundController, /startForegroundService/);
assert.match(foregroundController, /stopService/);
assert.match(foregroundService, /class ForegroundRefreshService/);
assert.match(foregroundService, /startForeground/);
assert.match(foregroundService, /delay\(60_000\)/);
assert.match(foregroundService, /refreshLatestSnapshot/);
assert.match(notificationController, /foregroundNotification/);
```

In the `Android main UI uses Firebase auth with device list, rename flow, and snapshot refresh` test, add these assertions after the status bar gauge string assertions:

```js
assert.match(main, /ForegroundRefreshController/);
assert.match(main, /preciseRefreshEnabled/);
assert.match(main, /preciseRefreshPromptSeen/);
assert.match(main, /settings_precise_refresh/);
assert.match(main, /precise_refresh_prompt_title/);
assert.match(main, /stopPreciseRefresh/);
assert.match(strings, /name="settings_precise_refresh">1-minute pinned refresh/);
assert.match(strings, /name="precise_refresh_prompt_title">Keep widgets closer to real time\?/);
assert.match(koreanStrings, /name="settings_precise_refresh">1분 고정 갱신/);
assert.match(koreanStrings, /name="precise_refresh_prompt_title">위젯을 더 실시간에 가깝게 유지할까요\?/);
```

- [ ] **Step 2: Run test to verify it fails**

Run:

```powershell
npm.cmd test -- test/mobile-source.test.js
```

Expected: FAIL because `ForegroundRefreshController.kt`, `ForegroundRefreshService.kt`, manifest entries, strings, and UI integration do not exist yet.

- [ ] **Step 3: Commit is not allowed yet**

Do not commit this task alone. It intentionally leaves the repo failing until Task 2 and Task 3 add the implementation.

---

### Task 2: Manifest Permissions And Service Declaration

**Files:**
- Modify: `android/app/src/main/AndroidManifest.xml`

- [ ] **Step 1: Add foreground service permissions**

At the top of the manifest, after `POST_NOTIFICATIONS`, add:

```xml
<uses-permission android:name="android.permission.FOREGROUND_SERVICE" />
<uses-permission android:name="android.permission.FOREGROUND_SERVICE_DATA_SYNC" />
```

- [ ] **Step 2: Declare foreground refresh service**

Inside `<application>`, before the widget receiver, add:

```xml
<service
  android:name=".sync.ForegroundRefreshService"
  android:exported="false"
  android:foregroundServiceType="dataSync" />
```

- [ ] **Step 3: Run source test**

Run:

```powershell
npm.cmd test -- test/mobile-source.test.js
```

Expected: Still FAIL because controller/service/classes are not implemented yet.

- [ ] **Step 4: Commit is not allowed yet**

Do not commit until the source test passes in a later task.

---

### Task 3: Foreground Refresh Controller

**Files:**
- Create: `android/app/src/main/java/com/aiusage/mobile/sync/ForegroundRefreshController.kt`

- [ ] **Step 1: Create controller**

Create `ForegroundRefreshController.kt` with:

```kotlin
package com.aiusage.mobile.sync

import android.content.Context
import android.content.Intent
import android.os.Build
import androidx.core.content.ContextCompat

class ForegroundRefreshController(private val context: Context) {
    private val preferences = context.getSharedPreferences(PREFS, Context.MODE_PRIVATE)

    fun preciseRefreshEnabled(): Boolean {
        return preferences.getBoolean(KEY_PRECISE_REFRESH_ENABLED, false)
    }

    fun setPreciseRefreshEnabled(enabled: Boolean) {
        preferences.edit().putBoolean(KEY_PRECISE_REFRESH_ENABLED, enabled).apply()
        if (enabled) {
            startPreciseRefresh()
        } else {
            stopPreciseRefresh()
        }
    }

    fun preciseRefreshPromptSeen(): Boolean {
        return preferences.getBoolean(KEY_PRECISE_REFRESH_PROMPT_SEEN, false)
    }

    fun markPreciseRefreshPromptSeen() {
        preferences.edit().putBoolean(KEY_PRECISE_REFRESH_PROMPT_SEEN, true).apply()
    }

    fun startPreciseRefresh() {
        val intent = Intent(context, ForegroundRefreshService::class.java)
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
            ContextCompat.startForegroundService(context, intent)
        } else {
            context.startService(intent)
        }
    }

    fun stopPreciseRefresh() {
        context.stopService(Intent(context, ForegroundRefreshService::class.java))
    }

    fun syncServiceState() {
        if (preciseRefreshEnabled()) {
            startPreciseRefresh()
        } else {
            stopPreciseRefresh()
        }
    }

    companion object {
        private const val PREFS = "ai_usage_foreground_refresh"
        const val KEY_PRECISE_REFRESH_ENABLED = "precise_refresh_enabled"
        const val KEY_PRECISE_REFRESH_PROMPT_SEEN = "precise_refresh_prompt_seen"
    }
}
```

- [ ] **Step 2: Run source test**

Run:

```powershell
npm.cmd test -- test/mobile-source.test.js
```

Expected: Still FAIL because `ForegroundRefreshService` and UI strings are not implemented.

- [ ] **Step 3: Commit is not allowed yet**

Do not commit until the source test passes in a later task.

---

### Task 4: Foreground Notification Builder

**Files:**
- Modify: `android/app/src/main/java/com/aiusage/mobile/notification/UsageLimitNotificationController.kt`

- [ ] **Step 1: Add a foreground-compatible notification function**

Inside `UsageLimitNotificationController`, add this function near `updateFromCache`:

```kotlin
fun foregroundNotification(context: Context): android.app.Notification {
    val snapshotJson = WidgetSnapshotCache(context).readState().snapshotJson
    val content = buildUsageNotificationContent(snapshotJson)
    createChannel(context)
    return buildNotification(context, content)
}
```

- [ ] **Step 2: Extract notification construction**

Replace the inline `val notification = NotificationCompat.Builder(...)...build()` block in `update` with:

```kotlin
val notification = buildNotification(context, content)
```

Add this private helper below `createChannel`:

```kotlin
private fun buildNotification(context: Context, content: UsageNotificationContent): android.app.Notification {
    return NotificationCompat.Builder(context, CHANNEL_ID)
        .setSmallIcon(R.drawable.ic_stat_ai_usage)
        .setContentTitle(content.compactTitle)
        .setContentText(content.compactText)
        .setStyle(NotificationCompat.DecoratedCustomViewStyle())
        .setCustomContentView(compactRemoteViews(context, content))
        .setCustomBigContentView(remoteViews(context, content))
        .setContentIntent(contentIntent(context))
        .setOngoing(true)
        .setOnlyAlertOnce(true)
        .setSilent(true)
        .setPriority(NotificationCompat.PRIORITY_LOW)
        .setShowWhen(false)
        .build()
}
```

- [ ] **Step 3: Run source test**

Run:

```powershell
npm.cmd test -- test/mobile-source.test.js
```

Expected: Still FAIL because service and UI strings are not implemented.

---

### Task 5: Foreground Refresh Service

**Files:**
- Create: `android/app/src/main/java/com/aiusage/mobile/sync/ForegroundRefreshService.kt`

- [ ] **Step 1: Create service**

Create `ForegroundRefreshService.kt` with:

```kotlin
package com.aiusage.mobile.sync

import android.app.Service
import android.content.Intent
import android.os.Build
import android.os.IBinder
import android.content.pm.ServiceInfo
import com.aiusage.mobile.notification.UsageLimitNotificationController
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.Job
import kotlinx.coroutines.SupervisorJob
import kotlinx.coroutines.cancel
import kotlinx.coroutines.delay
import kotlinx.coroutines.isActive
import kotlinx.coroutines.launch

class ForegroundRefreshService : Service() {
    private val scope = CoroutineScope(SupervisorJob() + Dispatchers.IO)
    private var refreshJob: Job? = null

    override fun onBind(intent: Intent?): IBinder? = null

    override fun onStartCommand(intent: Intent?, flags: Int, startId: Int): Int {
        val notification = UsageLimitNotificationController.foregroundNotification(this)
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.Q) {
            startForeground(NOTIFICATION_ID, notification, ServiceInfo.FOREGROUND_SERVICE_TYPE_DATA_SYNC)
        } else {
            startForeground(NOTIFICATION_ID, notification)
        }
        startRefreshLoop()
        return START_STICKY
    }

    override fun onDestroy() {
        refreshJob?.cancel()
        scope.cancel()
        super.onDestroy()
    }

    private fun startRefreshLoop() {
        if (refreshJob?.isActive == true) return
        refreshJob = scope.launch {
            val repository = SnapshotRepository(applicationContext)
            while (isActive) {
                val uid = repository.storedUid()
                if (uid.isNullOrBlank()) {
                    stopSelf()
                    return@launch
                }
                runCatching {
                    repository.refreshLatestSnapshot(uid)
                }
                delay(60_000)
            }
        }
    }

    private companion object {
        const val NOTIFICATION_ID = 1001
    }
}
```

- [ ] **Step 2: Run source test**

Run:

```powershell
npm.cmd test -- test/mobile-source.test.js
```

Expected: Still FAIL because strings and MainActivity integration are not complete.

---

### Task 6: Strings

**Files:**
- Modify: `android/app/src/main/res/values/strings.xml`
- Modify: `android/app/src/main/res/values-ko/strings.xml`

- [ ] **Step 1: Add English strings**

In `values/strings.xml`, before `settings_sign_out`, add:

```xml
<string name="settings_precise_refresh">1-minute pinned refresh</string>
<string name="settings_precise_refresh_description">Keeps a silent notification active to refresh widgets more often.</string>
<string name="precise_refresh_prompt_title">Keep widgets closer to real time?</string>
<string name="precise_refresh_prompt_body">AI Usage can keep a silent pinned notification active to refresh limits about every minute. If you skip this, widgets refresh in the background about every 5 minutes when Android allows it.</string>
<string name="precise_refresh_enable">Enable 1-minute refresh</string>
<string name="precise_refresh_standard">Use standard refresh</string>
```

- [ ] **Step 2: Add Korean strings**

In `values-ko/strings.xml`, before `settings_sign_out`, add:

```xml
<string name="settings_precise_refresh">1분 고정 갱신</string>
<string name="settings_precise_refresh_description">조용한 고정 알림을 유지해 위젯을 더 자주 갱신합니다.</string>
<string name="precise_refresh_prompt_title">위젯을 더 실시간에 가깝게 유지할까요?</string>
<string name="precise_refresh_prompt_body">AI Usage는 조용한 고정 알림을 유지해 약 1분마다 한도를 갱신할 수 있습니다. 건너뛰면 Android가 허용할 때 백그라운드에서 약 5분 간격으로 위젯을 갱신합니다.</string>
<string name="precise_refresh_enable">1분 갱신 켜기</string>
<string name="precise_refresh_standard">기본 갱신 사용</string>
```

- [ ] **Step 3: Run source test**

Run:

```powershell
npm.cmd test -- test/mobile-source.test.js
```

Expected: Still FAIL because `MainActivity` integration is not complete.

---

### Task 7: MainActivity UI And Permission Flow

**Files:**
- Modify: `android/app/src/main/java/com/aiusage/mobile/MainActivity.kt`

- [ ] **Step 1: Add import**

Add:

```kotlin
import com.aiusage.mobile.sync.ForegroundRefreshController
```

- [ ] **Step 2: Add controller state**

Inside `AIUsageApp`, after `notificationEnabled`, add:

```kotlin
val foregroundRefreshController = remember { ForegroundRefreshController(activity.applicationContext) }
var preciseRefreshEnabled by remember { mutableStateOf(foregroundRefreshController.preciseRefreshEnabled()) }
var preciseRefreshPromptSeen by remember { mutableStateOf(foregroundRefreshController.preciseRefreshPromptSeen()) }
```

- [ ] **Step 3: Add helper to enable precise refresh**

Inside `AIUsageApp`, after `notificationPermissionLauncher`, add:

```kotlin
fun enablePreciseRefresh() {
    foregroundRefreshController.markPreciseRefreshPromptSeen()
    preciseRefreshPromptSeen = true
    preciseRefreshEnabled = true
    if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.TIRAMISU &&
        !UsageLimitNotificationController.canPostNotifications(activity)
    ) {
        notificationPermissionLauncher.launch(Manifest.permission.POST_NOTIFICATIONS)
        return
    }
    preciseRefreshEnabled = true
    notificationEnabled = true
    UsageLimitNotificationController.setEnabled(activity, true)
    foregroundRefreshController.setPreciseRefreshEnabled(true)
}

fun disablePreciseRefresh() {
    foregroundRefreshController.markPreciseRefreshPromptSeen()
    preciseRefreshPromptSeen = true
    preciseRefreshEnabled = false
    foregroundRefreshController.setPreciseRefreshEnabled(false)
}
```

- [ ] **Step 4: Update notification permission launcher**

Replace the launcher callback with:

```kotlin
) { granted ->
    notificationEnabled = granted
    UsageLimitNotificationController.setEnabled(activity, granted)
    if (granted) {
        UsageLimitNotificationController.updateFromCache(activity)
        if (foregroundRefreshController.preciseRefreshEnabled() || preciseRefreshEnabled) {
            preciseRefreshEnabled = true
            foregroundRefreshController.setPreciseRefreshEnabled(true)
        }
    } else {
        preciseRefreshEnabled = false
        foregroundRefreshController.setPreciseRefreshEnabled(false)
    }
}
```

- [ ] **Step 5: Sync service state on sign-in**

Inside `LaunchedEffect(currentUser?.uid)`, after `repository.scheduleWidgetRefresh(uid)`, add:

```kotlin
if (foregroundRefreshController.preciseRefreshEnabled() &&
    (Build.VERSION.SDK_INT < Build.VERSION_CODES.TIRAMISU || UsageLimitNotificationController.canPostNotifications(activity))
) {
    foregroundRefreshController.startPreciseRefresh()
}
```

- [ ] **Step 6: Pass precise refresh state into `SignedInContent`**

Add parameters to the `SignedInContent` call:

```kotlin
preciseRefreshEnabled = preciseRefreshEnabled,
preciseRefreshPromptSeen = preciseRefreshPromptSeen,
onPreciseRefreshEnabledChanged = { enabled ->
    if (enabled) {
        enablePreciseRefresh()
    } else {
        disablePreciseRefresh()
    }
},
onDismissPreciseRefreshPrompt = {
    foregroundRefreshController.markPreciseRefreshPromptSeen()
    preciseRefreshPromptSeen = true
},
```

Place them after `notificationEnabled = notificationEnabled`.

- [ ] **Step 7: Stop precise refresh on sign-out**

Inside `onSignOut`, after `repository.clearSignedInUser()`, add:

```kotlin
foregroundRefreshController.stopPreciseRefresh()
preciseRefreshEnabled = false
```

- [ ] **Step 8: Extend `SignedInContent` signature**

Add these parameters after `notificationEnabled`:

```kotlin
preciseRefreshEnabled: Boolean,
preciseRefreshPromptSeen: Boolean,
onPreciseRefreshEnabledChanged: (Boolean) -> Unit,
onDismissPreciseRefreshPrompt: () -> Unit,
```

- [ ] **Step 9: Render first-run prompt**

In `SignedInContent`, before `if (showSettings)`, add:

```kotlin
if (!preciseRefreshPromptSeen) {
    Surface(
        modifier = Modifier.fillMaxWidth(),
        shape = RoundedCornerShape(8.dp),
        color = Color.White,
        tonalElevation = 1.dp
    ) {
        Column(
            modifier = Modifier.padding(16.dp),
            verticalArrangement = Arrangement.spacedBy(10.dp)
        ) {
            Text(stringResource(R.string.precise_refresh_prompt_title), style = MaterialTheme.typography.titleMedium, fontWeight = FontWeight.Bold)
            Text(stringResource(R.string.precise_refresh_prompt_body), color = Color(0xFF64748B))
            Row(horizontalArrangement = Arrangement.spacedBy(8.dp)) {
                Button(onClick = { onPreciseRefreshEnabledChanged(true) }) {
                    Text(stringResource(R.string.precise_refresh_enable))
                }
                Button(onClick = onDismissPreciseRefreshPrompt) {
                    Text(stringResource(R.string.precise_refresh_standard))
                }
            }
        }
    }
}
```

- [ ] **Step 10: Extend settings signature**

Add these parameters to `SettingsPanel` call and signature after `notificationEnabled`:

```kotlin
preciseRefreshEnabled = preciseRefreshEnabled,
onPreciseRefreshEnabledChanged = onPreciseRefreshEnabledChanged,
```

And in the signature:

```kotlin
preciseRefreshEnabled: Boolean,
onPreciseRefreshEnabledChanged: (Boolean) -> Unit,
```

- [ ] **Step 11: Render settings toggle**

In `SettingsPanel`, after the status bar gauges row, add:

```kotlin
Row(
    modifier = Modifier.fillMaxWidth(),
    verticalAlignment = Alignment.CenterVertically
) {
    Column(modifier = Modifier.weight(1f)) {
        Text(stringResource(R.string.settings_precise_refresh), style = MaterialTheme.typography.titleMedium)
        Text(stringResource(R.string.settings_precise_refresh_description), color = Color(0xFF64748B))
    }
    Switch(
        checked = preciseRefreshEnabled,
        onCheckedChange = onPreciseRefreshEnabledChanged
    )
}
```

- [ ] **Step 12: Run source test**

Run:

```powershell
npm.cmd test -- test/mobile-source.test.js
```

Expected: PASS.

- [ ] **Step 13: Run Android build tests**

Run:

```powershell
$env:JAVA_HOME='C:\Program Files\Android\Android Studio\jbr'
$env:Path="$env:JAVA_HOME\bin;$env:Path"
& 'C:\Users\datell1357\.gradle\wrapper\dists\gradle-8.10.2-bin\a04bxjujx95o3nb99gddekhwo\gradle-8.10.2\bin\gradle.bat' -p android :app:testDebugUnitTest :app:assembleDebug
```

Expected: BUILD SUCCESSFUL.

- [ ] **Step 14: Commit implementation**

Run:

```powershell
git add test/mobile-source.test.js android/app/src/main/AndroidManifest.xml android/app/src/main/java/com/aiusage/mobile/sync/ForegroundRefreshController.kt android/app/src/main/java/com/aiusage/mobile/sync/ForegroundRefreshService.kt android/app/src/main/java/com/aiusage/mobile/notification/UsageLimitNotificationController.kt android/app/src/main/java/com/aiusage/mobile/MainActivity.kt android/app/src/main/res/values/strings.xml android/app/src/main/res/values-ko/strings.xml
git commit -m "Add Android foreground refresh mode"
```

---

### Task 8: Emulator Verification

**Files:**
- No source edits expected.
- Output artifact: `artifacts/android-foreground-refresh-notification.png`

- [ ] **Step 1: Install debug APK**

Run:

```powershell
$adb='C:\Users\datell1357\AppData\Local\Android\Sdk\platform-tools\adb.exe'
& $adb -s emulator-5554 install -r android\app\build\outputs\apk\debug\app-debug.apk
```

Expected: `Success`.

- [ ] **Step 2: Launch app**

Run:

```powershell
& $adb -s emulator-5554 shell monkey -p com.aiusage.mobile 1
```

Expected: app opens.

- [ ] **Step 3: Enable precise refresh manually in the app**

Use the UI prompt or settings switch:

- If notification permission dialog appears, allow it.
- Confirm the pinned notification remains visible and silent.

- [ ] **Step 4: Send app to background**

Run:

```powershell
& $adb -s emulator-5554 shell input keyevent KEYCODE_HOME
```

Expected: launcher is visible and app process remains active through foreground service.

- [ ] **Step 5: Capture cache before and after one minute**

Run:

```powershell
& $adb -s emulator-5554 shell run-as com.aiusage.mobile cat shared_prefs/ai_usage_widget_cache.xml
Start-Sleep -Seconds 75
& $adb -s emulator-5554 shell run-as com.aiusage.mobile cat shared_prefs/ai_usage_widget_cache.xml
```

Expected: `updated_at` changes or remains within the latest Windows upload cadence; the service should not crash. If Windows has not uploaded a newer snapshot, the service may refresh the same raw values but should still update notification/widget render timing.

- [ ] **Step 6: Open notification shade and screenshot**

Run:

```powershell
& $adb -s emulator-5554 shell cmd statusbar expand-notifications
& $adb -s emulator-5554 exec-out screencap -p > artifacts/android-foreground-refresh-notification.png
```

Expected: notification shade shows AI Usage pinned notification with current provider summary and gauges.

- [ ] **Step 7: Commit screenshot only if useful**

If the screenshot is needed for reporting, commit it:

```powershell
git add artifacts/android-foreground-refresh-notification.png
git commit -m "Capture foreground refresh notification QA"
```

If screenshots are not being tracked, leave it uncommitted and report the artifact path.

---

### Task 9: Final Verification And Push

**Files:**
- No source edits expected.

- [ ] **Step 1: Run full available verification**

Run:

```powershell
npm.cmd test
$env:JAVA_HOME='C:\Program Files\Android\Android Studio\jbr'
$env:Path="$env:JAVA_HOME\bin;$env:Path"
& 'C:\Users\datell1357\.gradle\wrapper\dists\gradle-8.10.2-bin\a04bxjujx95o3nb99gddekhwo\gradle-8.10.2\bin\gradle.bat' -p android :app:testDebugUnitTest :app:assembleDebug
git status --short
```

Expected:

- Node tests pass.
- Gradle build succeeds.
- `git status --short` is clean or contains only intentionally untracked local artifacts.

- [ ] **Step 2: Push branch**

Run:

```powershell
git push origin codex/phase1-mobile-sync-foundation
```

Expected: push succeeds.

- [ ] **Step 3: Slack report**

Send to `#3-진행보고`:

```text
*AI Usage Mobile 진행보고*
- 작업: Android foreground 1분 갱신 옵션 구현.
- 변경: dataSync foreground service, 사용자 승인 prompt, 설정 toggle, notification permission flow, WorkManager 5분 fallback 유지.
- 검증: Node tests, Gradle unit/build, emulator foreground notification/cache refresh QA.
- Commit: <commit hash>
- Branch: codex/phase1-mobile-sync-foundation
```

If emulator or build issues occur, send troubleshooting details to `#3-문제해결` with symptom, cause, fix, and residual risk.
