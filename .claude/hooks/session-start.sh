#!/bin/bash
# Reinstall Agent Reach and its upstream tools in Claude Code cloud sessions.
set -euo pipefail

if [ "${CLAUDE_CODE_REMOTE:-}" != "true" ]; then
  exit 0
fi

export PATH="$HOME/.agent-reach-venv/bin:$HOME/.local/bin:$PATH"
if [ -n "${CLAUDE_ENV_FILE:-}" ]; then
  echo 'export PATH="$HOME/.agent-reach-venv/bin:$HOME/.local/bin:$PATH"' >> "$CLAUDE_ENV_FILE"
fi

# Skip the reinstall when the cached container already has everything.
if command -v agent-reach >/dev/null && command -v mcporter >/dev/null && command -v twitter >/dev/null; then
  echo "Agent Reach already installed."
  exit 0
fi

log=/tmp/agent-reach-install.log
if bash "${CLAUDE_PROJECT_DIR:-$(pwd)}/scripts/install-agent-reach.sh" >"$log" 2>&1; then
  echo "Agent Reach installed (log: $log)."
else
  echo "Agent Reach install failed; see $log." >&2
fi
