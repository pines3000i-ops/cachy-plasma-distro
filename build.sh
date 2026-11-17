#!/usr/bin/env bash
set -euo pipefail

# Buduje ISO dystrybucji. Uruchamiaj na CachyOS lub Arch Linux.

WORK_DIR="$(pwd)/work"
OUT_DIR="$(pwd)/out"

echo "==> Instalacja narzedzi buildu"
sudo pacman -S --needed --noconfirm archiso

echo "==> Przygotowanie katalogu roboczego"
mkdir -p "$WORK_DIR" "$OUT_DIR"

echo "==> Budowanie ISO (to potrwa 20-60 min)"
sudo mkarchiso -v -w "$WORK_DIR" -o "$OUT_DIR" .

echo "==> Gotowe. ISO znajdziesz w: $OUT_DIR"
ls -lh "$OUT_DIR"/*.iso
