# AI Usage Mobile Sync

> Show Me The PRD로 생성된 설계를 바탕으로 Phase 1 기반 구현을 시작했습니다. (2026-04-29)

## 구현 구성

| 경로 | 내용 |
|------|------|
| [functions/src](./functions/src) | Firebase HTTPS Functions와 순수 검증 로직 |
| [functions/test](./functions/test) | pairing/upload/snapshot validation 단위 테스트 |
| [firestore.rules](./firestore.rules) | 사용자 read 제한, Functions-only write 보안 규칙 |
| [ios](./ios) | SwiftUI 앱과 WidgetKit cache-only 위젯 골격 |
| [android](./android) | Kotlin/Compose 앱과 Glance cache-only 위젯 골격 |
| [docs/api/windows-sync.md](./docs/api/windows-sync.md) | Windows 앱 연동 API 계약 |
| [samples/windows](./samples/windows) | Windows uploader request 샘플 |

## 기획 문서

| 문서 | 내용 | 언제 읽나 |
|------|------|----------|
| [01_PRD.md](./01_PRD.md) | 뭘 만드는지, 누가 쓰는지, MVP 범위 | 프로젝트 시작 전 |
| [02_DATA_MODEL.md](./02_DATA_MODEL.md) | Firebase 데이터 구조와 snapshot schema | DB/Rules/Functions 설계할 때 |
| [03_PHASES.md](./03_PHASES.md) | Phase별 개발 순서와 시작 프롬프트 | 개발 순서 정할 때 |
| [04_PROJECT_SPEC.md](./04_PROJECT_SPEC.md) | AI 구현 규칙, 보안 원칙, API 초안 | AI에게 코드 시킬 때마다 |

## 핵심 결정 요약

- 모바일 앱은 Provider에 직접 로그인하지 않습니다.
- Provider credential과 수집은 AI Usage for Windows가 담당합니다.
- Firebase에는 표시용 usage snapshot만 저장합니다.
- PC 연결은 6자리 pairing code, 10분 만료, 1회 사용입니다.
- PC 업로드는 Cloud Functions에서 device token/custom auth와 revoke 상태를 검증합니다.
- iOS/Android 위젯은 Firestore를 직접 신뢰하지 않고 앱이 저장한 local cache를 표시합니다.

## 개발 명령

```bash
npm.cmd test
npm.cmd run test:mobile
npm.cmd run lint
```

PowerShell 실행 정책 때문에 `npm`이 `npm.ps1`로 실행되지 않는 환경에서는 `npm.cmd`를 사용합니다.

## Firebase Functions

제공하는 HTTPS API:

- `createPairingCode`
- `consumePairingCode`
- `uploadLatestSnapshot`

배포 환경에는 `DEVICE_TOKEN_SECRET`을 설정해야 합니다.

## 다음 단계

- 신규 Firebase 프로젝트 생성 및 실제 project id 연결
- Google/GitHub Firebase Auth provider 설정
- Firebase Functions/Rules emulator 테스트 확장
- iOS Xcode project 및 Android Firebase config 연결
- iOS/Android native build 환경에서 `xcodebuild`와 Gradle 검증 실행
- 실제 Windows 앱 repo에 Mobile Sync UI/uploader 연결

## 미결 사항

- [x] 신규 Firebase 프로젝트 기준으로 결정
- [x] PC device upload 인증을 signed device token 방식으로 결정
- [x] Android 위젯 구현 방식을 Glance로 결정
- [ ] iOS Xcode project 파일 생성 및 Firebase SDK 연결
- [ ] Android Gradle wrapper/Firebase plugin 연결
- [ ] Windows 앱 기존 기술 스택/설정 화면 구현 방식 확인

## 권장 구현 순서

1. Firebase 데이터 모델 + pairing flow
2. 모바일 앱 latest snapshot viewer
3. iOS/Android 위젯
4. AI Usage for Windows sync uploader
5. 보안 강화와 다중 device 관리
