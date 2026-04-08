@echo off
REM Simple Windows helper to create a venv (if missing), install backend deps and run the FastAPI app
if not exist .venv ( 
    python -m venv .venv
)
call .venv\Scripts\activate
pip install -q -r backend\requirements.txt
echo Starting backend on http://127.0.0.1:8000
python -m uvicorn backend.main:app --reload --host 127.0.0.1 --port 8000
