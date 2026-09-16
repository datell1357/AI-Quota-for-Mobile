# Antigravity 원격 쿼터 수집 기반

2026-09-17 기준. 선택한 OAuth 토큰으로 Google 신원·프로젝트·모델별 쿼터를 확인하는 수집기를 앱 registry에 연결했다. **로그인 UI, 앱 소유 OAuth 발급/갱신, 로컬 앱/CLI 연결, 실계정 수집은 아직 완료하지 않았다.** 이 단계만으로 앱에서 Antigravity를 연결할 수 있다고 선언하지 않는다.

## 인증과 요청 경계

- [Google 데스크톱 OAuth 문서](https://developers.google.com/identity/protocols/oauth2/native-app)는 등록된 클라이언트, 시스템 브라우저, PKCE와 loopback redirect를 설명한다. AI Quota가 소유하거나 사용 허가를 받은 Desktop client와 내부 쿼터 API 접근 가능 여부를 먼저 확인해야 한다. Google 로그인 성공 자체가 Antigravity 쿼터 접근 성공을 의미하지 않는다.
- Android 서버의 scope는 `cloud-platform`, `userinfo.email`, `userinfo.profile`이다. macOS에서도 필요한 권한과 등록 상태를 검증한 후 인증 흐름을 연결해야 한다. Android Firebase gateway의 `enforceAppCheck: true`를 변경하거나 우회하지 않는다. 현재 수집기는 Firebase 서버를 호출하지 않는다.
- 고정 CodexBarCore의 기본 remote fetcher는 설치된 앱에서 OAuth client를 찾거나 전역 credential을 선택하고, 누락된 프로젝트를 onboarding할 수 있다. 이 기본 흐름은 호출하지 않는다. 다른 앱의 client secret/refresh token을 복사하거나 대신 갱신하지 않는다.
- Google `/oauth2/v2/userinfo` 응답의 숫자 문자열 `id`를 계정 subject로 사용한다. 검증된 email은 표시용이며 이메일만으로 계정을 식별하지 않는다. JWT를 단순 Base64 디코딩한 값이나 로컬 파일에 기록된 email을 서버 신원 확인으로 취급하지 않는다.
- `loadCodeAssist`가 반환하는 프로젝트를 `RemoteIdentity.workspace`에 묶는다. 수집 전후 Google ID와 프로젝트가 모두 일치해야 채택한다. product는 `antigravity-subscription`이며 Gemini 소비자 웹/CLI 상품과 섞지 않는다. 프로젝트가 없으면 실패하고 계정을 자동 onboarding하지 않는다.
- API host는 Android 55의 `daily-cloudcode-pa.googleapis.com`으로 고정했다. `loadCodeAssist` → `fetchAvailableModels` → `retrieveUserQuota` → `loadCodeAssist`를 읽고 Google 신원 조회로 앞뒤를 감싼다. 메타데이터는 Android의 Antigravity 2.0 계약을 따르고 User-Agent는 `AIQuota-macOS`로 표시한다. `cloudcode-pa`로 자동 전환하거나 응답의 임의 URL을 따라가지 않는다.
- 명시적으로 전달한 토큰만 사용하며 HTTPS 고정 host, redirect 차단, 공유 쿠키/credential 저장소 없는 전송과 1 MiB 응답 상한을 적용한다. 원시 서버 오류와 비밀값은 로그나 표시 snapshot에 저장하지 않는다. 토큰은 URI/query에 넣지 않는다.
- 401은 인증 필요, 403은 접근 거부, 429/유효한 Retry-After는 대기, 5xx는 네트워크 오류로 구분한다. 모델/쿼터 중 한 endpoint의 403은 다른 endpoint의 검증된 자료만 사용할 수 있게 한다. 401·429·5xx·잘못된 JSON을 정상 응답으로 숨기지 않는다.

## 모델별 쿼터 계약

- Android의 `models[modelID].quotaInfo.remainingFraction/resetTime`과 고정 CodexBarCore의 `retrieveUserQuota.buckets[].modelId/remainingFraction/resetTime`을 명시적으로 해석한다. 임의의 중첩 객체에서 비슷한 숫자를 검색하지 않는다. 모델별 ID·라벨·소수 비율·절대 리셋 시각을 보존하며 Gemini/Claude 전체를 하나의 창으로 합치지 않는다.
- `fetchAvailableModels`의 100%만으로 잔여 한도를 확정하지 않는다. 별도 쿼터 응답이 성공하면 그 응답이 우선하며, 해당 모델이 없거나 fraction이 빠졌으면 미확인으로 남긴다. 실제 quota bucket의 `1`은 검증된 100%로 허용한다.
- quota endpoint가 403이면 Android `quotaInfo`의 0 이상 1 미만 값만 채택한다. 같은 응답의 100% 행은 미확인으로 둔다. 이 판단은 현재 pinned 계약에 근거한 보수적인 규칙이며 실제 인증 경로별 응답의 장기 정확성은 실계정 검증이 필요하다.
- 측정된 행이 하나도 없으면 수집 실패로 처리해 이전 usage와 fetchedAt을 보존한다. 일부만 확인되면 확인된 모델과 미확인 모델을 구분해 저장한다. 미확인 값은 0%·100%·무제한으로 채우지 않는다.
- `remainingFraction`은 0~1 범위의 JSON 숫자다. 0.01은 1%, 0.73525는 73.525%다. 분모·사용 요청 수·금액은 만들지 않고, wire 응답에 없는 5시간/주간 기간도 추정하지 않는다. 시각이 없는 quota는 리셋 미확인이다.
- internal 모델은 제외한다. Android의 명시적 모델 우선순위를 보존하고, 목록에 없는 모델끼리는 ID 순으로 안정적으로 정렬한다. Android JSONObject의 알 수 없는 키 순서를 그대로 재현한 것은 아니다. 알려진 Google AI 플랜 이름은 Android처럼 `AI Pro` 등의 표시로 정리한다.
- 같은 modelId의 서로 다른 bucket에는 기간을 식별할 필드가 없으므로 임의로 최솟값을 고르지 않고 실패한다. 동일 bucket 중복은 합친다. 최대 200개 모델·1,000개 bucket을 허용한다. 배열형 models, 추가 window/bucket 스키마와 로컬 CLI의 session/weekly 요약은 아직 별도 이식 대상이다.

## 출처와 검증

- 원본 Android `AntigravityOAuthRepository.kt`, `AntigravityOAuthRepositoryTest.kt`, `ProviderUsageNormalizer.kt` 및 대응 테스트와 Functions `antigravityGateway.js`를 직접 대조했다. Android 회귀 JSON 2개는 파일·테스트명·SHA-256을 fixture 안에 기록했다. 이 fixture는 합성 회귀 입력이며 실제 계정 응답 캡처가 아니다.
- CodexBarCore [원격 수집기](https://github.com/datell1357/CodexBar/blob/928166f899471bbdcb72210641cdec91324d0154/Sources/CodexBarCore/Providers/Antigravity/AntigravityRemoteUsageFetcher.swift)와 [Antigravity 계약](https://github.com/datell1357/CodexBar/blob/928166f899471bbdcb72210641cdec91324d0154/docs/antigravity.md)의 고정 커밋을 참고했다. 기본 fetcher의 credential 선택·refresh·onboarding·가족별 집계를 그대로 호출하지 않는다.
- [공식 CLI `/usage` 문서](https://antigravity.google/docs/cli/commands/usage)는 모델 쿼터 갱신을 설명하지만, 이 수집기가 사용하는 내부 HTTP 응답의 공개 API 계약을 보장하지 않는다. 실제 agy 실행이나 앱 종료 상태의 실계정 remote 수집은 이번 단계에서 하지 않았다.
- 수집 패키지 144개 테스트가 통과했으며 Antigravity 14개 테스트 함수와 매개변수 사례를 포함한다. Android 모델 순서·0/소수/1·누락값·금지 응답·단위·시각·중복 bucket·용량 상한·변경된 신원/프로젝트·취소·다른 계정/세대/세션 revision을 확인했다. 기존 GLM 번들 JavaScript 실행도 통과했다.
- 합성 vault/HTTP → 실제 LoginCoordinator → StoredAccountSessionSource → 수집 coordinator → SQLite → 표시 snapshot consumer에서 정상 채택과 오류 후 이전 데이터·다른 계정 보존을 검증했다. 실제 Google 토큰을 읽거나 사용하지 않았다.
- 최종 앱/확장 빌드·위젯 번들·프로젝트 생성·Android 원본 보존 결과는 `implementation-status.ko.md`와 Git 제외 `artifacts/macos-20260917-antigravity/verification.json`에 기록한다. 이 검증은 등록 클라이언트, 실계정, 갱신 토큰, 로컬 앱/CLI 연결, 서명·공증·장기 수집 검증을 대체하지 않는다.
