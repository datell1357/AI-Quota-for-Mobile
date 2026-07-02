# Member A NO-CHANGE Finding

Slice: native-bridge-collection

Result: no production or test changes needed for T02-T04 and T06-T08. The current branch already routes Claude, GLM web OAuth, and Codex normal collection through `about:blank` native bridge paths and has focused tests covering the forbidden DOM/storage/script/network-row fallbacks.

## Existing Proof

- T02 target collector boundaries:
  - `android/app/src/test/java/com/aiquota/mobile/providers/ProviderWebCollectorScriptsTest.kt`
    - `collectorRunsOnlyAfterProviderShellsAreReached`
    - `scopedProvidersBuildOnlyNativeUsagePayloadCollector`
    - `scopedProvidersRejectNonAboutBlankCollectorPages`
    - `scopedProvidersDoNotFallBackToLegacyCollectorsWhenPageUrlIsMissing`
    - `glmAboutBlankCollectorDoesNotIncludeLegacyDomFallbacks`
  - `android/app/src/main/java/com/aiquota/mobile/providers/ProviderWebCollectorScripts.kt`
    - `build()` returns blank for allowlisted providers unless `pageUrl == "about:blank"`.
    - Native-bridge common script leaves `text()` empty and `rows()` empty for allowlisted providers.

- T03/T07 GLM web OAuth native collection:
  - `android/app/src/test/java/com/aiquota/mobile/providers/ProviderNativeUsagePayloadFetcherTest.kt`
    - `glmIsCollectedThroughAboutBlankNativeWebSessionFetcher`
  - `android/app/src/test/java/com/aiquota/mobile/providers/GlmUsageFetcherTest.kt`
    - `webSessionFetchSendsCookieAndCapturedNativeHeaders`
  - `android/app/src/test/java/com/aiquota/mobile/providers/ProviderBackgroundRefreshServicePolicyTest.kt`
    - `glmWebOAuthBackgroundRefreshUsesStoredWebSessionNativeFetch`
  - `android/app/src/main/java/com/aiquota/mobile/providers/GlmUsageRepository.kt`
    - `fetchUsagePayloadFromWebSession()` uses stored cookie/header context and `GlmUsageFetcher.fetchUsagePayloadWithCookie()`.

- T04/T08 Codex fresh native bridge continuation:
  - `android/app/src/test/java/com/aiquota/mobile/providers/ProviderNativeUsagePayloadFetcherTest.kt`
    - `codexNativeUsagePayloadFetchUsesForwardedWebViewHeaders`
    - `codexNativeUsagePayloadUsesWhamUsageWhenDashboardHasNoUsage`
    - `codexNativeUsagePayloadDoesNotUseDashboardHtmlFallback`
    - `codexNativeFetchedPayloadUsesWhamUsageJsonWithoutDomFallback`
  - `android/app/src/test/java/com/aiquota/mobile/providers/ProviderCollectorErrorPolicyTest.kt`
    - `codexUsageUnavailableIsPayloadFailureNotInteractiveAuth`
    - `codexAuthRequiredStaysInteractiveAuth`
  - `android/app/src/test/java/com/aiquota/mobile/providers/ProviderBackgroundRefreshServicePolicyTest.kt`
    - `codexBackgroundRefreshSwitchesToAboutBlankNativeJsonAfterAuthResource`
    - `codexBackgroundRefreshUsesAuthenticatedNativeResourceForAboutBlankNativeCollection`

- T06 Claude endpoint-only native bridge collection:
  - `android/app/src/main/java/com/aiquota/mobile/providers/ProviderNativeUsagePayloadFetcher.kt`
    - `ProviderId.CLAUDE -> fetchClaudePayload(userAgent)`
    - `fetchClaudePayload()` fetches Claude organization/profile/subscription/usage endpoints natively.
  - `android/app/src/test/java/com/aiquota/mobile/providers/ProviderWebCollectorScriptsTest.kt`
    - Target about:blank script checks above cover Claude and forbid DOM/storage/script fallback tokens in normal built scripts.

## GREEN Evidence

Command run from Git Bash with Android Studio JBR:

```bash
export JAVA_HOME="/c/Program Files/Android/Android Studio/jbr"
gradle -p android --no-daemon -Pkotlin.incremental=false \
  :app:cleanTestDebugUnitTest :app:testDebugUnitTest \
  --tests "com.aiquota.mobile.providers.ProviderWebCollectorScriptsTest" \
  --tests "com.aiquota.mobile.providers.ProviderNativeUsagePayloadFetcherTest" \
  --tests "com.aiquota.mobile.providers.GlmUsageFetcherTest" \
  --tests "com.aiquota.mobile.providers.ProviderBackgroundRefreshServicePolicyTest" \
  --tests "com.aiquota.mobile.providers.ProviderCollectorErrorPolicyTest"
```

Result:

```text
BUILD SUCCESSFUL in 18s
26 actionable tasks: 2 executed, 24 up-to-date
```

Note: the first attempt without `:app:cleanTestDebugUnitTest` failed before tests completed with Gradle test-result bookkeeping error `NoSuchFileException: ... in-progress-results-generic.bin`. The clean retry passed the same targeted test set.

## Risks

- No emulator/manual login QA was performed in this member slice.
- Legacy collector helper bodies still exist for non-normal/test-only paths in `ProviderWebCollectorScripts.kt`; the normal target `build()` path is fenced to `about:blank` native bridge and covered by the tests above.
