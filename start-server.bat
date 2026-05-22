@echo off
echo ========================================
echo  Ref-to-Prompt Designer - Local Server
echo ========================================
echo.

REM Try Python 3 first
python --version >nul 2>&1
IF %ERRORLEVEL% EQU 0 (
  echo Starting server with Python 3...
  echo.
  FOR /F "tokens=3 delims= " %%i IN ('ipconfig ^| findstr /i "IPv4"') DO (
    echo Access from other devices: http://%%i:8080
    GOTO :found
  )
  :found
  echo Local access: http://localhost:8080
  echo.
  echo Press Ctrl+C to stop the server.
  python -m http.server 8080
  GOTO :end
)

REM Try Python 2
python2 --version >nul 2>&1
IF %ERRORLEVEL% EQU 0 (
  echo Starting server with Python 2...
  echo Local: http://localhost:8080
  python2 -m SimpleHTTPServer 8080
  GOTO :end
)

REM Try Node.js npx
npx --version >nul 2>&1
IF %ERRORLEVEL% EQU 0 (
  echo Starting server with Node.js...
  echo Local: http://localhost:8080
  npx serve -l 8080 .
  GOTO :end
)

echo ERROR: Python or Node.js not found.
echo Please install Python from https://python.org
echo Then run this script again.
pause
:end
