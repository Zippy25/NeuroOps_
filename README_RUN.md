Getting started — run the AI DevOps Platform locally

Backend (Windows)

1. From repository root, run:

```
run_backend.bat
```

This script will create a `.venv` (if missing), install `backend/requirements.txt` and start the FastAPI app at `http://127.0.0.1:8000`.

Backend (macOS / Linux)

1. From repository root, run:

```
./run_backend.sh
```

Notes about the frontend

- The frontend is a Flutter web app located in the project root. To run the frontend in development mode:

```
flutter pub get
flutter run -d chrome
```

- The frontend expects the backend at `http://127.0.0.1:8000` during development.

Quick health check

After starting the backend, you can verify the server is reachable:

```
python scripts/check_backend_health.py
```

Next suggestions

- To start both backend and frontend together, use the provided helper scripts:

Windows:
```
run_all.bat
```

macOS / Linux:
```
./run_all.sh
```

These will start the backend (in a background window on Windows) and then run the Flutter dev server in the foreground.
