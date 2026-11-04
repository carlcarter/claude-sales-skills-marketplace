#!/usr/bin/env bash
# Fallback only: builds one .zip per skill for manual upload via
# Claude > Customize > Skills > Add skill > Upload skill.
# Plugins (via the marketplace) are the preferred way to share.
set -euo pipefail
cd "$(dirname "$0")/.."
OUT="dist"
mkdir -p "$OUT"
for skill in plugins/*/skills/*/; do
  [ -f "${skill}SKILL.md" ] || continue
  name="$(basename "$skill")"
  parent="$(dirname "$skill")"
  (cd "$parent" && zip -qr "$OLDPWD/$OUT/${name}.zip" "$name")
  echo "Built $OUT/${name}.zip"
done
