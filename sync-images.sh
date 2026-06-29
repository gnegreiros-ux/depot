#!/bin/bash
# Sync illustrations depuis agentic-design-system/Brand/illustrations/ vers docs/img/
# À lancer avant chaque commit quand des illustrations ont changé.

SOURCE="../agentic-design-system/Brand/illustrations"
DEST="docs/img"

if [ ! -d "$SOURCE" ]; then
  echo "❌ Source introuvable : $SOURCE"
  echo "   Vérifie que le repo agentic-design-system est au même niveau que depot."
  exit 1
fi

mkdir -p "$DEST"
cp "$SOURCE"/IMG-*.png "$DEST/"
COUNT=$(ls "$DEST"/IMG-*.png 2>/dev/null | wc -l | tr -d ' ')
echo "✓ $COUNT illustrations synchronisées → $DEST"
