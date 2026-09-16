# OpenCode 웹 로그인과 Go·Zen 사용량

2026-09-17 기준. 격리 웹 로그인과 선택한 워크스페이스의 수집 경로를 구현했다. 실계정 인증 성공과 실제 Go·Zen 응답 검증은 남아 있다.

## 계정과 요청

- 로그인 시도마다 새 WebKit profile에서 `https://opencode.ai/auth`를 연다. `/auth/status`의 account ID로 신원을 확인하며 이메일은 표시용이다. product는 `opencode-workspace`이고 사용자가 workspace를 명시적으로 선택한다.
- OpenCode의 `getActor(workspace)`는 쿠키 안의 여러 계정 중 해당 workspace에 속한 계정을 고를 수 있다. 신원 혼선을 막기 위해 이 격리 세션에는 계정 하나만 허용한다. 여러 계정이면 웹 화면에서 다른 계정을 로그아웃하라는 안내를 제공한다. AI Quota의 서로 다른 로컬 계정은 별도의 profile을 사용한다.
- 발견은 신원 → workspace 목록 → 신원 순서다. 수집은 신원 → 소속 목록 → Go → billing → 신원 → 소속 목록의 GET 6회이며 선택한 workspace와 계정이 전후 동일해야 저장한다. 여러 workspace 중 첫 항목을 자동 채택하지 않는다. 선택지가 하나일 때만 미리 선택하며 연결 버튼으로 확정한다.
- 수집 HTTP는 `opencode.ai`만 허용하고 redirect를 자동으로 따르지 않는다. 응답 쿠키 갱신은 해당 profile에만 반영한다. 전역 브라우저 쿠키, 로컬 OpenCode DB, CLI 토큰, API 키는 읽지 않는다. 결제·구독 변경이나 메시지 전송 endpoint는 호출하지 않는다. 제공자 서버가 조회 과정에서 last-seen/default-region 등을 갱신하는 동작까지 없다고 보장하지는 않는다.
- 401·로그인 redirect·세션 만료, 403·잘못된 형식, 429·Retry-After, 5xx·네트워크 오류를 구분한다. Go가 정상이어도 billing이 비었거나 알 수 없는 형식이면 실패로 처리한다. 중간 실패를 부분 성공으로 바꾸지 않으며 이전 사용량·fetchedAt·연결 참조를 보존한다. 다른 계정의 기록도 유지한다.

## 실제 전송 형식과 수치

배포된 공개 JS에서 확인한 SolidStart GET query를 사용한다. ID는 배포 변경에 따라 달라질 수 있으며 실패 시 이전 값을 유지한다.

| 조회 | query ID |
| --- | --- |
| `getWorkspaces_query` | `def39973159c7f0483d8793a822b8dbb10d067e12c65455fcb4608459ba0234f` |
| `lite.subscription.get` (Go) | `c7389bd0e731f80f49593e5ee53835475f4e28594dd6bd83eb229bab753498cd` |
| `billing.get` | `c83b78a614689c38ebee981f9b39a8b377716db85c1fd7dbab604adc02d3313d` |

`subscription.get`의 별도 ID는 Black/legacy 경로이므로 Go로 오인하지 않는다. 응답은 12바이트 길이 헤더와 Seroval 표현식일 수 있다. Swift 파서는 제한된 데이터 형식만 해석하고 JavaScript를 실행하지 않는다. 객체·배열·문자열·유한 숫자·불리언·null·Date 리터럴·이전 참조만 지원하며 크기/깊이/노드/문자열 상한을 적용한다. 잘린 프레임, 다른 instance, 다중 프레임, 중복/순환/앞선 참조, 함수 실행 표현식은 거부한다.

| 입력 | 표시 계약 |
| --- | --- |
| Go `rollingUsage`, `weeklyUsage`, `monthlyUsage` | 세 창을 각각 5시간·주간·월간 지표로 보존. `usagePercent`는 0–100 단위이며 0.36·1을 fraction으로 오해하지 않음 |
| Go `resetInSec` | Go 응답 수신 시각에 더함. 뒤따르는 billing 요청 지연으로 reset이 뒤로 밀리지 않음 |
| Go `usage`, `limit` | 확인된 고정소수점 단위 1e8을 USD로 변환. 한도가 없으면 퍼센트만 표시하며 금액을 만들지 않음 |
| Go `mine:false` | 다른 workspace 구성원의 구독으로 명시해 미지원 지표로 표시. 그 사람의 쿼터를 내 잔여량으로 채택하지 않음 |
| 명시적 null Go | Go 미구독을 허용하고 유효한 Zen 값만 표시. 잘못되거나 일부만 있는 Go를 미구독으로 대체하지 않음 |
| Zen `balance` | 1e8 단위를 USD로 변환하며 음수 잔액도 보존. 잔액을 한도 비율로 만들지 않음 |
| Zen `monthlyUsage`, `monthlyLimit` | 사용액은 1e8 단위, 한도는 이미 USD. 별도 월간 지출 지표로 표시 |
| `timeMonthlyUsageUpdated` | console과 같은 UTC 달력 월. 지난달/명시적 null이면 현재 월 사용액 0, 현재 월이면 보고된 금액. 누락·잘못된 시각·미래 월은 오류 |
| 월간 지출 기간 | 확인한 UTC 달력 월 계약에서 시작/다음 달 시작을 계산. Go reset이나 마지막 사용 시각을 월간 reset으로 복사하지 않음 |
| 명시적 null/0 `monthlyLimit` | 월간 지출 한도 없음. Go 쿼터가 무제한이라는 의미가 아님 |

코어는 `.balance` 상태의 유한한 `remaining`에만 음수를 허용하도록 확장했다. quota의 비율·음수 한도/사용액 제한은 그대로다. 저장/표시 JSON schema는 변경하지 않는다.

Android structured dashboard 회귀 입력용 `decodeDashboard`는 별도 단위 계약을 유지한다. `remainingFraction`과 percent를 구분하고, credits를 임의로 USD로 바꾸지 않으며, 현지화된 reset 문자열만으로 절대 시각을 만들지 않는다. 이 어댑터는 회귀 검증용이며 **실제 DOM 수집 fallback에는 연결하지 않았다**.

## 근거와 검증

- 공식 OpenCode 커밋 `88c6c7abc7f320b6aabed2634ac0b2d6e6ecea67`의 [계정 선택](https://github.com/anomalyco/opencode/blob/88c6c7abc7f320b6aabed2634ac0b2d6e6ecea67/packages/console/app/src/context/auth.ts), [workspace 목록](https://github.com/anomalyco/opencode/blob/88c6c7abc7f320b6aabed2634ac0b2d6e6ecea67/packages/console/app/src/routes/workspace-picker.tsx), [Go 쿼터](https://github.com/anomalyco/opencode/blob/88c6c7abc7f320b6aabed2634ac0b2d6e6ecea67/packages/console/app/src/routes/workspace/%5Bid%5D/go/lite-section.tsx), [billing 단위](https://github.com/anomalyco/opencode/blob/88c6c7abc7f320b6aabed2634ac0b2d6e6ecea67/packages/console/app/src/routes/workspace/common.tsx)를 확인했다.
- 실제 공개 JS `workspace-GEoMCG4x.js`, `common-CzC7MGxb.js`, `index-Cn7-k1Ef.js`, `index-Cs99wszm.js`, `server-runtime-B378g3ck.js`에서 배포 query ID, Go/Black 구분, UTC 월 사용액 및 프레임 형식을 대조했다. URL·SHA-256·바이트 수를 provenance에 보존했다. upstream 최신 코드와 현재 배포가 동일하다고 가정하지 않는다.
- 비인증 `/auth/status`는 `{}`를 반환했다. 세 query는 공개 계정/로그인 필요 오류를 반환했고 이 오류를 성공 데이터로 해석하지 않았다. 공개 접근 검사는 인증 후 성공의 증거가 아니다.
- 원본 Android 55의 `ProviderUsageNormalizerTest.kt` SHA-256 `eefc278c1721e55d9216c200856ae3b90321579c125d75de78b9e33bcf130157`에서 보존한 OpenCode 입력의 75%·60%·90% 잔여율과 별도 4.5 credits를 Swift consumer로 대조했다. 합성 fixture다.
- 수집 패키지 전체 89개(OpenCode 17개, 매개변수 입력 포함) 및 기존 GLM 리소스 실행, 코어 45개 테스트가 통과했다. 프레임·단위·월 경계·신원/소속 변경·세션 혼선·401/403/429/503·취소와 늦은 응답을 검사했다.
- 합성 인증 저장소/쿠키/HTTP → 실제 LoginCoordinator → collector/coordinator → SQLite → JSON 발행/읽기로 연결 성공, 쿠키 회전, 이후 오류의 이전 값 보존, 다른 계정 보존, 표시 파일의 인증정보 부재를 확인했다. 이 경로는 실제 OpenCode 로그인 성공이나 실제 Keychain 자격 증명 복원 검증을 대신하지 않는다.
- 코어의 SQLite 재열기/JSON consumer에서 -1.25 USD를 보존했고 위젯 query/timeline/SwiftUI consumer로 같은 값을 검사했다. 독립 네이티브 위젯 probe의 27개 PNG가 생성됐으며 음수 잔액의 영어 렌더링을 눈으로 확인했다. 실제 WidgetKit 갤러리·서명 App Group 검증은 아니다.
- 실제 Debug 앱에서 한국어/영어 설명, GitHub·Google 공개 로그인 화면, 미로그인 계정 확인 차단, 취소·다시 열기를 확인했다. 자격 증명을 입력하지 않았으며 QA 12개 계정의 payload/sequence/completed와 미연결 상태를 보존했다. 같은 실행에서 취소 후 credential 정리 기록은 0개였다.
- Debug arm64·Release arm64/x86_64 앱/위젯 빌드와 확장 메타데이터, 프로젝트 생성의 바이트·수정 시각 유지, 원본 Android 55 manifest 718개 파일의 변경/누락 0개를 확인했다. 서명·공증 증거가 아니다. 수정하지 않은 인증 패키지 25개는 이전 단계 통과 결과이며 이번에는 재실행하지 않았다.

공개 소스·요청, 테스트/빌드 로그, 격리 QA 저장소 및 단계 결과는 Git 제외 `artifacts/macos-20260917-opencode/`에 보관한다.

## 남은 작업

실계정 인증 성공, 인증 후 workspace 선택 UI, 실제 Go·Zen 요금제/재시작/만료/회원 변경, 새 console로 이관된 workspace, API 키 사용량 경로와 DOM 대체 경로는 미검증 또는 미구현이다. 새 console redirect를 임의로 따라가지 않는다. 외부 브라우저·CLI 경로, 60초/72시간 실측, 서명된 위젯 공유, Developer ID·공증도 전체 계획에 남아 있다.
