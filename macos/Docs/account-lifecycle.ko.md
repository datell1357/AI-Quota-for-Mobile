# 계정 제거와 인증정보 정리

2026-09-17 기준. 앱 소유 인증정보의 연결·교체·취소·제거를 SQLite 기록과 연결한다.

## 사용자 동작

- **연결 해제**는 기존 계정 UUID·원격 신원·별명·알림 설정과 중복 방지 상태를 유지하고 인증정보와 사용량을 비운다. 다시 연결할 때 같은 신원인지 확인한다.
- **계정 제거**는 확인창을 거쳐 해당 Mac의 로컬 계정·사용량·알림 상태를 제거한다. 제공자 서비스의 계정을 해지하지 않는다. 다른 계정에는 영향을 주지 않는다.
- 다시 추가하면 새 UUID를 발급한다. 위젯·패널·메뉴 고정 선택에 남아 있는 이전 UUID를 새 계정으로 자동 대체하지 않는다. 중간 계정을 제거한 뒤 새 계정은 현재 마지막 순서 뒤에 추가한다.
- GLM의 키·지역·범위를 바꾸려면 제거 후 새로 연결한다. 연결 해제로 기존 키 결합을 우회하지 않는다.
- 정리할 인증정보가 남으면 대시보드의 설정 링크와 설정의 재시도 버튼을 표시한다. 앱 시작과 활성화 때도 재시도하며 Keychain 권한 창을 백그라운드에서 열지 않는다.
- 로그인 창을 닫을 때 WKWebView를 별도 native container에서 분리하고 정리를 재요청한다. WebKit이 로딩 중인 뷰를 비동기로 해제할 수 있어 1초·3초 간격으로 최대 두 번 더 시도한다. 겹친 정리 요청은 후속 실행으로 합치며 계속 실패하면 영구 기록과 설정의 재시도를 유지한다.

## 영구 수명주기 기록

SQLite schema 2의 `credential_resources`에는 credential reference·계정 UUID·선택적 WebKit profile UUID·상태만 저장한다. secret·쿠키·외부 파일 경로는 포함하지 않는다. 표시 JSON schema는 1로 유지하며 이 기록을 위젯에 내보내지 않는다.

1. 새 로그인은 Keychain 쓰기나 WebKit profile 생성 전에 `prepared` 기록을 저장한다. 웹 로그인은 profile UUID도 생성 전에 기록한다.
2. 원격 신원 확인과 Keychain 저장 뒤 계정의 generation/session revision을 검사한다. 같은 SQLite 트랜잭션에서 새 참조를 `active`, 이전 참조를 `retired`로 바꾼다.
3. 취소·실패·연결 해제·제거는 해당 참조를 `retired`로 남긴다. 계정 행이 제거되어도 정리 기록은 유지된다. DB 커밋 중 취소는 거부하고 결과를 기다린다.
4. 정리는 해당 WebKit profile, 해당 Keychain 항목, SQLite 기록 순서로 처리한다. 어느 단계든 실패하면 기록을 보존한다. profile 제거는 멱등이며 지연된 쿠키 작업이 끝날 때까지 기다리고 제거된 UUID를 같은 프로세스에서 다시 열지 못하게 한다.
5. 시작 시 활성 계정이 참조하는 항목은 보존하고 나머지 중단된 시도를 정리 대상으로 바꾼다. 실행 중 로그인이나 Keychain 쓰기가 있으면 이 시작 복구를 거부한다. 정리 중 쓰기가 끝나지 않은 참조는 건너뛰어 늦은 쓰기가 추적 없이 남지 않게 한다.

이전 schema의 활성 참조는 연결 해제·교체·제거 시 Keychain의 계정 UUID를 검증하고 profile 참조를 기록한 뒤 정리한다. 외부 CLI 소유 자격 증명에서는 AI Quota의 참조만 제거하고 원본 파일은 변경하지 않는다. 다른 계정의 기록에 사용 중인 profile UUID를 발견하면 정리를 거부한다.

## 마이그레이션과 복구

- schema 1 → 2 전 SQLite backup API로 `accounts.sqlite.before-v2-<UUID>.sqlite`를 보존한다. 백업 후 트랜잭션으로 새 표와 schema version을 반영한다. 미래 schema는 열기를 거부한다.
- 기존 계정 payload·순서·알림 상태·수집 sequence와 표시 snapshot 계약은 변경하지 않는다. WAL을 포함하는 DB는 SQLite를 통해 읽고 백업한다. 실행 중인 DB 파일의 단순 복사나 교체는 지원하는 복원 절차가 아니다.
- 앱을 종료한 상태의 단일 호스트 writer를 전제로 한다. 기록 도입 전에 이미 고아가 된 참조를 모든 Keychain 항목이나 외부 프로필 검색으로 추정·삭제하지 않는다.

## 검증

| 검사 | 결과 |
| --- | --- |
| Core Swift Testing | 37개 통과. 제거 후 DB 재열기, 새 UUID/위젯 누락 위치, 취소 시도 복구, 다른 계정 보존, 실제 schema 1 백업을 새 DB로 복원 |
| Auth Swift Testing | 25개 통과. 잠긴 Keychain, profile 제거 실패 후 재열기, 저장 중 취소/제거, legacy profile 및 외부 파일 보존 |
| Collectors 및 GLM 번들 | 56개 통과. GLM 키/범위 변경을 새 연결로 수행하는 producer/consumer 검사 포함 |
| 실제 Keychain | 임의 전용 service에서 CRUD, 계정 제거, 다른 활성 계정 보존, DB/coordinator 재열기 후 중단된 로그인 정리 통과 |
| 실제 WebKit | 8개 별도 앱 프로세스에서 저장·재열기·갱신·만료·profile 제거·재시작 후 부재 및 다른 profile 쿠키 유지 통과 |
| 호스트·위젯 회귀 | 설정·딥링크·producer/consumer 및 25개 PNG 렌더링 통과 |
| 앱 UI | 한국어/영어 제거 확인창과 취소 후 계정 보존 확인. 최종 제거 버튼 클릭은 수행하지 않음 |
| 기존 QA DB | schema 1 → 2, 전환 전 백업, 12개 계정 payload/sequence/completed의 정확한 보존, 사용량·신원·인증정보 없음, integrity check 통과 |
| Xcode | Debug arm64, Release arm64/x86_64 앱·위젯 빌드 및 확장 메타데이터 검사 통과. 서명·공증 없음 |

WebKit의 모든 store 초기화 전에 static identifier 조회를 호출하면 macOS 26.6.2에서 `WebsiteDataStoreIO` 충돌이 발생하는 것을 별도 프로세스 검사로 재현했다. 비영구 store로 WebKit을 초기화하고 조회가 끝날 때까지 유지해 해결했다. persistent store를 새로 만들거나 private API를 호출하지 않는다. 실패 기록과 수정 후 8단계 결과를 모두 보존한다.

검증 명령은 `macos/README.md`에 있다. 단계별 원문 로그와 결과는 Git 제외 `artifacts/macos-20260917-account-lifecycle/verification.json`에 기록한다. 새 프로필과 합성 Keychain 항목만 사용했으며 실계정 인증·제공자 요청은 실행하지 않았다.

후속 [Cursor 웹 연결 단계](cursor-web-login.ko.md)에서는 실제 공개 로그인 화면을 열고 빠르게 취소할 때 profile 정리가 남는 경로를 재현했다. native container 분리와 제한된 재시도 후 같은 앱에서 두 번 연속 취소해 재시작 없이 SQLite 정리 기록 0개와 대기 표시 해소를 확인했다. QA 계정 12개의 payload·sequence·completed는 이전 저장소와 일치했다. 해당 추가 검증은 `artifacts/macos-20260917-cursor/`에 보관한다.

## 남은 경계

- Keychain 복구 검사는 같은 프로세스에서 DB/coordinator를 다시 연 결과다. 실제 제공자 자격 증명으로 앱 재시작·OS 재부팅·강제 종료·업데이트를 검증하지 않았다. WebKit의 별도 프로세스 결과도 합성 쿠키와 정상 종료 조건이다.
- 이미 OS 전송 중인 알림과 계정 제거가 겹치는 경로는 후속 [알림 전송 단계](notification-delivery.ko.md)에서 중단·회수 요청과 대역 기반 경쟁 검사를 추가했다. 실제 OS 전달·회수/권한 거부, 장기 수집·서명된 위젯 실행은 별도 검증 대상이다. DB outbox 정리 자체가 OS에 제출된 알림을 취소한다고 주장하지 않는다.
- 저장소 오류로 정리가 끝나지 않으면 계정 제거가 끝나도 인증정보가 남을 수 있다. 영구 기록과 사용자에게 보이는 재시도를 유지한다. 기존 백업은 자동 삭제하지 않는다.
