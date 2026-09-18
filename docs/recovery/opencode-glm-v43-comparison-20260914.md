# OpenCode·GLM의 프로덕션 43 대비 호환성 판단

## 결론

현재 코드에서 **새 로그인과 정상 인증정보를 이용한 사용량 수집은 유지된 것으로 판단**한다.
그러나 **43에서 업그레이드해도 재로그인 없이 계속 수집**, **인증 오류 후 장기간 자동 회복**은
동일하게 보장할 수 없다. 아래 계정 이전과 인증 실패 처리 차이를 먼저 다뤄야 한다.
실제 OpenCode·GLM 계정이 없어 로그인과 장기 운영을 실측한 결과는 아니다.

## 비교 기준과 증거

- Aside에서 Play Console의 43(1.1.6) 원본 AAB와 서명 범용 APK 다운로드.
- artifact ID: `4860221263112448971`.
- APK의 aapt/Manifest로 `com.aiquota.mobile`, versionCode 43, versionName 1.1.6 확인.
- 원본과 SHA-256, AAB 내부 R8 mapping, JADX 결과를 `artifacts/production-43/`에 보존.
- JADX 전체 변환에는 오류 96개가 있었다. 모든 Kotlin 원본을 완전히 복원하거나
  APK 전체가 Git 커밋과 동일하다고 인증한 것은 아니다.
- Git 비교 기준은 `b83998d3`(43), 대상은 현재 `recovery/production-53` 작업 트리.
- 실제 43 APK의 ProviderDefinitionRegistry, OpenCodeUsagePageRoutes,
  ProviderNativeUsagePayloadFetcher, GlmUsageFetcher, ProviderBackgroundRefreshService를
  읽어 아래 핵심 주소·분기·실패 정책을 교차 확인했다.
- 기존 `docs/qa/provider-v43-compatibility-20260907.md`는 배포 파일과의 대응을 미확인으로
  명시한다. 이번 판단은 그 문서의 과거 테스트 결과만 인용한 것이 아니다.

## 유지된 수집 경로

### OpenCode

1. `https://opencode.ai/auth`에서 WebView 로그인.
2. workspace 주소를 저장하고 `/workspace/{workspaceId}/go`로 이동.
3. WebView 쿠키를 사용해 native bridge가 JSON/HTML 안의 사용량을 추출.
4. 직접 데이터가 없으면 기존 `_server` 구독 조회로 보완.
5. 정규화된 사용량을 저장하고, 이후 저장된 workspace URL과 쿠키를 재사용.

Git 43 대비 OpenCodeUsagePageRoutes, ProviderScopedStateRepository,
ProviderUsageNormalizer 파일은 바이트 단위로 동일하다.
fetchOpenCodePayload, fetchOpenCodeServerSubscriptionPayload, openCodeNativeUsageUrl도 동일하다.
실제 APK에서도 동일한 URL 구조, JSON → HTML → 구독 조회 순서와 고정 서버 함수 ID가 확인된다.
별도의 신규 OAuth refresh token 방식으로 바뀐 것은 아니다.

### GLM

- API 키: 같은 quota API에 Bearer 방식으로 요청하고 필요할 때 원문 키 방식으로 재시도한다.
- 웹 로그인: `chat.z.ai/auth` → coding-plan 화면 → 쿠키와 Authorization 헤더 보관.
- 웹 갱신: 저장된 인증정보로 native API를 조회하고 인증 실패 시 격리 WebView로 재수집한다.
- 자동 WebView 복구 시도에는 기존과 동일한 10분 간격 제한이 있다.

`https://api.z.ai/api/monitor/usage/quota/limit`와 API 키 fallback,
웹 모드의 쿠키+Authorization 요구 조건은 실제 43 APK에서도 확인된다.
Git 43 대비 GlmUsagePageRoutes, GlmIsolatedWebSessionService, 전체 사용량 정규화 코드는 동일하다.
GlmUsageRepository의 변경은 인증된 웹 세션을 저장하는 검증 함수 추가이며,
GlmUsageFetcher 본문의 기존 수집 코드를 교체한 것이 아니다.

## 바뀐 부분과 영향

### 1. 로그인 결과를 계정 상태와 연결

43은 provider 단위 저장이었다. 현재는 OpenCode 로그인 결과도 계정 ID/세션 revision에
연결해 AUTHENTICATED 상태와 사용량을 기록한다. OpenCode는 기존 공유 WebView를 계속 쓴다.
GLM은 단일 기본 계정에 API 키 결과 또는 격리 웹 로그인 결과를 연결한다.
웹 결과 전달에는 nonce, 계정 ID, 쿠키, Authorization 검증이 추가됐다.
GLM의 격리 프로세스 판별도 개선됐다.

이는 정상 로그인 성공 후 카드가 연결되지 않은 상태로 남는 문제를 막는 변경이다.
계정 결과 전달 테스트는 통과했지만 실제 공급자 로그인 화면의 현재 동작은 미검증이다.

### 2. 업그레이드 시 기존 연결은 자동 인증 상태로 승계되지 않음

ConnectedProviderCardMigration은 기존 OpenCode·GLM 사용량을 새 기본 계정으로 옮기면서
authState를 REAUTH_REQUIRED로 초기화한다. 자격 증명을 삭제한다는 뜻은 아니다.
그러나 자동 갱신은 AUTHENTICATED 계정만 받으므로 기존 자격 증명이 유효해도 수집 대상에서 빠진다.
LegacySessionCarryOver는 Claude·Codex만 대상으로 하며 OpenCode·GLM은 포함하지 않는다.

**43에서 직접 업그레이드하는 사용자는 재연결이 필요할 수 있는 명확한 동작 차이**다.
유효한 기존 쿠키/키로 제한된 검증 요청을 수행한 뒤 새 계정의 인증을 완료하는 이전 경로가 필요하다.
기존 사용량이 있다는 이유만으로 검증 없이 인증 상태를 올리는 방식은 적절하지 않다.

### 3. 자동 갱신의 인증 실패 처리 강화

실제 43 APK에서 자동 갱신의 인증 실패는 failKeepingPrevious로 처리한다.
현재 활성화된 runExactRefreshCycle은 INTERACTIVE_AUTH_REQUIRED 결과를 받으면
requireReauthentication을 호출해 REAUTH_REQUIRED로 전환하고 세션 revision도 증가시킨다.
그 뒤에는 자동/수동 스케줄러의 인증 조건을 통과하지 못하고 재로그인이 필요하다.

GLM 웹 모드는 기존 격리 WebView 복구를 먼저 시도하지만 그 결과까지 인증 실패이면 중단된다.
정상적인 실제 만료를 사용자에게 알리는 것은 타당하다. 다만 일시적인 인증 응답이나
회복 가능한 세션을 영구적인 수집 중단으로 바꾸지 않도록, 제한된 복구/재검증 후에
최종 재로그인 상태로 전환하는 정책을 검토해야 한다.

OpenCode의 일반적인 `opencode_usage_unavailable`은 COLLECTOR_ERROR이므로
모든 HTTP 오류가 곧바로 재로그인으로 바뀐다는 뜻은 아니다. 이 경우 재시도는 가능하지만,
만료된 쿠키를 공급자 페이지 재방문으로 갱신하는 전용 revive 정책은 없다.
이 전용 복구 부재는 Git 43에도 존재하므로 신규 회귀와 구분해야 한다.

### 4. HTTP 호환성과 갱신 빈도

- 현재는 HTTPS만 허용한다. OpenCode·GLM의 기존 하위 도메인 허용은 복원돼 있다.
- native JSON 요청의 자동 redirect 대신, 같은 HTTPS origin과 허용 endpoint 안에서만
  최대 3회 따라간다. 다른 origin으로 이동하는 새 API 경로가 필요하다면 영향을 받을 수 있다.
  현재 실제로 이 때문에 실패한다는 증거는 없다.
- 계정 스케줄러는 한 배치 최대 4계정을 순환한다. 60초 주기는 모든 계정을 매분
  성공적으로 갱신한다는 뜻이 아니다. 5개 이상이면 여러 주기에 걸쳐 갱신될 수 있다.

## 기존에도 있던 외부 의존성

- OpenCode 보조 수집은 사이트 내부 서버 함수 ID와 응답 구조에 의존한다.
  현재도 실제 43과 같은 ID를 사용한다. 공급자 배포로 변경됐다면 실패할 수 있으며,
  이번 계정 없는 검증만으로 해당 비공개 경로의 현재 유효성을 확정할 수 없다.
- GLM 웹 세션은 쿠키/Authorization과 웹 사이트의 재인증 동작에 의존한다.
  API 키 모드는 웹 세션보다 구조가 단순하지만 유효 키·요금제·현재 서버 응답 검증은 필요하다.

## 이번 검증

선택한 Android 테스트 **324개 통과, 실패 0, 오류 0, skip 0**.
GLM API 키와 웹 인증 저장/relay/격리, OpenCode 경로와 JSON/HTML/서버 응답 파싱,
공통 native bridge, 정규화, 로그인 coordinator, 계정 이전, 갱신 스케줄러,
WebView 세션 보존 정책을 포함한다. 로그와 suite별 집계는
`artifacts/production-43/compatibility-tests.log`, `test-summary.json`에 보존했다.

테스트는 기존 정책의 동작도 검증하므로 통과가 위 차이의 부재를 의미하지 않는다.
실제 로그인, 공급자 서버의 현 시점 인증 응답, 수일간 세션 유지, 실기기 절전 환경은 미검증이다.

이번 작업은 비교·판단 요청에 따라 앱 구현을 수정하지 않았다.
권장 순서는 기존 계정의 검증 후 인증 승계 → 인증 오류의 제한된 자동 회복 →
계정 제공이 가능한 환경에서 초기 수집/세션 만료/재시작 검증이다.
AAB 생성·업로드는 업로드 키 교체 완료까지 보류한다.
