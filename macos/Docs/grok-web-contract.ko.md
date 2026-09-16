# Grok 웹 계정·크레딧 계약

확인일: 2026-09-17. 구현 근거와 검증 경계를 기록한다. 실계정 로그인 성공 기록은 아니다.

## 공식 클라이언트에서 확인한 경로

- 공개 홈페이지의 [공통 클라이언트](https://cdn.grok.com/_next/static/chunks/14jajcrws-kh1.js)는 `/rest/auth/get-user` 경로와 session의 `user.userId`를 사용한다. 쿠키 없는 GET은 실제 HTTP 401과 gRPC code 16을 반환했다.
- [인증 서비스 descriptor](https://cdn.grok.com/_next/static/chunks/36y5-uwn2xv2r.js)의 `AuthManagement.GetUser` 응답은 `prod_auth.User`다. [사용자 descriptor](https://cdn.grok.com/_next/static/chunks/2qo65ihqm05l3.js)의 첫 필드는 `user_id`, 세 번째 필드는 `email`이다. JSON의 userId를 신원으로 사용하며 이메일·X 이름·기기 쿠키로 대체하지 않는다.
- [크레딧 descriptor](https://cdn.grok.com/_next/static/chunks/3ezlkvn7-td91.js)는 기존 `grok_api_v2.GrokBuildBilling/GetGrokCreditsConfig`와 REST 대응 경로 `/rest/grok/credits`를 정의한다. 구현은 Android 55와 같은 빈 gRPC-web protobuf POST를 유지한다. REST 경로로 자동 전환하지 않는다.
- config의 `credit_usage_percent`는 field 1 float, `current_period`는 field 8이다. 현재 기간은 type/start/end를 갖고 type 2는 주간, 1은 월간이다. legacy billing start/end는 field 4/5다. 현재 기간이 있으면 legacy 날짜보다 우선한다.
- [공식 오류 파서](https://cdn.grok.com/_next/static/chunks/2bwxsznwkurx7.js)는 WKE 태그를 well-known error 식별에 사용한다. 미인증 응답의 `WKE=unauthenticated:no-credentials`만으로 Web Key Exchange가 필수라고 결론 내리지 않는다. 현재 공개 코드에는 별도의 DPoP 처리도 있으므로 실제 인증된 계정의 요구 사항은 후속 실검증 대상이다.

확인한 자산 URL·SHA-256과 미인증 HTTP 결과는 [grok-web-provenance.json](grok-web-provenance.json)에 고정했다. 공개 자산 원문과 분석 로그는 Git 제외 경로 `artifacts/macos-20260917-grok/`에 보관한다. 자산을 앱에서 내려받아 실행하지 않는다.

## 앱의 채택 조건

- 새 격리 WebKit 프로필로 Grok의 실제 로그인 링크를 연다. Google/X 등 로그인 뒤 계정 확인을 누를 수 있으며, 채팅 메시지·새 대화·결제 요청은 보내지 않는다.
- `sso` 또는 `sso-rw`가 있는 프로필만 계정 API에 보낸다. 방문자 쿠키나 빈 세션으로 계정이 연결되지 않는다.
- 개인 계정만 연결한다. `workspace`는 nil이고 팀 헤더나 CLI bearer를 섞지 않는다. 크레딧 요청 전후의 원격 userId가 모두 기존 연결과 일치해야 결과를 채택한다.
- 연결 확인 중에는 사용량까지 검증한 다음 Keychain profile 참조와 SQLite 연결을 교체한다. 재연결 실패·계정 변경·인증 실패 때 기존 사용량, fetchedAt, identity, credential reference를 보존한다.
- 호환성을 위해 기존 내부 product ID `grok-weekly`를 유지한다. 주간과 월간의 표시 metric ID는 각각 `grok:weekly_credits`, `grok:monthly_credits`이며 서로 같은 한도로 합치지 않는다. 확인되지 않은 기간을 주간이라고 표시하지 않는다.
- proto3에서 사용률 float가 생략된 경우, 알려진 주간/월간의 완전한 현재 기간 안에서만 0% 사용으로 해석한다. 과거·미래·불완전·알 수 없는 기간은 100% 잔여를 만들지 않는다. 명시적 사용률이 있어도 current_period가 현재 시각을 포함하지 않으면 거부한다.
- gRPC status 16은 재인증, status 8은 계정별 Retry-After, status 4/13/14는 일시적 서버 실패로 전달한다. 일반 permission denied 또는 HTTP 403을 무조건 세션 만료로 바꾸지 않는다. 서버 오류 원문이나 쿠키는 로그·표시 snapshot에 넣지 않는다.

## 남은 실검증

실제 개인 계정의 GetUser JSON 응답과 인증된 크레딧 호출, Google/X 복귀, 서버가 요구할 수 있는 추가 인증 증명, 재시작·업데이트·만료·장기 갱신은 미검증이다. 현재 확인한 것은 공식 공개 계약, 미인증 HTTP 응답, 합성 producer/consumer 검증과 네이티브 미로그인 화면이다. 실제 서버가 거부하면 기존 값을 유지하고 연결을 완료하지 않는다. 개인 웹 크레딧을 팀·CLI 상품으로 바꾸는 우회는 구현하지 않았다.
