# macOS 구현 상태

마지막 갱신: 2026-09-17. 전체 계획을 완료한 상태가 아니다.

| 단계 | 현재 상태 | 완료에 필요한 나머지 증거 |
| --- | --- | --- |
| 0. 기능 계약 | 55 기준 전체 해시 대조, 10개 제공자 계약 및 12개 Android 회귀 입력 고정 | 추가 경계/실제 전송 형식 fixture, Swift consumer와 비교 |
| 1. 기술 위험 | worktree·도구 준비, 고정 CodexBarCore 링크 및 GLM 번들 실행 확인 | 서명된 App Group, 두 Claude·두 Codex, Gemini/Grok/Antigravity 실제 로그인 |
| 2. 수집·저장 | 계정·SQLite·알림·표시 스냅샷·60초 scheduler, Keychain·격리 WebKit·로그인 교체, Claude/Codex/Cursor/Grok/OpenCode 웹 수집 및 응답 쿠키 갱신, GLM API 키 수집, DB 교체 후 표시 파일 복구, 계정 제거·인증정보 정리 기록/재시도. 코어 45/인증 25/수집 89개 테스트 통과 | 나머지 어댑터, 제공자별 인증/실계정 연동, 실제 전송·타이머 계측, 강제 종료·업데이트 실측 |
| 3. 사용자 기능 | 네이티브 앱·대시보드·메뉴 막대·온보딩·계정 편집·설정·Claude/Codex/Cursor/Grok/OpenCode 로그인·GLM API 키 연결 화면 구현. 실제 UI에서 미로그인/잘못된 입력 차단·취소·다시 열기 확인 | 나머지 로그인 UI, GLM 웹 로그인, 실제 인증 성공, 메뉴 막대 팝오버 실제 클릭, 알림 전달/거부·자동 시작 검증 |
| 4. 위젯·패널 | 3종/6개 WidgetKit kind와 계정별 구성·딥링크, 고정 NSPanel 목록/배터리·계정 선택·창 복원 구현. 실제 앱 UI·네이티브 창 검사 통과 | 서명된 위젯 공유/갤러리·독립 인스턴스 실측, 접근성 환경·위젯 설정 동기화, 패널 장기 계측 |
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

- macOS 14 타깃으로 Swift 6.3.3 실제 컴파일 및 Swift Testing 32개 테스트 통과.
- 두 계정 데이터 독립, workspace 혼선, sequence/session/generation 거부, 오류 후 fetchedAt 유지.
- 실제 SQLite 재열기 후 알림 상태 유지, 동일 낮은 사용량 60회 반복 억제, 3% 회복 후 재알림.
- 초기 과거 리셋·소수초 경계 중복 억제, 이전 값이 0%여도 리셋 경계만으로 복구 표시하지 않음.
- 실제 JSON 원자 저장→읽기, 인증 필드 부재, 현재 DB에서 발행·동시 발행의 순서 보호, 계정 삭제 후 선택 위치 보존. DB 교체 후 이전 파일과 revision이 충돌하는 문제는 아래 복구 단계에서 수정했다.
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
- 수집 패키지 Swift Testing 39개 테스트 통과. 코어 32개, 인증 16개와 별도 패키지다. 위젯 단계에서 세 패키지를 모두 재실행했다.
- CodexBar의 실제 `CodexUsageResponse` 파서 → 앱 지표 → SQLite → 위젯 표시 snapshot까지 합성 응답으로 검증했다. workspace 혼선, 합성 빈 창, 미확인 잔여량을 차단한다.
- Codex 구독 API·Grok 주간 gRPC 수집기와 격리 HTTP 전송을 구현했다. 계정별 인증 헤더, session revision 거부, 429 HTTP-date/초 단위, 401/403/503 구분을 주입 전송으로 검증했다. 실제 계정 네트워크 수집은 미실행이다.
- Grok은 Android 55의 실제 응답 바이트 두 개와 해시를 보존했다. 32% 사용 및 proto3 기본값 생략(0% 사용)을 확인했고, 각 절단 위치·빈 config·잘못된 트레일러를 거부했다.
- GLM은 `zai.js`와 prelude 리소스를 포함한 독립 실행 파일에서 실제 JavaScript 엔진을 실행했다. 네트워크는 합성 응답을 반환하며 5시간 25%·주간 0% 사용값을 확인했다.
- macOS XCTest는 Xcode의 `xctest`가 호스트여서 CodexBarCore의 실행 파일 기준 리소스 검색과 맞지 않는다. 실제 실행 파일 smoke host를 만들어 생성된 번들을 함께 패키징하는 검증으로 해결했다. 앱 번들/위젯에서의 검증은 남아 있다.
- 의존성 라이선스/NOTICE 원문과 해시를 `Resources/ThirdPartyLicenses`에 보존했다. 최종 앱의 포함·표시 경로는 앱 패키징 단계에서 검증한다.
- 12개 Android JSON fixture 전체를 Swift consumer로 비교하는 작업과 Claude/Codex/Grok 이외 제공자의 로그인 화면은 아직 남아 있다.

## 인증 저장·교체 기반 검증

`swift test --package-path macos/Packages/AIQuotaAuth --scratch-path macos/.build/auth`

`swift run --package-path macos/Packages/AIQuotaAuth --scratch-path macos/.build/auth AIQuotaCredentialProbe`

- 실제 macOS Keychain에 전용 임의 service의 합성 항목을 저장·조회·제거하고 제거 후 미존재를 확인했다. 기존 사용자 항목은 접근하지 않았다.
- 안정적인 Keychain service를 사용하며 동기화하지 않는다. 배경 접근은 `LAContext.interactionNotAllowed`로 인증 창을 열지 않는다.
- 로그인 시도마다 새 credential reference와 새 WebKit profile ID를 발급한다. 계정 확인과 Keychain 저장 후 SQLite의 generation/session revision 검사에 성공해야 새 세션으로 교체한다.
- 저장 실패·저장 중 취소 시 이전 자격 증명과 session revision을 유지한다. DB 커밋 시작 뒤 취소는 거부하고 실제 커밋 결과를 반환한다.
- 앱 소유 OAuth의 동시 갱신 요청은 한 번으로 합친다. 외부 CLI 소유 기록에는 토큰을 복사하지 않고 선택한 경로만 저장하며 앱의 OAuth refresher를 호출하지 않는다.
- 실제 WebKit에서 두 영구 data store의 식별자와 객체 격리를 확인했다. 도메인·경로·만료 쿠키 선택과 합성 영구 쿠키의 앱 프로세스 재시작 복원을 검증했다. 실계정 로그인 쿠키와 앱 업데이트 후 지속성은 아직 검증하지 않았다.
- 인증 저장소 → Codex 수집 → SQLite 흐름을 합성 HTTP 응답으로 확인했다. 잠긴 저장소는 별도 credentials 오류로 처리하며 기존 값·fetchedAt·credential reference를 유지한다.
- Claude/Codex/Grok의 원격 신원 확인과 로그인 UI를 연결했다. 나머지 제공자의 인증 UI, 등록된 OAuth client 및 실제 refresh 구현, 외부 CLI 파일 해석은 아직 남아 있다. 성공 후 이전 secret 정리 실패는 반환한다. 영구 재시도와 중단된 시도 복구는 아래 계정 수명주기 단계에서 추가했다.
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
- Claude/Codex/Grok 로그인 화면/원격 신원 검증을 연결했다. 연결 해제 후 이전 credential/profile 정리는 아래 계정 수명주기 단계에서 추가했다. 나머지 제공자 어댑터, 위젯 확장의 실제 OS 검증과 패널의 장기 계측은 계속 남아 있다.

## Claude 웹 로그인·수집 검증

- 시도별 영구 WebKit profile에서 로그인한 뒤 `/api/account`의 원격 UUID와 `/api/organizations`의 조직 목록을 읽는다. 여러 조직은 사용자가 선택하며 재연결에서는 기존 subject/workspace를 바꾸지 않는다.
- 선택한 조직의 `/usage`까지 다시 확인한 후에만 Keychain profile 참조와 SQLite 연결 상태를 교체한다. 수집은 앱의 기존 단일 coordinator를 통해 수행한다.
- 계정·조직·사용량 요청은 같은 프로필에서 캡처한 쿠키와 그 요청의 응답 갱신을 사용한다. 요청 URL에 맞는 경로 쿠키를 선택하며 `sessionKey`가 없는 방문자 쿠키는 인증 API를 호출하기 전에 거부한다.
- 네이티브 `/usage`의 utilization은 항상 백분율이다. 0.25%·1%·0% 사용을 각각 99.75%·99%·100% 잔여로 검증했다. Android structured bridge의 단위와 섞지 않는다.
- 세션·전체 주간·Opus·Sonnet·Cowork·Design·추가 모델 창과 scoped model ID를 따로 보존한다. Extra usage의 원시 credits는 환산 근거 없이 달러로 표시하지 않는다. 누락값은 미확인으로 남긴다.
- 합성 두 Claude 세션 → 실제 LoginCoordinator/StoredAccountSessionSource/RefreshCoordinator → SQLite/표시 snapshot 흐름을 검증했다. 원격 신원이 바뀌면 이전 사용량·fetchedAt·credential reference를 유지하고 재로그인 상태로 전환하며 자동 수집을 중단한다.
- 401, 429 및 Retry-After, 잘못된 조직, visitor 쿠키, 잘못된 지표 응답을 포함한 Claude 테스트 9개를 추가했다. 로그인 확인의 계정별 429 대기는 창을 닫았다 열어도 유지된다. 현재 앱 메모리에만 있으며 수집 coordinator의 대기와는 별개다.
- 실제 Debug 앱의 격리 QA 저장소에서 Claude 로그인 페이지를 열고, 미로그인 상태의 Check account 안내·취소·다시 열기를 확인했다. 이메일/암호를 입력하지 않았다. 취소 후 12개 계정과 두 Claude의 미연결 상태·빈 credential/identity·session revision 0을 SQLite에서 확인했다.
- 창을 닫은 뒤 늦게 반환된 로그인 시도는 즉시 취소해 다음 연결 시도를 막지 않도록 했다. 저장 커밋 중에는 취소를 막고 결과를 기다린다.
- 실계정 두 개의 인증 성공, 조직 선택 성공, 재시작 후 세션 지속, 만료/챌린지 처리는 아직 실검증 전이다. HTTP 응답의 Set-Cookie 갱신은 아래 단계에서 연결했다. 취소한 profile 정리는 아래 계정 수명주기 단계에서 추가했다. 별도 prepaid/overage endpoint 수집, CLI/OAuth와 외부 브라우저 연결 경로는 미구현이다. 따라서 Claude 전체 기능 완료를 의미하지 않는다.
- 검증 로그와 Android 55의 718개 파일 변경/누락 0개 대조 결과는 `artifacts/macos-20260916-claude/`에 보관한다.

## Codex 웹 세션·워크스페이스 연결 검증

- 격리 WebKit의 `chatgpt.com` root-path 쿠키로 `/api/auth/session`을 읽고 서버가 제공한 user ID와 access token을 사용한다. 이메일은 표시용이며 identity를 대신하지 않는다. 방문자 쿠키·비어 있는 로그인 세션·만료된 session은 차단한다.
- 같은 세션에서 발급받은 bearer로 `/backend-api/accounts`의 workspace 목록을 조회한다. `/backend-api/wham/usage`에는 사용자가 선택하고 membership을 확인한 `ChatGPT-Account-Id`를 지정한다. 수집 시 사용자와 workspace를 다시 확인한다.
- 응답 bearer는 해당 호출의 메모리 안에서만 사용한다. Keychain에는 WebKit profile 참조를 저장하며 외부 CLI의 토큰이나 refresh 절차를 호출하지 않는다. 웹 수집 출처는 `.webAPI`, 기존 OAuth 수집 출처는 `.oauthAPI`로 유지한다.
- 기존 Claude 화면을 `WebLoginFlow`/`WebLoginSheet`로 이름을 바꾸어 재사용하고 `WebLoginService`에서 제공자별 검증을 분리했다. 대시보드와 온보딩의 Codex 계정에도 연결 버튼을 추가했다.
- 두 쿠키 세션의 bearer/사용량 분리, 같은 사용자 내 명시적인 team workspace 선택, 사용자 변경·membership 상실·usage 응답 workspace 불일치 거부를 합성 응답으로 검증했다. 실제 coordinator/SQLite 경로에서도 마지막 값 보존과 계정별 재로그인 상태를 확인했다.
- Codex 테스트 7개를 추가해 수집 패키지 27개와 기존 GLM 리소스 실행 검사가 통과했다. 401/429/403 구분, visitor 쿠키, 누락/만료/잘못된 session과 workspace 목록을 포함한다.
- 실제 Debug 앱에서 Codex의 ChatGPT 로그인 페이지와 빈 로그인 입력란, 미로그인 차단 안내, 취소·즉시 취소를 확인했다. 공용 화면 전환 뒤 Claude 로그인 페이지·미로그인 안내·취소도 다시 확인했다. 자격 증명을 입력하거나 실계정을 연결하지 않았다.
- 두 Codex 실계정의 인증 성공·워크스페이스 선택 성공·세션 갱신과 영구 유지, WebKit 밖의 로그인 대안, CLI/OAuth 연결은 남아 있다. 이 단계의 인증 API 검증은 합성 응답이며 실서버 성공 증거가 아니다.
- 검증 로그와 취소 후 QA 계정 보존 확인은 `artifacts/macos-20260917-codex-web/`에 보관한다. 전체 macOS 계획과 출시 조건은 계속 미완료다.

## 응답 쿠키 갱신·재실행 복원 검증

`bash macos/Scripts/test-web-sessions.sh`

- Claude/Codex 로그인 검증과 Claude/Codex/Grok 수집에 계정별 `WebCookieSession` 전송을 연결했다. 응답 `Set-Cookie`를 같은 WebKit profile에 반영하고 다음 identity/workspace/usage 요청부터 갱신 값을 사용한다. 프로필 전체를 다시 읽어 요청 도중 다른 브라우저 신원으로 전환하지 않는다.
- HTTPS의 동일 origin과 쿠키 domain/path를 제한한다. 여러 Set-Cookie, Expires의 쉼표, HttpOnly/Secure, `__Host-`/`__Secure-` 조건, Max-Age=0 삭제를 검증했다. 만료 삭제는 같은 profile/name/domain/path만 대상으로 한다. 세션 쿠키에 임의의 영구 만료일을 붙이지 않는다.
- 로그인 attempt와 수집 generation/session revision/sequence를 쿠키 읽기·쓰기 전후에 검증한다. 연결 해제·재연결·새 수집·취소 뒤 도착한 지연 응답은 저장하지 않는다. 이미 WebKit에 전달된 쓰기 도중 취소가 도착하면 이전 프로필 쓰기가 끝날 수 있지만 새 연결은 별도 UUID 프로필이며, 취소된 응답은 채택하지 않는다. 이전 프로필의 영구 정리 재시도는 아래 계정 수명주기 단계에서 추가했다.
- 두 합성 Codex 계정의 `/api/auth/session`에서 쿠키를 회전시킨 뒤 accounts/usage 요청과 다음 coordinator 수집에서 갱신 값 사용, bearer/workspace/사용량 격리, 표시 snapshot의 인증정보 부재를 실제 수집기·SQLite 경로로 확인했다. 수집 테스트 3개(지연 응답 테스트의 4개 입력 포함)를 추가했다.
- 인증 테스트 6개를 추가해 16개, 수집 30개와 GLM 리소스 실행, 코어 19개가 통과했다. 실제 WebKit의 저장·갱신·동일 프로세스 재열기·경로별 삭제도 포함한다.
- 처음의 즉시 종료 CLI probe에서는 재시작 복원이 실패했다. AppKit 앱 수명 주기로 고친 뒤에도 web view 없는 첫 쿠키 조회가 비어 있는 사례를 재현했다. 해당 profile의 공개 `dataRecords(ofTypes: [WKWebsiteDataTypeCookies])` 완료를 먼저 기다리도록 수정했으며, 초기화는 프로필별로 한 번 합쳐 실행한다. private API, 외부 페이지 로드, 지연 sleep은 사용하지 않는다.
- 최종 native probe는 별도의 6개 앱 프로세스에서 저장→재실행 읽기→배경 갱신→재실행 읽기→만료→재실행 읽기를 통과했다. 최초 프로세스만 로컬 HTML web view를 만들고 나머지는 창 없이 실행한다. 매 단계 두 번째 프로필의 쿠키를 보존했다. 이는 합성 쿠키와 정상 앱 종료 조건의 증거이며 실제 제공자 로그인, 강제 종료/전원 손실, OS 재부팅·앱 업데이트 검증을 대신하지 않는다.
- 최신 Debug 앱에서 Codex 로그인 페이지, 로그인 전 Check account 거부, 취소 후 미연결 상태를 실제 UI로 확인했다. 실계정 자격 증명을 입력하지 않았다.
- 이 단계의 최종 코드로 Debug arm64와 Release arm64/x86_64 빌드가 통과했다. 둘 다 `CODE_SIGNING_ALLOWED=NO`이며 서명·공증 검증은 아니다. UI 취소 후 QA의 12개 계정은 모두 미연결·session revision 0·신원/credential reference 없음·사용량 0행을 유지했다. 원본 Android 55의 718개 파일도 변경/누락 0개를 확인했다.
- 단계 로그는 `artifacts/macos-20260917-web-session/`, 재현 스크립트의 독립 실행 로그는 `artifacts/macos-web-session-probes/`에 보관한다. 프로브는 새 임의 UUID 두 개만 사용하고 기존 프로필을 열거하거나 읽지 않는다. QA 산출물과 프로필은 자동 삭제하지 않는다.

## Grok 웹 로그인·크레딧 수집 검증

- 공식 공개 웹 클라이언트에서 계정 조회 URL, userId, 현재 크레딧 기간의 protobuf 필드를 확인했다. 공개 자산의 URL·해시와 무쿠키 GET의 실제 401 결과를 `grok-web-provenance.json`에 기록했다. 계약과 인증 경계는 [grok-web-contract.ko.md](grok-web-contract.ko.md)에 정리했다.
- Grok을 공용 웹 로그인 화면과 대시보드/온보딩에 연결했다. 워크스페이스 선택이 없는 개인 계정도 지원하며, 기존 Claude/Codex의 명시적 조직 선택 조건은 유지한다. 채팅 메시지를 보내거나 대화 요청을 기다리지 않는다.
- 쿠키의 원격 userId를 크레딧 수집 전후에 확인한다. 다른 계정·팀 scope·다른 상품, visitor 쿠키, 빈/잘못된 userId는 거부한다. 성공한 사용량 확인 뒤에만 Keychain 참조와 SQLite 연결을 교체한다.
- gRPC trailer만 있는 인증 실패와 HTTP 헤더의 status를 처리한다. 인증 실패는 재로그인 상태로, rate limit은 계정별 대기로 전달하고 서버 실패·권한 거부를 구분한다. 신원 불일치와 인증 실패 후 기존 값·수집 시각·credential reference 유지 및 자동 재수집 중단을 실제 coordinator/SQLite 경로로 검증했다.
- 최신 current_period의 주간/월간, 시작·종료를 보존한다. 기존 내부 product 키는 유지하고 월간 metric ID를 별도로 쓴다. 과거/미래/알 수 없는/불완전 기간의 사용률 생략을 100% 잔여로 채택하지 않는다. current_period가 현재 시각을 포함하지 않으면 명시적 사용률도 거부한다.
- Android 55의 두 원시 응답 fixture는 그 응답이 기록한 8월 기간 안으로 시계를 주입해 다시 검증했다. 원문·해시·기대 사용률은 바꾸지 않았다. 전체 절단 위치 검사는 유효 기간 안에서 수행해 날짜 오류가 protobuf 오류 검증을 가리지 않게 했다.
- Grok 테스트 9개(여러 입력 사례 포함)를 추가해 수집 39개와 GLM 실행 검사가 통과했다. 코어 19개도 통과했다. 인증 패키지에는 변경이 없으며 직전 단계의 16개 통과 결과를 유지한다.
- 실제 Debug QA 앱에서 Grok 연결 버튼, 미로그인 Check account 거부, accounts.x.ai의 Google/X/Apple/이메일 로그인 선택 화면과 취소를 확인했다. 실제 자격 증명을 입력하거나 약관 동의·인증 완료를 수행하지 않았다.
- 최종 Debug arm64와 Release arm64/x86_64 빌드가 통과했다. `CODE_SIGNING_ALLOWED=NO`이므로 배포 서명·공증 증거는 아니다. 취소 후 QA 12개 계정의 미연결 상태·session revision 0·신원/credential reference 없음·사용량 0행과 원본 Android 55의 718개 파일 변경/누락 0개를 확인했다.
- 실계정의 성공 응답, Google/X 인증 복귀, 추가 인증 증명 요구 여부와 장기 세션 유지는 미검증이다. 개인 계정의 웹 크레딧 대신 CLI/팀 사용량으로 대체하지 않는다. 단계 증거는 `artifacts/macos-20260917-grok/`에 보관한다.

## DB 교체 후 표시 파일 복구 검증

- 이전 DB의 표시 파일이 남은 상태에서 새 DB의 revision이 작으면 `staleAttempt`, 같아도 계정이 다르면 `invalidSnapshot`으로 발행이 계속 거부되는 오류를 두 회귀 테스트로 먼저 재현했다.
- `SnapshotFileStore`를 현재 `AccountRepository`에 묶고 `publish()` 안에서 직접 표시 데이터를 읽도록 수정했다. 호스트는 발행 요청만 합치며, 오래된 UI snapshot을 저장 API에 전달하지 않는다. revision은 해당 DB 안의 순서이며, 시작 시 기존 표시 파일이 현재 DB를 대신하지 않는다.
- 충돌하거나 손상된 표시 파일은 같은 디렉터리에 `before-rebuild-<UUID>.json` 백업을 만든 뒤 원자 교체한다. 백업을 자동 삭제하지 않는다. 알 수 없는 schema는 필드 구조가 달라졌어도 먼저 감지해 보존하고, 파일 읽기/백업/쓰기 권한 오류는 숨기지 않는다. SQLite와 표시 JSON schema 변경은 없다.
- 새 DB의 낮은/같은 revision, 실제 SQLite `VACUUM INTO` 백업 복원, 손상 JSON 4개 입력, 미래 schema, 변경 없는 재시작, 50개 동시 발행 요청, 취소를 8개 테스트로 추가했다. 백업 원문, 계정/사용량/fetchedAt 보존, 누락된 계정의 위젯 위치 유지, 공유 JSON의 인증정보 부재를 확인했다.
- 코어 27개, 인증 16개, 수집 39개와 GLM 실제 번들 실행 검사가 통과했다. 복원 테스트의 최초 비교는 수집 전 account 상태를 저장한 fixture 오류였으며 백업 직전 상태와 비교하도록 바로잡았다. production의 시간·신원 검증 조건은 바꾸지 않았다.
- 실제 최신 Debug 앱의 별도 QA 저장소에서 revision `999999`의 오래된 표시 파일을 현재 SQLite revision `15`로 복구했다. 원래 JSON의 SHA-256과 백업이 일치하며, 12개 계정의 ID·별명·순서가 DB와 같다. 다시 종료/실행한 뒤에는 JSON 바이트·수정 시각·백업 개수가 그대로였다. 실제 대시보드도 두 실행에서 확인했다.
- 최종 Debug arm64와 Release arm64/x86_64 빌드가 통과했다. 두 빌드는 `CODE_SIGNING_ALLOWED=NO`이며 배포 서명 증거가 아니다. 원본 Android 55 manifest의 718개 파일 변경/누락 0개도 다시 확인했다.
- 이 검증은 단일 호스트 writer와 앱 종료 후 DB 복원을 전제로 한다. 실행 중인 DB 파일의 외부 교체, 서명된 App Group, 실제 WidgetKit 확장 등록/표시는 아직 검증하지 않았다. QA 산출물은 `artifacts/macos-20260917-snapshot-recovery/`에 보존한다.

## WidgetKit 확장·계정별 구성 검증

- 계정 1개, 대시보드 4/6개, 배터리 2/4/6개의 6종류를 앱에 포함되는 별도 WidgetKit 타깃으로 추가했다. 상세 계약과 남은 검증은 [widget-contract.ko.md](widget-contract.ko.md)에 기록했다.
- 계정 UUID를 사용하는 AppEntity와 종류별 App Intent, 최소/최대 선택 수, 저장된 ID 보존, 명시적 용량/크기 오류, 각 계정 상세 링크를 구현했다. provider만 선택하는 전역 구성을 사용하지 않는다.
- 호스트의 정확한 발행 snapshot과 설치된 위젯 구성을 비교해 영향을 받는 종류만 갱신한다. 공유 파일 읽기만 수행하는 확장은 인증·수집 패키지와 네트워크 entitlement를 포함하지 않는다.
- 코어 5개 테스트를 추가해 32개, 인증 16개, 수집 39개와 GLM 번들 실행이 통과했다. 호스트 설정·서명 없는 공유 경로 차단·딥링크 회귀 검사도 통과했다.
- 새 합성 SQLite에 두 Claude·두 Codex·Grok·GLM을 준비한 뒤 실제 JSON 발행→실제 query/intent/timeline 코드→실제 SwiftUI View를 검증했다. 선택 순서·별도 인스턴스·누락 계정·잘못된 ID·용량 초과·크기 변경이 포함된다. 네이티브 렌더러로 25개 PNG를 생성하고 한국어/영어/다크 모드 화면을 확인했다.
- 화면 검사에서 배터리의 과도한 반올림과 영어 날짜의 시스템 로케일 혼입을 수정했다. 배터리도 83.6%를 그대로 표시하며 수집 시각은 날짜와 24시간 시각으로 표시한다. 연결 해제는 빈 값, 재로그인/실패는 마지막 값과 상태를 함께 표시한다.
- 오래된 값으로 전환하는 타임라인은 실제 수집 시각을 기준으로 예약한다. 수집 후 299초에 위젯이 읽으면 1초 뒤 전환하고, 이미 오래된 값은 정상 표시로 되돌리지 않는 회귀 검사를 추가했다.
- 빌드된 앱의 확장 bundle과 App Intents 메타데이터에서 6종류·선택 한도·한국어/영어·최소 macOS 14·Core 전용 의존성을 확인했다. 프로젝트 생성기 재실행도 파일 해시와 수정 시각이 유지됐다.
- 최종 변경으로 Debug Apple Silicon과 Release Apple Silicon/Intel 앱·확장 빌드를 통과했다. `CODE_SIGNING_ALLOWED=NO` 빌드이며 서명·공증 증거는 아니다. 원본 Android 55 manifest의 718개 파일도 변경·누락 0개를 확인했다.
- 실제 QA 앱에서 대시보드의 Add widgets 버튼, 종류/용량·공유 데이터 상태 안내, 닫기 후 대시보드 복귀를 확인했다. 기존 QA 계정을 추가 연결하거나 인증 정보를 입력하지 않았다.
- 독립 렌더러·메타데이터 검사는 실제 WidgetKit 갤러리의 등록/편집/두 인스턴스 보존/클릭/접근성 실측을 대신하지 않는다. 서명된 App Group, 호스트 언어·테마 전달과 장기 계측은 남아 있다. 고정 패널은 아래 별도 단계에서 구현했다. 단계 로그는 `artifacts/macos-20260917-widgets/`, 렌더링은 `artifacts/macos-widget-probes/`에 보관한다.

## 고정 데스크톱 패널 검증

- 기존 DesktopModel과 단일 수집 coordinator를 공유하는 NSPanel을 추가했다. 목록/배터리, 독립 계정 선택·순서·6개 상한, 정확한 계정 딥링크, 위치/크기/표시 복원, 선택형 항상 위를 연결했다. [desktop-panel.ko.md](desktop-panel.ko.md)에 계약과 검증 경계를 기록했다.
- 호스트 설정 회귀와 실제 AppKit 창 검사에서 schema 1 호환, 빈 선택 유지, 용량/중복/비정상 프레임 거부, 일반/floating 전환, 활성화 상태 유지, 이동/닫기/복원, 모니터 변경 복원 계산이 통과했다.
- 실제 앱에서 두 Claude·두 Codex 표시, 순서 변경, 6개 선택 시 추가 선택 차단, 빈 선택 후 재실행, 목록/배터리, 크기 조절, 항상 위 해제, 닫기/재열기, 계정 상세와 전체 대시보드 이동을 확인했다. 언어·테마 변경도 열린 패널에 반영됐다.
- 앱 종료가 패널 닫기로 처리되어 다음 실행에서 숨겨지는 회귀를 재현하고 종료 경로를 구분해 수정했다. 선택 목록의 중복 View ID와 순서 버튼의 접근성도 실제 UI 검증 중 수정했다.
- 실제 종료 후 504×642 창 크기와 위치·4개 ID·선택 순서·표시 설정을 보존했다. 별도 합성 사용량 QA 복사본에서 목록/배터리의 50%·83.6%·7%, 로그인 필요·연결 해제 표시를 확인했다. 실제 제공자 로그인이나 60초 수집의 장기 실측은 아니다.
- 최종 Debug arm64와 Release arm64/x86_64 빌드가 통과했다. 서명하지 않은 개발 빌드이며, 실제 외부 모니터 분리·여러 Spaces·VoiceOver·장기 자원 사용·배포 서명은 미검증이다. 로그와 저장소는 `artifacts/macos-20260917-panel/`에 보관한다.
- 기존 위젯 producer/consumer·25개 렌더링 및 Debug/Release 확장 번들 검사가 다시 통과했다. 프로젝트 생성 결과는 바이트·수정 시각이 유지됐으며 원본 Android 55의 718개 파일도 변경·누락이 없다.

## GLM API 키 연결 검증

- [GLM API 키 계약](glm-api-key.ko.md)에 범위·근거·검증 경계를 기록했다. Global/CN·개인/팀의 고정 호스트/선택값을 연결하고 검증된 API 키만 Keychain에 저장한다. 쿼터 API가 제공하지 않는 원격 사용자 신원은 만들어 내지 않으며 키 지문과 선택한 범위를 명시적으로 결합한다.
- 5시간·주간·MCP의 모든 알려진 창과 실제 reset 값을 보존한다. 수치 우선 정규화, 빈/알 수 없는/잘못된 응답의 이전 값 보존, 명시적 미구독의 빈 표시, 선택적 플랜 형식 변화, Android의 Bearer/raw 재시도를 구현했다.
- 수집 테스트는 GLM 16개가 추가되어 전체 55개가 통과했다. Android credit-limit 입력 비교, 인증 저장소 → 실제 collector/coordinator → SQLite → JSON 발행/읽기, scope/키 불일치·취소·Keychain 대역 오류·401/429/503을 검증했다. 기존 CodexBar GLM 번들 실행도 통과했다.
- 실제 QA 앱에서 한국어·영어 화면, Global/China·개인/팀 선택, 팀 ID 필수 조건, 보안 입력·잘못된 키 제출 차단·취소 후 키 제거를 확인했다. 이 화면 검사에서 외부 검증 요청이나 실제 키 입력은 하지 않았다. QA의 12개 계정은 미연결 상태로 보존됐다.
- 호스트 상태 회귀, 최종 Debug arm64·Release arm64/x86_64 앱/확장 빌드와 프로젝트 생성 재현성이 통과했다. 서명하지 않은 개발 빌드이며 배포 서명·공증 증거가 아니다. 원본 Android manifest 718개 파일의 변경·누락은 없다. 단계 결과는 `artifacts/macos-20260917-glm/verification.json`에 기록한다.
- 실제 계정의 Global/CN 개인·팀 수집, API 키 재실행 복원, GLM 웹 로그인, 장기 수집은 남아 있다. 키/범위 교체는 아래 단계의 명시적인 제거·새 연결로 구현했다. 코어 32개·인증 16개 테스트는 이 단계에서 재실행하지 않았으며 해당 소스는 변경하지 않았다.

## 계정 제거·인증정보 정리 검증

- [계정 수명주기 계약](account-lifecycle.ko.md)에 사용자 동작, schema 2, 중단 복구, 검증 경계를 기록했다. 제거는 로컬 계정만 대상으로 하며 다시 추가하면 새 UUID가 발급된다. 위젯·패널·메뉴 고정의 이전 선택을 새 계정으로 바꾸지 않는다.
- Keychain 쓰기·WebKit 생성 전에 준비 기록을 저장하고 연결 트랜잭션에서 활성/폐기 상태를 교체한다. 취소·제거 중 늦은 저장, 잠긴 Keychain, profile 제거 실패에서도 정리 기록을 보존한다. 앱 시작·활성화·설정에서 재시도한다. 외부 CLI 원본 파일은 변경하지 않는다.
- 기존 schema 1 DB는 SQLite backup 후 schema 2로 전환한다. 실제 QA 앱에서 12개 계정 payload/sequence/completed의 정확한 보존, 전환 전 백업, 사용량·신원·인증정보 없음, integrity check를 확인했다. Core 회귀에서는 백업을 새 DB에 복원해 consumer로 다시 읽었다.
- 코어 37개·인증 25개·수집 56개 테스트와 GLM 번들 실행이 통과했다. 실제 임의 Keychain service에서 계정 제거·다른 계정 보존·DB/coordinator 재열기 후 중단된 시도 정리도 통과했다. 실제 자격 증명의 앱 재시작 검증을 뜻하지 않는다.
- WebKit static identifier 조회를 store 초기화 전에 수행하면 별도 프로세스가 충돌하는 문제를 재현했다. 비영구 store를 먼저 초기화하고 조회 완료까지 유지해 수정했다. 8개 별도 프로세스에서 기존 6단계와 첫 profile 제거/재실행 부재를 검증했고 두 번째 profile의 쿠키를 보존했다. 검사는 새로 만든 UUID만 대상으로 하며 기존 profile 데이터는 읽지 않는다.
- 실제 Debug 앱에서 한국어/영어 제거 확인창·취소 후 보존을 확인했다. 최종 제거 UI 클릭은 수행하지 않았다. 제거와 GLM 다른 키/범위 새 연결은 격리 테스트 및 실제 Keychain/WebKit 경로로 검증했다.
- 최종 Debug arm64·Release arm64/x86_64 앱/확장 빌드, 위젯 producer/consumer와 25개 렌더링, 호스트 상태·확장 메타데이터·프로젝트 생성 재현성 검사를 통과했다. 원본 Android manifest 718개 파일의 변경·누락은 없다. 단계 결과는 `artifacts/macos-20260917-account-lifecycle/verification.json`에 기록한다.
- 이미 OS로 전송 중인 알림과 계정 제거의 경쟁, 실계정·강제 종료·재부팅·업데이트·장기 수집 및 배포 서명은 아직 검증하지 않았다. 기록 도입 전에 이미 고아가 된 자격 증명은 광범위한 검색으로 추정·삭제하지 않는다.

## 계정 변경 중 알림 전송 검증

- 기존 전송 경로가 권한 조회 전 복사한 이벤트·UI snapshot을 신뢰해 계정 제거 후에도 제출할 수 있는 경쟁을 수정했다. [알림 전송 계약](notification-delivery.ko.md)에 원인·순서·전달 정책·실측 경계를 기록했다.
- 전송 직전 SQLite 트랜잭션에서 현재 대기 이벤트·계정·알림 설정을 확인하고 소비한다. 계정 제거·연결 해제·설정 변경·인증 실패 뒤 무효가 된 이벤트를 차단하며 제목은 최신 별명을 사용한다.
- 계정 제거/연결 해제는 대상 계정 제출을 중단하고 진행 중인 제출 반환과 해당 요청의 OS 회수 API 호출 뒤 DB 변경을 수행한다. 다른 계정과 이전에 정상 전송을 마친 알림은 회수하지 않는다. 성공·실패 모두 중단 상태를 해제한다.
- 실제 SQLite·production dispatcher·제어 가능한 OS 전송 대역으로 신규 7개 테스트(권한 대기 중 변경 4개 입력 포함)를 추가해 코어 44개가 통과했다. 두 SQLite 연결의 20개 동시 claim, 재열기 후 소비 유지, 전송/회수 지연, 제출 실패, 다른 계정 보존, 권한 거부, 중첩 변경을 검사했다.
- 최종 Debug arm64·Release arm64/x86_64 앱/위젯 빌드와 확장 메타데이터, 프로젝트 생성 재현성, 원본 Android manifest 718개 파일 변경/누락 0개를 확인했다. 인증 25개·수집 56개는 직전 계정 수명주기 단계의 통과 결과이며 이번 알림 단계에서 재실행하지 않았다. 로그는 `artifacts/macos-20260917-notification-delivery/verification.json`에 보존한다.
- 실제 OS 알림 전송·권한 변경은 하지 않았다. OS의 비동기 회수 API 호출을 화면에서 제거 완료된 것으로 취급하지 않는다. 소비 후 종료/OS 제출 오류에 따른 유실 가능성, 이미 제출 중인 알림의 설정 변경 처리, 실제 클릭·재부팅·장기 실측은 남아 있다.

## Cursor 웹 로그인·수집 검증

- [Cursor 웹 연결 계약](cursor-web-login.ko.md)에 출처, 개인 범위, GET 요청, 정규화와 남은 경계를 기록했다. 시도별 WebKit profile을 사용하고 `/api/auth/me`의 안정적인 신원을 수집 전후로 확인한다. 기존 계정과 다른 신원은 채택하지 않는다.
- Total·Auto·API·Requests·On-demand·Individual cap을 출처별 단위와 기간으로 분리했다. 0.36% 같은 소수 백분율을 보존하며 Auto/API 평균·누락값 100%·미확인 팀 풀을 개인 쿼터로 만들지 않는다. legacy 요청 주기에 현대 플랜의 reset을 복사하지 않는다.
- Cursor 테스트 16개가 추가되어 수집 패키지 전체 72개와 GLM 번들 실행이 통과했다. Android 회귀 9개, 응답 쿠키 갱신, 저장소 → collector/coordinator → SQLite → JSON consumer, 신원 변경·빈 응답·401에서 이전 값 보존, 403/429/503·취소를 검증했다.
- 실제 격리 QA 앱에서 한국어/영어 설명과 Cursor 로그인 화면, 미로그인 계정 확인 차단·취소·다시 열기를 확인했다. 자격 증명은 입력하지 않았다. 실계정 로그인 성공·세션 지속·현행 플랜/팀·로컬 앱/API2 경로는 남아 있다.
- 취소한 profile 정리가 대기로 남는 경로를 재현하고 SwiftUI container와 WKWebView 수명 분리·창 닫기 후 최대 두 번 추가 재시도로 보완했다. 최종 Debug 앱에서 빠른 취소 두 번 후 재시작 없이 정리 기록 0개·대기 표시 해소를 확인했다. QA 계정 12개의 payload/sequence/completed·미연결 상태는 기존 저장소와 일치했다.
- 최종 Debug arm64·Release arm64/x86_64 앱/확장 빌드와 위젯 번들 메타데이터, 프로젝트 생성의 바이트·수정 시각 유지, 원본 Android manifest 718개 파일 변경/누락 0개를 확인했다. 로그는 `artifacts/macos-20260917-cursor/verification.json`에 기록한다. 코어 44개·인증 25개는 앞 단계 통과 결과이며 해당 패키지 소스를 변경하지 않아 이번에는 재실행하지 않았다. 서명·공증 및 장기 실측은 미실행이다.

## OpenCode 웹 로그인·Go/Zen 수집 검증

- [OpenCode 웹 연결 계약](opencode-web-login.ko.md)에 공식 소스와 배포 query 근거, 계정·workspace 검증, 수치 단위, 데이터 파서와 미검증 경계를 기록했다. 격리된 단일 원격 계정과 선택한 workspace를 수집 전후로 확인한다. 여러 계정이 들어 있는 쿠키 세션은 명시적으로 거부한다.
- 실제 Go query와 Black/legacy query를 구분했다. Go 5시간·주간·월간은 별도 창으로 유지하고 다른 구성원의 구독을 내 쿼터로 채택하지 않는다. Zen 잔액·월간 지출은 별도 단위/기간을 사용하며 UTC 월 경계를 적용한다. Go reset은 해당 응답 수신 시각을 기준으로 한다.
- Swift의 제한된 Seroval 데이터 파서로 프레임·이전 참조·Date 리터럴을 처리한다. JavaScript를 실행하지 않으며 코드 표현식·잘린/다중 프레임·잘못된 참조와 자원 상한 초과는 실패로 처리한다. API 키/로컬 DB/실제 DOM fallback은 연결하지 않았다.
- OpenCode 17개를 포함한 수집 89개와 GLM 리소스 실행, 코어 45개가 통과했다. Android 입력, 단위·월 경계·신원/소속 변경·취소·401/403/429/503 및 인증 대역 → 실제 coordinator/SQLite/JSON consumer의 성공·이전 값/다른 계정 보존을 확인했다.
- 음수 Zen 잔액을 보존하도록 `.balance`의 유한 remaining만 허용 범위를 확장했다. SQLite 재열기와 위젯 producer/consumer에서 -1.25 USD를 확인했고 독립 네이티브 위젯 렌더링 27개가 통과했다. quota의 음수·비율 검증은 유지한다.
- 실제 격리 QA 앱에서 한국어/영어 설명, 공개 GitHub·Google 로그인 화면, 미로그인 계정 확인 차단, 취소·재열기를 확인했다. 자격 증명은 입력하지 않았다. QA 12개 계정의 payload/sequence/completed와 미연결 상태를 보존했고 취소 후 정리 기록은 같은 실행에서 0개였다.
- 최종 Debug arm64·Release arm64/x86_64 앱/위젯 빌드, 확장 메타데이터, 프로젝트 생성의 바이트·수정 시각 유지와 Android 원본 718개 파일 변경/누락 0개를 확인했다. 결과는 `artifacts/macos-20260917-opencode/verification.json`에 기록한다. 인증 25개는 앞 단계 통과 결과이며 이번에는 재실행하지 않았다.
- 실계정 인증/워크스페이스 선택·실제 Go/Zen 수집·세션 재시작·새 console로 이관된 workspace·장기 수집·서명/공증은 남아 있다. 공개 query의 비인증 오류 응답 검사는 인증 후 성공을 증명하지 않는다.
