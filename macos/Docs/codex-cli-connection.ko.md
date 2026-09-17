# Codex CLI 파일 연결

## 범위와 출처

사용자가 파일 선택 창에서 지정한 Codex CLI 환경의 `auth.json`으로 ChatGPT 기반 Codex 구독 사용량을 연결한다. 기본 위치를 자동 탐색하거나 현재 활성 CLI 계정으로 대체하지 않는다. 다른 `CODEX_HOME`의 파일을 각각 선택하면 독립된 로컬 계정에 연결할 수 있다. 기존 웹 연결도 유지한다.

- [OpenAI Codex 인증 문서](https://developers.openai.com/codex/auth/): 파일·OS 자격 증명 저장소와 CLI의 인증 관리. 기본 파일 위치는 `~/.codex/auth.json`이다.
- [OpenAI 인증 저장 구조](https://github.com/openai/codex/blob/528fd7ace5ec0a1c2a387dcb9c76a09f3fa011ee/codex-rs/login/src/auth/storage.rs), [토큰 구조](https://github.com/openai/codex/blob/528fd7ace5ec0a1c2a387dcb9c76a09f3fa011ee/codex-rs/login/src/token_data.rs): 고정 소스의 파일 형식과 여러 저장 backend를 확인했다.
- [CodexBar OAuth 문서](https://github.com/steipete/CodexBar/blob/928166f899471bbdcb72210641cdec91324d0154/docs/codex-oauth.md): 고정 의존성의 사용량 endpoint·응답 파서를 참고했다. 의존성의 전역 credential 탐색과 refresh 구현은 호출하지 않는다.

이번 구현은 파일 저장형에 한정된다. Keychain의 기존 항목과 새로운 secrets backend, `auto` 저장에서 선택된 OS 저장소, 메모리 전용 인증, FedRAMP·사용자 지정 서비스는 아직 연결하지 않는다. API 키 비용도 구독 쿼터로 취급하지 않는다. 파일이 없는 환경에는 기존 웹 계정 연결을 안내한다. CLI의 저장 설정을 변경하거나 다른 파일로 자동 우회하지 않는다. 이 제한은 전체 계획에서 해당 경로를 제외한다는 뜻이 아니다.

## 소유권과 신원 확인

`ReadOnlyCredentialFile`은 명시된 절대 경로 하나만 읽는다. 정규 경로·현재 사용자 소유·일반 파일을 요구하며 심볼릭 링크, FIFO, 디렉터리, 다른 사용자가 쓸 수 있는 파일, 빈 파일과 1 MiB 초과 파일을 거부한다. 읽기 전후 파일 크기·inode·수정/변경 시각을 확인한다. 파일 내용·권한·소유권을 수정하지 않는다. 이는 같은 사용자 권한의 악성 프로세스에 대한 OS 격리나 네트워크 파일 시스템의 응답 시간 보장을 의미하지 않는다.

파일의 `auth_mode`는 생략 또는 `chatgpt`만 허용하며 API 키·개인 액세스 토큰 경로를 거부한다. `access_token`은 현재 구현이 해석할 수 있는 RS256 JWT, OpenAI issuer, 미래 만료 시각과 사용자·ChatGPT 계정 claim을 요구한다. `tokens.account_id`가 있으면 그 계정과 일치해야 한다. `id_token`, 이메일, 로컬 별명은 신원 근거로 사용하지 않는다. 실제 access token에 필요한 claim이 없는 경우에도 다른 토큰에서 신원을 추정하지 않고 연결을 거부한다.

로컬 JWT 해석은 **후보 신원**을 만든다. 로컬에서 서명을 독립 검증하지 않는다. 해당 access token을 변경 없이 Bearer로, 같은 workspace를 `ChatGPT-Account-Id`로 고정 HTTPS 사용량 endpoint에 보내 서비스의 인증 성공과 유효한 구독 응답을 요구한다. 서비스가 Bearer 서명·claim을 검증한다는 계약에 의존하며, 응답에 계정 ID가 있으면 추가로 비교한다. 합성 HTTP 테스트는 이 서비스 계약이나 실제 발급 토큰의 claim 형식을 증명하지 않는다.

검증 뒤 파일을 다시 읽어 신원과 전체 파일 SHA-256이 같은지 확인한다. 기존 로컬 계정은 같은 subject·workspace·`codex-subscription` 상품만 다시 연결할 수 있다. 성공하면 기존 `LoginCoordinator`를 통해 `externalApplication`·`codexCLI` 소유 기록을 저장한다. 기록에는 선택 경로와 확인한 신원만 있고 access/refresh/id token의 영구 복사본은 없다. 파일 지문도 메모리에서만 비교한다. 표시 snapshot과 위젯에는 경로·토큰·원격 신원을 내보내지 않는다.

## 수집과 실패 처리

각 수집은 저장된 선택 경로를 다시 읽고 기존 신원을 비교한다. 같은 계정의 CLI 토큰 갱신은 새 파일 내용으로 다음 수집에 반영된다. AI Quota가 CLI refresh token을 교환하거나 파일을 덮어쓰지 않는다. 만료·거절 시 같은 CLI 환경에서 재로그인하도록 안내한다.

API 응답 후 파일과 collection lease를 다시 검사한다. 계정 전환은 인증 필요로, 동일 계정의 수집 중 파일 변경은 오래된 시도로 처리하며 해당 결과를 저장하지 않는다. 실패 시 이전 사용량·수집 시각·계정 신원·credential reference와 다른 계정은 보존한다. 연결 해제나 계정 제거는 외부 원본 파일을 삭제하지 않는다.

상세 화면과 온보딩에서 파일 선택 → 확인 후 연결로 진입한다. 선택만으로 파일을 읽지 않는다. 미선택 상태는 제출을 막고, 잘못된 파일명·읽기 실패·만료·계정 불일치·서버 요청 제한을 구분한다. 취소 시 기존 로그인 트랜잭션 규칙을 따른다.

## 검증 결과와 남은 확인

2026-09-17의 기록은 `artifacts/macos-20260917-codex-cli/verification.json`에 보관한다.

- 인증 패키지 40개(신규 파일 읽기 3개), 수집 패키지 181개(신규 CLI 6개 함수 및 매개변수 사례)가 통과했다. 기존 GLM 리소스 실행도 통과했다.
- 두 합성 `auth.json` 실제 파일 → 로그인 coordinator/자격 증명 대역 → 실제 수집기 → SQLite → snapshot consumer/DB 재열기를 확인했다. 원래 Bearer 사용, 쿠키 미사용, 토큰 영구 복사 없음, 원본 보존, 회전 반영, 계정 전환·만료·파일 유실·실패 중 이전 값 보존을 검사했다.
- 실제 Debug 앱의 한국어·영어 안내, 미선택 제출 차단, 잘못된 파일명, 손상된 합성 JSON 제출 실패, 취소·다시 열기와 파일 선택 창 취소를 확인했다. 정상 종료 후 QA 계정 12개의 DB 행 전체가 같고 usage·credential 정리 기록은 0개, SQLite integrity는 ok였다. 두 합성 입력 파일도 동일한 SHA-256과 권한을 유지했다.
- Debug arm64 및 Release arm64/x86_64 앱·확장 빌드와 위젯 번들 검사, 프로젝트 재생성의 바이트·수정 시각 유지, Android 기준 718개 파일의 변경/누락 0개를 확인했다. 서명 없는 개발 빌드다. 코어 48개·위젯 렌더링 33개는 이전 통과 결과이며 이번에 재실행하지 않았다.

실제 CLI 토큰 형식·서비스 인증·구독 사용량, 두 Codex 실계정의 동시 연결, CLI 저장 방식별 호환, 실제 재로그인·만료·강제 종료·업데이트는 미검증이다. CLI/로컬 앱의 나머지 저장 경로, 실제 60초·72시간 수집과 절전 복구, 서명·공증도 전체 목표에 남아 있다.
