# 업데이트 세션 승계 최소 수정 — 2026-09-14

## 범위와 판단

새 provider-card 계정을 생성하는 공통 이전 경로가 항상 REAUTH_REQUIRED를 기록해, 기존 공용 세션/토큰을 사용하는 제공자도 정규 자동 수집에서 제외될 수 있었다.

이번 변경은 ConnectedProviderCardMigration의 신규 계정 생성 분기만 수정한다. 출시된 SINGLE_RESERVED_DEFAULT 제공자가 이전 스냅샷에서 명확히 CONNECTED였으면 그 마지막 연결 상태를 AUTHENTICATED로 승계한다. 이는 서버에 새로 인증 성공을 확인했다는 의미가 아니다. 다음 정규 수집이 기존 인증정보를 사용하고, 만료 시 기존 오류 처리 정책이 적용된다. 인증정보 존재 또는 사용량 기록만으로 승계하지 않는다.

- 해당 제공자: Cursor, Grok, Kiro, OpenCode, GLM, Antigravity, Gemini, Copilot. Kimi는 현재 출시 목록 여부에 따른 기존 정책을 유지한다.
- Claude/Codex: 별도 named-profile cookie/context 승계가 있으므로 기존 경로 유지.
- AUTHENTICATING/CONNECTING, 만료, 연결 해제, 일시 오류 등 명확히 CONNECTED가 아닌 스냅샷은 보수적으로 기존 REAUTH_REQUIRED 유지.
- 기존 계정 행, 이미 완료된 이전, 이후 로그아웃/만료 상태는 수정하지 않는다. 이전에 이미 REAUTH_REQUIRED로 이전된 계정을 소급 자동 복구하지 않는다.
- 기존 프로필/토큰/쿠키/계정 ID/별칭/사용량/위젯/알림 설정을 교체하거나 삭제하지 않는다.
- 새 네트워크 요청, 재검증 반복, 서비스 시작, 수집 주기 변경 없음.

## 검증 범위

전체 상태/계정 종류 조합의 초기 인증 상태 정책, 모든 출시 단일계정 제공자의 CONNECTED 이전, 이전 재실행 시 이후 REAUTH_REQUIRED 상태의 보존, named-profile 미생성을 새 회귀 테스트로 확인한다. 기존 이전 트랜잭션 롤백/충돌/기존 계정 보존/멱등성 및 Claude/Codex 세션 승계 테스트를 함께 실행한다.

사용자 요청에 따라 실제 구버전 설치→업데이트→외부 서비스 세션 유지 검증은 생략한다. 현재 정상 수집 중인 에뮬레이터는 이번 작업에서 업데이트하거나 재로그인시키지 않는다. AAB 생성/업로드도 하지 않는다.

## 실행 결과

{'tests': 43, 'failures': 0, 'errors': 0, 'skipped': 0, 'suites': 5}

디버그 빌드 성공. 로그: `artifacts/widget-audit-20260914/session-migration-build.log`.
