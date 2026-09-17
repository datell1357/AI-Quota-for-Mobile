# Claude Code 로컬 연결

## 지원 범위와 근거

사용자가 선택한 Claude Code 구독 로그인을 macOS Keychain 또는 `.credentials.json`에서 읽고, Claude OAuth API로 계정·조직·사용량을 확인한다. 기존 격리 웹 로그인도 유지한다. 로컬 API 키 비용·토큰 통계를 구독 쿼터로 대체하지 않으며 현재 CLI 프로세스의 활성 인증 방식을 추정하지 않는다.

- [Anthropic 인증 문서](https://code.claude.com/docs/en/authentication#credential-management)는 macOS Keychain, 쓰기 실패 시 파일 저장, 설정 디렉터리별 분리와 Claude Code의 재로그인 절차를 설명한다. 실제 선택한 항목을 우선하며 환경 변수나 다른 항목을 자동 탐색하지 않는다.
- [고정 CodexBar OAuth 구현](https://github.com/datell1357/CodexBar/blob/928166f899471bbdcb72210641cdec91324d0154/Sources/CodexBarCore/Providers/Claude/ClaudeOAuth/ClaudeOAuthUsageFetcher.swift)과 [credential 형식](https://github.com/datell1357/CodexBar/blob/928166f899471bbdcb72210641cdec91324d0154/Sources/CodexBarCore/Providers/Claude/ClaudeOAuth/ClaudeOAuthCredentialModels.swift), [profile 응답 테스트](https://github.com/datell1357/CodexBar/blob/928166f899471bbdcb72210641cdec91324d0154/Tests/CodexBarTests/ClaudeOAuthTests.swift)를 참고했다. 기존 전역 탐색·캐시·refresh 코드는 호출하지 않는다.
- [Apple SecItemCopyMatching 문서](https://developer.apple.com/documentation/security/secitemcopymatching(_:_:))의 비밀번호 조회 제약을 실제 Keychain probe에서 재현하고 반영했다. 여러 항목의 데이터 반환을 한 번에 요청하지 않는다.

Keychain 화면은 기본 서비스 `Claude Code-credentials`와 현재 macOS 사용자 이름을 제안한다. 사용자는 다른 환경의 정확한 서비스·계정을 입력할 수 있다. 허용하는 서비스 이름은 기본 이름 또는 소문자 8자리 hex 접미사가 붙은 이름이다. 설정 경로의 해시를 추측하거나 모든 Keychain 항목을 훑지 않는다. 지원하지 않는 이름·저장 형식은 연결을 차단한다. 파일 방식은 사용자가 지정한 `.credentials.json` 하나에 한정하며 기존 읽기 전용 파일 검사기를 사용한다. 실패 시 Keychain↔파일 자동 전환은 없다.

## 인증 소유권과 저장

Keychain 읽기는 지정한 service/account의 메타데이터만 조회한다. 항목이 정확히 하나일 때 그 persistent reference로 비밀 데이터 한 개를 읽는다. 복수 일치·유실·잠금·거부는 실패로 반환한다. 사용자 연결 동작에서만 OS 접근 창을 허용하며, 검증 후 재확인과 모든 배경 수집에서는 창을 띄우지 않는다. 한 번만 허용한 접근이 배경 재확인에서 거부될 수 있으며, 이때 원본 ACL을 변경하거나 다른 경로로 우회하지 않는다.

파일·Keychain JSON은 1 MiB 이하이며 `claudeAiOauth`의 access token, 미래의 밀리초 만료 시각, `user:profile` scope를 요구한다. MCP 전용 상태·inference 전용 토큰은 지원하지 않는다. `refreshToken`, 로컬 계정 이름·이메일·subscriptionType은 읽은 세션의 원격 신원이나 플랜으로 채택하지 않는다.

성공한 `CredentialRecord`는 `externalApplication`·`claudeCode` 소유와 서버에서 확인한 신원, 선택한 파일 경로 또는 Keychain 참조만 저장한다. access/refresh token의 영구 복사본은 없다. Keychain 참조는 선택적 필드로 추가했으며 기존 schema 1 파일 연결 기록과 호환한다. 두 저장 위치를 동시에 지정하거나 다른 제공자·소유자의 Keychain 참조를 넣는 기록은 거부한다. 선택 경로·Keychain service/account·원격 신원·비밀 데이터는 위젯 표시 snapshot으로 내보내지 않는다.

AI Quota가 Claude Code의 refresh token을 교환하거나 원본 항목을 갱신·삭제하지 않는다. 만료 시 같은 Claude Code 환경에서 재로그인하도록 안내한다. 계정 연결 해제·제거도 AI Quota의 참조만 정리한다.

## 서버 확인과 수집

요청은 고정 `api.anthropic.com`의 `/api/oauth/profile` → `/api/oauth/usage` → `/api/oauth/profile` 순서이며 동일 Bearer를 사용한다. GET 이외 요청, 쿠키·API 키 인증, 환경 변수의 base URL은 사용하지 않는다. `anthropic-beta: oauth-2025-04-20`과 앱 자체 User-Agent를 보낸다. 이 내부 OAuth endpoint의 실제 서비스 허용 여부는 실계정 검증이 필요하다.

profile의 `account.uuid`와 `organization.uuid`가 유효한 UUID인지 확인하고 `claude-subscription` 신원에 결합한다. 기존 연결과 다른 신원이면 usage 요청 전에 중단한다. usage 이후 profile이 바뀌어도 결과를 버린다. 이메일이나 첫 번째 로컬 계정으로 대신 확인하지 않는다. 서버가 알려 준 rate-limit tier만 기존 플랜 이름으로 표시한다.

기존 `ClaudeUsageDecoder`로 5시간·주간·모델별·추가 사용량의 단위와 소수 비율을 유지하고 출처를 `oauthAPI`로 기록한다. 웹 수집의 기본 출처는 그대로 `webAPI`다. 401/403·429·서버 오류·빈 지표·손상된 응답은 이전 사용량을 보존한다.

각 수집은 선택한 원본을 다시 읽고 조회 후 전체 JSON 지문과 collection lease를 재확인한다. 같은 계정의 토큰 회전은 다음 수집에 반영되며 수집 도중 변경은 오래된 시도로 버린다. MCP 등 같은 원본의 다른 필드 변경도 보수적으로 한 번의 결과를 버릴 수 있다. 다음 수집에서 확인된 다른 계정은 인증 필요로 처리하며, 원래 계정 신원과 다른 계정의 값은 유지한다.

## 검증과 남은 범위

2026-09-17 검증 로그·출처 해시·빌드 해시는 `artifacts/macos-20260917-claude-code/verification.json`에 보관한다.

- 인증 42개(신규 2개), 수집 189개(신규 8개 함수와 매개변수 사례) 테스트가 통과했다. 테스트 대역의 Swift 동시성 매크로 컴파일 오류를 수정한 뒤 전체 회귀를 재실행했다. 기존 GLM 리소스 실행도 통과했다.
- 실제 macOS Keychain의 임의 합성 service/account로 읽기·원본 보존·없는 계정에서 대체 없음과 기존 자격 증명 수명주기를 검증했다. 최초 `kSecReturnData`+`kSecMatchLimitAll` 조합이 `errSecParam(-50)`으로 실패해 persistent reference를 먼저 확인하는 두 단계 읽기로 수정했고 실제 probe가 통과했다.
- 두 합성 계정의 파일/Keychain 대역 → 로그인·수집 coordinator → SQLite → 표시 snapshot/DB 재열기를 확인했다. 정확한 Bearer·endpoint, 서버 신원 전후 비교, 토큰 회전, 계정 전환·만료·잠금·유실·취소·HTTP 실패 후 이전 값/다른 계정 보존을 검증했다. 외부 토큰·원본을 수정하지 않음을 확인했다.
- 실제 Debug 앱에서 한영 Keychain/파일 안내, 잘못된 서비스 이름 차단, 존재하지 않는 합성 Keychain 위치 실패, 잘못된 파일명·손상된 합성 파일 거부, 취소·재진입·파일 선택 취소를 확인했다. 종료 후 QA 계정 12개의 DB 행이 동일하고 usage·credential 정리 기록 0개, integrity ok였다. 합성 입력 파일의 바이트·권한도 보존됐다.
- Debug arm64·Release arm64/x86_64 앱/확장과 위젯 6종·한영·최소 macOS 14 번들 검사가 통과했다. 프로젝트 재생성 바이트/수정 시각과 원본 Android 기준 파일 718개가 유지됐다. 코어 48개·위젯 렌더링 33개는 이전 결과이며 이번에 재실행하지 않았다.

실제 사용자 Claude Code 항목·OS 접근 승인/ACL 회전·현행 profile 및 usage API·두 Claude 실계정, CLI 재로그인과 강제 종료/업데이트는 미검증이다. 서명된 앱에서의 Keychain 지속 접근·위젯 App Group, 실제 60초/72시간 수집·절전 복구와 서명·공증도 남아 있다. 합성 credential 또는 Keychain probe 성공을 실제 제공자 로그인 성공으로 취급하지 않는다.
