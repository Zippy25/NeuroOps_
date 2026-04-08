#!/usr/bin/env bash
# Simple helper to create a venv, install backend deps and run the FastAPI app
set -e
if [ ! -d .venv ]; then
  python3 -m venv .venv
fi
source .venv/bin/activate
pip install -q -r backend/requirements.txt
echo "Starting backend on http://127.0.0.1:8000"
python -m uvicorn backend.main:app --reload --host 127.0.0.1 --port 8000
