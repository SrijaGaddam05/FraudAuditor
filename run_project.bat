@echo off
title FraudAuditor - Health Insurance Fraud Detection
echo ========================================================
echo   Starting FraudAuditor System
echo ========================================================

echo [1/2] Checking and starting MySQL Database Server...
tasklist /FI "IMAGENAME eq mysqld.exe" 2>NUL | find /I /N "mysqld.exe">NUL
if "%ERRORLEVEL%"=="0" (
    echo MySQL is already running.
) else (
    start "" /b "C:\wamp\bin\mysql\mysql5.6.12\bin\mysqld.exe" --defaults-file="C:\wamp\bin\mysql\mysql5.6.12\my.ini"
    timeout /t 3 /nobreak >nul
)

echo [2/2] Launching Django Development Server...
cd fraudauditor
start http://127.0.0.1:8000/
"C:\Users\Nikhil\AppData\Local\Programs\Python\Python36\python.exe" manage.py runserver 127.0.0.1:8000
pause

