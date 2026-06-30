# Codex Login Return Final Gate Review

Recommendation: APPROVE

Gate review passed after the final iteration:

- Hidden `about:blank` iframe collection was removed from `WebLoginActivity`.
- Codex native collection now moves the main WebView to top-level `about:blank`.
- `WebLoginActivityNativeBridgeTest` no longer uses source-string implementation checks for the no-iframe path; it verifies `CodexNativeCollectionRoutes` policy and the generated about:blank collector contract.
- Final Android surface QA `android-surface-codex-cookie-restore-login-10.txt` shows debug cookie restore, no ChatGPT-host DOM injection, no aboutblank-frame injection, top-level about:blank injection, native Wham usage success, CONNECTED/IDLE snapshot, and no resumed WebLoginActivity.
- Targeted tests, assemble, install, and `git diff --check` completed with no blocking failures.

Blockers: none.
