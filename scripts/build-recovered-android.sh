#!/usr/bin/env bash
set -euo pipefail
repo_dir="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")/.." && pwd)"
export JAVA_HOME="${JAVA_HOME:-$repo_dir/.tmp/toolchains/jdk17/Contents/Home}"
export GRADLE_USER_HOME="${GRADLE_USER_HOME:-$repo_dir/.tmp/gradle-user-home}"
if [[ ! -x "$JAVA_HOME/bin/java" ]]; then
  echo 'JDK 17 is required. Set JAVA_HOME to an installed JDK 17.' >&2
  exit 1
fi
if [[ $# -eq 0 ]]; then
  set -- :app:bundleRelease
fi
exec "$repo_dir/android/gradlew" -p "$repo_dir/android" "$@" --no-daemon
