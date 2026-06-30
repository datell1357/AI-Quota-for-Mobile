---
slug: ai-usage-provider-native-alignment
status: drafting
intent: clear
pending-action: write .omo/plans/ai-usage-provider-native-alignment.md
approach: Align Android to AI Usage direct-fetch behavior by making WebView login/session-only and forcing Claude/Codex/Gemini/Copilot usage collection through about:blank native bridge, with debug cookie restore QA.
---

# Draft: ai-usage-provider-native-alignment

## Components (topology ledger)
<!-- Lock the SHAPE before depth. One row per top-level component that can succeed or fail independently. -->
<!-- id | outcome (one line) | status: active|deferred | evidence path -->
1 | Scoped provider collector policy: non-about:blank provider-page collection blocked for Claude/Codex/Gemini/Copilot | active | .omo/evidence/task-1-ai-usage-provider-native-alignment-unit.log
2 | Native/direct fetch paths: provider usage payloads come from native APIs only | active | .omo/evidence/task-5-ai-usage-provider-native-alignment-native-fetch.log
3 | Debug QA session restore: saved provider cookies restore after disconnect without clearing app data | active | .omo/evidence/task-4-ai-usage-provider-native-alignment-debug-reset.log
4 | Real provider QA: disconnect all, restore cookie, collect, and refresh for 3+ minutes | active | .omo/evidence/task-7-ai-usage-provider-native-alignment-<provider>.log

## Open assumptions (announced defaults)
<!-- Record any default you adopt instead of asking, so the user can veto it at the gate. -->
<!-- assumption | adopted default | rationale | reversible? -->
Gemini desktop credential parity | Do not migrate to desktop `~/.gemini/oauth_creds.json` semantics in this pass | Android cannot rely on desktop CLI credential files/keychains; current app already has WebView/RPC-session collection and native batchExecute fetch | yes
QA reset method | Add debug-only provider disconnect/reset broadcast instead of using `pm clear` | Preserves foreground service and battery settings while satisfying "all providers disconnected" precondition | yes
Long-term session behavior | Exclude long session retention testing | User explicitly scoped target to usage collection plus 3+ minute refresh | yes

## Findings (cited - path:lines)
- AI Usage/OpenUsage host HTTP is Rust `reqwest` exposed to plugin JS as `ctx.util.request`: `D:/Vibe Project/AI Usage for Windows/upstream-openusage/src-tauri/src/plugin_engine/host_api.rs:667`.
- AI Usage Codex reads Codex auth/keychain and fetches `https://chatgpt.com/backend-api/wham/usage` directly with bearer auth: `D:/Vibe Project/AI Usage for Windows/upstream-openusage/plugins/codex/plugin.js:1`, `:248`.
- AI Usage Gemini reads `~/.gemini/oauth_creds.json` and posts directly to Code Assist APIs: `D:/Vibe Project/AI Usage for Windows/upstream-openusage/plugins/gemini/plugin.js:1`, `:62`, `:100`, `:213`.
- AI Usage Copilot loads a token from keychain/state/gh CLI and fetches `https://api.github.com/copilot_internal/user` directly: `D:/Vibe Project/AI Usage for Windows/upstream-openusage/plugins/copilot/plugin.js:1`, `:101`.
- Android currently enables about:blank policy for scoped providers but `shouldRunCollector` still allows Claude/Copilot non-about:blank pages: `android/app/src/main/java/com/aiquota/mobile/providers/ProviderWebCollectorScripts.kt:117`, `:126`, `:172`.
- Android `build(...)` can still fall back to provider legacy scripts when scoped provider `pageUrl` is blank: `android/app/src/main/java/com/aiquota/mobile/providers/ProviderWebCollectorScripts.kt:435`.
- Android native bridge payload exists for scoped providers: `android/app/src/main/java/com/aiquota/mobile/providers/ProviderWebCollectorScripts.kt:1083`, `:1105`.
- Gemini current flow captures RPC params from usage page then loads `about:blank`: `android/app/src/main/java/com/aiquota/mobile/providers/WebLoginActivity.kt:629`, `android/app/src/main/java/com/aiquota/mobile/providers/ProviderBackgroundRefreshService.kt:690`.
- Debug cookie snapshot capture/restore already exists and exports to `debug-session-cookies/<provider>.json`: `android/app/src/main/java/com/aiquota/mobile/providers/DebugProviderSessionCookieStore.kt:13`, `:57`, `:98`.
- Debug refresh receiver exists, but no debug provider-disconnect receiver exists yet: `android/app/src/debug/java/com/aiquota/mobile/debug/ProviderRefreshDebugReceiver.kt`.

## Decisions (with rationale)
- Treat AI Usage as a direct API/native-fetch model, not as a browser/about:blank model.
- On Android, preserve WebView only as auth/session acquisition because desktop credential files/keychains are unavailable.
- Use `about:blank` as the isolated bridge surface for all scoped provider usage fetches.
- Keep Gemini's usage page visit only to capture RPC session parameters; the usage payload must come from `GeminiUsagePageNativeFetcher`, not page DOM.
- Add debug-only disconnect/reset automation because QA must start from disconnected providers without clearing app data.

## Scope IN
- Claude/Codex/Gemini/Copilot collector policy, native fetchers, relevant tests, debug QA receiver, and real adb QA evidence.

## Scope OUT (Must NOT have)
- Product credential storage changes, long-term session retention, `pm clear` QA, provider DOM/page parsing, and unrelated provider refactors.

## Open questions
- None blocking. If the user wants strict desktop-credential parity for Gemini CLI OAuth instead of the current WebView session bootstrap, that is a separate larger plan.

## Approval gate
status: plan-written
<!-- When exploration is exhausted and unknowns are answered, set status: awaiting-approval. -->
<!-- That durable record is the loop guard: on a later turn read it and resume at the gate instead of re-running exploration. -->
