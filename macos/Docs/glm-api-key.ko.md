# GLM API 키 연결

2026-09-17 기준. API 키 경로의 구현·합성 검증 기록이며 GLM 전체 인증 지원이나 실계정 검증 완료를 의미하지 않는다.

## 범위와 인증

- GLM 상세 화면에서 API 키, Global/China, 개인/팀을 선택한다. 팀은 조직 ID와 프로젝트 ID를 모두 입력해야 한다. 키는 SecureField로 입력하며 검증 전에는 저장하지 않는다.
- 지역별 고정 HTTPS 호스트 `api.z.ai`, `open.bigmodel.cn`의 `GET /api/monitor/usage/quota/limit`만 사용한다. 팀은 `type=2`, `Bigmodel-Organization`, `Bigmodel-Project`로 명시한다. 전역 환경 변수·브라우저 쿠키·CLI 설정·사용자 지정 서버 주소를 가져오지 않는다.
- Bearer 인증으로 시작하고 Android 55와 같이 400/401/403/404 또는 인증 실패 코드에서만 raw Authorization으로 한 번 더 시도한다. MCP만 반환된 경우에도 플랜 지표를 얻기 위해 한 번 시도한다. 이 보조 요청이 실패하면 먼저 확인한 MCP를 유지하되 429·취소는 전파한다. 429에서 추가 요청을 보내지 않고 Retry-After를 기존 coordinator에 전달한다.
- 사용량 확인 후 `LoginCoordinator`가 Keychain 저장과 SQLite의 generation/session revision 검사를 수행한다. 검증·저장 실패와 취소는 이전 연결을 유지한다. 성공 후 갱신은 기존 단일 수집 coordinator를 사용한다.
- 쿼터 응답에는 원격 사용자 ID가 없다. `RemoteIdentity`에는 **검증에 사용한 자격 증명에 대한 결합 정보**를 저장한다. SHA-256 키 지문, 지역/범위 제품 식별자, 명시적 팀 선택값으로 묶으며 원격 사용자 ID·이메일을 발견했다고 주장하지 않는다. 지문·선택값·자격 증명 참조는 표시 snapshot에 포함하지 않는다.
- 같은 연결에는 같은 키·지역·범위만 재연결할 수 있다. 다른 키나 범위를 사용하려면 계정 상세에서 **계정 제거**를 확인한 뒤 GLM을 새로 추가한다. 새 UUID가 발급되며 기존 위젯 선택을 새 연결로 바꾸지 않는다. 단순 연결 해제는 신원 결합 정보를 보존한다. 제거·인증정보 정리 계약은 [account-lifecycle.ko.md](account-lifecycle.ko.md)를 따른다.

## 사용량 의미

- 고정 CodexBar `zai.js`의 `TOKENS_LIMIT`·`CREDIT_LIMIT`·`TIME_LIMIT` 의미와 시간 단위 변환을 Swift 어댑터에 적용했다. 첫 번째/마지막 두 창으로 줄이지 않고 반환된 알려진 기간을 모두 보존한다.
- 총량·현재 사용량·잔여량이 있으면 그 수치로 잔여 비율을 계산한다. 현재 사용량과 `총량−잔여량` 중 큰 값으로 보수적으로 정규화한다. 수치가 없을 때만 명시된 사용률을 사용한다. 총량 0은 알 수 없는 한도로 표시한다.
- 5시간·주간·MCP 월간을 별도로 표시하고 실제 응답의 reset epoch milliseconds를 사용한다. 5시간보다 1분 이상 멀리 있는 5시간 리셋은 생략하며 시간대를 추측해 보정하지 않는다.
- 빈 목록·알 수 없는 지표만 있는 응답·필수 값 누락·중복 창·잘못된 수치는 실패다. 기존 수치와 수집 시각을 보존하고 stale로 표시한다. 빈 응답을 잔여 100%로 만들지 않는다.
- HTTP 성공 및 응답 code 200과 정확한 `You don't have any subscription` 메시지가 함께 오면 기존 연결에는 빈 사용량·`No subscription` 플랜을 기록한다. 신규 연결에서는 검증 실패로 안내하고 키를 저장하지 않는다. 다른 실패 문구를 미구독으로 추측하지 않는다.
- 플랜 이름은 알려진 응답 필드가 문자열일 때만 사용한다. 선택적 플랜 필드 형식이 달라도 유효한 사용량을 버리지 않는다. 별도 구독 목록·잔액·모델 호출 API는 이 경로에서 요청하지 않는다.

## 검증

- `bash macos/Scripts/test-collectors.sh`: 전체 55개 테스트, GLM 신규 16개 테스트. 고정 CodexBar 리소스 실행도 포함한다.
- 원본 Android 55의 credit-limit 회귀 입력과 provenance를 그대로 복사해 네이티브 파서의 75%/100%를 비교했다. 추가 합성 입력으로 5시간·주간·MCP, 수치 우선, 선택적 플랜, 잘못된 reset/빈/중복 지표를 검증했다.
- Global/CN 및 개인/팀 결합 분리, 고정 요청 URL·헤더, raw 재시도, 401/429/503 및 본문 인증 오류, 늦은 취소 응답, Keychain 대역의 저장 실패·이전 연결 보존을 검증했다.
- 합성 키 검증 → 인증 저장소 → 실제 저장 세션 source → 수집 coordinator → SQLite → 실제 JSON 발행/읽기까지 실행했다. 잘못된 후속 응답은 마지막 값·시각을 보존하고 명시적 미구독 응답은 unavailable로 전환했다.
- 실제 Debug 앱의 별도 QA 저장소에서 GLM 연결 진입, Global/China 및 개인/팀 선택, 조직/프로젝트 필수 조건, 키 마스킹, 잘못된 형식 제출 차단, 취소/재열기 시 키 제거, 한국어·영어 화면 배치를 확인했다. 검증 후 12개 계정에 신원·자격 증명·사용량이 저장되지 않았음을 SQLite에서 확인했다. UI에서 검증 요청을 전송하지 않았다.
- 호스트 상태 회귀, Debug arm64와 Release arm64/x86_64 앱·확장 빌드, 프로젝트 생성 재현성, 원본 Android manifest 718개 파일 무변경 검사를 통과했다. 서명·공증은 하지 않았다. 단계 로그와 최종 결과는 Git 제외 `artifacts/macos-20260917-glm/verification.json`에 기록한다.

## 남은 검증과 기능

실제 Global/CN 개인·팀 키의 응답, 실제 API 키의 Keychain 재실행 복원, 실제 429·만료·미구독, 장기 수집, GLM 웹 로그인은 남아 있다. 키/범위 변경은 명시적인 계정 제거·새 연결로 구현했으며 기존 자격 증명 정리의 영구 재시도도 연결했다. 후속 회귀 테스트에서 기존 Global/개인 연결 제거 → 새 CN/팀 키 검증 → 새 UUID 및 이전 위젯 위치 보존을 확인했다. 수집 패키지는 해당 테스트를 포함해 56개가 통과했다. 합성 검증을 실계정 결과로 취급하지 않는다.

## 근거

- [Z.ai 공식 Quick Start](https://docs.z.ai/guides/overview/quick-start): API 키의 Bearer 인증 방식.
- [고정 CodexBar zai.js](https://github.com/datell1357/CodexBar/blob/928166f899471bbdcb72210641cdec91324d0154/Sources/CodexBarCore/Resources/Plugins/zai.js): 쿼터 경로·팀 선택값·정규화·MCP 및 리셋 의미. 업스트림의 빈 목록 0% 사용 fallback은 적용하지 않았다.
- 원본 Android `GlmUsageRepository.kt`와 `GlmUsageFetcherTest.kt`: Bearer/raw 재시도 및 MCP-only 대응. 코어 회귀 입력은 `Tests/Fixtures/glm-glmCreditLimitResponseNormalizesFiveHourAndWeeklyWindows.json`에 고정되어 있다.
