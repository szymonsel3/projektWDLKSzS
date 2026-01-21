#!/usr/bin/env bash

INCOMING="inbox"
OUTDIR=${2:-"classified"}; mkdir -p "$OUTDIR"
for file in "$INCOMING"/*; do
    [ -e "$file" ] || continue
    category=$(grep -i '^CATEGORY:' "$file" | cut -d':' -f2 | tr -d '[:space:]')
    if [[ -z "$category" ]]; then
        category="unknown"
    fi
    mkdir -p "$OUTDIR/$category"
    mv "$file" "$OUTDIR/$category"/
    echo "Moved $(basename "$file") -> $OUTDIR/$category/"
done
echo "Classification complete."
