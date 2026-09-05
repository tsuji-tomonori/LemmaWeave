#!/usr/bin/env bash
# Source this file from the checkout; the optional transferred runtime is its sibling.
LEMMAWEAVE_RUNTIME_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/../.." && pwd)/lean-runtime"
if [[ -x "$LEMMAWEAVE_RUNTIME_ROOT/bin/lean" ]]; then
  export PATH="$LEMMAWEAVE_RUNTIME_ROOT/bin:$PATH"
else
  echo "Transferred Lean runtime is not present at $LEMMAWEAVE_RUNTIME_ROOT" >&2
  return 1 2>/dev/null || exit 1
fi
