# Gemini 웹 로그인과 5시간·주간 한도

2026-09-17 기준. Gemini 소비자 웹 앱의 읽기 경로를 구현했다. Gemini CLI/Code Assist 쿼터로 대체하지 않으며, 실계정 인증 성공과 실제 사용량·세션 지속성 검증은 남아 있다.

## 웹 계약과 계정 선택

- 공식 [Gemini 사용량 화면](https://gemini.google.com/usage)과 [Gemini Apps 한도 설명](https://support.google.com/gemini/answer/16275805)을 확인했다. 현재 사용량 화면은 5시간·주간 창을 구분한다. 제공자의 내부 웹 API가 안정적인 공개 API라고 가정하지 않는다.
- 배포 build `boq_assistant-bard-web-server_20260914.08_p0`의 `LQaXg` 라우터와 `XsTXab` 사용량 모듈을 확인했다. `jSf9Qc`는 `/BardFrontendService.GetUsageInfo`로 선언되어 있으며, 실제 화면은 응답 field 2의 row type 1/2를 각각 5시간·주간에 사용한다. 임의의 다른 RPC ID를 추측·호출하지 않는다.
- 로그인마다 새로운 WebKit profile을 사용한다. 연결 화면에 Google 계정 하나를 사용하며 `/u/1/...` 또는 `authuser=1`처럼 다른 계정이 선택된 경우 기본 계정으로 바꿔 수집하지 않고 안내한다. 이 단계는 Google의 다중 로그인 슬롯을 가져오는 기능을 구현한 것이 아니다.
- HTML의 `Lz8rbb` 로그인 상태와 웹 프레임워크의 XSRF 계정 결합 필드 `S06Grb`를 확인한다. `FdrFJe`는 전송 session이므로 원격 계정 신원으로 사용하지 않는다. 이메일을 임의의 HTML 문자열에서 추정하지 않는다. product는 `gemini-web-subscription`, workspace는 없다. **실계정의 재로그인·장기 실행에서 `S06Grb`의 안정성을 확인하는 작업은 남아 있다.**
- `/usage?hl=en&authuser=0`의 `SNlM0e`·`FdrFJe`·`cfb2h`를 읽은 뒤, 동일 origin의 `/_/BardChatUi/data/batchexecute`에 고정된 읽기 RPC를 POST한다. `SNlM0e`는 비어 있지 않아야 하며 특정 접두사를 요구하지 않는다. XSRF 토큰은 form body에만 넣는다. 자동 redirect·공유 쿠키 jar·CLI 토큰 가져오기를 사용하지 않는다.

## 사용량과 파서

- 현행 웹 화면은 각 row의 두 번째 값을 사용 **비율**로 읽는다. 0.04는 4% 사용/96% 잔여, 0.0025는 0.25% 사용이다. 첫 번째 원시 값 2357·48302 등을 요청 상한이나 잔여 횟수로 더하지 않는다. 저장 단위는 percent이며 내부 소수 정밀도를 유지한다.
- 5시간·주간 두 창을 모두 확인해야 새 report를 채택한다. 누락값·잘못된 비율·중복 창·부분 응답·다른 RPC·알 수 없는 실행 형식은 이전 값을 보존하는 실패다. 100% 잔여나 무제한으로 대체하지 않는다. 다른 row type의 의미/단위는 추정하지 않는다.
- reset은 중첩 protobuf timestamp의 seconds/nanos로 해석하고 소수초를 보존한다. 밀리초 seconds·잘못된 nanos는 거부한다. 보고되지 않은 reset은 만들지 않는다. 현재 웹 코드에서 확인한 plan enum 2/3/6/4만 Pro/Ultra/Ultra/Plus로 표시하며 다른 정상 enum의 플랜명은 미확인으로 남긴다.
- Android의 2026-07-24 캡처 fixture와 기존 웹 DOM 회귀 비율을 비교했다. Android 테스트 일부의 `450 remaining + 150 used` 같은 합성 count 해석은 현행 웹 화면의 fraction 계약과 달라 이 production RPC 파서에 섞지 않는다. 옛 가정으로 150을 정상 사용 비율로 인정하지 않는다.
- HTML bootstrap은 제한된 JSON 데이터만 읽으며 JS를 실행하지 않는다. `WIZ_global_data` 중복 선언/키·비유한 숫자·잘린 문자열·과도한 깊이/노드·실행 표현식을 거부한다. HTML 2 MiB, RPC 512 KiB, JSON 깊이 32 미만/노드 50000개 등 상한을 둔다.
- batchexecute의 XSSI prefix와 완결된 frame을 읽고 정확히 한 개의 `jSf9Qc` 응답만 채택한다. transport의 byte-count 줄은 구분 정보로만 읽으며 payload의 완결성은 JSON parser로 확인한다. bootstrap의 임의 중첩 배열을 quota로 검색하거나 알 수 없는 RPC를 탐색하는 fallback은 연결하지 않았다.

## 세션 캐시와 실패

- 첫 수집과 캐시 만료 시 HTML 신원 확인 → 사용량 RPC → HTML 신원 재확인을 수행한다. 프로세스 내 캐시는 local account·generation·session revision·remote identity·쿠키 snapshot SHA-256에 묶으며 최대 32개, 유효 기간 15분이다. 정상 cache hit는 만료 시각을 연장하지 않는다. 쿠키나 세션이 바뀌면 HTML을 다시 읽는다.
- cache hit에서는 같은 계정에 결합된 XSRF/session으로 RPC를 읽으며 매번 새 HTML을 받지 않는다. RPC 자체에는 별도 사용자 ID가 없으므로 **동일 쿠키와 계정 결합 XSRF에 대한 서버 검증에 의존**한다. 각 cache hit가 새로운 원격 신원 조회를 수행한다고 주장하지 않는다. 실제 서버의 계정 전환/쿠키 만료 동작 검증이 필요하다.
- 캐시 요청이 HTTP 400이면 HTML을 다시 읽어 한 번만 재시도한다. 새 HTML의 신원이 다르거나 재시도도 실패하면 report를 채택하지 않는다. 성공한 복구의 전송량에는 첫 오류 응답도 포함한다. 401·429·네트워크/형식 오류를 이 재시도와 혼합하지 않는다.
- 응답 Set-Cookie가 있으면 cache hit에서도 HTML 신원을 다시 확인한다. Google의 `Domain=.google.com` 갱신은 `gemini.google.com` 응답에서 같은 격리 profile로만 허용한다. 요청 origin은 여전히 정확히 `gemini.google.com`으로 제한하며 accounts.google.com·임의 sibling·공개 suffix·다른 제공자의 부모 도메인은 허용하지 않는다.
- 실패·취소·신원 변경 뒤 기존 usage·fetchedAt·credential reference·다른 계정을 유지한다. 늦은 캐시 기록은 새 revision의 캐시를 제거하지 않는다. 캐시와 토큰은 SQLite·위젯 JSON·로그로 내보내지 않는다.

## 근거와 검증 결과

- 공식 공개 HTML SHA-256 `6726459f20b2e5c8d9cdd6ef0f9da038f36700de8d93e943a15f5db20a0abc39`, `LQaXg` 모듈 `075bc49ac91902536626498acee7e59cb3dbe0353d54567d73e6540a0ee1bdbc`, `XsTXab` 모듈 `14376f3cc2bb01759fd861b929573039f009ecdfeabe14a1fd5f4931bc7bfc76`을 보존했다. URL과 선택 근거는 단계 artifacts의 `provenance/public-page.json`, `app-module.json`, `usage-modules.json`, 발췌 JSON에 기록했다. 공개 페이지 접근은 인증 후 API 성공 증거가 아니다.
- 원본 Android `GeminiUsagePageNativeFetcherTest.kt` SHA-256은 `949c043dc558cd2d0a3c26f7fde2a4a6c6d9bc8aec5e6b1d032cb0bd9b0677bf`다. 캡처 문자열을 익명 fixture로 옮겨 production decoder의 두 창·reset 소수초를 확인했다. DOM 회귀 입력의 출처는 `ProviderUsageNormalizerTest.kt` SHA-256 `eefc278c1721e55d9216c200856ae3b90321579c125d75de78b9e33bcf130157`이다.
- 수집 패키지 116개(Gemini 13개, 매개변수 입력 포함)와 GLM 번들 실행, 인증 패키지 27개 테스트가 통과했다. 프레임 절단·중복/다른 RPC·범위/단위·미로그인·선택 계정·HTTP 오류·늦은 취소, 캐시 TTL/계정/쿠키/revision/sequence, 400 복구·쿠키 회전 뒤 신원 변경을 검사했다.
- 합성 vault/쿠키/HTTP → 실제 LoginCoordinator/StoredAccountSessionSource/collector/coordinator → SQLite → snapshot consumer에서 정상 수집과 오류 후 이전 값·다른 계정 보존을 확인했다. Google parent-cookie 갱신과 다른 profile 보존, 세션 객체 재생성 후 복원도 검사했다. 실제 Google 자격 증명 재시작 검증은 아니다.
- 실제 격리 Debug 앱에서 한·영 안내, 공개 Gemini 앱 → Google 이메일 입력 화면 이동, 미로그인 계정 확인 차단·취소·재열기를 확인했다. 이메일·암호나 프롬프트를 입력하지 않았다. 12개 QA 계정 payload/sequence/completed와 미연결 상태를 보존했고 정리 대기 기록은 같은 실행에서 0개였다.
- 최종 Debug arm64·Release arm64/x86_64 앱/확장 빌드, 위젯 번들 메타데이터, 프로젝트 생성의 바이트·수정 시각 유지, Android 원본 718개 파일 변경/누락 0개를 확인했다. 서명·공증 증거가 아니다. 코어 46개·위젯 렌더링 33개는 앞 단계 결과이며 해당 소스가 바뀌지 않아 이번에는 재실행하지 않았다.

테스트·빌드 로그, 격리 QA 저장소와 결과는 Git 제외 `artifacts/macos-20260917-gemini/verification.json` 및 같은 폴더에 보관한다.

## 남은 검증

실계정 로그인·실제 쿼터, XSRF 계정 결합과 재로그인 후 신원 안정성, MFA/passkey·embedded WebKit의 Google 정책·지원되는 외부 브라우저 경로, 실제 쿠키 만료/재시작/업데이트, 추가 row type의 상품/단위, 60초/72시간 계측이 남아 있다. 서버 쪽 계정 혼선 차단과 캐시의 장기 정확성을 현재의 합성 전송 테스트만으로 완료 처리하지 않는다. 서명된 App Group·위젯 갤러리·Developer ID·공증도 전체 계획에 남아 있다.
