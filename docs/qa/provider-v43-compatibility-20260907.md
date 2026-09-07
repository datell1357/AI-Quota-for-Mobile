# 단일 계정 제공자 v43 호환성 복원

## 기준과 범위

- 비교 기준: `b83998d3` (versionCode 43, 1.1.6). 실제 배포 APK/AAB와 이 커밋의 대응은 미확인이다.
- 변경 전 HEAD: `c2be7a82`.
- 대상: Cursor, Kiro, OpenCode, GLM, Antigravity, Gemini, Copilot, Grok.
- Claude/Codex의 named profile 격리와 현재 계정 카드 저장·인증·갱신 연결은 유지한다.

## 복원 내용

- 대상 8개의 로그인/collector navigation에서 v43의 도메인 경계 기반 하위 도메인 허용을 복원했다. 유사 접미사 호스트는 허용하지 않는다. Claude/Codex 및 미출시 Kimi는 exact-host 정책을 유지한다.
- 공통 native JSON bridge에 최대 3회 수동 리다이렉트를 추가했다. 같은 HTTPS origin이면서 기존 endpoint allowlist를 통과한 주소만 따라간다. 매 요청에서 쿠키를 다시 조회한다. 다른 origin, HTTP, 비허용 endpoint, Claude/Codex는 따라가지 않는다.
- 기존 API 주소·사용량 파서·collector assets는 변경하지 않았다.

## 의도적으로 유지한 차이

완전한 v43 롤백은 아니다. HTTPS 검사, 다른 origin으로의 인증정보 전달 차단, 카드별 상태 저장, GLM/Antigravity 인증 결과 연결, 요청 식별·저장 동기화 및 호환성 수정은 유지했다. v43보다 제한적인 cross-origin redirect 정책은 실제 로그인 경로가 필요할 경우 별도 근거를 확보한 뒤 검토한다. 하위 도메인 신뢰 범위 확대는 v43 호환을 위한 의도된 변경이다.

## 검증

- 관련 Android 단위 테스트 223개: failures 0, errors 0, skipped 0.
- 대상 클래스: ProviderDefinitionRegistryTest, ProviderNativeJsonBridgeTest, ProviderUsageNormalizerTest, ProviderNativeUsagePayloadFetcherTest, ProviderLoginStrategyTest, ProviderWebCollectorScriptsTest, ExactSingleAccountLoginTest, ExactAccountLoginCoordinatorTest, GlmExactLoginRelayTest.
- `:app:assembleDebug` 성공.
- `npm test` 45개 통과. `git diff --check` 통과.
- 전체 Android 단위 테스트 시도는 정체되어 이번 실행의 worker만 종료했다(exit 137). 전체 테스트 통과로 간주하지 않는다.
- 실제 계정 로그인/사용량 수집, release 패키징은 미검증이다. 보호된 감시 에뮬레이터에는 접근·설치·재시작하지 않았다. 감시 중 APK와 이번 빌드는 다르다.
