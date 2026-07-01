# Gemini fraction execution
Started: 2026-07-01

## Skills
- omo:start-work: execute approved plan, delegate implementation/QA, record ledger.
- omo:teammode: user requested team execution; use durable Codex team threads where available.
- omo:ulw-loop: evidence-bound loop; HEAVY because Gemini external WebView/native RPC/device QA.
- tdd: bugfix requires failing-first behavioral proof.
- omo:git-master: user requested commit/push for each work unit.

## Tier
HEAVY - external Gemini WebView/native RPC integration plus preserve-data device QA and commit/push requirement.

## Success criteria
- SC1: Unit and normalizer tests prove 2% used fraction becomes usedPercent=2 and remainingPercent=0.98 while amount rows remain compatible.
- SC2: Preserve-data Gemini-only device QA proves native about:blank/RPC path writes non-stale 2% state without DOM/fallback.
- SC3: Final review approves diff/evidence; atomic commit pushed to origin/25version-code.

## Manual QA scenario
- Tool: adb/logcat/snapshot auxiliary data surface.
- Invocation: build debug APK, adb install -r, REFRESH_PROVIDER gemini, capture AIQuota logs, read shared_prefs/usage_data_gemini.xml.
- PASS: log has nativeUsage provider=gemini ok=true and collectorMode=native-usage-page-rpc; snapshot has usedPercent 2 or remainingPercent 0.98; no DOM/fallback strings.

## Adversarial classes
- stale_state: compare updated_at after refresh and value change.
- dirty_worktree: stage only intentional files; preserve unrelated dirty files.
- misleading_success_output: verify snapshot and logs, not only Gradle/adb exit code.
- hung_or_long_commands: cap build/QA waits, record timeouts if any.
- flaky_tests: rerun focused failing/green tests after implementation.
- malformed_input: unit test keeps amount-row compatibility and zero-row behavior.
- prompt_injection: not applicable, no untrusted text prompt path changed.
- cancel_resume: not applicable unless interrupted.
- repeated_interruptions: not applicable unless interrupted.

## Now
Bootstrap start-work/team/ulw-loop state, then dispatch implementation member.

## Bootstrap state
- Team: `.omo/teams/team-3a960f95`, member A thread `019f1c87-99d2-7641-bc50-089aab0af14e`.
- Boulder active work: `gemini-usage-fraction-row-refresh`.
- ULW session: `.omo/ulw-loop/gemini-fraction-row-refresh-20260701/` (CLI over-split the markdown; use approved Prometheus plan checkboxes as execution source of truth).
- Codex goal: active aggregate for Gemini fraction-row execution.
