@echo off
echo ================================
echo Productivity Tracker Setup
echo Created by Akshay
echo ================================

echo.
echo [1/3] Installing backend dependencies...
cd backend
call npm install
if %ERRORLEVEL% neq 0 (
    echo ERROR: Failed to install dependencies
    pause
    exit /b 1
)

echo.
echo [2/3] Starting backend server...
start "Productivity Tracker Backend" cmd /k "node server.js"

echo.
echo [3/3] Setup Instructions:
echo.
echo 1. Backend server is starting in a new window
echo 2. Load the Chrome extension:
echo    - Open Chrome and go to chrome://extensions/
echo    - Enable "Developer mode"
echo    - Click "Load unpacked"
echo    - Select the "chrome-extension" folder
echo.
echo 3. Dashboard URL: http://localhost:3000/dashboard
echo.

timeout /t 3
echo Opening dashboard in default browser...
start http://localhost:3000/dashboard

echo.
echo Setup complete! The extension is ready to use.
echo.
pause
