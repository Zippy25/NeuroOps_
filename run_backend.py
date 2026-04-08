"""Utility to start the backend reliably from the repository root.

Usage:
    python run_backend.py

This ensures `backend.main:app` is used so Uvicorn finds the FastAPI app
regardless of the current working directory.
"""
import uvicorn
import sys
import os


def main():
    # Ensure backend package dir is on sys.path so imports like `from config import config`
    repo_root = os.path.dirname(os.path.abspath(__file__))
    backend_path = os.path.join(repo_root, "backend")
    if backend_path not in sys.path:
        sys.path.insert(0, backend_path)

    uvicorn.run("backend.main:app", host="127.0.0.1", port=8000, reload=True)


if __name__ == "__main__":
    main()
