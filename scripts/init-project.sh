#!/usr/bin/env bash
set -euo pipefail

if [ -d src ]; then
  echo "[init-project] Laravel already exists; skipping create-project."
  exit 0
fi

echo "[init-project] Installing fresh Laravel ..."

docker run --rm -v "${PWD}":/app composer:latest \
  create-project laravel/laravel /app/src --no-interaction --prefer-dist

cp .env.template .env

./scripts/fetch-latest-tags.sh

echo "[init-project] Done! Edit .env then run: docker compose up -d"