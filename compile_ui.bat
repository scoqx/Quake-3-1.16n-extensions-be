@echo off
cd /d "%~dp0ui"
if not exist ui.bat (
    echo ERROR: ui.bat not found!
    pause
    exit /b 1
)
call ui.bat
if errorlevel 1 (
    cd /d "%~dp0"
    pause
    exit /b 1
)
cd /d "%~dp0"