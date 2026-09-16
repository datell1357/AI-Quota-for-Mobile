# macOS 구현 상태

마지막 갱신: 2026-09-17. 전체 계획을 완료한 상태가 아니다.

| 단계 | 현재 상태 | 완료에 필요한 나머지 증거 |
| --- | --- | --- |
| 0. 기능 계약 | 55 기준 전체 해시 대조, 10개 제공자 계약 및 12개 Android 회귀 입력 고정 | 추가 경계/실제 전송 형식 fixture, Swift consumer와 비교 |
| 1. 기술 위험 | worktree·도구 준비, 고정 CodexBarCore 링크 및 GLM 번들 실행 확인 | 서명된 App Group, 두 Claude·두 Codex, Gemini/Grok/Antigravity 실제 로그인 |
| 2. 수집·저장 | 계정·SQLite·알림·표시 스냅샷·60초 scheduler, Keychain·격리 WebKit·로그인 교체, Claude/Codex 웹 수집 및 응답 쿠키 갱신 연결. 코어 19/인증 16/수집 30개 테스트 통과 | 나머지 어댑터, 제공자별 인증/실계정 연동, 실제 전송·타이머 계측, 실패 정리의 영구 재시도 |
| 3. 사용자 기능 | 네이티브 앱·대시보드·메뉴 막대·온보딩·계정 편집·설정·Claude/Codex 로그인 화면 구현. 실제 UI에서 미로그인 차단·취소·다시 열기 확인 | 나머지 로그인 UI, 실제 인증 성공, 메뉴 막대 팝오버 실제 클릭, 알림 전달/거부·자동 시작 검증 |
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
- 수집 패키지 Swift Testing 30개 테스트 통과. 코어 19개, 인증 16개와 별도 패키지다. 응답 쿠키 갱신 단계에서 세 패키지를 모두 재실행했다.
- CodexBar의 실제 `CodexUsageResponse` 파서 → 앱 지표 → SQLite → 위젯 표시 snapshot까지 합성 응답으로 검증했다. workspace 혼선, 합성 빈 창, 미확인 잔여량을 차단한다.
- Codex 구독 API·Grok 주간 gRPC 수집기와 격리 HTTP 전송을 구현했다. 계정별 인증 헤더, session revision 거부, 429 HTTP-date/초 단위, 401/403/503 구분을 주입 전송으로 검증했다. 실제 계정 네트워크 수집은 미실행이다.
- Grok은 Android 55의 실제 응답 바이트 두 개와 해시를 보존했다. 32% 사용 및 proto3 기본값 생략(0% 사용)을 확인했고, 각 절단 위치·빈 config·잘못된 트레일러를 거부했다.
- GLM은 `zai.js`와 prelude 리소스를 포함한 독립 실행 파일에서 실제 JavaScript 엔진을 실행했다. 네트워크는 합성 응답을 반환하며 5시간 25%·주간 0% 사용값을 확인했다.
- macOS XCTest는 Xcode의 `xctest`가 호스트여서 CodexBarCore의 실행 파일 기준 리소스 검색과 맞지 않는다. 실제 실행 파일 smoke host를 만들어 생성된 번들을 함께 패키징하는 검증으로 해결했다. 앱 번들/위젯에서의 검증은 남아 있다.
- 의존성 라이선스/NOTICE 원문과 해시를 `Resources/ThirdPartyLicenses`에 보존했다. 최종 앱의 포함·표시 경로는 앱 패키징 단계에서 검증한다.
- 12개 Android JSON fixture 전체를 Swift consumer로 비교하는 작업과 Claude/Codex 이외 제공자의 로그인 화면은 아직 남아 있다.

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
- Claude/Codex의 원격 신원 확인과 로그인 UI를 연결했다. 나머지 제공자의 인증 UI, 등록된 OAuth client 및 실제 refresh 구현, 외부 CLI 파일 해석은 아직 남아 있다. 성공 후 이전 secret 정리 실패는 반환하며, 재시작을 포함한 영구 재시도와 중간 종료 정리 경로는 추가 구현이 필요하다.
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
- Claude/Codex 로그인 화면/원격 신원 검증을 연결했다. 연결 해제 후 이전 credential/profile의 영구 정리 재시도, 나머지 제공자 어댑터, 위젯 확장·고정 패널은 계속 남아 있다.

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
- 실계정 두 개의 인증 성공, 조직 선택 성공, 재시작 후 세션 지속, 만료/챌린지 처리는 아직 실검증 전이다. HTTP 응답의 Set-Cookie 갱신은 아래 단계에서 연결했다. 취소한 profile 정리, 별도 prepaid/overage endpoint 수집, CLI/OAuth와 외부 브라우저 연결 경로는 미구현이다. 따라서 Claude 전체 기능 완료를 의미하지 않는다.
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
- 로그인 attempt와 수집 generation/session revision/sequence를 쿠키 읽기·쓰기 전후에 검증한다. 연결 해제·재연결·새 수집·취소 뒤 도착한 지연 응답은 저장하지 않는다. 이미 WebKit에 전달된 쓰기 도중 취소가 도착하면 이전 프로필 쓰기가 끝날 수 있지만 새 연결은 별도 UUID 프로필이며, 취소된 응답은 채택하지 않는다. 이전 프로필의 영구 정리 재시도는 별도 미완료 항목이다.
- 두 합성 Codex 계정의 `/api/auth/session`에서 쿠키를 회전시킨 뒤 accounts/usage 요청과 다음 coordinator 수집에서 갱신 값 사용, bearer/workspace/사용량 격리, 표시 snapshot의 인증정보 부재를 실제 수집기·SQLite 경로로 확인했다. 수집 테스트 3개(지연 응답 테스트의 4개 입력 포함)를 추가했다.
- 인증 테스트 6개를 추가해 16개, 수집 30개와 GLM 리소스 실행, 코어 19개가 통과했다. 실제 WebKit의 저장·갱신·동일 프로세스 재열기·경로별 삭제도 포함한다.
- 처음의 즉시 종료 CLI probe에서는 재시작 복원이 실패했다. AppKit 앱 수명 주기로 고친 뒤에도 web view 없는 첫 쿠키 조회가 비어 있는 사례를 재현했다. 해당 profile의 공개 `dataRecords(ofTypes: [WKWebsiteDataTypeCookies])` 완료를 먼저 기다리도록 수정했으며, 초기화는 프로필별로 한 번 합쳐 실행한다. private API, 외부 페이지 로드, 지연 sleep은 사용하지 않는다.
- 최종 native probe는 별도의 6개 앱 프로세스에서 저장→재실행 읽기→배경 갱신→재실행 읽기→만료→재실행 읽기를 통과했다. 최초 프로세스만 로컬 HTML web view를 만들고 나머지는 창 없이 실행한다. 매 단계 두 번째 프로필의 쿠키를 보존했다. 이는 합성 쿠키와 정상 앱 종료 조건의 증거이며 실제 제공자 로그인, 강제 종료/전원 손실, OS 재부팅·앱 업데이트 검증을 대신하지 않는다.
- 최신 Debug 앱에서 Codex 로그인 페이지, 로그인 전 Check account 거부, 취소 후 미연결 상태를 실제 UI로 확인했다. 실계정 자격 증명을 입력하지 않았다.
- 이 단계의 최종 코드로 Debug arm64와 Release arm64/x86_64 빌드가 통과했다. 둘 다 `CODE_SIGNING_ALLOWED=NO`이며 서명·공증 검증은 아니다. UI 취소 후 QA의 12개 계정은 모두 미연결·session revision 0·신원/credential reference 없음·사용량 0행을 유지했다. 원본 Android 55의 718개 파일도 변경/누락 0개를 확인했다.
- 단계 로그는 `artifacts/macos-20260917-web-session/`, 재현 스크립트의 독립 실행 로그는 `artifacts/macos-web-session-probes/`에 보관한다. 프로브는 새 임의 UUID 두 개만 사용하고 기존 프로필을 열거하거나 읽지 않는다. QA 산출물과 프로필은 자동 삭제하지 않는다.
