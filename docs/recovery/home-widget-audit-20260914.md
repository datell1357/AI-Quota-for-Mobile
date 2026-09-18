# 로그인 계정별 홈 위젯 실기동 점검 — 2026-09-14

## 환경과 결과

Android 16/API 36 에뮬레이터 `emulator-5580`, 복구 debug 앱 1.2.0(54).
기존 로그인과 앱 데이터를 유지한 채 앱의 위젯 추가 및 런처의 홈 추가 승인 UI로
위젯 12개를 만들었다. 앱 구현 변경이나 새 APK/AAB 빌드는 하지 않았다.

현재 AUTHENTICATED 계정은 Claude, Claude 2, Codex, Codex 2, Cursor, Grok,
Antigravity, Gemini의 8개다. Kiro/OpenCode/GLM은 SIGNED_OUT,
Copilot은 REAUTH_REQUIRED이므로 이번 로그인 계정 위젯 대상에서 제외했다.

계정 권위 DB의 표시용 스냅샷, 앱 상세 화면, 실제 홈 위젯을 대조했다.
provider 단위가 아닌 개별 account ID로 저장된 위젯 선택도 읽어 검증했다.

## 홈 배치

| 유형 | 위젯 ID | 선택된 계정 |
|---|---:|---|
| 개별 | 3 | Claude |
| 개별 | 4 | Claude 2 |
| 개별 | 5 | Codex |
| 개별 | 6 | Codex 2 |
| 개별 | 7 | Cursor |
| 개별 | 8 | Grok |
| 개별 | 9 | Antigravity |
| 개별 | 10 | Gemini |
| 대시보드 | 2 | Claude, Claude 2, Codex, Codex 2 |
| 대시보드 | 13 | Cursor, Grok, Antigravity, Gemini |
| 배터리 | 11 | Claude, Claude 2, Codex, Codex 2 |
| 배터리 | 12 | Cursor, Grok, Antigravity, Gemini |

`appwidget-state.txt`에서 런처에 연결된 12개 실제 인스턴스와 RemoteViews를 확인했다.
`verified-widget-bindings.json`에는 위젯 ID별 저장된 계정 선택을 기록했다.

## 표시 대조

| 계정 | 확인한 개별 위젯 잔여량 | 대시보드·배터리 대표값 |
|---|---|---|
| Claude | 세션 100%, 주간 99% | 첫 사용량인 세션 100% |
| Claude 2 | 세션 100%, 주간 100% | 세션 100% |
| Codex | 주간 13% → 12% → 마지막 확인에서 11%로 갱신 | 같은 시점에 12% → 11% |
| Codex 2 | 주간 1% | 1% |
| Cursor | Total/Auto/API 각각 100% | Total 100% |
| Grok | SuperGrok weekly 67% | 67% |
| Antigravity | 현재 크기에서 표시된 Flash H/M/L 각각 100% | 첫 모델 100% |
| Gemini | 5시간 99%, 주간 100% | 5시간 99% |

Claude와 Claude 2의 주간 수치, Codex와 Codex 2의 주간 수치가 서로 섞이지 않았다.
대시보드와 배터리 각각에서 Claude, Claude 2, Codex, Codex 2의 네 항목을 모두
직접 눌렀고, 총 8번 모두 일치하는 계정 상세 화면으로 이동했다.
대시보드는 각 계정의 첫 번째 사용량 항목을 대표값으로 사용한다. 따라서 Claude의
개별 위젯에 주간 99%가 있고 대시보드에 100%가 있는 것은 서로 다른 기간을 표시한 결과다.
배터리는 숫자 대신 같은 대표값을 원형 게이지로 표현한다.
Antigravity의 모든 모델이 현재 개별 위젯 크기에 한꺼번에 표시되는 것은 아니다.

## 확인한 표시 제한과 UX 문제

1. **한 통합 위젯에서 8개를 모두 표시할 수 없음.** 대시보드에 8개 계정을 선택하면
   실제로 앞의 6개만 표시됐다. 크기를 늘려도 뒤의 Codex 두 계정이 추가 표시되지 않았다.
   DashboardWidgetImmediateRenderer의 행과 레이아웃 용량 제한이 있으며,
   배터리도 `CIRCULAR_MAX_GAUGES = 6`이다. 전 계정을 확인할 수 있도록 각 유형을
   다중계정 4개 / 나머지 4개로 나눠 두 개씩 구성했다. 용량 제한 자체는 수정하지 않았다.
2. **배터리에서 같은 제공자의 계정 식별이 어려움.** 네 계정이 각각 다른 account ID,
   게이지, 클릭 대상에 연결되지만 시각적으로는 제공자 로고만 보인다.
   계정 별칭은 접근성 설명에만 있고 화면에는 없다. 특히 Claude 두 계정처럼 둘 다
   100%이면 외형으로 구분하기 어렵다. 별칭 표시 보완이 필요하다.
3. **새 위젯 설정에 이전 제공자 숨김값이 승계됨.** 이 에뮬레이터에서는 새 설정을
   열었을 때 Claude/Codex의 네 계정이 숨김 목록에서 시작했다.
   `dashboardWidgetHiddenProviders()`의 기존 provider 숨김 기본값을
   `renderUnifiedCardRows()`가 같은 provider의 모든 계정에 적용하는 경로를 확인했다.
   이번에 만든 위젯은 계정 단위 표시 설정을 명시적으로 저장해 원하는 계정이 보이게 했다.

## 증거

`artifacts/widget-audit-20260914/`에 다음 자료를 보존했다.

- `home-page-1-final.png`: 다중계정 대시보드, Claude/Claude 2/Codex 개별 위젯.
- `home-page-2-final.png`: Codex 2/Cursor/Grok/Antigravity 개별 위젯.
- `home-page-3-final.png`: Gemini 개별, 다중계정 배터리, 나머지 제공자 배터리·대시보드.
- `battery-click-*.png`, `dashboard-click-*.png`: 각 다중계정 항목을 눌러 열린 상세 화면.
- `*-selection.json`, `*-selection.xml`: 통합 위젯별 표시/숨김 선택 UI 검증.
- `account-catalog.json`: 인증 상태와 표시용 사용량 스냅샷.
- `verified-widget-bindings.json`, `appwidget-state.txt`: 저장된 계정 연결과 실제 런처 인스턴스.

이번 결과는 현재 로그인 상태에서의 추가·선택·표시·계정 이동 검증이다.
기기 재부팅, 며칠간 절전 유지, 새로운 제공자 로그인은 이번 작업에서 재검증하지 않았다.
