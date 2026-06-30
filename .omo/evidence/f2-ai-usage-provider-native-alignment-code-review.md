# Code Review

Findings: none blocking in the changed implementation.

- No `pm clear` or app data deletion path was added.
- Debug provider reset uses repository session expiry only.
- Failure cookie captures no longer update external QA snapshots or restore as QA sessions.
- Scoped provider production script build returns blank for non-about:blank and native payload bridge for about:blank.
- Scoped provider native scripts now omit DOM/storage page-scan helpers from the generated about:blank script.
- Native bridge payloads now stamp `collectorMode=native-bridge`, so log evidence is not mislabeled as DOM/page collection.
- Codex background refresh can enter about:blank native collection from any allowed native JSON resource when cookie/header auth context exists.

Residual risk: final real provider QA still needs fresh successful saved session cookie snapshots for Gemini and Codex.
