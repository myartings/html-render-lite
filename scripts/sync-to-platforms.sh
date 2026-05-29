#!/usr/bin/env bash
# Sync html-render-lite to all platform runtimes via git pull.
# Run this on Linux after pushing commits to the remote.
#
# Usage:
#   bash scripts/sync-to-platforms.sh           # sync all platforms
#   bash scripts/sync-to-platforms.sh --dry-run  # preview only
#   bash scripts/sync-to-platforms.sh mac        # sync only mac
#   bash scripts/sync-to-platforms.sh win        # sync only windows native
#   bash scripts/sync-to-platforms.sh wsl        # sync only windows wsl2
set -euo pipefail

REPO_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
REPO_PATH_MAC="/Users/myartings/workspace/html-render-lite"
REPO_PATH_WIN="C:/Users/myartings/workspace/html-render-lite"
REPO_PATH_WSL="/home/myartings/workspace/html-render-lite"

DRY_RUN=0
TARGET="${1:-all}"
[[ "${1:-}" == "--dry-run" ]] && DRY_RUN=1 && TARGET="all"

run() {
  if [[ $DRY_RUN == 1 ]]; then
    echo "  (dry-run) $*"
  else
    eval "$@"
  fi
}

do_linux() {
  echo "--- linux local (already up to date after push) ---"
  echo "  $(cd "$REPO_DIR" && git log --oneline -1)"
}

do_mac() {
  echo "--- mac (ssh -p 2223) ---"
  run ssh -p 2223 myartings@myartings.xyz \
    "\"cd $REPO_PATH_MAC && git pull --ff-only && echo '  ok: '\$(git log --oneline -1)\""
}

do_win() {
  echo "--- windows native (ssh -p 2224) ---"
  # Git pull on Windows native using Git bash
  run ssh -p 2224 myartings@myartings.xyz \
    "'C:/Program Files/Git/bin/bash.exe' -c \
    'cd $REPO_PATH_WIN && git pull --ff-only && echo \"  ok: \$(git log --oneline -1)\"'"
}

do_wsl() {
  echo "--- windows wsl2 (ssh -p 2224 + wsl bash -i) ---"
  run ssh -p 2224 myartings@myartings.xyz \
    "wsl bash -i -c \
    'cd $REPO_PATH_WSL && git pull --ff-only && echo \"  ok: \$(git log --oneline -1)\"'"
}

case "$TARGET" in
  mac)  do_mac ;;
  win)  do_win ;;
  wsl)  do_wsl ;;
  all)
    do_linux
    do_mac
    do_win
    do_wsl
    ;;
  *)
    echo "Usage: $0 [--dry-run | mac | win | wsl | all]"
    exit 1
    ;;
esac

[[ $DRY_RUN == 1 ]] && echo -e "\ndry-run: no changes made" || echo -e "\ndone"
