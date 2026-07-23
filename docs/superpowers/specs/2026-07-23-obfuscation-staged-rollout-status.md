# 난독화 단계별 적용 현황 및 결정 기록

Date: 2026-07-23

`2026-06-10-android-obfuscation-security-design.md`의 안정화 우선 난독화를 저위험 단계부터
순차 적용하면서의 진행 현황과, 각 단계에서 내린 결정을 기록한다. 브랜치 규칙은 `secu/작업명`.

## 단계 현황

| 단계 | 내용 | 상태 | 커밋/브랜치 |
|---|---|---|---|
| Stage 0 | 난독화 가드 테스트 + 노출 측정 스크립트/기준선 | 완료 | `6d3c4973` |
| Stage 1 | Play 자동 보호(PairIP) 확인 | 완료 | (콘솔 설정, 이미 활성) |
| Stage 2 | `-repackageclasses ''` 로 패키지 평탄화 | 완료 | `71612d10` |
| Stage 3 | 미사용 OAuth client id를 build.gradle에서 제거 | 완료 | `f517292c` |
| Stage 4 | `-dontshrink` 제거 (미도달 코드 제거) | 보류 | 내부 트랙 실기기 검증 필요 |
| Stage 5 | `-dontoptimize` 제거 (제어 흐름 최적화) | 보류 | Stage 4 안정화 후 |
| Stage 6 | collector 스크립트 문자열 난독화 | **하지 않음** | 아래 결정 참조 |

## Stage 4·5 — 내부 트랙에 묶인 이유

두 단계는 R8이 코드를 실제로 잘라내거나(shrink) 변형(optimize)한다. 리플렉션·문자열 기반으로만
닿는 코드가 잘리면 빌드는 성공해도 런타임에서만 실패하므로 유닛 테스트로 잡히지 않는다.
Play 설치본으로 전 provider 로그인·수집·위젯을 실제로 돌려 검증해야 한다.

순서: 현재 코드로 기준선 배포 → Antigravity 등 검증 통과 확인 → Stage 4 적용 후 재배포 →
회귀 없으면 Stage 5. 기준선과 shrink를 한 번에 합치면 문제 발생 시 원인(서명/AppCheck vs
shrink)이 분리되지 않는다.

## Stage 6 — 하지 않기로 결정 (2026-07-23)

### 원래 사양의 위치

`2026-06-10` 계획은 `gemini_collector.js`/`antigravity_collector.js`의 문자열·자산 난독화를
**"from this phase"** 로 제외했다(영구 금지가 아니라 당시 스코프 배제). Stage 6은 이 배제를
재검토하려던 단계였다.

### 사실관계 재확인

- 자산 파일(`antigravity_collector.js` 등)은 7줄짜리 **버전 마커**이며 민감 정보가 없다.
  난독화 대상 자체가 아니다.
- 실제 수집 로직(엔드포인트 URL, DOM 셀렉터, provider API 경로)은
  `ProviderWebCollectorScripts.kt`(약 1062줄)의 JS 문자열 리터럴로 존재하며 dex 문자열로 노출된다.

### 결정: 하지 않는다

- 셀렉터/엔드포인트는 **비밀이 아니다** — 경쟁 앱(ai usage) 디컴파일본에도 동일하게 보인다.
- 진짜 비밀인 토큰은 이미 `SecureStringStore`(Android Keystore + AES/GCM)로 보호된다.
- 서버 남용은 App Check(`enforceAppCheck: true`)가 차단한다. 정적 노출과 실제 악용은 다른 층이다.
- 문자열 인코딩은 정적 grep만 막고 동적 후킹(Frida 등)에는 무력하다. 반면 셀렉터가 자주 바뀌는
  자산이라 재인코딩·디버깅 비용이 지속적으로 발생한다. ROI가 낮다.

### 영구 하드 제약 (Stage 6 여부와 무관)

브리지 객체/메서드 이름은 주입 JS가 문자열로 호출하므로 절대 난독화 금지. 이미 keep 규칙과
가드 테스트로 보호 중이다.

```
AIQuotaCollectorBridge
postUsagePayload, postCollectorError,
fetchCopilotJson, fetchCopilotJsonWithAuthorization, fetchCursorJson
```

## 서명과의 관계

- Stage 4·5, App Check 앱 등록: Play 앱 서명 키가 필요 → 서명 업로드(2026-07-23 17:49 KST 이후) 선행.
- Stage 6: 하지 않기로 결정, 서명과 무관.
- App Check는 클라이언트 코드가 versionCode 12부터 이미 포함(`PlayIntegrityAppCheckProviderFactory`)
  되어 있어, 콘솔 앱 등록만 하면 되고 신규 배포로 끊기는 기존 버전은 없다.
