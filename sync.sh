#!/bin/bash
# Копирует конфиги с оригинальных мест в этот репозиторий.
# Запускай перед коммитом, чтобы подтянуть свежие изменения.

set -euo pipefail
DIR="$(cd "$(dirname "$0")" && pwd)"

# Zsh
cp ~/.zshrc "$DIR/zsh/zshrc"
rm -rf "$DIR/zsh/zshrc.d"
cp -R ~/.zshrc.d "$DIR/zsh/zshrc.d"

# Vim
cp ~/.vimrc "$DIR/vim/vimrc"

# Ghostty
cp ~/Library/Application\ Support/com.mitchellh.ghostty/config "$DIR/ghostty/config"

# Cursor (global)
cp ~/.cursor/mcp.json "$DIR/cursor/mcp.json"

# Work/smard
for item in .claude .cursor .vscode; do
  rm -rf "$DIR/work/smard/$item"
  cp -R ~/Work/findev/smard/"$item" "$DIR/work/smard/$item"
done
cp ~/Work/findev/smard/CLAUDE.md "$DIR/work/smard/CLAUDE.md"
cp ~/Work/findev/smard/AGENTS.md "$DIR/work/smard/AGENTS.md"

echo "Synced."
