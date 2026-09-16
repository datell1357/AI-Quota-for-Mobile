# GLM 웹 로그인과 개인·팀 사용량

2026-09-17 기준. Global Z.ai 웹 연결의 구현·합성 수집·미로그인 UI 검증 기록이다. 실제 유료 계정 인증과 장기 사용량 수집은 미검증이다. 기존 [API 키 연결](glm-api-key.ko.md)의 Global/CN·개인/팀 경로도 유지한다.

## 연결과 신원

- GLM 상세의 **웹 계정 연결**은 연결 시도마다 별도 영구 WebKit profile을 만든다. 공개 사용량 페이지 `https://z.ai/manage-apikey/coding-plan/personal/usage`에서 시작한다. 미로그인 상태에서는 사이트가 `chat.z.ai/auth`로 이동해 Google·Email·GitHub 선택을 표시한다. 이 웹 흐름의 클라이언트는 사이트가 관리하며 앱이 해당 OAuth Client ID를 복사해 별도 인증 요청을 만들지 않는다.
- **계정 확인** 시 HTTPS `z.ai`의 `/manage-apikey/` 경로인지 확인한 후, 그 profile의 isolated content world에서 공개 웹 클라이언트가 쓰는 localStorage 키 `z-ai-open-platform-token-production` 하나를 읽는다. 조회 전후 origin·경로와 취소를 검사한다. 전역 브라우저·외부 CLI 저장소·웹 페이지 전체 저장소를 읽지 않는다.
- 해당 토큰으로 `GET https://api.z.ai/api/biz/customer/getCustomerInfo`를 호출해 서버가 반환한 `customerNumber`를 신원으로 사용한다. 토큰 내용, 이메일, 화면 이름을 신원으로 추정하지 않는다. 응답에 있는 조직·프로젝트를 사용자가 선택하며 `projectType == 2`는 팀, 알려진 0/1은 개인으로 구분한다. 알 수 없는 type·중복 ID·빈/과도한 목록은 거부한다.
- 저장 신원은 customerNumber + 명시적인 조직/프로젝트/개인·팀 scope + `glm-web-subscription:global`이다. 사용량 조회 전후 같은 토큰으로 고객과 멤버십을 다시 확인한다. 쿼터 응답 자체에 고객 ID가 없으므로 해당 Bearer와 조직·프로젝트 헤더에 대한 서버의 접근 제어에 의존한다. 실제 계정 전환·멤버십 변경에서 이 결합이 유지되는지는 별도 실측 대상이다.
- 검증 후 웹 토큰과 profile ID를 기존 `LoginCoordinator`를 통해 Keychain에 저장한다. SQLite와 표시 snapshot에는 토큰을 저장하지 않으며 원격 신원도 표시 snapshot에서 제외한다. profile 쿠키가 없어도 토큰 인증은 가능하지만 origin·계정 lease·취소 검사는 생략하지 않는다. `api.z.ai`의 `.z.ai` 응답 쿠키만 같은 profile로 갱신하며 형제 도메인·공개 suffix 쿠키를 허용하지 않는다.
- 기존 API 키 연결의 지문 신원과 웹 고객 신원을 자동 병합하지 않는다. 연결 방식이나 계정·범위를 바꾸려면 기존 계정을 명시적으로 제거한 뒤 새로 추가한다. 기존 위젯의 UUID 선택을 새 계정으로 바꾸지 않는다. 취소·저장 실패·이전 profile 정리는 [계정 수명주기 계약](account-lifecycle.ko.md)을 따른다.

## 수집 계약

- 고정 HTTPS `api.z.ai`의 읽기 전용 GET만 사용한다. quota는 `/api/monitor/usage/quota/limit`, 팀은 `?type=2`, 선택 범위는 `Bigmodel-Organization`·`Bigmodel-Project` 헤더로 지정한다. 개인 조회에는 팀 query를 붙이지 않는다. 다른 origin으로의 redirect는 거부하며 JSON 본문 상한은 1 MiB다.
- 기존 `GLMQuotaDecoder`를 사용해 5시간·주간·MCP, 명시된 크레딧/토큰 수치, 잔여율, reset milliseconds를 유지한다. 현재 측정값이 없는 창을 잔여 100%로 만들지 않는다. 빈·미지의·잘못된 quota는 실패로 처리해 이전 값과 fetchedAt을 보존한다.
- 개인 quota에 플랜 이름이 없을 때만 `/api/biz/subscription/list`를 조회한다. `data` 배열의 명시된 productName/planName/subscription.name에서 lite/pro/max가 포함된 하나의 유효한 이름만 채택한다. 여러 플랜·날짜·청구 문구를 플랜으로 추정하지 않는다. 팀 quota에 개인 구독 이름을 붙이지 않는다.
- 선택적 플랜 조회의 일반 실패는 이미 확인한 quota를 버리지 않는다. 인증 만료·429·취소는 전파하고 기존 coordinator의 재로그인/backoff 처리를 따른다. body의 인증 실패 코드와 HTTP 401은 재로그인, HTTP 403은 비인증 실패, 5xx는 네트워크 실패로 구분한다.
- code 200과 정확한 `You don't have any subscription`은 신원 확인을 마친 계정의 명시적인 미구독 상태다. 웹 연결은 이 신원을 저장할 수 있고 빈 사용량·`No subscription` 플랜으로 표시한다. 코어 상태는 `.unavailable`이며 자격 증명은 유지한다. 이것은 신규 API 키 검증이 미구독 키를 저장하지 않는 기존 동작과 구분된다.
- 저장된 웹 토큰의 만료·회전을 자동 처리하는 refresh API는 구현하지 않았다. 401이면 재로그인이 필요하다. 성공한 수집의 transferredBytes는 채택한 응답 본문 바이트 합계이며 HTTP/TLS 헤더나 실패한 선택적 플랜 요청의 전송량을 포함하는 네트워크 실측값이 아니다.

## 근거

- [Z.ai 공개 사용량 페이지](https://z.ai/manage-apikey/coding-plan/personal/usage)의 배포 JavaScript를 확인했다. HTML SHA-256은 `4e1bf77f6992a9ea05757de7f883546b70fbcb97e12e95503af09edfbe28f83f`다. 공개 스크립트 45개의 URL·바이트·해시는 Git 제외 `artifacts/macos-20260917-glm-web/provenance/scripts.json`에 기록한다.
- [9857 웹 모듈](https://static.bigmodel.cn/z-ai-website/_next/static/chunks/9857-4125b07eb8d244ed.js), SHA-256 `f7a93303d547ee86083dcc47c3cede5ba5163faf3534e75fb3c71fb93689e880`: localStorage token, api.z.ai base URL, 고객 조회, 조직/프로젝트 헤더와 projectType 구분. 저장 키만 읽는 앱 코드는 웹 번들을 실행해 추출하지 않는다.
- [9851 쿼터 모듈](https://static.bigmodel.cn/z-ai-website/_next/static/chunks/9851-51c55f66a5182081.js), SHA-256 `71b4d875c78e7e5f03cd03e7887895928f4097674973da883595a7887c9c9c19`: quota endpoint와 type=2 경로. 개인 usage 페이지의 `page-d15e6878add9208c.js` SHA-256 `a1d552ee75833a1ca985776e29cfc369cb32f88e13a62a4edaeb1157e359244a`에서 구독 목록과 개인/팀 구분을 대조했다.
- 원본 Android 55의 `GlmUsageRepository.kt` 및 `GlmUsageFetcherTest.kt`를 확인했다. 후자의 SHA-256은 `cbfd87318dd4ae66a9c10b6c81481f2581db6ea4647ebc2a2603309241a18446`이다. `webSessionFetchAddsPlanFromExplicitTierResponseWithoutBreakingUsage`의 명시적 플랜 응답과 플랜 실패/날짜 제외 사례를 Swift 테스트에 반영했다. 기존 `glm-credit-limits.json` 회귀 입력도 실제 웹 client의 consumer로 통과시켰다. 고객/조직 목록은 배포 클라이언트 구조에 맞춘 합성 입력이며 인증된 서버 캡처가 아니다.

## 검증과 남은 범위

- 수집 테스트 154개(GLM 웹 신규 10개 함수, 매개변수별 사례 포함), 인증 테스트 29개(신규 2개)가 통과했다. 고객/조직/프로젝트 변경, 중복/잘못된 ID, 개인·팀 요청, Android 수치, 선택적 플랜, 미구독, 401/403/429/503·본문 오류, HTML·과대 본문·취소를 포함한다. 테스트 대역의 Swift 6 동시성 오류와 미구독 상태 기대값을 수정한 뒤 전체 검사를 통과했다.
- 합성 vault·쿠키·HTTP → 실제 LoginCoordinator/StoredAccountSessionSource/RefreshCoordinator → SQLite → 표시 snapshot → DB 재열기로 검증했다. 초기 빈 쿠키에서 응답 쿠키 갱신, 이전 값·다른 계정 보존, 토큰/원격 신원의 표시 파일 미포함을 확인했다. 실제 웹 토큰의 Keychain 재시작 복원 검증은 아니다.
- 실제 Debug 앱의 별도 QA 저장소에서 한국어·영어 안내, 공개 로그인 페이지, 미로그인 연결 차단·취소·재진입과 기존 API 키 화면을 확인했다. 자격 증명을 입력하지 않았다. QA 계정 12개는 변경되지 않았고 usage·credential cleanup 기록은 0개, SQLite integrity는 `ok`였다.
- Debug arm64와 Release arm64/x86_64 앱·확장 빌드, 위젯 6종·한영 리소스·최소 macOS 14 번들 검증이 통과했다. 프로젝트 생성의 바이트·수정 시각 유지와 원본 Android 718개 파일 변경/누락 0개도 확인했다. 결과와 로그는 `artifacts/macos-20260917-glm-web/verification.json`에 기록한다. 서명 없는 빌드이며 Developer ID 서명·공증 증거가 아니다. 코어 46개·위젯 렌더링 33개는 이전 단계 통과 결과이며 이 단계에서 해당 코드를 변경하지 않아 재실행하지 않는다.
- 실계정 Google/Email/GitHub 인증 성공, MFA/passkey, 실제 고객/조직 응답과 개인·팀 유료 quota, 토큰 만료/재로그인, 앱 재시작·업데이트 지속성, CN 웹 로그인, 60초/72시간·절전/재부팅, 서명·공증은 남아 있다. 공개 로그인 화면이 열린 사실이나 합성 테스트를 실제 연결 성공으로 취급하지 않는다.
