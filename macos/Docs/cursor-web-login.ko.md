# Cursor 웹 로그인과 사용량 수집

2026-09-17 기준. 이 단계는 격리된 웹 계정의 연결 경로와 수집 계약을 구현한다. 실계정 인증 성공이나 Cursor 전체 기능 완료를 뜻하지 않는다.

## 인증과 요청 범위

- 로그인 시도마다 별도 영구 WebKit profile에서 `https://cursor.com/dashboard`를 연다. 설치된 Cursor 앱의 DB·토큰이나 전역 브라우저 쿠키를 가져오지 않는다.
- `/api/auth/me`가 반환하는 `sub`를 원격 신원으로 사용하고 이메일은 표시용으로만 쓴다. product는 `cursor-subscription`, workspace는 미지정이다. 이미 연결한 계정의 신원을 바꾸지 않는다.
- 계정 확인 뒤 연결 전 사용량을 검증한다. 수집은 같은 프로필로 신원 조회 → `/api/usage-summary` → `/api/usage?user=<검증한 sub>` → 신원 재조회 순서의 GET 요청을 보낸다. 수집 전후 신원이 달라지면 결과를 저장하지 않는다.
- HTTP 전송은 `cursor.com`만 허용하며 응답 쿠키 갱신도 해당 프로필에만 반영한다. 방문자 쿠키는 원격 요청 전에 거부한다. Keychain에는 profile 참조를 저장하고 표시 snapshot에는 신원·쿠키·profile 식별자를 내보내지 않는다.
- summary의 404는 legacy 요청 쿼터로 보완할 수 있고 legacy의 404는 선택 정보 없음으로 처리한다. 401·403·429·서버 오류는 성공으로 숨기지 않는다. legacy 요청이 429여도 먼저 받은 summary만 저장하지 않는다. 이 정책이 모든 현행 요금제에 맞는지는 실계정 검증이 필요하다.

## 수치 계약

| 입력 | 처리 |
| --- | --- |
| `totalPercentUsed`, `autoPercentUsed`, `apiPercentUsed` | 0–100 백분율. 0.36%와 1%도 소수 정밀도를 보존하며 Auto/API 평균으로 Total을 만들지 않음 |
| `individualUsage.plan/onDemand/overall` | 개인 범위의 금액만 알려진 cents 단위에서 USD로 변환. Total·On-demand·Individual cap을 분리 |
| Android `planUsage`, `limits`, structured breakdown | Android의 9개 합성 회귀 입력과 지표별 잔여율 대조. 출처가 확인되지 않은 금액을 USD로 추정하지 않음 |
| legacy request buckets | `numRequestsTotal` 우선, 보고된 요청 수·한도를 합산. 현대 플랜의 결제 주기를 legacy 요청 주기에 복사하지 않음 |
| 명시적 unlimited / enabled / disabled | 명시적 unlimited만 무제한. enabled인데 한도가 없으면 미확인, disabled 행은 제외 |
| 누락·0 한도·오류·team-only 응답 | 사용 가능한 쿼터가 없으면 오류. 100% 잔여나 개인 쿼터로 만들어 내지 않음 |

같은 지표가 여러 형식에 나타나면 reset이 일치하는지 확인하고 낮은 잔여율을 사용한다. summary에 요청 쿼터가 있으면 빈 legacy 응답 때문에 버리지 않는다. 리셋은 응답에서 확인된 값만 저장한다. 수집 실패 시 이전 사용량·fetchedAt·credential reference를 보존하고 오류 상태를 갱신한다.

## 근거와 검증

- 원본 Android 1.2.2(55)의 `ProviderUsageNormalizerTest.kt` 중 Cursor 회귀 9개를 JSON fixture로 보존했다. 원본 파일 SHA-256은 `eefc278c1721e55d9216c200856ae3b90321579c125d75de78b9e33bcf130157`이다. 합성 입력이며 실계정 응답은 아니다.
- 고정 CodexBar 커밋 `928166f899471bbdcb72210641cdec91324d0154`의 [CursorStatusProbe.swift](https://github.com/steipete/CodexBar/blob/928166f899471bbdcb72210641cdec91324d0154/Sources/CodexBarCore/Providers/Cursor/CursorStatusProbe.swift)에서 신원 필드·쿠키 이름·엔드포인트·개인 금액 단위를 확인했다. upstream의 Auto/API 평균이나 오류 시 0% 대체는 사용하지 않는다.
- 현재 [Cursor 요금·모델 문서](https://cursor.com/docs/models-and-pricing)는 Cursor Models/Other Models 두 사용량 풀을 설명한다. 기존 wire 필드 `auto`/`api`와 새 풀의 대응은 확인하지 못했으므로 임의로 이름을 바꾸지 않는다. [사용량 제한 안내](https://prod.cursor.com/help/models-and-usage/usage-limits)와 [초과 사용 안내](https://prod.cursor.com/help/account-and-billing/overages)도 실제 한도·주기를 임의 상수로 대신할 근거는 아니다.
- 비인증 공개 요청에서 `/api/auth/me`는 204, `/api/usage-summary`는 401을 반환했다. CLI의 dashboard 요청은 로그인 호스트로 이동 후 403이었지만 실제 WKWebView에서는 로그인 화면이 렌더링됐다. 이는 인증 후 API 성공 증거가 아니다.
- `bash macos/Scripts/test-collectors.sh`: Cursor 테스트 16개를 포함한 전체 72개와 기존 GLM 번들 실행 통과. 9개 Android 입력, 소수 백분율·cents, 기간 분리, 신원 변경, 잘못된 응답, 취소 후 늦은 반환, 401/403/429/503, 쿠키 갱신을 검증했다.
- 합성 인증 저장소/쿠키/HTTP를 실제 LoginCoordinator·collector·RefreshCoordinator·SQLite·JSON 발행/읽기에 연결했다. 사용량 성공과 이후 실패에서 값 보존 및 인증정보 미노출을 확인했다. 실제 Cursor Keychain/로그인 성공 검증은 아니다.
- 실제 Debug 앱의 격리 QA 저장소에서 한국어/영어 설명, 이메일·Google·GitHub·Apple 로그인 화면, 미로그인 계정 확인 차단, 취소·다시 열기를 확인했다. 자격 증명을 입력하지 않았고 QA 계정 12개는 미연결 상태를 유지했다.
- 취소한 WebKit profile이 다음 실행까지 정리 대기로 남는 경로를 실제 UI에서 재현했다. 캐시될 수 있는 SwiftUI native view와 WKWebView를 분리하고, 취소 시 뷰를 떼어 내며 창이 닫힌 뒤 제한적으로 재시도한다. 최종 Debug 앱에서 빠른 취소를 두 번 연속 수행한 뒤 재시작 없이 정리 기록 0개·대기 표시 해소를 확인했다. 수정 전 대기 기록의 재시작 복구도 확인했다.
- 최종 Debug arm64·Release arm64/x86_64 앱/위젯 빌드, 확장 메타데이터와 프로젝트 생성 재현성을 확인했다. 서명하지 않은 개발 검증이다. 원본 Android 55 manifest의 718개 파일은 변경·누락 0개였다. 수정하지 않은 Core/Auth 패키지 테스트는 이번 단계에서 재실행하지 않았다.

검증 로그와 공개 요청 상태, 격리 QA 저장소는 Git 제외 `artifacts/macos-20260917-cursor/`에 보관한다.

## 남은 작업

실제 계정 인증·다중 계정·세션 재시작·만료/챌린지·현행 요금제 응답과 새 풀 이름 대응, 식별된 팀 쿼터, API2 current-period 대체 경로, 로컬 Cursor 앱 연결과 외부 브라우저 경로는 미검증 또는 미구현이다. 전체 계획에서 제외하지 않는다. 60초/72시간 실측, 서명된 App Group/위젯, Developer ID·공증도 별도 완료 조건이다.
