#!/usr/bin/env bash
set -euo pipefail
root="$(cd "$(dirname "$0")/.." && pwd)"
mkdir -p "$root/dist"
rm -f "$root/dist/veille-skills.zip"
(cd "$root" && zip -r "dist/veille-skills.zip" skills)
echo "Wrote $root/dist/veille-skills.zip"
