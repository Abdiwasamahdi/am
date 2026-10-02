#!/usr/bin/env bash
# Reinstall Agent Reach (https://github.com/Panniantong/Agent-Reach) and its upstream tools.
# Run this at the start of a fresh session: bash scripts/install-agent-reach.sh
set -euo pipefail

python3 -m venv ~/.agent-reach-venv
~/.agent-reach-venv/bin/pip install -q "git+https://github.com/Panniantong/Agent-Reach.git@main"
export PATH="$HOME/.agent-reach-venv/bin:$PATH"

# Installs gh/yt-dlp/mcporter/Exa plus bili-cli, rdt-cli, twitter-cli, etc.
# Desktop-only channels (OpenCLI, Facebook, Instagram, Boss) are skipped on servers.
agent-reach install --env=auto --system --channels=all || true
agent-reach doctor
