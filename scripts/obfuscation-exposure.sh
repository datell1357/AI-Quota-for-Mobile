#!/usr/bin/env bash
# Measures what a decompiler can read out of the release bundle.
#
# Run it before and after each obfuscation change and diff the two reports; every hardening
# stage should move these numbers down (or explain why it did not).
#
#   ./scripts/obfuscation-exposure.sh                  # writes to build/obfuscation-exposure.txt
#   ./scripts/obfuscation-exposure.sh baseline.txt     # writes to a chosen path
#
# Requires a release bundle to exist:  gradle -p android :app:bundleRelease
set -euo pipefail

repo_root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
aab="$repo_root/android/app/build/outputs/bundle/release/app-release.aab"
mapping="$repo_root/android/app/build/outputs/mapping/release/mapping.txt"
out="${1:-$repo_root/build/obfuscation-exposure.txt}"

[ -f "$aab" ] || { echo "missing $aab — run :app:bundleRelease first" >&2; exit 1; }

work="$(mktemp -d)"
trap 'rm -rf "$work"' EXIT
unzip -q "$aab" -d "$work"

mkdir -p "$(dirname "$out")"
{
  echo "# Obfuscation exposure report"
  echo "generated: $(date -u +%Y-%m-%dT%H:%M:%SZ)"
  echo

  echo "## Class name obfuscation"
  if [ -f "$mapping" ]; then
    total=$(grep -cE '^com\.aiquota\.mobile\..* -> ' "$mapping" || true)
    # A class is still readable if its obfuscated name kept the original identifier.
    readable=$(grep -E '^com\.aiquota\.mobile\..* -> ' "$mapping" \
      | awk -F' -> ' '{split($1,a,"."); n=a[length(a)]; if (index($2, n)) print}' | wc -l | tr -d ' ')
    echo "app classes in mapping : $total"
    echo "still readable by name : $readable"
  else
    echo "mapping.txt not found"
  fi
  echo

  echo "## Package structure (top-level packages still readable in dex)"
  strings "$work"/base/dex/*.dex 2>/dev/null \
    | grep -oE '^Lcom/aiquota/mobile/[a-z]+' | sort -u | sed 's/^/  /' || true
  echo

  echo "## Readable assets"
  ls -1 "$work/base/assets" 2>/dev/null | sed 's/^/  /' || echo "  (none)"
  echo

  # Scoped to the hosts this app actually collects from; a broad /api/ match is drowned out by
  # Play Services strings and would hide real regressions.
  echo "## Provider endpoints visible in dex"
  strings "$work"/base/dex/*.dex 2>/dev/null \
    | grep -oE 'https://[a-zA-Z0-9.-]*(claude\.ai|chatgpt\.com|openai\.com|cursor\.com|opencode\.ai|bigmodel\.cn|z\.ai|githubcopilot\.com|antigravity\.google)[a-zA-Z0-9/_{}.-]*' \
    | sort -u | sed 's/^/  /' || true
  echo "  -- provider api paths --"
  strings "$work"/base/dex/*.dex 2>/dev/null \
    | grep -oE '/api/(organizations|account_profile|bootstrap|monitor/usage|usage[a-z_-]*)[a-zA-Z0-9/_{}.-]*|/backend-api/[a-zA-Z0-9/_{}.-]+' \
    | sort -u | sed 's/^/  /' || true
  echo

  echo "## Collector / bridge identifiers visible in dex"
  strings "$work"/base/dex/*.dex 2>/dev/null \
    | grep -oE 'AIQuota[A-Za-z]*Bridge|__AIQuota[A-Za-z]*|chat_conversations|parent_message_uuid|rendering_mode' \
    | sort | uniq -c | sort -rn | sed 's/^/  /' || true
  echo

  echo "## OAuth client ids visible in dex (public by design, tracked for completeness)"
  strings "$work"/base/dex/*.dex 2>/dev/null \
    | grep -oE '[0-9]{10,}-[a-z0-9]{20,}' | sort -u | sed 's/^/  /' || true
} > "$out"

echo "wrote $out"
