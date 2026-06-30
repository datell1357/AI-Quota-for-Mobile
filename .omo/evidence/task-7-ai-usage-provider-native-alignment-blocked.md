# Real QA Status

Observed on emulator `emulator-5554`.

- APK install used `adb install -r`; app data was not cleared.
- Provider state reset used `com.aiquota.mobile.debug.RESET_PROVIDER`; no `pm clear` was used.
- Claude: PASS. `.omo/evidence/task-7-ai-usage-provider-native-alignment-claude.log` shows `debugCookieRestore=true`, about:blank injection (`url=`), native JSON `status=200`, `collectorMode=native-bridge`, payload save, and refresh cycles from `09:12:12` through `09:15:11`.
- Copilot: PASS. `.omo/evidence/task-7-ai-usage-provider-native-alignment-copilot.log` shows `debugCookieRestore=true`, about:blank injection (`url=`), `collectorMode=native-bridge`, payload save, and refresh cycles from `09:20:51` through `09:23:50`.
- Gemini: BLOCKED. Saved Gemini snapshots restore (`debugCookieRestore=true`) but land on a Gemini sign-in page with `INTERACTIVE_AUTH_REQUIRED`; see `.omo/evidence/task-7-ai-usage-provider-native-alignment-gemini.log`. The newer local `trusted_usage_payload` snapshot was also pushed and retried after a data-preserving `adb install -r`; it still restored 97 cookies and failed with `INTERACTIVE_AUTH_REQUIRED`; see `.omo/evidence/task-9-gemini-retry-latest-cookie.log`.
- Codex: BLOCKED. A new `trusted_usage_payload` cookie snapshot was captured and saved to `.omo/private/provider-session-cookies/codex.json`; see `.omo/evidence/task-10-codex-watch.log`. Reinstall-preserve-data + cookie restore starts about:blank native collection, but Codex native endpoints still return `api/auth/session:403` and `backend-api/wham/usage:401`; see `.omo/evidence/task-10-codex-qa.log`. Root cause: Codex login success depends on in-memory native request headers captured by `CodexNativeHeaderStore`, while the saved debug snapshot contains cookies only.
- Screenshot evidence: `.omo/evidence/task-7-ai-usage-provider-native-alignment-final-clean.png`.
- Native script DOM guard evidence: `.omo/evidence/task-8-ai-usage-provider-native-script-dom-guard.log`; full build/test evidence: `.omo/evidence/task-8-ai-usage-provider-native-alignment-assemble-after-dom-guard.log`.
- Latest Gemini retry install/push evidence: `.omo/evidence/task-9-gemini-retry-install-preserve-data.log`, `.omo/evidence/task-9-gemini-retry-cookie-push.log`.
- Latest Codex watch/QA evidence: `.omo/evidence/task-10-codex-watch.log`, `.omo/evidence/task-10-codex-qa-install-preserve-data.log`, `.omo/evidence/task-10-codex-qa-cookie-push.log`, `.omo/evidence/task-10-codex-qa.log`.

Needed to complete real QA: fresh successful Gemini session cookies, plus Codex debug restore must persist/replay the native auth header context required by Codex APIs.
