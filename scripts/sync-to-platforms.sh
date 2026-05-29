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
  if [[ $DRY_RUN == 1 ]]; then
    echo "  (dry-run) git pull on $REPO_PATH_WIN"
    return
  fi
  # Remote shell is cmd.exe; pass the command via single quotes (no bash processing).
  # cmd.exe handles "C:\Program Files\..." quoted paths natively.
  ssh -p 2224 myartings@myartings.xyz \
    '"C:\Program Files\Git\bin\bash.exe" -c "cd /c/Users/myartings/workspace/html-render-lite && git pull --ff-only && echo ok: $(git log --oneline -1)"'
}

do_wsl() {
  echo "--- windows wsl2 (ssh -p 2224 + wsl bash -i) ---"
  if [[ $DRY_RUN == 1 ]]; then
    echo "  (dry-run) git pull on WSL $REPO_PATH_WSL"
    return
  fi
  # cmd.exe doesn't treat single quotes as special; use escaped double quotes for -c arg.
  ssh -p 2224 myartings@myartings.xyz \
    "wsl bash -i -c \"cd $REPO_PATH_WSL && git pull --ff-only && echo ok: \$(git log --oneline -1)\""
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
