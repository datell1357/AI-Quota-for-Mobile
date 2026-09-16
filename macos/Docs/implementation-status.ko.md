# macOS 구현 상태

마지막 갱신: 2026-09-16. 전체 계획을 완료한 상태가 아니다.

| 단계 | 현재 상태 | 완료에 필요한 나머지 증거 |
| --- | --- | --- |
| 0. 기능 계약 | 55 기준 전체 해시 대조, 10개 제공자 계약 및 12개 Android 회귀 입력 고정 | 추가 경계/실제 전송 형식 fixture, Swift consumer와 비교 |
| 1. 기술 위험 | worktree·도구 준비, 고정 CodexBarCore 링크 및 GLM 번들 실행 확인 | 서명된 App Group, 두 Claude·두 Codex, Gemini/Grok/Antigravity 실제 로그인 |
| 2. 수집·저장 | 계정·SQLite·알림·표시 스냅샷·60초 scheduler, Keychain·격리 WebKit·로그인 교체 기반 구현. 코어 19/인증 10/수집 11개 테스트 통과 | 나머지 어댑터, 제공자별 인증/실계정 연동, 실제 전송·타이머 계측, 실패 정리의 영구 재시도 |
| 3. 사용자 기능 | 네이티브 앱·대시보드·메뉴 막대·온보딩·계정 편집·설정 구현. 대시보드/설정 실제 클릭·재실행 검증 | 제공자별 로그인 UI, 메뉴 막대 팝오버 실제 클릭, 알림 전달/거부·자동 시작 검증 |
| 4. 위젯·패널 | 미구현 | 3종 위젯·독립 구성·딥링크·4/6개 표시·고정 패널 |
| 5. 장기 수집 | 미검증 | 72시간 이상, 절전·기상·재부팅·토큰 만료·업데이트 |
| 6. 배포 | 미구현 | Developer ID·공증·DMG·새 사용자·이전 버전 업데이트 |

## 환경과 경계

- 작업 브랜치 `feat/macos-ai-quota`, 저장소 내부 `.worktrees/macos-ai-quota`.
- 원본 Android 작업 트리에 있는 미커밋 복구 코드는 수정하거나 커밋하지 않는다.
- Xcode 26.6, Swift 6.3.3, Apple Silicon 개발 환경.
- 현재 확인된 유효한 서명 인증서 0개. 실제 서명·공증은 별도 준비가 필요하다.
- 실계정이 없는 제공자는 구현과 fixture 검증 후에도 실계정 검증 대기로 남긴다.
- 검증 로그는 Git에서 제외되는 `artifacts/`에 보관하고, 명령과 결과를 이 문서에 요약한다.

## 코어 기반 검증

`swift test --package-path macos/Packages/AIQuotaCore --scratch-path macos/.build/core`

- macOS 14 타깃으로 Swift 6.3.3 실제 컴파일 및 Swift Testing 19개 테스트 통과.
- 두 계정 데이터 독립, workspace 혼선, sequence/session/generation 거부, 오류 후 fetchedAt 유지.
- 실제 SQLite 재열기 후 알림 상태 유지, 동일 낮은 사용량 60회 반복 억제, 3% 회복 후 재알림.
- 초기 과거 리셋·소수초 경계 중복 억제, 이전 값이 0%여도 리셋 경계만으로 복구 표시하지 않음.
- 실제 JSON 원자 저장→읽기, 인증 필드 부재, 구버전 snapshot 거부, 계정 삭제 후 선택 위치 보존.
- 미래 DB schema 변경 거부, 기존 unversioned DB의 SQLite backup 후 초기 schema 도입.
- 이는 앱/위젯 App Group 실측, 알림 OS 전달, 실제 Keychain, 제공자 수집 검증을 대체하지 않는다.

## 수집 스케줄러 검증

- 한 actor에서 최대 2개 동시 수집, 계정별 1개만 허용하며 수동·주기·복구 요청을 합친다.
- 60초 전 요청 보류 및 누락된 500주기 재생 방지는 주입한 시계로 검증했다. 실제 60초 타이머 장기 실측은 아직 하지 않았다.
- 계정별 Retry-After는 수동 갱신에도 적용한다. 다른 계정 수집은 계속된다. 현재 이 대기 상태는 프로세스 메모리에만 있다.
- 취소가 늦게 끝나는 전송은 실행 자리를 유지하고 복구 요청을 1회로 합친다. 취소된 결과는 저장하지 않는다.
- 자동 수집을 꺼도 이미 대기 중인 수동 요청은 유지한다.
- 수집 시도 수·응답 바이트·소요 시간의 계정별 집계 기반을 추가했다. 어댑터 내부 HTTP 요청 수, CPU·메모리·배터리 실측은 별도 검증이 필요하다.

## CodexBarCore 및 직접 수집 경로 검증

`bash macos/Scripts/test-collectors.sh`

- 고정 커밋 `928166f899471bbdcb72210641cdec91324d0154`를 SPM으로 resolve·링크했고 전이 의존성은 `Package.resolved`에 기록했다.
- 수집 패키지 Swift Testing 11개 테스트 통과. 코어 19개, 인증 10개와 별도 패키지다.
- CodexBar의 실제 `CodexUsageResponse` 파서 → 앱 지표 → SQLite → 위젯 표시 snapshot까지 합성 응답으로 검증했다. workspace 혼선, 합성 빈 창, 미확인 잔여량을 차단한다.
- Codex 구독 API·Grok 주간 gRPC 수집기와 격리 HTTP 전송을 구현했다. 계정별 인증 헤더, session revision 거부, 429 HTTP-date/초 단위, 401/403/503 구분을 주입 전송으로 검증했다. 실제 계정 네트워크 수집은 미실행이다.
- Grok은 Android 55의 실제 응답 바이트 두 개와 해시를 보존했다. 32% 사용 및 proto3 기본값 생략(0% 사용)을 확인했고, 각 절단 위치·빈 config·잘못된 트레일러를 거부했다.
- GLM은 `zai.js`와 prelude 리소스를 포함한 독립 실행 파일에서 실제 JavaScript 엔진을 실행했다. 네트워크는 합성 응답을 반환하며 5시간 25%·주간 0% 사용값을 확인했다.
- macOS XCTest는 Xcode의 `xctest`가 호스트여서 CodexBarCore의 실행 파일 기준 리소스 검색과 맞지 않는다. 실제 실행 파일 smoke host를 만들어 생성된 번들을 함께 패키징하는 검증으로 해결했다. 앱 번들/위젯에서의 검증은 남아 있다.
- 의존성 라이선스/NOTICE 원문과 해시를 `Resources/ThirdPartyLicenses`에 보존했다. 최종 앱의 포함·표시 경로는 앱 패키징 단계에서 검증한다.
- 12개 Android JSON fixture 전체를 Swift consumer로 비교하는 작업, 나머지 제공자 연결과 로그인 화면은 아직 남아 있다.

## 인증 저장·교체 기반 검증

`swift test --package-path macos/Packages/AIQuotaAuth --scratch-path macos/.build/auth`

`swift run --package-path macos/Packages/AIQuotaAuth --scratch-path macos/.build/auth AIQuotaCredentialProbe`

- 실제 macOS Keychain에 전용 임의 service의 합성 항목을 저장·조회·제거하고 제거 후 미존재를 확인했다. 기존 사용자 항목은 접근하지 않았다.
- 안정적인 Keychain service를 사용하며 동기화하지 않는다. 배경 접근은 `LAContext.interactionNotAllowed`로 인증 창을 열지 않는다.
- 로그인 시도마다 새 credential reference와 새 WebKit profile ID를 발급한다. 계정 확인과 Keychain 저장 후 SQLite의 generation/session revision 검사에 성공해야 새 세션으로 교체한다.
- 저장 실패·저장 중 취소 시 이전 자격 증명과 session revision을 유지한다. DB 커밋 시작 뒤 취소는 거부하고 실제 커밋 결과를 반환한다.
- 앱 소유 OAuth의 동시 갱신 요청은 한 번으로 합친다. 외부 CLI 소유 기록에는 토큰을 복사하지 않고 선택한 경로만 저장하며 앱의 OAuth refresher를 호출하지 않는다.
- 실제 WebKit에서 두 영구 data store의 식별자와 객체 격리를 확인했다. 도메인·경로·만료 쿠키 선택을 검증했다. 로그인 쿠키의 재시작/업데이트 지속성은 아직 검증하지 않았다.
- 인증 저장소 → Codex 수집 → SQLite 흐름을 합성 HTTP 응답으로 확인했다. 잠긴 저장소는 별도 credentials 오류로 처리하며 기존 값·fetchedAt·credential reference를 유지한다.
- 제공자별 원격 신원 확인, 등록된 OAuth client 및 실제 refresh 구현, 로그인 UI, 외부 CLI 파일 해석은 아직 남아 있다. 성공 후 이전 secret 정리 실패는 반환하며, 재시작을 포함한 영구 재시도와 중간 종료 정리 경로는 추가 구현이 필요하다.
- 원본 Android 55 manifest의 718개 파일을 다시 대조해 변경/누락 0개를 확인했다. 원본 저장소의 로컬 exclude에 내부 worktree만 등록해 오인 staging을 방지했다.

## 네이티브 호스트 및 사용자 화면 검증

- 외부 전역 생성기 없이 재현 가능한 Xcode 프로젝트 생성 스크립트와 공유 scheme을 추가했다.
- Xcode Debug Apple Silicon 빌드와 Release Apple Silicon/Intel 범용 빌드가 통과했다. `CODE_SIGNING_ALLOWED=NO` 개발 검증으로 Developer ID 서명·공증 증거가 아니다.
- 최초 Debug 오류는 앱이 두 아키텍처를 요청하지만 패키지는 활성 아키텍처만 생성해 발생했다. Debug는 `ONLY_ACTIVE_ARCH=YES`, Release는 `NO`로 맞췄다.
- 앱 번들에 CodexBarCore의 `zai.js`와 14개 라이선스/NOTICE 및 provenance JSON이 포함된 것을 확인했다. 실제 앱 프로세스 안에서 GLM 플러그인을 실행하는 검증은 아직 남아 있다.
- 메뉴 막대·대시보드·설정은 한 `DesktopModel`과 기존 repository/coordinator를 공유한다. 창마다 별도 수집 타이머를 만들지 않는다.
- 격리 QA 데이터로 실제 앱을 실행해 10개 제공자 전체 선택/취소, 12개 계정 카드(Claude 2개/Codex 2개), 한국어 별명, 숨김, 순서 변경, 계정 고정을 조작했다.
- 영어 전환, 밝은 테마, Windows 카드 스타일, 자동 수집 끄기를 조작하고 앱 종료/재실행 후 유지되는 것을 화면과 저장 파일 양쪽에서 확인했다. 숨김 계정은 전체 화면에서 빠지고 사이드바에서 계속 접근할 수 있다.
- 실제 SQLite → QA 표시 snapshot의 12개 ID·순서가 일치하며, 연결 전 계정에 신원·사용량·수집 시각을 만들지 않았음을 확인했다. 이는 2개 Claude/2개 Codex의 실계정 동시 수집 증거가 아니다.
- 시작 지연은 실제 스레드 sample에서 App Group snapshot 파일의 `open` 대기로 확인했다. 서명 Team과 실제 App Group entitlement를 확인한 경우에만 공유 경로에 접근하도록 수정했다. QA의 `--data-directory`는 snapshot도 해당 폴더에 격리하고 실제 위젯 reload를 호출하지 않는다.
- 공유 파일 발행은 대시보드/수집 완료와 분리하고 미처리 표시 snapshot은 최신 1개만 유지한다. 수정 후 같은 QA 저장소로 재실행해 로딩 화면 없이 대시보드가 표시되는 것을 확인했다.
- `bash macos/Scripts/test-host-state.sh`: 기본 설정, 설정 파일 재열기, 6개 고정 한도·중복 선택 거부, 미래 schema 보존, 서명 없는 공유 경로 차단, 계정 딥링크 왕복/10개 잘못된 형태 거부를 검증했다. 후행 `/` 정규화로 잘못된 URL을 허용하던 사례도 포함한다.
- 메뉴 막대 팝오버의 실제 클릭 검증은 시스템 UI 도구가 시간 초과되어 미실행으로 남긴다. 공유 데이터 기반 코드와 빌드는 확인했지만 화면 검증을 대체하지 않는다.
- 알림 전송과 클릭 시 계정 라우팅, 권한 조회·요청, 로그인 항목 설정 코드를 연결했다. 이번 UI QA에서는 OS 알림 권한이나 자동 시작 설정을 바꾸지 않아 실제 OS 전달·거부 경로는 미검증이다.
- 알림은 OS enqueue 전에 outbox 소비를 저장하므로 삭제 후 재전송을 방지하지만, 두 작업 사이 종료/OS enqueue 실패 시 전달이 유실될 수 있다. 이 전달 정책의 실패 처리와 실측은 추가 검증 대상이다.
- 로그인 화면/원격 신원 검증은 아직 연결되지 않았다. 연결 해제 후 이전 credential/profile의 영구 정리 재시도, 모든 제공자 어댑터, 위젯 확장·고정 패널은 계속 남아 있다.
