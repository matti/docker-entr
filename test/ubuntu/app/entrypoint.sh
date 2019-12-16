#!/usr/bin/env bash
set -euo pipefail

_term() {
  >&2 echo "TERM"
  exit 0
}
trap "_term" TERM

_err() {
  >&2 echo "err: $*"
  exit 1
}

echo "started, change me"

(
  while true; do
    set +e
      ls -d * | entr -d echo "changed or added"
    set -e
  done
) &

wait $!
