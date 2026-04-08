#!/usr/bin/env bash
set -e
ROOT_DIR="$(cd "$(dirname "$0")" && pwd)"
echo "Starting backend in background..."
nohup "$ROOT_DIR/run_backend.sh" > backend_run.log 2>&1 &
echo "Waiting 3 seconds for backend to initialize..."
sleep 3
echo "Starting Flutter dev server in foreground..."
cd "$ROOT_DIR"
flutter pub get
flutter run -d chrome
