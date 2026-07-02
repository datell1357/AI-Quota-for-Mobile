# Provider Native Bridge Optimization Execution Plan

## TL;DR (For humans)

Implement the Claude, GLM web OAuth, and Codex fixes by converging their normal login and refresh collection paths on `about:blank` native JavaScript bridge collection only. Do not add DOM scanning, storage scraping, script scraping, retained network-row reuse, or page-based collection fallbacks for these providers.

The update is not just a correctness fix. The acceptance bar is lower battery and data usage: fewer full WebView loads, bounded endpoint calls, bounded retry loops, and no background page scraping. Other provider behavior must remain unchanged unless a focused regression test proves a shared boundary must be adjusted.

## Scope

Branch:
- Work on `26version-code`.

In scope:
- Claude login completion and usage collection after auth.
- GLM web OAuth usage collection after login.
- GLM disconnect cleanup so a fresh GLM login can start.
- Common disconnect responsiveness so one provider cleanup does not hold the app in a long busy state or block unrelated provider refresh.
- Codex session-backed usage collection after the first successful collection.
- Focused unit tests, integration-style policy tests, and emulator QA evidence.
- Lightweight diagnostics for collection duration, endpoint count, WebView navigation count, and payload freshness.

Out of scope:
- Broad provider architecture rewrites.
- Behavior changes for Gemini, Copilot, Antigravity, Cursor, OpenCode, or API-key GLM unless a shared boundary test requires a minimal guard.
- Fake usage, stale usage shown as current, or one-off UI bypasses.
- Any new DOM scan, visible-page scraping, `localStorage`/`sessionStorage` extraction, `document.scripts` parsing, retained network-row reuse, or page-based collection fallback for Claude, GLM, or Codex.

Likely implementation touch points:
- `android/app/src/main/java/com/aiquota/mobile/WebLoginActivity.kt`
- `android/app/src/main/java/com/aiquota/mobile/providers/ProviderNativeUsagePayloadFetcher.kt`
- `android/app/src/main/java/com/aiquota/mobile/providers/ProviderWebCollectorScripts.kt`
- `android/app/src/main/java/com/aiquota/mobile/providers/glm/GlmUsageRepository.kt`
- `android/app/src/main/java/com/aiquota/mobile/providers/glm/GlmWebSessionRequestHeaderStore.kt`
- `android/app/src/main/java/com/aiquota/mobile/providers/ProviderSessionResetter.kt`
- `android/app/src/main/java/com/aiquota/mobile/providers/ProviderWebSessionCleaner.kt`
- `android/app/src/main/java/com/aiquota/mobile/ui/AIQuotaAppShell.kt`
- Matching unit and policy tests under `android/app/src/test/...`

Provider contract:
- Claude: after trusted auth evidence, navigate to or stay on `about:blank`, call the native JS bridge, and fetch only the required Claude usage/account endpoints from native code.
- GLM web OAuth: use stored GLM web session cookie/header context from the authenticated session, then collect through the native bridge from `about:blank`.
- Codex: use captured session request headers through the native bridge and native fetcher; do not accept retained page/network rows as current usage.
- Auth failure classification requires auth evidence: login redirect, main-frame `401/403`, or explicit auth-required bridge result. A generic no-payload result is a collection/payload/normalizer failure, not proven session expiry.

## Verification strategy

Test first:
- Add RED tests before production edits for the forbidden target-provider collection patterns.
- Add RED tests for GLM disconnect relogin cleanup and common disconnect responsiveness.
- Add RED tests for Codex continuing refresh without accepting retained network rows.

Automated verification:
- Provider collector script tests must prove the target normal path uses native bridge scripts and that those target scripts do not contain DOM/storage/script/network-row collection tokens.
- Provider policy tests must prove background refresh for target providers starts from the native bridge/session path, not a WebView page collection path.
- Disconnect tests must prove cleanup is provider-scoped and does not globally block unrelated provider refresh.
- Existing non-target provider tests must continue to pass.

Battery/data verification:
- Capture before/after evidence for target provider collection:
  - WebView top-level navigation count.
  - Native endpoint request count.
  - Collection elapsed time.
  - Response body byte count or redacted payload-size estimate.
  - Payload status and snapshot freshness.
- Acceptance is qualitative and bounded: no repeated full page loads, no unbounded probe loops, no background DOM scan, and no retained-network reuse.

Manual verification:
- Debug build install on emulator.
- Fresh-login QA for Claude, GLM web OAuth, and Codex.
- Disconnect/reconnect QA for GLM.
- Disconnect one provider while another provider is refreshable, then confirm unrelated refresh is not held by the cleanup of the disconnected provider.

## Execution strategy

1. Branch and baseline
   - Verify or create `26version-code`.
   - Record dirty worktree state before edits and avoid touching unrelated files.
   - Run a narrow baseline test set around provider scripts, GLM session, Codex collection, and disconnect cleanup.

2. RED guardrails
   - Add tests that fail on the current target-provider normal paths if they still route through DOM/storage/script/network-row collection.
   - Add tests that fail when Codex accepts retained network rows as current usage.
   - Add tests that fail when GLM disconnect does not clear enough web OAuth state for a fresh login.
   - Add tests that fail when disconnect cleanup blocks unrelated provider refresh.

3. Claude native bridge path
   - Keep the login flow tied to trusted auth/resource evidence.
   - After auth evidence, run Claude usage collection from `about:blank` through the native bridge.
   - Keep endpoint fetches bounded in native code.
   - Remove normal-path dependency on Claude page DOM or retained page data.

4. GLM web OAuth native bridge path
   - Preserve GLM API-key behavior.
   - For web OAuth, persist only the session cookie/header context needed for native endpoint fetches.
   - Collect usage through `about:blank` native bridge and `GlmUsageFetcher`/native fetcher logic.
   - Do not start isolated page collection for normal GLM web OAuth refresh.

5. Codex native bridge continuation
   - Keep Codex collection tied to captured session headers and native endpoint calls.
   - Ensure subsequent refresh uses fresh native fetches, not retained rows from a prior page.
   - Keep generic `codex_usage_unavailable` as payload failure unless auth-required evidence exists.

6. Disconnect responsiveness and session cleanup
   - Split user-visible disconnect completion from long destructive WebView/session cleanup.
   - Keep cleanup provider-scoped.
   - For immediate reconnect to the same provider, wait on that provider cleanup before launching login.
   - Do not make other providers wait for an unrelated provider's cleanup.
   - Keep cleanup bounded and observable through tests/logs.

7. Optimization diagnostics
   - Add redacted debug diagnostics around target-provider native collection.
   - Count endpoint calls and collection duration.
   - Count WebView top-level navigations where the app already has a safe hook.
   - Avoid logging secrets, cookies, auth headers, account identifiers, or raw payloads.

8. Regression fence
   - Review diff for non-target provider behavior changes.
   - Run focused tests for shared provider script/session/reset boundaries.
   - Run full debug unit tests if time allows before implementation completion.

## Todos

- [x] T01 - Branch and baseline state
  - Verify `git status --short --branch` shows `26version-code`.
  - Save pre-edit notes under `.omo/evidence/provider-native-bridge-optimization-20260702/`.
  - Verify with:
    ```bash
    git status --short --branch
    ```

- [x] T02 - RED tests for target collector boundaries
  - Add tests that exercise the actual Claude, GLM web OAuth, and Codex normal collection entry points.
  - Assert those target paths use native bridge scripts from `about:blank`.
  - Assert target native scripts do not include `localStorage`, `sessionStorage`, `document.scripts`, retained network-row globals, visible DOM scraping, or `c.rows` payload reuse.
  - Verify with:
    ```bash
    export JAVA_HOME="/c/Program Files/Android/Android Studio/jbr"
    gradle -p android --no-daemon -Pkotlin.incremental=false :app:testDebugUnitTest --tests "com.aiquota.mobile.providers.ProviderWebCollectorScriptsTest"
    ```

- [x] T03 - RED tests for GLM web OAuth native collection
  - Add tests proving web OAuth GLM refresh uses stored cookie/header context plus native fetch.
  - Add tests proving API-key GLM mode remains unchanged.
  - Verify with targeted GLM repository/session tests.

- [x] T04 - RED tests for Codex session continuation
  - Add tests proving a second Codex refresh performs a fresh native fetch.
  - Add tests proving retained network rows or compact page state are rejected on the target normal path.
  - Add tests proving no-payload is not classified as auth failure without auth evidence.

- [x] T05 - RED tests for disconnect behavior
  - Add GLM disconnect/relogin cleanup tests around stored credentials, cookies, and WebStorage.
  - Add common disconnect tests proving UI/provider state can settle without blocking unrelated provider refresh.
  - Add same-provider reconnect coordination tests so fresh login waits for that provider cleanup.

- [x] T06 - Implement Claude endpoint-only native bridge collection
  - Route normal Claude post-login collection through `about:blank` native bridge.
  - Keep endpoint calls bounded and native.
  - Remove target normal-path dependency on page DOM state.
  - Re-run T02 and Claude login/collector tests.

- [x] T07 - Implement GLM web OAuth endpoint-only native bridge collection
  - Use stored GLM web session request context for native endpoint fetches.
  - Preserve API-key mode.
  - Remove normal GLM web OAuth dependency on page collection.
  - Re-run T03 and GLM background/session tests.

- [x] T08 - Implement Codex fresh native bridge refresh
  - Use captured session headers and native endpoint calls for continued refresh.
  - Reject retained page/network data on the target normal path.
  - Keep auth-failure classification evidence-based.
  - Re-run T04 and Codex collector tests.

- [x] T09 - Implement provider-scoped disconnect cleanup
  - Make user-visible disconnect complete after local provider state and stored credentials are cleared or cleanup is safely scheduled.
  - Continue long destructive cleanup in a bounded provider-scoped path.
  - Make same-provider login wait for that provider cleanup.
  - Confirm unrelated provider refresh does not wait on this cleanup.
  - Re-run T05 and session reset tests.

- [x] T10 - Add optimization diagnostics
  - Add redacted metrics for target-provider native collection duration, endpoint count, payload status, and safe payload-size estimate.
  - Add or reuse safe navigation-count evidence where available.
  - Confirm diagnostics do not contain cookies, auth headers, raw payloads, account IDs, or tokens.

- [x] T11 - Cross-provider regression pass
  - Review diff to ensure non-target providers are untouched except tests or shared boundaries with explicit coverage.
  - Run focused shared tests:
    ```bash
    export JAVA_HOME="/c/Program Files/Android/Android Studio/jbr"
    gradle -p android --no-daemon -Pkotlin.incremental=false :app:testDebugUnitTest --tests "com.aiquota.mobile.providers.*"
    ```

- [ ] T12 - Build and emulator QA
  - Build debug APK:
    ```bash
    export JAVA_HOME="/c/Program Files/Android/Android Studio/jbr"
    gradle -p android --no-daemon -Pkotlin.incremental=false :app:assembleDebug
    ```
  - Install and test on emulator:
    ```bash
    adb install -r android/app/build/outputs/apk/debug/app-debug.apk
    ```
  - Validate Claude login/usage, GLM login/usage, GLM disconnect/relogin, Codex repeated refresh, and disconnect responsiveness.
  - Automated build/install/launch smoke is complete; real Claude/GLM/Codex login QA is waiting on user account interaction.

## Final verification wave

F1 - Plan compliance audit:
- Inspect the implementation diff for the hard constraints.
- Confirm target normal paths do not introduce DOM scan, storage/script scraping, retained network-row reuse, or page-based collection alternatives.
- Confirm non-target provider behavior code is not changed without matching tests.

F2 - Automated tests:
- Run all targeted tests added in T02-T05.
- Run shared provider tests.
- Run `:app:assembleDebug`.
- Run broader `:app:testDebugUnitTest` if time and environment allow.

F3 - Manual QA evidence:
- Store redacted screenshots/log snippets under `.omo/evidence/provider-native-bridge-optimization-20260702/`.
- Evidence must include Claude, GLM, Codex, GLM disconnect/relogin, and unrelated-provider refresh during disconnect cleanup.

F4 - Optimization evidence:
- Compare before/after or baseline/current notes for:
  - WebView navigation count.
  - Endpoint request count.
  - Collection elapsed time.
  - Payload freshness.
- The expected outcome is fewer page loads and no background scanning loops on the target providers.

F5 - Final diff review:
- Run:
  ```bash
  git diff --check
  git diff --name-only
  ```
- Confirm every changed production line traces to one of the five user-reported problems or the battery/data optimization requirement.

## Commit strategy

Do not commit automatically unless the user requests it after implementation.

Suggested commit split if implementation is large:
- `test(provider): native bridge 수집 경계 회귀 테스트 추가`
- `fix(provider): Claude GLM Codex native bridge 수집 정리`
- `fix(provider): 연결 해제 응답성과 세션 정리 분리`
- `test(provider): provider 회귀 및 앱 QA 증거 보강`

If changes are smaller than expected, combine only when the diff still has one coherent purpose and the commit message describes actual changed code.

## Success criteria

- Branch is `26version-code`.
- Claude, GLM web OAuth, and Codex normal collection use `about:blank` native JS bridge collection.
- Target provider normal paths do not use DOM scan, storage/script scraping, retained network rows, or page-based collection alternatives.
- GLM can disconnect and then start a fresh login.
- Disconnect does not keep unrelated provider refresh blocked by another provider's cleanup.
- Codex can collect usage repeatedly from a valid session-backed native fetch path.
- No stale or fake usage is shown as current.
- Battery/data optimization is evidenced by bounded native endpoint calls, no repeated full page loads, and no background page scan loops for target providers.
- Existing non-target provider behavior remains covered and unchanged.
