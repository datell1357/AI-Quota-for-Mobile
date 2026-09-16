# Copilot 기기 인증과 토큰 갱신

2026-09-17 기준. GitHub OAuth 기기 인증 client, 네이티브 연결 화면, 앱 소유 토큰 갱신을 구현했다. **AI Quota에 등록/허용된 OAuth Client ID가 아직 제공되지 않았으므로 현재 기본 빌드는 인증 요청을 시작하지 않는다.** 실제 GitHub 승인과 Copilot 내부 API 접근 성공은 미검증이다. 기존 지표 계약은 [Copilot API 기록](copilot-api.ko.md)을 따른다.

## 등록과 빌드 설정

- AI Quota용 GitHub OAuth 앱을 등록하고 device flow를 활성화해야 한다. VS Code·gh·다른 앱의 Client ID 또는 인증정보를 자동 사용하지 않는다. GitHub 사용자 조회가 가능하다는 사실만으로 `/copilot_internal/user` 접근이 허용된다고 가정하지 않는다.
- 공개 Client ID는 Xcode build setting `AIQUOTA_GITHUB_OAUTH_CLIENT_ID`로 전달하고 앱 Info.plist의 `AIQuotaGitHubOAuthClientID`로 읽는다. 기본값은 빈 문자열이다. Client Secret을 앱·설정·저장소에 넣지 않는다. UI에는 Client ID 입력란을 노출하지 않는다.
- 등록 후 기존 빌드 명령에 `AIQUOTA_GITHUB_OAUTH_CLIENT_ID=<등록한 공개 Client ID>`를 추가한다. 식별자 설정은 로그인 활성화의 선행 조건일 뿐, 앱 등록 상태·scope·Copilot API 허용의 검증을 대신하지 않는다. 실제 배포 전 해당 빌드로 인증 승인·사용량·갱신을 검증해야 한다.
- 현재 경로는 github.com OAuth 앱과 `read:user` 요청을 대상으로 한다. Enterprise host, GitHub App의 다른 권한 모델, PAT·VS Code 저장소·웹 쿠키 fallback은 구현하지 않았다. 등록 Client ID가 바뀌면 이전 Client ID에 묶인 refresh token을 새 앱으로 보내지 않고 재로그인을 요구한다.

## 연결 흐름

- 상세 화면과 온보딩에서 Copilot 연결 창을 연다. 설정이 없으면 한·영 준비 중 안내를 표시하고 **인증 코드 받기**를 비활성화한다. 설정이 있으면 사용자가 버튼을 누를 때만 기기 인증을 시작한다.
- `POST https://github.com/login/device/code`에 Client ID와 `read:user`를 전달한다. form encoding·JSON 응답·고정 HTTPS 호스트를 사용하며 공유 쿠키·HTTP 자격 증명을 사용하지 않는다. 인증 응답 상한은 64 KiB다.
- 기기 코드는 메모리에만 두고 사용자 코드와 만료 시각을 표시한다. 검증 URL이 정확히 `https://github.com/login/device`인지 확인하며 서버가 제공한 다른 URL로 이동하지 않는다. **GitHub에서 승인** 버튼이 기본 브라우저의 이 고정 페이지를 연다. 코드를 URL에 넣지 않는다.
- 서버 interval 이후 첫 조회를 시작한다. `authorization_pending`은 같은 간격, `slow_down`은 이전 간격+5초 또는 서버가 요구한 더 긴 간격을 사용한다. 기기 코드의 절대 만료 시각과 단조 증가 시간을 함께 검사해 절전·시계 변경 뒤 만료된 코드를 계속 조회하지 않는다. 429는 지정 재시도 시각을 로그인 상태에 전달하며 무한 즉시 재시도를 하지 않는다.
- 거절·만료·device flow 비활성화·잘못된 Client ID를 구분한다. 취소는 진행 중 task와 로그인 시도를 취소하고 코드를 지운다. 최종 DB commit이 시작된 이후에는 기존 LoginCoordinator 계약에 따라 저장 결과를 기다린다. 외부 브라우저에서 승인한 권한을 서버에서 자동 철회하는 동작은 수행하지 않는다.
- 발급된 token type·scope·기간과 refresh pair를 확인한다. 같은 토큰으로 GitHub 정수 user ID, Copilot 사용량, 사용량 전후 user ID를 검증한 뒤 Keychain에 저장한다. GitHub 로그인만 성공하고 Copilot 접근이 거절되면 새 연결을 저장하지 않는다. 기존 연결에는 같은 원격 subject만 허용한다.

## 갱신과 저장

- CredentialRecord schema 1에 선택 필드 `oauthClientID`, `refreshExpiresAt`을 추가했다. 해당 필드가 없는 기존 기록을 계속 읽으며 DB·표시 JSON schema는 바꾸지 않는다. 두 필드는 호스트 Keychain 기록에만 저장한다. API 키/외부 앱 기록에 OAuth 메타데이터를 붙일 수 없다.
- 만료형 토큰은 수집 시점에 만료까지 60초 이하로 남고 refresh token이 있을 때 갱신한다. 기한이 없는 토큰은 임의로 회전시키지 않는다. 앱 소유·Copilot·원래 Client ID·refresh 만료와 신원을 확인한다. 기존 공유 OAuthRefreshCoordinator가 계정별 중복 갱신을 합친다.
- 기기 인증에서 받은 refresh token은 같은 GitHub token endpoint에 Client ID와 refresh grant로 전달한다. 새 scope나 Client Secret을 전송하지 않는다. 새 토큰의 GitHub 신원을 다시 검증한 후 기존 로그인 저장 경로로 교체한다. 갱신 자체에서는 quota를 다시 요구하지 않아 일시적인 사용량 API 장애 때문에 정상 회전 토큰을 버리지 않는다.
- 토큰 교체는 session revision을 증가시킨다. 단일 RefreshCoordinator의 예약 작업 안에서 갱신을 마치고 같은 계정·generation·identity의 새 collection lease를 받아 수집한다. 이전 lease로 새 토큰의 결과를 쓰거나 연결 해제된 계정을 되살리지 않는다. 위젯·화면마다 별도 refresh timer를 만들지 않았다.
- 잘못되거나 만료된 refresh token은 재로그인 상태로 전환한다. 기존 usage/fetchedAt과 연결 식별자는 보존한다. 단, 서버가 이미 회전시킨 뒤 신원 조회·Keychain 저장이 실패하거나 앱이 종료되면 이전 서버 토큰을 되살릴 수 없다. 이 경우 재로그인이 필요할 수 있으며, 회전 요청과 로컬 저장을 하나의 원격 원자적 트랜잭션으로 처리한다고 주장하지 않는다. 실제 네트워크 단절/강제 종료의 복구 실측은 남아 있다.

## 검증

- 수집 166개(신규 인증 12개 함수 및 매개변수별 사례), 인증 31개, 코어 48개 테스트가 통과했다. 코드/URL/형식/응답 상한, pending·slow_down·거절·만료·429, HTTP 400의 bad_refresh_token, scope·토큰 쌍·Client ID·신원 변경을 검사했다.
- 절전 후 실제 시각만 만료된 경우 기존 구현이 조회를 계속하는 실패를 먼저 재현했다. 시각과 단조 증가 시간의 이중 만료 검사 후 전체 테스트가 통과했다. 테스트 대역의 actor 조회 assertion도 Swift 6 동시성 규칙에 맞게 분리했다.
- 실제 기기 인증 client의 합성 발급 결과 → LoginCoordinator → vault 대역 → StoredAccountSessionSource → Copilot collector → SQLite → 실제 표시 snapshot consumer를 실행했다. 회전 응답도 같은 저장 경로와 새 lease로 수집했고 다른 계정·이전 사용량·비밀값 제외·DB 재열기를 확인했다. 실제 GitHub 토큰이나 실계정 Keychain을 사용한 검증은 아니다.
- 실제 Debug 앱의 분리된 QA 저장소에서 한·영 안내, 미설정 상태의 비활성화된 코드 요청 버튼, 취소·재열기를 확인했다. 12개 계정은 그대로였고 usage·credential 정리 기록 0개, SQLite integrity는 ok였다. 등록 Client ID를 사용하는 코드 표시·브라우저 승인·완료 화면의 실제 UI 검증은 미실행이다.
- 최종 Debug arm64·Release arm64/x86_64 앱/확장 빌드, 위젯 6종·한영 리소스·최소 macOS 14 번들 검증이 통과했다. 원본 Android 718개 파일 변경/누락 0개와 프로젝트 재생성의 바이트·수정 시각 유지를 확인했다. 서명 없는 빌드이며 실서명/공증 증거는 아니다. 결과와 로그는 `artifacts/macos-20260917-copilot-oauth/verification.json`에 기록한다. UI 검증 뒤 수정한 부분은 client의 만료 판정이며 화면 소스는 같다. 기존 위젯 렌더링 33개는 변경 영역이 아니므로 재실행하지 않았다.

## 근거와 남은 게이트

[GitHub 공식 OAuth 문서](https://docs.github.com/en/apps/oauth-apps/building-oauth-apps/authorizing-oauth-apps)의 device flow, polling 오류, 만료형 토큰 및 device flow refresh 규칙을 확인했다. 2026-09-17 조회 HTML SHA-256은 `9ec86cc0bf5366c17a3a7769785b585747d22138396e08903750337cefbba735`이며 공개 원문을 단계 provenance에 보존했다.

Client ID 등록·device flow 활성화·내부 API 접근 허용, 실제 승인/거절·MFA·토큰 종류/만료/회전, 앱 재실행·강제 종료·업데이트와 장기 수집, 서명/공증은 아직 필요하다. Client ID 질문은 이미 요청한 상태이며 이 미응답을 임의의 타사 ID로 대체하지 않았다. UI와 합성 회귀가 통과한 사실은 실제 Copilot 연결 성공의 증거가 아니다.
