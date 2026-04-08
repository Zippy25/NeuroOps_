@echo off
REM Start backend in a new window and then run the Flutter dev server.
echo Starting backend in a new window...
start "AI DevOps Backend" cmd /k "%~dp0run_backend.bat"
echo Waiting 3 seconds for backend to initialize...
timeout /t 3 /nobreak >nul
echo Starting Flutter dev server (this window will run Flutter)...
cd %~dp0
flutter pub get
flutter run -d chrome
