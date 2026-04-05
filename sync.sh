#!/bin/bash
# sync.sh - Pull latest changes from GitHub
# Usage: Run manually or via cron to keep VPS in sync with Obsidian vault
#
# Cron example (every 10 minutes):
#   */10 * * * * /path/to/claw/sync.sh >> /var/log/claw-sync.log 2>&1

REPO_DIR="$(cd "$(dirname "$0")" && pwd)"
BRANCH="main"

cd "$REPO_DIR" || exit 1

git fetch origin "$BRANCH"
git pull origin "$BRANCH"
