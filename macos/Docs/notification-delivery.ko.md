# 알림 전송과 계정 변경

2026-09-17 기준. 알림 정책의 임계값·3% 회복 여유·리셋 중복 방지 계약을 유지하면서 전송 중 계정 변경을 처리한다.

## 수정한 문제

기존 호스트는 대기 이벤트와 UI snapshot을 복사한 뒤 OS 권한 조회를 기다렸다. 그 사이 계정 제거·연결 해제·알림 설정 변경으로 이벤트가 무효가 되어도, 이미 복사한 이벤트를 다시 검사하지 않고 제출할 수 있었다. 계정 별명도 이전 snapshot의 값을 사용했다.

`AccountRepository.claimNotification`은 같은 SQLite 트랜잭션에서 아직 대기 중인 이벤트·현재 계정·사용 중인 알림 설정을 확인하고 소비한다. 계정 제거, 연결 해제, 이미 처리된 이벤트와 설정 변경 후 무효가 된 이벤트는 제출하지 않는다. 인증이 필요한 계정도 이전 사용량으로 새 알림을 제출하지 않는다. 알림 제목은 전송 직전 계정의 별명을 쓴다.

## 계정 제거·연결 해제 순서

1. 호스트의 단일 `NotificationDispatcher`에서 대상 계정의 새 제출을 중단한다.
2. 해당 계정에 이미 진행 중인 제출이 있으면 반환을 기다린다. 그 요청 ID에만 pending/delivered 제거를 요청한다. 제출 실패 경로도 대기를 해제하며 다른 계정과 이전에 정상 전송을 마친 알림은 건드리지 않는다.
3. 진행 중인 제출과 회수 요청 처리가 반환한 뒤 수집을 취소하고 기존 `LoginCoordinator`로 계정을 변경한다.
4. 계정 변경 성공·실패 모두 중단 상태를 해제하고 현재 DB에서 화면과 알림 대기 목록을 다시 읽는다. 여러 중단 요청이 겹치면 모두 끝날 때까지 새 제출을 막는다.

현재 OS 어댑터의 회수는 제거 API 호출을 제출한 상태다. Apple의 pending 제거는 비동기이며 이미 trigger가 충족된 요청에는 적용되지 않으므로 delivered 제거도 함께 호출한다. OS가 실제로 배너를 언제 지우는지, 순간적으로 보이지 않는지까지 보장하지 않는다. [Apple pending 제거 계약](https://developer.apple.com/documentation/usernotifications/unusernotificationcenter/removependingnotificationrequests(withidentifiers:)), [delivered 제거 계약](https://developer.apple.com/documentation/usernotifications/unusernotificationcenter/removedeliverednotifications(withidentifiers:)).

## 전달 정책과 남은 한계

- 이벤트 소비를 OS 제출보다 먼저 영구 저장하는 기존 **최대 한 번 제출** 정책을 유지한다. 같은 이벤트를 다시 발송하지 않으므로 사용자가 알림을 지운 뒤 재실행해도 재생하지 않는다.
- 권한 거부 시 대기 이벤트를 소비한다. 나중에 허용해도 과거 이벤트를 모아 발송하지 않는다. 현재 구현의 실제 OS 권한 요청·거부 처리는 별도 실측 대상이다.
- 소비 직후 프로세스 종료 또는 OS 제출 오류가 발생하면 알림을 잃을 수 있다. 오류를 성공으로 처리하지 않으며 호스트 오류 경로로 전달한다. 전달 보장과 중복 방지는 서로 다른 검증 항목이다. 이번 변경은 OS 전달 보장을 추가하지 않는다.
- 계정 제거·연결 해제는 명시적인 전송 중단 경로를 사용한다. 알림 설정 변경은 claim 전의 대기 이벤트를 무효화하지만 이미 제출 중인 이벤트를 종류별로 취소하는 기능은 아직 없다.
- 데이터·표시 파일 schema와 사용자 알림 설정 형식은 변경하지 않는다. 서명된 앱의 실제 배너·권한·클릭·재부팅 및 72시간 검증은 남아 있다.

## 검증

`swift test --package-path macos/Packages/AIQuotaCore --scratch-path macos/.build/core`

- 코어 전체 44개 테스트 통과. 신규 7개 테스트 중 권한 대기 검사는 제거·연결 해제·설정 변경·인증 실패 4개 입력을 사용한다.
- 전송 중 제거는 제출과 회수를 각각 중단시켜 순서를 검사했다. 회수가 반환하기 전 계정 데이터가 유지되며 대상 이벤트만 회수하고 두 번째 계정의 알림은 남는다.
- 제출 실패 시 제거 대기 해제, 소비 후 재전송 방지, 권한 거부 후 재생 방지, 두 SQLite 연결에서 동시에 들어온 20개 claim 중 하나만 성공하고 재열기 후 재생하지 않음, 중첩 계정 변경, 최신 별명 반영을 확인했다.
- 테스트는 실제 SQLite와 production dispatcher를 사용하되 OS 전송은 제어 가능한 대역이다. 실제 OS 권한을 변경하거나 알림을 전송하지 않았다.
- 최종 Debug arm64와 Release arm64/x86_64 앱·위젯 빌드 및 확장 메타데이터 검사를 통과했다. 결과 원문은 Git 제외 `artifacts/macos-20260917-notification-delivery/`에 보존한다. 서명·공증 검증은 아니다.
