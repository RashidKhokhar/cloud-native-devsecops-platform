#!/usr/bin/env bash
set -euo pipefail

echo "Starting local platform services..."
docker compose up --build -d

echo "Services started successfully."
echo "Frontend: http://localhost:8085"
echo "Backend: http://localhost:8005"
