#!/bin/bash
set -Eeuo pipefail

echo "Installing Node.js dependencies..."
cd /app
npm install
echo "Setup complete."
