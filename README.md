# AI Usage Mobile Sync

Android-first mobile sync for AI Usage. The current MVP targets the free Firebase model:

- Android app signs in with Firebase Auth using Google.
- Windows app will sign in with the same Firebase account.
- Firestore stores device records and per-device latest snapshots.
- The Android app focuses the home screen on remaining AI usage limits for the selected device.
- Device selection, rename, refresh, and sign-out live in the settings view.
- The Android widget reads only from local cache.

## Current scope

- Android app: active
- Android widget: active
- Firestore rules: direct user-owned read/write model
- iOS app: on hold until explicitly resumed
- Cloud Functions pairing flow: legacy design, not required for the free plan

## Firestore paths

- `/users/{uid}`
- `/users/{uid}/devices/{deviceId}`
- `/users/{uid}/devices/{deviceId}/snapshots/latest`

## Firebase setup

Required:

- Firestore database
- Firebase Authentication with the Google provider enabled
- Android app registered in Firebase
- `google-services.json` placed at `android/app/google-services.json`

Not required for the free plan:

- Blaze billing
- Cloud Functions
- Secret Manager
- Pairing codes

## Android flow

1. Sign in with Google.
2. Load the user's device list from Firestore.
3. Pick the most recent device by default.
4. Render active providers only, using remaining limit values such as `80% left`.
5. Keep device management and renaming in settings.
6. Update the widget cache from the selected snapshot.

## Refresh behavior

- While the app is open, the selected snapshot refreshes every 60 seconds.
- In the background, a best-effort WorkManager job refreshes the widget cache every 5 minutes.
- Android may delay background work based on battery, idle, and manufacturer policies.

## Commands

```powershell
npm.cmd test
npm.cmd run test:mobile
npm.cmd run lint
```

```powershell
$env:JAVA_HOME='C:\Program Files\Android\Android Studio\jbr'
$env:ANDROID_HOME='C:\Users\datell1357\AppData\Local\Android\Sdk'
$env:ANDROID_SDK_ROOT='C:\Users\datell1357\AppData\Local\Android\Sdk'
& 'C:\Users\datell1357\.gradle\wrapper\dists\gradle-8.10.2-bin\a04bxjujx95o3nb99gddekhwo\gradle-8.10.2\bin\gradle.bat' -p android :app:assembleDebug --console=plain
& 'C:\Users\datell1357\.gradle\wrapper\dists\gradle-8.10.2-bin\a04bxjujx95o3nb99gddekhwo\gradle-8.10.2\bin\gradle.bat' -p android :app:installDebug --console=plain
```

## Next work

- Add Windows Firebase Auth sign-in.
- Write Windows snapshots directly to Firestore.
- Run end-to-end verification with real device documents.
