# Kiro 웹 로그인과 크레딧 수집

2026-09-17 기준. 격리 웹 로그인과 개인 계정의 CBOR 수집 경로를 구현했다. 실계정 인증 성공과 현재 계정의 실제 사용량 검증은 남아 있다.

## 계정과 요청

- 로그인 시도마다 새 WebKit profile에서 `https://app.kiro.dev/settings/account`를 연다. Google·GitHub·Builder ID 개인 로그인을 지원하는 계약이며, CLI 설치나 로컬 인증 DB 읽기는 필요하지 않다. 조직 로그인은 profile ARN·지역을 명시적으로 결합하는 경로가 필요해 현재 거부하고 안내한다.
- `GetUserInfo`의 `userId`를 `kiro-web-subscription` 신원에 결합한다. 이메일은 표시용이다. `Active` 상태와 `Github`/`Google`/`BuilderId`를 확인하며, `Stale`, 프로필 선택 대기와 접근 제한은 각각 실패로 처리한다.
- 고정 origin의 `/service/KiroWebPortalService/operation/GetUserInfo`와 `GetUserUsageAndLimits`만 호출한다. 둘 다 데이터를 읽는 POST이며 빈 CBOR map(`a0`)을 보낸다. `origin=KIRO_IDE`, 사용량의 `isEmailRequired=true`, `application/cbor`, `smithy-protocol: rpc-v2-cbor`를 지정한다. 구독·결제·프로필 변경 API는 호출하지 않는다.
- 계정에 묶인 쿠키를 보내며 bearer나 CLI refresh token을 추출하지 않는다. 원본 Android의 웹 수집 방식과 배포 웹 클라이언트 스키마를 대조했다. 비인증 공개 요청이 401 CBOR를 반환한 사실은 인증 후 성공이나 향후 CSRF 요구 여부를 증명하지 않는다.
- 수집 전 신원 → 사용량 응답의 신원 → 수집 후 신원을 모두 대조하며 로그인 제공자도 유지되는지 확인한다. 응답 쿠키는 기존 account-scoped transport를 통해 같은 WebKit profile에 반영한다. 401/423/신원 변경은 재인증 경로로, 403·형식 오류는 수집 실패로 처리한다. 오류로 기존 읽기값·수집 시각·인증 참조를 덮어쓰지 않는다.

## 수치와 만료 계약

- 월간 `currentUsageWithPrecision`과 `usageLimitWithPrecision`을 우선한다. 배포 웹 UI처럼 보고된 사용량을 그대로 보존하며, 별도 CLI API의 계산식을 가져와 초과 사용량·보너스를 빼거나 합산하지 않는다. 잘못된 precision 필드를 하위 정밀도 필드로 숨기지 않는다.
- `CREDIT`의 단위는 credits다. 다른 resource는 서버가 보고한 단위를 요구한다. CREDIT의 0·누락·999999 이상 상한은 잔여 한도를 알 수 없는 값으로 처리하며 사용량은 남긴다. `320 credits 사용`을 무제한이나 100% 잔여로 바꾸지 않는다. 다른 resource나 실제 보너스/선불 한도에 CREDIT sentinel을 적용하지 않는다.
- 월간, 활성 무료 체험, 활성 보너스, 선불 크레딧, 초과 사용량과 초과 요금을 별도 지표로 유지한다. 초과 사용 스위치만으로 사용량 0이나 사용 가능 크레딧을 만들지 않는다. 요금은 보고된 통화와 사용액만 보존하며 `maxOverageAmount`나 rate로 resource별 지출 한도를 추정하지 않는다.
- 보너스 지표 ID는 bonus code와 발급 시각의 해시로 만든다. 서버 ID가 없는 선불 크레딧은 같은 만료일끼리만 합산해 응답 순서가 바뀌어도 지표가 바뀌지 않게 한다. 각 선불 항목의 사용량과 상한을 먼저 검증한다. inactive 체험/보너스는 제외한다.
- CBOR timestamp는 epoch seconds다. 월간 reset과 체험/보너스/선불의 expiry를 구분한다. 수집 시 이미 만료된 유한 보너스는 잔여 0으로 처리하되 실제 사용량은 보존한다. 만료를 quota reset으로 등록하거나 리셋 알림을 만들지 않는다.
- 코어 `.unknown`은 유한한 비음수 `used`를 보존할 수 있지만 remaining·limit·fraction은 계속 금지한다. 선택 필드 `expiresAt`을 저장/표시 projection에 추가했다. 이전 JSON은 읽을 수 있고 SQLite schema는 2, snapshot schema는 1이다. 이 새 `.unknown` 사용량을 구버전 앱으로 다시 읽는 다운그레이드 호환성은 보장하지 않는다.

## 전송 파서

`KiroCBOR`는 JavaScript나 실행 가능한 표현식을 평가하지 않는 제한된 데이터 파서다. definite/indefinite map·array·문자열·바이너리, 정수와 세 부동소수점 폭, bool/null, timestamp tag 1을 처리한다. 문자열 map key만 허용하며 중복 키·후행 데이터·잘린 입력·잘못된 UTF-8/tag·비유한 수치를 거부한다. 응답 512 KiB, 깊이 32 미만, 노드 20000개, 컨테이너 4096개, 문자열/바이너리 64 KiB 상한을 둔다.

## 근거와 검증

- 공식 [Kiro 계정 페이지](https://app.kiro.dev/settings/account)의 배포 release `f1d842cc594dd22d`를 확인했다. [main.js](https://assets.app.kiro.dev/releases/f1d842cc594dd22d/main.js) SHA-256은 `69b63d124c599bf87b53f00fdb4c42c14415e636afb99c66fd2ecbf406539efa`, [vendor.js](https://assets.app.kiro.dev/releases/f1d842cc594dd22d/vendor.js)는 `f2a2be12bad7374d3c8c3309115cff4ffeb09aa7b2e32bedb3c80c9d678278cd`다. 실제 operation/input/output 스키마, 개인 idp/status 값, 화면에서 쓰는 usage 필드를 대조했다. 이 배포 API를 안정적인 공개 API로 간주하지 않는다.
- 원본 Android 55의 `CborJsonTest.kt` SHA-256 `eb5b952fd32291587d958b69fdade8e0ea8017a15e043ee5e7a045161d1fbe8d`에서 2026-07-29 캡처 fixture 743바이트를 보존했다. userId는 합성값이고 인증정보는 없다. CBOR SHA-256은 `e83bd0597111e8c806ccac2551fe7f0c14dae4715bcffe1399d7ea0d6ca7c6fa`이며, 66.05/5000 credits와 98.679% 잔여를 Swift consumer로 확인했다. 현재 실계정 응답을 새로 캡처한 것은 아니다.
- 기존 Android 정규화 회귀 입력 두 개도 비교했다. 출처 `ProviderUsageNormalizerTest.kt` SHA-256은 `eefc278c1721e55d9216c200856ae3b90321579c125d75de78b9e33bcf130157`이다.
- 수집 패키지 103개(Kiro 14개, 매개변수 입력 포함), GLM 리소스 실행과 코어 46개 테스트가 통과했다. 캡처 응답의 743개 절단 위치, 별도 CBOR writer의 입력, 정밀도/단위/상한/expiry, 신원 변경·조직 계정·401/403/423/429/503·형식 오류·취소를 검사했다.
- 합성 vault/쿠키/HTTP → 실제 LoginCoordinator → StoredAccountSessionSource → collector/coordinator → SQLite → JSON consumer를 통과했다. 쿠키 회전, 신원 변경·잘못된 응답·인증 오류·계정 제한 후 이전 값/인증 참조/다른 계정 보존, 표시 파일의 인증정보 부재를 확인했다. 실제 제공자 로그인과 실제 자격 증명 복원을 대신하지 않는다.
- SQLite 재열기·snapshot consumer에서 상한 없는 사용량과 별도 expiry를 보존했고 expiry만 지난 경우 리셋 알림이 만들어지지 않음을 검사했다. 기존 JSON에 `expiresAt`이 없어도 읽는다.
- 실제 위젯 query/timeline/SwiftUI 코드로 33개 PNG를 생성했다. Kiro의 한·영 small/medium/large 6개를 추가했으며, 작은 위젯 문구 잘림을 발견해 수정하고 두 언어를 다시 확인했다. 서명 App Group·WidgetKit 갤러리 검증은 아니다.
- 실제 격리 Debug 앱에서 한·영 설명, 공개 Google·GitHub·Builder ID·조직 로그인 선택 화면, 미로그인 계정 확인 차단과 취소를 확인했다. 12개 미연결 계정의 payload/sequence/completed를 보존했고 취소 후 credential 정리 기록은 0개였다. 자격 증명을 입력하지 않았다.
- 별도 합성 사용량 저장소의 실제 Debug 앱에서 한·영 `320 credits 사용`/상한 미확인과 보너스 75%/`만료`를 확인했다. 자동 수집은 껐으며 서버에서 받아온 실계정 수치가 아니다.
- 최종 Debug arm64·Release arm64/x86_64 앱/위젯 빌드와 확장 메타데이터가 통과했다. `CODE_SIGNING_ALLOWED=NO`이므로 배포 서명·공증 증거가 아니다. 인증 패키지 25개는 앞 단계 통과 결과이며 이번에는 재실행하지 않았다.

공개 소스·요청, 테스트/빌드 로그, QA 저장소와 단계 결과는 Git 제외 `artifacts/macos-20260917-kiro/`에 보관한다.

## 남은 작업

실계정 로그인·현재 사용량·재시작 후 세션 지속·토큰 만료 후 갱신, 조직 profile ARN/지역 선택, 외부 브라우저 및 CLI 경로, 60초/72시간 실측은 남아 있다. 현재 수집기는 응답 Set-Cookie를 반영하지만 별도의 Kiro token refresh API는 호출하지 않으며 인증 만료는 재로그인으로 처리한다. 장기 실행·절전/재부팅/업데이트와 서명된 위젯·Developer ID·공증도 전체 계획의 미완료 항목이다.
