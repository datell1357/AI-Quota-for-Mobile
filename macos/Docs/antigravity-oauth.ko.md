# Antigravity 데스크톱 OAuth와 갱신

2026-09-17 기준. 시스템 브라우저 로그인, PKCE/loopback 콜백, 앱 소유 토큰 발급·갱신과 네이티브 연결 화면을 구현했다. **AI Quota에 등록/허용된 Google Desktop OAuth client가 아직 제공되지 않아 기본 빌드의 로그인 버튼은 비활성 상태다.** 실제 Google 승인과 Antigravity 내부 API 접근 성공은 미검증이다. 쿼터 지표는 [기존 API 계약](antigravity-api.ko.md)을 따른다.

## 등록과 빌드 설정

- AI Quota용 Google OAuth **Desktop app** client와 동의 화면·사용자 범위·scope 허용 상태를 준비해야 한다. Google 로그인 성공만으로 Antigravity 내부 API 접근이 보장되지는 않는다. 다른 앱에서 Client ID/secret/refresh token을 추출하거나 Android의 App Check 설정을 변경하지 않는다.
- 공개 Client ID는 `AIQUOTA_GOOGLE_OAUTH_CLIENT_ID` 빌드 설정에서 앱 Info.plist의 `AIQuotaGoogleOAuthClientID`로 전달한다. 기본값은 빈 문자열이다. 설정이 없거나 형식이 잘못되면 UI가 로그인을 시작하지 않으며 로컬 수신기도 열지 않는다.
- 해당 Desktop client의 교환에 필요한 경우에만 `AIQUOTA_GOOGLE_OAUTH_CLIENT_SECRET`을 별도 로컬 빌드 설정으로 제공할 수 있다. 기본값은 비어 있다. 실제 값을 소스·커밋·명령 기록·검증 로그에 남기지 않는다. 설치형 앱에 포함하는 값은 추출 가능하므로 서버 전용 비밀값으로 취급할 수 없다. Web application client의 confidential secret을 앱에 넣지 않는다. 현재 실제 client 값은 설정하지 않았다.
- 등록 Client ID/secret은 사용자 로그인 UI 입력 항목이 아니다. 배포자가 올바른 Desktop client로 빌드하고 실제 승인·쿼터·갱신을 검증해야 한다. Client ID가 달라지면 이전 refresh token을 새 client로 보내지 않고 재로그인을 요구한다.

## 연결과 콜백

- 상세 화면과 온보딩에서 연결 창을 연다. 설정이 있으면 사용자가 **Google에서 로그인**을 누를 때만 시작한다. Google 계정 정보와 Cloud Platform 접근 scope를 요청한다는 사실을 한·영 안내에 표시한다. 이 scope를 단순한 사용량 전용 읽기 권한으로 설명하지 않는다.
- `SecRandomCopyBytes`로 각각 32바이트의 verifier와 state를 독립 생성한다. verifier는 S256 challenge로 변환하고, state는 콜백과 대조한다. 둘 다 시도 메모리에만 유지하며 진단 문자열은 가린다. 승인 URL에 verifier·client secret·토큰을 넣지 않는다.
- 시스템 브라우저에서 고정된 `https://accounts.google.com/o/oauth2/v2/auth`를 연다. 요청 scope는 Android 계약의 `cloud-platform`, `userinfo.email`, `userinfo.profile`이며 offline access와 계정 선택/동의를 요청한다. embedded WebKit이나 OOB 코드 복사 흐름은 사용하지 않는다.
- `Network.NWListener`는 **127.0.0.1에만**, OS가 배정한 임시 포트로 바인딩한다. 정확한 redirect URI를 승인 요청과 코드 교환에 동일하게 사용한다. 전체 시도는 5분, 개별 HTTP 헤더 수신은 5초, 최대 8개 연결·8 KiB 요청으로 제한한다.
- root 경로의 GET/HTTP 1.1, 실제 포트와 일치하는 Host, 정확히 하나의 state/code/error만 허용한다. 다른 Origin·중복 헤더·본문·다른 경로·잘못된 state는 거부하되 정상 콜백 대기를 소비하지 않는다. 일치하는 state의 거절 응답은 해당 시도를 끝낸다. 정상 코드도 한 번만 전달한다.
- 콜백 HTML은 고정 안내이며 코드/state/서버 오류를 반사하지 않는다. no-store, CSP, no-referrer를 적용한다. 완료·취소·시간 초과는 수신기와 남은 연결을 닫는다. 로컬 창 취소가 Google에서 부여된 권한을 자동 철회하는 것은 아니다.
- 고정 HTTPS token endpoint에 form-encoded code/verifier/동일 redirect/client를 전송한다. 공유 쿠키나 HTTP 자격 증명을 사용하지 않으며 응답은 JSON·64 KiB 이하로 제한한다. DPoP는 구현하지 않았고 앱 소유 Bearer 흐름만 대상으로 한다.
- token type·기간·scope와 offline refresh token을 확인한 뒤 Google 숫자 ID, Antigravity 프로젝트, 실제 쿼터를 검증한다. 기존 연결은 동일 ID/프로젝트만 허용한다. Google 승인만 되고 쿼터 확인에 실패하면 새 기록을 저장하지 않는다. 검증 성공 후 기존 LoginCoordinator의 Keychain→SQLite 교체 경로를 사용한다.

## 갱신과 실패

- 수집 직전 만료까지 60초 이하로 남은 앱 소유 토큰을 같은 client로 갱신한다. Google ID와 프로젝트를 다시 확인하고, 기존 OAuthRefreshCoordinator로 같은 계정의 동시 갱신을 합친다. 외부 앱 소유 토큰은 이 경로에서 회전하지 않는다.
- 갱신 응답이 refresh token을 생략하면 기존 token을 보존한다. 갱신 만료 시각도 생략되고 token이 그대로면 기존 절대 만료를 유지한다. 새 refresh token 또는 명시적인 유효기간이 오면 그 값에 맞춘다. 초기 연결은 scope·refresh token을 요구하지만 갱신 시 scope 생략은 기존 범위 유지로 처리한다.
- 토큰 갱신 자체는 신원·프로젝트만 검증하고 쿼터 응답을 요구하지 않는다. 교체 후 같은 예약 수집 안에서 새 session revision/lease로 쿼터를 수집한다. 사용량 오류는 이전 값을 보존한다. invalid_grant/잘못된 client/만료된 refresh token은 재로그인으로 전환한다.
- 취소와 계정 삭제는 기존 generation/revision 보호를 따른다. Keychain/DB 저장이 완료되기 전에는 이전 연결을 보존하며, commit이 시작됐으면 UI 취소 대신 저장 결과를 기다린다. 서버 회전 뒤 신원 조회·로컬 저장 실패 또는 강제 종료는 원격 원자적 rollback이 불가능하여 재로그인이 필요할 수 있다. 이 상황의 실제 계정 복구 검증은 남아 있다.

## 검증과 한계

- 인증 37개(신규 6개), 수집 175개(신규 9개 함수와 매개변수 사례) 테스트가 통과했다. RFC 7636 S256 벡터, 임의 state, 잘못된 콜백·중복 요청·거절·취소·시간 초과, redirect/client 결합, token/scope/기간/HTTP 오류·상한, 계정/프로젝트 변경, refresh token 생략과 회전을 검사했다.
- 실제 NWListener↔URLSession 루프백 HTTP를 실행했다. 잘못된 state 뒤 올바른 콜백, 대기 호출보다 먼저 도착한 코드, 한 번만 소비, 취소 후 접속 실패를 검증했다. Google token/API 응답은 합성 전송이다.
- 실제 콜백 코드 → OAuth client → LoginCoordinator → vault 대역 → StoredAccountSessionSource → 수집 coordinator → SQLite → 표시 snapshot consumer를 연결했다. 갱신은 새 토큰 헤더와 새 lease로 수집됐고, 거절 시 이전 사용량과 다른 계정을 보존했다. DB 재열기와 표시 파일의 비밀값 제외도 확인했다. 실제 Google 토큰이나 실계정 Keychain 검증은 아니다.
- 실제 Debug 앱의 분리 QA 저장소에서 한·영 미설정 안내·비활성 로그인 버튼·취소·재열기를 확인했다. 계정 12개의 전체 DB 행이 보존됐고 usage·credential 정리 기록 0개, SQLite integrity ok였다. 등록된 client의 브라우저 승인·성공/거절 화면은 미실행이다.
- 빌드·번들·원본 보존 결과와 로그는 `implementation-status.ko.md` 및 Git 제외 `artifacts/macos-20260917-antigravity-oauth/verification.json`에 기록한다. 코어 48개와 위젯 렌더링 33개는 앞 단계 결과이며 이번 변경에서 재실행하지 않았다.
- 등록 client와 실제 API 권한, Google MFA/passkey·동의/거절, 토큰 만료·취소·프로세스 종료·업데이트, 로컬 Antigravity 앱/agy 연결, 60초/72시간 실측, 서명 App Group·Developer ID·공증은 남아 있다.

[Google 공식 네이티브 OAuth 문서](https://developers.google.com/identity/protocols/oauth2/native-app)에서 Desktop loopback, PKCE, 시스템 브라우저 및 token/refresh 필드를 확인했다. 2026-09-17 공개 원문 SHA-256은 `1068952feefa84877303b91a1d6b30e6cb567cd8c5a88874e74a7dbb28cce671`이며 단계 provenance에 보관했다.
