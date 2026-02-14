#!/usr/bin/env bash

# Development server for Codespaces
# Uses relative URLs to avoid localhost redirect issues

pkill hugo 2>/dev/null || true

echo "Starting Hugo development server..."
echo "Press Ctrl+C to stop."
echo

hugo server \
  --bind 0.0.0.0 \
  --disableFastRender \
  --baseURL "/" \
  --appendPort=false
