# AI Quota for Mobile

[English](#english) | [한국어](#korean)

---

## English

AI Quota for Mobile is an Android app for checking AI provider usage limits from one place. It supports a local-first dashboard, home screen widgets, and an optional pinned foreground refresh notification.

### Current Status

The Android app is being prepared for Google Play internal testing.

Current upload artifact:

```text
android/app/build/outputs/bundle/release/app-release.aab
```

### Features

- Local-first provider usage dashboard.
- Home screen widgets for quick quota checks.
- Optional pinned notification for foreground refresh.
- Manual and foreground-service refresh paths.
- Provider hide/reorder settings.
- Korean and English UI strings.
- Google Play release signing and store listing assets prepared.

### Supported Providers

| Provider | Status |
| --- | --- |
| Claude | Supported |
| Codex | Supported |
| Cursor | Supported |
| Grok | Supported |
| Kiro | Supported |
| OpenCode | Supported |
| GLM | Supported |
| Antigravity | Supported |
| Gemini | Supported |
| GitHub Copilot | Supported |

Debug builds expose the provider-card catalog. Claude and Codex can have multiple independently named cards; every other listed provider is single-card. Release builds keep this catalog disabled until a separate release decision. See [Provider-card operation](docs/provider-card-operation.md).

### Android Package

Google Play package name:

```text
com.aiquota.mobile
```

The Kotlin namespace is still `com.aiquota.mobile` internally. That is an implementation detail and does not change the Google Play package name.

### Privacy

- [Privacy Policy](docs/privacy-policy.html)
- [Account and Data Deletion](docs/account-deletion.html)

### Build From Source

Requirements:

- Windows development machine.
- Android Studio with Android SDK.
- JDK 17. Android Studio JBR works.
- Firebase project configured for Android package `com.aiquota.mobile`.
- `android/app/google-services.json`.
- Existing Gradle wrapper distribution or Gradle 8.10.2.

Run tests:

```powershell
npm.cmd test
```

```powershell
& '.\.tmp\tools\gradle-8.10.2\bin\gradle.bat' -p android :app:testDebugUnitTest
```

Build debug APK:

```powershell
& '.\.tmp\tools\gradle-8.10.2\bin\gradle.bat' -p android :app:assembleDebug
```

Build Google Play AAB:

```powershell
& '.\.tmp\tools\gradle-8.10.2\bin\gradle.bat' -p android :app:bundleRelease
```

Output:

```text
android/app/build/outputs/bundle/release/app-release.aab
```

### License

MIT

---

## Korean

AI Quota for Mobile은 여러 AI provider의 사용량을 한곳에서 확인하기 위한 Android 앱입니다. 로컬 우선 대시보드, 홈 화면 위젯, 선택 가능한 고정 알림 기반 foreground refresh를 제공합니다.

### 현재 상태

Android 앱은 Google Play 내부 테스트 등록을 준비 중입니다.

현재 업로드 산출물:

```text
android/app/build/outputs/bundle/release/app-release.aab
```

### 주요 기능

- 로컬 우선 provider 사용량 대시보드.
- 빠른 quota 확인을 위한 홈 화면 위젯.
- foreground refresh를 위한 선택 가능한 고정 알림.
- 수동 refresh와 foreground service refresh.
- provider 숨김 및 순서 변경 설정.
- 한국어와 영어 UI 문자열.
- Google Play release signing 및 스토어 등록 asset 준비.

### 지원 Provider

| Provider | 상태 |
| --- | --- |
| Claude | 지원 |
| Codex | 지원 |
| Cursor | 지원 |
| Grok | 지원 |
| Kiro | 지원 |
| OpenCode | 지원 |
| GLM | 지원 |
| Antigravity | 지원 |
| Gemini | 지원 |
| GitHub Copilot | 지원 |

Debug 빌드에서는 provider-card catalog를 사용할 수 있습니다. Claude와 Codex는 서로 독립적으로 이름을 붙인 여러 카드를 지원하고, 나머지 Provider는 한 개의 카드만 지원합니다. Release 빌드에서는 별도의 출시 결정 전까지 이 기능이 비활성화됩니다. 자세한 내용은 [Provider-card 운영 안내](docs/provider-card-operation.md)를 참고하세요.

### Android 패키지

Google Play 패키지 이름:

```text
com.aiquota.mobile
```

Kotlin namespace는 내부 구현 사항으로 `com.aiquota.mobile`을 유지합니다. Google Play 패키지 이름과는 별개입니다.

### 개인정보 및 데이터 삭제

- [개인정보처리방침](docs/privacy-policy.html)
- [계정 및 데이터 삭제 안내](docs/account-deletion.html)

### 소스에서 빌드

필수 조건:

- Windows 개발 환경.
- Android Studio 및 Android SDK.
- JDK 17. Android Studio JBR 사용 가능.
- Android 패키지 `com.aiquota.mobile`로 설정된 Firebase 프로젝트.
- `android/app/google-services.json`.
- 기존 Gradle wrapper 배포본 또는 Gradle 8.10.2.

테스트:

```powershell
npm.cmd test
```

```powershell
& '.\.tmp\tools\gradle-8.10.2\bin\gradle.bat' -p android :app:testDebugUnitTest
```

Debug APK 빌드:

```powershell
& '.\.tmp\tools\gradle-8.10.2\bin\gradle.bat' -p android :app:assembleDebug
```

Google Play AAB 빌드:

```powershell
& '.\.tmp\tools\gradle-8.10.2\bin\gradle.bat' -p android :app:bundleRelease
```

출력:

```text
android/app/build/outputs/bundle/release/app-release.aab
```

### 라이선스

MIT
