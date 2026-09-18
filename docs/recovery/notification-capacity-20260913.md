# Expanded notification capacity — 2026-09-13

Expanded usage notifications now show up to 12 account gauges, increased from 8.
The two columns each support six rows. Entries are balanced between columns for
smaller account counts; unused slots are hidden. Collapsed notifications remain
limited to four entries to preserve label width. More than 12 entries are still capped.

Validation: 15 selected Android tests passed with no failures or skips, including
12-account identity/value retention, RemoteViews inflation for 12/9/7/1/0 entries,
and hidden-slot checks. Run these resource tests with:

```
./scripts/build-recovered-android.sh :app:testDebugUnitTest --tests '*AccountUsageNotificationTest' --tests '*NotificationSixProvidersTest' -Paiquota.testIncludeAndroidResources=true
```

Robolectric uses API 32 and Application with explicit main-process metadata for
account authority tests. Initial resource/JDK/test-fixture configuration failures
were corrected; no assertions were removed or skipped.

Debug APK build and mobile-source tests passed; git diff --check passed.
Installed with adb install -r on emulator-5580, preserving existing data. The
expanded notification visibly displays the seven available real accounts in
balanced columns. Twelve-entry layout inflation was tested with synthetic data;
12 real logged-in accounts and vendor devices were not tested.

APK: artifacts/recovered-53/ai-quota-1.2.0-54-debug-notification-12.apk
Screenshot: artifacts/recovered-53/notification-12-emulator.png

Per user instruction, AAB creation/upload is deferred until upload-key replacement
is complete. No Play Console changes were made during this task.
