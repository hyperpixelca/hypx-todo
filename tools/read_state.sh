#!/usr/bin/env bash
# Prints Jack's to-do sync state (checks, skips, own items) from the state branch.
# Usage: tools/read_state.sh   (needs gh logged in as hyperpixelca)
set -euo pipefail
gh api "repos/hyperpixelca/hypx-todo/contents/state.json?ref=state" --jq .content | base64 -d | { command -v jq >/dev/null && jq . || cat; }
