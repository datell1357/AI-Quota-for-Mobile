# Android 1.2.2(55) → macOS 기능 계약

## 제공자별 기능 계약 초안

모든 제공자에 계정별 최신 수집 시각, 지표 단위·기간·리셋, 연결 필요/오류/오래됨/미지원/무제한 상태를 구분한다. API 실패나 모델 가용성을 잔여량 100%로 바꾸지 않는다. 아래 표는 구현 요구사항이며 동작 증명이 아니다.

| 제공자 | 계정 범위 | macOS 인증·수집 경로 | 반드시 유지할 지표·제약 |
| --- | --- | --- | --- |
| Claude | 동시에 2개 이상 | 격리 웹 세션, CodexBar OAuth/Web 파서, 선택적 Claude Code 연동 | 세션·주간·모델별·추가 사용량. CLI 활성 계정 중복 등록으로 다중 계정을 모사하지 않음 |
| Codex | 동시에 2개 이상 | 독립 로그인 및 허용된 CLI 연동, OAuth usage API | 계정과 workspace별 구독 한도. API 키 잔액으로 대체하지 않음. CLI 소유 refresh token을 앱에서 회전시키지 않음 |
| Cursor | 기본 1개 | 독립 웹 로그인 또는 명시적으로 선택한 로컬 앱 인증 | usage-summary, 로컬 앱과 브라우저의 서로 다른 계정 혼합 금지 |
| Grok | 기본 1개 | 웹 세션과 Android 55 주간 크레딧 경로 | Google/X 로그인 복귀 후 인증된 사용량으로 연결 완료. 채팅 요청 대기 금지 |
| Kiro | 기본 1개 | GitHub/Google/Builder ID 및 웹 토큰 경로 | 기본·보너스·초과 크레딧 구분, CLI 설치 비필수 |
| OpenCode | 기본 1개 | 웹 세션, workspace 조회, Go 사용량 | 동일 workspace·상품. 로컬 비용 추정 대체 금지. 0–1/0–100 단위의 명시적 변환 |
| GLM | 기본 1개 | API 키, z.ai quota 파서 | 잔여량·리셋·플랜·미구독 구분. Global/CN·팀 구분. JS 플러그인 리소스 포함 |
| Antigravity | 기본 1개 | 허용된 데스크톱 OAuth 또는 계정을 확인한 로컬 연동 | 실제 모델별 쿼터. 모델 가용성을 잔여 100%로 대체 금지. macOS client/redirect/scope 검증 필요 |
| Gemini | 기본 1개 | gemini.google.com/usage 및 계정별 batchexecute | 소비자 웹 상품의 5시간·주간/실제 제공 지표. CodexBar CLI Gemini 지표로 대체 금지 |
| Copilot | 기본 1개 | 허용된 OAuth client의 device flow와 사용량 API | premium/chat/inline 등 실제 제공 지표 및 무제한 상태 구분 |

## 공통 기능 및 통과 증거

| 영역 | 구현 계약 | 필요한 증거 |
| --- | --- | --- |
| 식별 | provider + local account + remote subject/workspace + metric + period | 별명·정렬 변경, 다른 workspace, 두 Claude·두 Codex에서 혼선 없음 |
| 응답 채택 | 계정 세대·session revision·request sequence 검사 | 재로그인/연결 해제 후 늦게 온 응답이 최신 상태를 변경하지 않음 |
| 저장 | 계정·알림 SQLite, 비밀 Keychain, 계정별 영구 WebKit 저장소 | 재시작/업데이트/저장 실패 후 복원 및 계정·비밀 격리 |
| 갱신 | 단일 actor, 정상 60초, 초기 동시 2계정·계정당 1요청 | 수동/주기/복구 요청 합치기, 느린 요청 중첩 없음, 위젯 수와 요청량 독립 |
| 제한·복구 | 429 Retry-After 계정별 적용, 오프라인/절전 처리 | 정상 주기를 임의로 느리게 바꾸지 않고 기상·온라인 복귀 시 1회 갱신 |
| 인증 | 앱/CLI 자격 증명 소유권 유지, 앱 소유만 single-flight refresh | 회전 저장 성공 후 채택, 취소·실패 시 기존 세션 보존, 백그라운드 팝업 반복 없음 |
| 메뉴 막대 | 대표 잔여율, 전체 계정 스크롤, 고정 최대 6개, 2열 행 순서 | 실제 메뉴 조작·캐시 표시·수동 갱신·설정·종료·자동 수집 토글 |
| 상세·설정 | 추가/별명/정렬/숨김/해제, 전체 선택/취소, 한국어/영어, 테마, 제보 | 로그인부터 설정 유지까지 실제 클릭 경로 및 취소·거부 검사 |
| 시스템 위젯 | 제공자/대시보드/배터리, 계정 선택, 독립 인스턴스 | Claude 1/2 + Codex 1/2 동시 표시 및 두 인스턴스의 다른 선택 유지 |
| 위젯 용량 | 제공자 1계정, 대시보드 Medium 4/Large 6, 배터리 Small 2/Medium 4/Large 6 초안 | 한국어·접근성·크기 변경 검사. 초과 선택 거부, 기존 목록 자동 삭제 금지 |
| 공유 스냅샷 | App Group 버전 JSON 원자 교체, 표시 데이터만 공유 | 같은 revision의 숫자·계정·순서 일치, 토큰/쿠키 부재, 서명된 앱·확장 실측 |
| 위젯 수명주기 | 딥링크, 연결 해제는 연결 필요, 수집 시각 표시 | 앱 종료·재실행·업데이트·WidgetKit 일반 모드에서 확인 |
| 고정 패널 | 목록/배터리, 위치·크기 저장, 선택적 항상 위 | 정상 60초 수집에 따른 실제 표시, 시스템 위젯과 별도 창으로 구분 |
| 낮은 잔여량 알림 | 초기 관측 억제, x% 이하 진입에 1회, 3% 회복 여유 | 동일 결과 60회, 임계값 진입·회복·재진입, 재부팅/업데이트 후 중복 없음 |
| 리셋 알림 | 관찰한 경계당 1회, 초기 과거 경계 억제, 초 단위 정규화 | 경계 소수초 차이·알림 삭제·재시작 후 중복 없음, 실제 잔여 회복과 경계 통과 구분 |
| 권한 | UNUserNotificationCenter, SMAppService, 연결 시 필요한 권한만 | 거부/해제 정상 처리, 알림 권한 없이 수집, 반복 권고 없음 |
| 업데이트 | 계정 ID/Keychain/웹 저장소/위젯/알림 상태 유지 | 마이그레이션 백업·실패 복원 및 이전 버전 사용자 데이터 업데이트 |
| 장기 운용 | 72시간 이상, 절전/기상·재부팅·네트워크·토큰 수명 | 실제 지속 수집 기록, 교차 계정 오염·세션 유실·중복·메모리 누적 없음 |
| 성능 | 계정별 요청·바이트·시간·CPU·메모리·wakeups | 위젯 0개/여러 개 비교, 대기 CPU 1% 미만 초안 실측, Intel 별도 상태 |
| 배포 | Developer ID, Hardened Runtime, 공증, DMG, 업데이트 경로 | 최소/현행 macOS 설치·Gatekeeper·위젯·자동 시작·업데이트 실측 |

## Swift로 옮기기 전에 고정할 회귀 사례

- `ProviderUsageNormalizerTest.kt`: Claude `used_percent: 1`은 사용 1%, 잔여 99%이다. STRUCTURED_SCRIPT의 `session.utilization: 0.25`는 잔여 75%, `weekly.utilization: 1`은 잔여 99%로 처리하는 실제 회귀 사례가 있다. 모든 숫자에 하나의 단위 추측 규칙을 적용하지 않는다.
- `GeminiUsagePageNativeFetcherTest.kt`: XSRF 토큰 접두어 변경 수용, `/u/1/usage`에 대응하는 RPC source path, `jSf9Qc` 응답·메타데이터 정리. 실제 원본 수집 실패를 CLI quota로 덮지 않는다.
- `ProviderUsageThresholdNotificationPolicyTest.kt`: 초기 낮은 관측 억제, 회복 여유, 계정·지표별 판정.
- `ProviderResetNotificationPolicyTest.kt`: 최초 과거 리셋 억제, 영구 전달 watermark, 초 단위 경계 정규화.
- `GrokLoginCompletionTest.kt`, `V43RefreshRecoveryRegressionTest.kt`: 로그인 복귀와 복구 경로. 파일/테스트 존재 확인은 테스트 통과 증거가 아니다.
- `android-regression-index.json`은 관련 Android 테스트의 이름·행·파일 해시를 보존한다. 익명화 JSON fixture의 Swift 이식과 실제 consumer 비교는 아직 하지 않았다.

## CodexBar 연결 조사

고정 커밋 `928166f899471bbdcb72210641cdec91324d0154`의 [Package.swift](https://raw.githubusercontent.com/datell1357/CodexBar/928166f899471bbdcb72210641cdec91324d0154/Package.swift)를 재확인했다. Swift 6.2/macOS 14, `CodexBarCore` library product와 `Resources` 처리, SweetCookieKit/Crypto/Logging/CQuickJS 의존성이 있다. SPM resolve·실제 컴파일·Codex 파서 연결을 완료했다. GLM 리소스는 독립 실행 파일에서 실제 JS 엔진과 합성 전송으로 확인했다. Codex/Grok 수집기의 계정 분리·HTTP 오류 경로는 검증했으며 실계정 로그인·수집은 아직 검증하지 않았다.


전체 출시 조건은 ../../docs/macos-implementation-plan.ko.md를 따른다.
