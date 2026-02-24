#!/bin/bash
set -Eeuo pipefail

echo "Installing backend dependencies..."
cd /app/backend && uv sync &

echo "Installing frontend dependencies..."
cd /app/frontend && npm install &

wait
echo "Setup complete."
