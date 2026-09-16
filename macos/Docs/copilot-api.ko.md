# Copilot 사용량 API 수집 기반

2026-09-17 기준. 계정 토큰을 입력받는 API client, 지표 decoder, 계정별 저장소 연결을 구현했다. **실계정 수집과 등록 OAuth 클라이언트 검증은 대기**다. 후속 [기기 인증·갱신 구현](copilot-device-login.ko.md)에서 UI와 토큰 회전을 추가했지만 기본 빌드의 Client ID는 미설정이다. 앱에서 새 Copilot 연결을 완료할 수 있다고 주장하지 않는다.

## 인증 경계

- 고정 CodexBar 커밋의 `CopilotDeviceFlow`는 VS Code Client ID를 사용한다. AI Quota가 소유하거나 사용 권한을 확인한 클라이언트가 아니므로 호출하지 않는다. 설치된 VS Code·gh·브라우저 자격 증명을 자동으로 읽지 않는다.
- [GitHub OAuth 공식 문서](https://docs.github.com/en/apps/oauth-apps/building-oauth-apps/authorizing-oauth-apps#device-flow)는 앱의 Client ID와 device flow 활성화를 요구한다. 후속 인증 UI는 등록 Client ID를 빌드 설정으로 받으며 앱 등록, 필요한 권한, 내부 Copilot API 접근 허용 여부를 실서버에서 확인해야 한다. 공개 Client ID나 `read:user` scope만으로 내부 API 접근이 보장된다고 가정하지 않는다.
- API client는 선택한 토큰으로 `https://api.github.com/user` → `/copilot_internal/user` → `/user`를 읽는다. 양쪽의 양수 정수 GitHub user ID가 저장된 subject와 같아야 채택한다. 로그인 이름 변경은 허용하며 이름만 같은 다른 ID는 거부한다. product는 `copilot-subscription`, workspace는 없다.
- 요청은 HTTPS·고정 host/path, 명시적인 토큰, 공유 쿠키 저장소가 없는 전송을 사용한다. 응답 URL·별도 토큰 endpoint·조직 목록을 따라가지 않는다. 다른 앱의 User-Agent·Editor-Version을 가장하지 않는다. 이 요청 형식의 실서버 성공 여부는 아직 확인하지 않았다.
- 401은 인증 필요, 403은 일반 거부로 구분한다. 403의 Retry-After 또는 유효한 GitHub rate-limit reset, 429는 해당 제한 시각을 보존한다. 실패·취소·다른 신원의 응답은 기존 usage/credential reference를 지우지 않는다.

## 지표 계약

- [현재 GitHub 과금 문서](https://docs.github.com/en/copilot/concepts/billing-and-usage/individuals/billing)와 [기존 요청 횟수 과금 문서](https://docs.github.com/en/copilot/reference/copilot-billing/request-based-billing-legacy/what-changed-with-billing)를 구분했다. AI Credits와 기존 Premium requests를 같은 단위로 표시하지 않는다.
- Microsoft VS Code 커밋 `71344722827a1808719df4940d89c55e0d9e52fc`의 [응답 타입](https://github.com/microsoft/vscode/blob/71344722827a1808719df4940d89c55e0d9e52fc/src/vs/base/common/defaultAccount.ts), [quota 해석](https://github.com/microsoft/vscode/blob/71344722827a1808719df4940d89c55e0d9e52fc/src/vs/workbench/services/chat/common/chatEntitlementService.ts), [실제 표시](https://github.com/microsoft/vscode/blob/71344722827a1808719df4940d89c55e0d9e52fc/src/vs/workbench/contrib/chat/browser/chatStatus/chatStatusDashboard.ts)를 대조했다. 다운로드 원문 URL·SHA-256은 단계 artifacts의 `provenance/vscode-source.json`에 보존했다. 외부 코드를 의존성으로 추가하지 않았다.
- `quota_snapshots`의 premium_interactions/chat/completions만 해석한다. 알 수 없는 키를 premium/chat으로 이름 붙이지 않는다. Inline suggestions를 Premium requests로 치환하는 CodexBar fallback은 사용하지 않는다.
- `token_based_billing`이 참이면 premium/chat의 ID와 단위를 AI Credits용으로 분리하며 `quota_remaining`을 사용한다. 기존 `remaining` 필드를 새 과금의 잔여 크레딧으로 오인하지 않는다. 분모가 없고 비율만 있으면 percent만 보존한다.
- `credits_used`는 조직 공용 풀의 별도 사용 카운터이며 entitlement와 같은 분모를 갖는다고 가정하지 않는다. 독립 지표 ID의 사용 크레딧·한도 미확인 상태로 보존한다. 조직 공용 풀의 unlimited/100% 표시를 실제 개인 잔여 100%로 바꾸지 않는다. 명시적인 inline 무제한은 무제한 상태로 보존한다.
- 한도가 0인 placeholder는 잔여율 미확인이다. 한쪽만 있는 구형 monthly/limited 값에서 0을 보충하지 않는다. 1은 1%, 73.5는 73.5%로 보존하며, 음수 잔여율은 게이지 0에서 멈추되 초과 사용량을 남긴다.
- reset은 snapshot의 초 단위 quota_reset_at → UTC date-time → 계정 date → free reset 순서다. 날짜만 있으면 UTC 날짜로 해석한다. 잘못된 달력 날짜·밀리초 timestamp를 임의로 고치지 않는다. 추가 사용량은 별도 지표/한도로 표시한다.
- free SKU를 individual 유료 플랜으로 오인하지 않는다. 새 과금 여부에 따라 지표 ID를 바꾸며, 크레딧과 요청 횟수의 알림 이력을 섞지 않는다.

## 검증

- 수집 패키지 130개 테스트와 GLM 번들 실행이 통과했다. Copilot 테스트는 14개이며 매개변수별 경계 사례를 포함한다.
- Android 원본 회귀 입력 3개를 출처 파일·테스트명·SHA-256과 함께 보존해 production decoder에 통과시켰다. 기존 Android 표시의 반올림과 달리 73.5% 원시 비율은 그대로 저장한다. web wrapper·billing HTML 형식 전체의 이식을 끝냈다는 의미는 아니다.
- 합성 토큰 vault → 실제 LoginCoordinator → StoredAccountSessionSource → 수집 coordinator → SQLite → snapshot consumer에서 사용량 채택, 신원 변경/401/부분 응답 후 기존 값·다른 계정 유지, 비밀값 제외를 확인했다. 다른 계정 세션과 늦은 취소 응답은 네트워크 전/채택 전에 거부한다.
- 토큰 형식·정수 계정 ID·HTML 응답·응답 크기·누락값·단위·0/1/100/소수/초과·날짜·rate limit·공용 풀 카운터와 실제 무제한을 검사했다. 실제 GitHub 토큰은 사용하지 않았다.
- 최종 Debug arm64·Release arm64/x86_64 앱/확장 빌드가 통과했다. 위젯 번들·프로젝트 생성 재현성·Android 원본 718개 파일 보존을 확인했다. UI 소스의 동작 변경은 없으며 이번 단계의 네이티브 UI 검증과 실계정 API 호출은 미실행이다. 인증 27개·코어 46개·위젯 렌더링 33개는 이전 단계 결과다.

최종 빌드·번들·원본 보존 결과와 로그는 Git 제외 `artifacts/macos-20260917-copilot/verification.json`에 기록한다. 이 단계는 API 수집 기반이며 실계정 로그인, 등록 클라이언트의 device flow/refresh 실측, 웹 대안, enterprise host, 장기 수집·서명·공증 완료가 아니다.
