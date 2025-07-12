#!/usr/bin/env bash
set -euo pipefail

get_latest() {
  local repo="$1" filter="$2"
  curl -s "https://hub.docker.com/v2/repositories/library/${repo}/tags?page_size=100" \
  | jq -r "[.results[] | select(${filter})][0].name"
}

PHP_TAG=$(get_latest php 'test("[0-9]+\\.[0-9]+-fpm-alpine")')
NODE_TAG=$(get_latest node 'test("lts-alpine")')
MYSQL_TAG=$(get_latest mysql 'test("^[0-9]+\\.[0-9]+\\.[0-9]+$")')
REDIS_TAG=$(get_latest redis 'test("[0-9]+\\.[0-9]+-alpine")')

cat > .env.auto <<EOF
PHP_TAG=${PHP_TAG}
NODE_TAG=${NODE_TAG}
MYSQL_TAG=${MYSQL_TAG}
REDIS_TAG=${REDIS_TAG}
EOF

echo "[fetch-latest-tags] Tags written to .env.auto:"
cat .env.auto