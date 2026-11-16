#!/usr/bin/env bash
set -euo pipefail

echo "Validating Docker Compose configuration..."
docker compose config >/dev/null

echo "Checking running services..."
docker compose ps

echo "Verification complete."
