# Codex Watch Notepad

Tier: HEAVY - auth/session QA and external provider login.

Skills:
- omo:ulw-loop - durable evidence and provider QA goal tracking.

Success criteria:
- Watch: after user logs into Codex, a restorable Codex debug cookie snapshot is detected and copied to `.omo/private/provider-session-cookies/codex.json`.
- QA: with app data preserved, Codex-only reset/restore/refresh reaches about:blank native collection and produces `collectorMode=native-bridge` payload.

Bounds:
- Do not use `adb shell pm clear`.
- Do not print cookie values, headers, bearer tokens, or authorization data.
- Use `adb install -r` only if reinstall is needed.

Evidence targets:
- `.omo/evidence/task-10-codex-watch.log`
- `.omo/evidence/task-10-codex-qa.log`

Result:
- Watch PASS: restorable Codex cookie snapshot saved to `.omo/private/provider-session-cookies/codex.json`.
- QA FAIL: cookie restore succeeds, about:blank native collection starts, but native Codex endpoints return `api/auth/session:403` and `backend-api/wham/usage:401`.
- Root cause: successful login collection uses in-memory Codex native request headers captured by `CodexNativeHeaderStore`; the debug cookie snapshot stores cookies only, so after `adb install -r` / background-service retry the required header context is gone.
