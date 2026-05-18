#!/bin/bash

# Fantasi Futbol — Local Dev Server
# Double-click this file (or run: bash serve.sh) to start

PORT=8080
REPO_DIR="$(cd "$(dirname "$0")" && pwd)"

echo "🚀 Starting Fantasi Futbol local server..."
echo "📁 Serving from: $REPO_DIR"
echo "🌐 Open in browser: http://localhost:$PORT"
echo ""
echo "Press Ctrl+C to stop."
echo ""

cd "$REPO_DIR"

# Try to open the browser automatically
sleep 0.5 && open "http://localhost:$PORT" &

python3 -m http.server $PORT
