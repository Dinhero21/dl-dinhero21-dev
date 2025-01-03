#!/usr/bin/env bash

BEFORE="$(git rev-parse HEAD)"

git reset --hard
git pull

AFTER="$(git rev-parse HEAD)"

if [ "$BEFORE" = "$AFTER" ]; then
  echo "No changes"
  exit 0
fi

docker compose -f docker-compose.prod.yml up -d --build
