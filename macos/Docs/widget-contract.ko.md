# macOS 시스템 위젯 계약과 검증 경계

## 종류와 계정 선택

| widget kind | 크기 | 최대 계정 수 |
| --- | --- | --- |
| `provider` | Small / Medium / Large | 1 |
| `dashboardFour` | Medium | 4 |
| `dashboardSix` | Large | 6 |
| `batteryTwo` | Small | 2 |
| `batteryFour` | Medium | 4 |
| `batterySix` | Large | 6 |

- `WidgetAccountEntity.id`는 로컬 계정 UUID다. 이메일이나 제공자 enum을 ID로 사용하지 않는다. 같은 제공자의 여러 계정은 별명으로 구분하며, 두 Claude와 두 Codex를 함께 선택할 수 있다.
- `WidgetConfigurationIntent`의 계정 목록은 각 WidgetKit 인스턴스의 설정이다. 앱 전역 선택 파일을 덮어쓰지 않는다. 목록 배열 순서는 왼쪽→오른쪽, 위→아래로 표시한다.
- 목록 파라미터의 제목은 한국어로 `최대 N개를 선택해주세요.`이며 `IntentCollectionSize(min: 0, max: N)`을 지정했다. 실제 컴파일 산출물의 메타데이터에서도 한도를 확인한다.
- 크기/용량 불일치, 중복, 잘못된 ID는 표시를 중단하고 편집을 안내한다. 선택 배열을 자르거나 자동 수정하지 않는다. 삭제된 계정, 공유 파일 오류에서도 저장된 ID는 placeholder entity로 보존한다.
- 숨김은 앱의 전체 목록 표시 설정이다. 사용자가 위젯에 명시적으로 선택한 숨김 계정은 그 위치에서 계속 표시한다. 연결 해제 계정은 사용량을 비우고 연결 필요 상태로 표시한다.

## 데이터와 갱신

- 호스트는 `SnapshotFileStore`의 정확한 발행 결과를 사용한다. `WidgetTimelineReloader`는 공개 `getCurrentConfigurations` API로 현재 설치된 설정을 읽고, 변경·삭제된 계정을 사용하는 종류만 reload한다. 계정 순서만 바뀌거나 화면 표시값이 같으면 불필요한 reload를 생략한다.
- OS에서 설정 역직렬화가 실패하면 그 설치된 종류만 보수적으로 갱신한다. 설치되지 않은 종류는 호출하지 않는다. 이 결정은 코어 회귀 테스트로 확인했으며 실제 WidgetCenter 서비스와의 성공 경로는 서명된 앱 검증이 필요하다.
- 위젯 확장은 `AIQuotaCore`만 링크한다. Keychain·WebKit·수집기·CodexBar 리소스를 포함하지 않는다. 공유 JSON을 읽으며 네트워크 요청이나 별도 수집 timer를 만들지 않는다. 확장 entitlement에는 App Sandbox와 App Group만 있고 네트워크 권한은 없다.
- 타임라인은 현재 표시와 각 계정의 실제 수집 시각에서 5분이 지난 시점의 오래된 값 표시를 예약하고 다음 파일 읽기를 15분 뒤 요청한다. OS가 파일을 늦게 읽어도 정상 표시 시간을 다시 5분 연장하지 않는다. 실제 실행 시점은 OS 정책에 따른다. 이 과정에서 `fetchedAt`, 사용량, 리셋 시각은 변경하지 않는다.
- 잔여율·잔액·무제한·미확인·미제공을 구분하며, 배터리와 대시보드의 숫자 정밀도를 맞춘다. 수집 시각은 날짜와 24시간 시각으로 표시한다. 접근성 설명에는 계정명·제공자·잔여값·전체 수집 시각·상태가 포함된다.
- 제공자 위젯은 Small 1개, Medium 2개, Large 4개 지표를 요약한다. 더 있는 지표의 수와 상세 보기 안내를 표시하며 전체 내용은 계정 상세에서 확인한다. 계정 선택 목록의 용량과 지표 요약은 별개다.
- 각 카드의 `Link`와 제공자 위젯의 `widgetURL`은 `aiquota://account/<UUID>`를 사용한다. 삭제된 ID를 다른 계정으로 바꾸지 않는다.

## 재현 가능한 검증

```sh
swift test --package-path macos/Packages/AIQuotaCore --scratch-path macos/.build/core
bash macos/Scripts/test-widgets.sh
python3 macos/Scripts/verify-widget-bundle.py 'macos/.build/xcode/Build/Products/Debug/AI Quota.app'
```

- 코어 테스트는 6종류의 모든 크기 조합, 1/2/4/6개 한도, 두 Claude·두 Codex, 서로 다른 선택 순서, 삭제/숨김/연결 해제, 실패·오래된 값, 갱신 대상을 검증한다.
- `test-widgets.sh`는 새 임시 산출물 디렉터리를 만들고 실제 SQLite → 발행 JSON → AppEntity query → App Intent → timeline entry → SwiftUI 렌더러를 통과시킨다. 두 인스턴스의 독립 값, 7개 입력 거부, 지원하지 않는 크기와 ID 보존, 날짜 로케일과 소수점 정밀도를 확인한다.
- 같은 실제 위젯 View를 Small 170×170, Medium 360×170, Large 360×382 pt에서 렌더링한다. 한국어·영어, 밝은 화면·다크 모드의 오래된 값, 빈 선택·누락 계정·공유 데이터 없음 등 25개 PNG를 남긴다. 이 크기는 로컬 레이아웃 검증 크기이며 모든 OS/디스플레이의 실제 위젯 크기를 입증하지 않는다.
- `verify-widget-bundle.py`는 앱 안에 포함된 `.appex`, 최소 macOS 14, 버전 일치, 6개 구성 intent와 실제 최대 선택 수, 두 언어 리소스, 확장의 Core 전용 의존성을 검사한다.
- QA 산출물은 `artifacts/macos-widget-probes/`에 보존하고 기존 계정/브라우저 프로필을 읽거나 삭제하지 않는다.

## 남은 실제 환경 검증

- 유효한 Developer ID/프로비저닝과 서명된 App Group 공유, 일반 시스템 위젯 갤러리 등록·추가·편집·재시작·업데이트.
- 두 위젯 인스턴스의 실제 OS 설정 보존과 순서 변경, 각 카드 클릭 및 Small 배터리의 두 링크, VoiceOver·접근성 글꼴·다른 디스플레이 크기.
- 확장은 현재 macOS가 제공하는 언어·모양을 사용한다. 호스트 내부의 언어/테마 선택을 확장에 전달하는 작업은 아직 남아 있다.
- 위젯 0개/여러 개에서 실제 네트워크·CPU·배터리 비교와 72시간 수집. 위젯 코드에 수집 요청이 없다는 사실은 장기 계측을 대신하지 않는다.
- 선택형 고정 데스크톱 패널은 이 확장과 별도 기능이며 아직 미구현이다.

## 근거

- Apple: [설정 가능한 위젯](https://developer.apple.com/documentation/widgetkit/making-a-configurable-widget), [위젯의 계정 상세 링크](https://developer.apple.com/documentation/widgetkit/linking-to-specific-app-scenes-from-your-widget-or-live-activity), [갱신과 타임라인](https://developer.apple.com/documentation/widgetkit/keeping-a-widget-up-to-date).
- Xcode 26.6의 macOS SDK 공개 Swift interface에서 macOS 14의 `IntentCollectionSize`, `widgetConfigurationIntent(of:)`, `getCurrentConfigurations` 사용 가능 범위를 확인했다. 더 최신 OS 전용 async 편의 메서드 대신 macOS 14에서 사용 가능한 콜백을 await로 연결한다.
