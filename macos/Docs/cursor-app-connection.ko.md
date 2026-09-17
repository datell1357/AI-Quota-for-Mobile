# Cursor 앱 선택 DB 연결

## 범위와 근거

사용자가 Cursor에 로그인한 뒤 해당 환경의 `state.vscdb`를 직접 선택한다. 기본 위치는 `~/Library/Application Support/Cursor/User/globalStorage/state.vscdb`지만 다른 사용자 데이터 디렉터리도 선택할 수 있다. 기존 격리 웹 로그인과 별도로 제공하며 연결 실패 시 다른 앱·브라우저 계정으로 자동 전환하지 않는다. Cursor는 기존 단일 계정 정책을 유지한다.

[고정 CodexBar CursorAppAuth](https://github.com/datell1357/CodexBar/blob/928166f899471bbdcb72210641cdec91324d0154/Sources/CodexBarCore/Providers/Cursor/CursorAppAuth.swift)의 DB 키, UTF-8/UTF-16LE 저장 형식과 세션 쿠키 구성을 참고했다. 원본의 전역 탐색·브라우저 대체·토큰 캐시 쓰기는 사용하지 않는다. 이 형식은 Cursor의 공개 안정 API 계약으로 보장된 것이 아니므로 실제 설치 버전과 서비스 인증은 별도 검증이 필요하다.

## 원본 읽기와 소유권

`ReadOnlyCursorState`는 선택한 파일의 `ItemTable`에서 `cursorAuth/accessToken` 한 개만 반환한다. 일반 테이블·TEXT/BLOB·비어 있지 않은 128 KiB 이하 값만 허용하고 중복 행, 손상된 DB, 다른 타입·view, 소유자 불일치, 그룹/전체 쓰기 가능 파일, 심볼릭 링크와 불완전한 WAL/SHM 쌍을 거부한다. 조회 시간과 SQLite 문자열·실행 단계 수를 제한하며 원본 전체를 복사하거나 별도 credential DB를 만들지 않는다.

메인 DB와 sidecar를 검사한 뒤 `READONLY|NOFOLLOW`로 연다. macOS Foundation이 `/var` 시스템 별칭을 유지하여 SQLite가 정상 파일에도 `SQLITE_CANTOPEN`을 반환한 사례를 재현했고, 명시적 링크 검사 후 POSIX `realpath`를 전달하도록 수정했다. 읽기 전후 메인 파일의 inode·크기·수정 시각을 비교한다.

WAL/SHM이 모두 있으면 WAL의 미반영 데이터를 포함해 읽는다. 둘 다 없을 때만 immutable URI를 사용하고 읽은 후에도 sidecar가 생기지 않았는지 확인한다. 한쪽만 있거나 rollback journal이 있으면 실패한다. WAL을 무시하는 대체 경로는 없다. [SQLite WAL 문서](https://www.sqlite.org/wal.html)와 [immutable URI 문서](https://www.sqlite.org/uri.html)의 제약을 따른다. 실행 중 SQLite의 기존 공유 메모리·잠금 조정은 가능하므로 SHM 메타데이터가 전혀 변하지 않는다고 보장하지 않는다. SQL 변경, 토큰 갱신·복사 저장, 원본 DB/WAL 삭제는 하지 않는다. 같은 사용자 프로세스의 악의적 동시 파일 교체까지 격리하는 OS 보안 경계는 아니다.

원본 JWT의 세 구간과 만료를 검사하고 `sub`의 사용자 부분으로 `WorkosCursorSessionToken=<user>%3A%3A<원본 JWT>`를 메모리에서 구성한다. JWT 서명을 오프라인 검증하거나 그 로컬 claim을 최종 계정 신원으로 채택하지 않는다. 만료까지 60초 이하인 토큰은 Cursor에서 다시 로그인하도록 처리한다.

## 서버 검증과 저장

기존 [Cursor 웹 수집 계약](cursor-web-login.ko.md)의 고정 `cursor.com` profile/usage endpoint를 사용한다. 서버 profile의 `sub`로 `cursor-subscription` 신원을 만들고, 사용량 조회 전후 profile 일치와 조회 후 선택 DB의 토큰 지문을 확인한다. 테스트는 로컬 JWT 사용자 값과 서버 신원을 의도적으로 다르게 해 서버 값이 저장되는지 확인한다.

연결에는 `externalApplication`·`cursorApplication` 소유, 선택 경로와 서버 신원만 저장한다. access/refresh token, 파생 쿠키와 만료 시각은 영구 복사하지 않는다. 매 수집 시 선택한 DB를 다시 읽고 전후 지문과 collection lease를 확인한다. Cursor가 같은 계정의 토큰을 회전하면 다음 수집에 반영하고, 조회 중 회전은 결과를 버린다. 다른 계정·만료·유실·손상·서버 거부도 이전 사용량과 원래 신원을 보존한다. 연결 해제는 AI Quota의 참조만 정리한다. 경로·토큰·원격 신원은 표시 snapshot으로 보내지 않는다.

## 검증과 남은 범위

2026-09-17 결과와 해시는 `artifacts/macos-20260917-cursor-app/verification.json`에 보관한다.

- 인증 46개(신규 4개 함수), 수집 195개(신규 6개 함수와 매개변수 사례), GLM 리소스 실행이 통과했다. 실제 SQLite TEXT/BLOB, 미반영 WAL, WAL 보존/비보존 종료 상태와 원본 바이트·수정 시각 보존을 검사했다. Apple SQLite의 합성 작성자가 기본 `PERSIST_WAL=1`을 사용하는 것을 확인하고 두 설정을 명시적으로 검증했다.
- 서로 다른 합성 Cursor DB를 각각 독립 저장소에서 실제 reader → 로그인/수집 coordinator → SQLite → 표시 snapshot/재열기로 검증했다. 단일 계정 제한도 유지한다. 파생 쿠키의 원본 JWT 유지, UTF-8/UTF-16LE, 서버 신원, 같은 계정 회전, 변경·취소·만료·오류와 다른 제공자 계정 보존을 확인했다. 테스트의 actor 매크로·생성자 불일치와 잘못된 복수 Cursor 계정 전제를 수정한 뒤 전체 회귀가 통과했다.
- 실제 Debug 앱에서 한영 안내, 미선택 차단, 잘못된 파일명, 손상된 합성 DB 실패, 파일 선택 취소와 연결 취소·재진입을 확인했다. 정상 종료 후 QA 계정 12개 행·설정과 입력 파일 바이트/권한이 유지됐고 usage·credential 정리 기록 0개, DB integrity ok였다. 사용자 Cursor 인증 정보는 읽지 않았다.
- Debug arm64·Release arm64/x86_64 앱/위젯 빌드와 위젯 6종·한영·최소 macOS 14 번들 검사가 통과했다. 프로젝트 재생성은 바이트·수정 시각이 유지됐고 원본 Android 기준 파일 718개 변경/누락은 0개였다. 코어 48개·위젯 렌더링 33개는 이전 결과이며 이번에 재실행하지 않았다.

실제 Cursor 버전의 DB/토큰 형식, 서버의 파생 쿠키 허용, 실계정 회전·앱 재로그인·업데이트는 미검증이다. 최신 api2/current-period·팀 사용량과 변경된 pool 이름은 기존 웹 수집의 후속 범위다. 장기 수집, 서명된 앱/위젯, 공증·배포 검증도 남아 있다. 합성 입력과 HTTP 대역의 성공을 실제 제공자 연결 성공으로 해석하지 않는다.
