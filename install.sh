#!/usr/bin/env bash
set -euo pipefail

# Sovereign Agent Skills Multi-Agent Installer (Claude Code, Cursor, Windsurf, Antigravity)
# Copies customer skills without overwriting existing user files.

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
SKILLS_SRC="${SCRIPT_DIR}/skills"
TARGET="${1:-auto}"

copy_skills_dir() {
  local dest="$1"
  local ext="$2"
  mkdir -p "$dest"
  for skill_dir in "$SKILLS_SRC"/*; do
    [ -d "$skill_dir" ] || continue
    local name
    name="$(basename "$skill_dir")"
    local src_file="${skill_dir}/SKILL.md"
    [ -f "$src_file" ] || continue
    if [ "$ext" = "folder" ]; then
      mkdir -p "${dest}/${name}"
      if [ ! -e "${dest}/${name}/SKILL.md" ]; then
        cp "$src_file" "${dest}/${name}/SKILL.md"
        echo "[+] Installed ${dest}/${name}/SKILL.md"
      else
        echo "[=] Skipped existing ${dest}/${name}/SKILL.md"
      fi
    else
      if [ ! -e "${dest}/${name}.${ext}" ]; then
        cp "$src_file" "${dest}/${name}.${ext}"
        echo "[+] Installed ${dest}/${name}.${ext}"
      else
        echo "[=] Skipped existing ${dest}/${name}.${ext}"
      fi
    fi
  done
}

install_target() {
  case "$1" in
    claude)      copy_skills_dir ".claude/skills" "folder" ;;
    cursor)      copy_skills_dir ".cursor/rules" "mdc" ;;
    windsurf)    copy_skills_dir ".windsurf/rules" "md" ;;
    antigravity) copy_skills_dir "${HOME}/.gemini/config/skills" "folder" ;;
    *)
      echo "Usage: $0 [auto|claude|cursor|windsurf|antigravity]" >&2
      exit 2
      ;;
  esac
}

if [ "$TARGET" = "auto" ]; then
  install_target claude
  install_target cursor
  install_target windsurf
else
  install_target "$TARGET"
fi

echo ""
echo "[Done] Optionally copy .mcp.json into your workspace root and claim free API keys at:"
echo "  - DataCastle: https://datacastle.eu/open"
echo "  - Supernova & CyberAgents: https://supernova.cool/open | https://cyberagents.app/open"
echo "  - WSP Hub: https://wsphub.dev/open"
