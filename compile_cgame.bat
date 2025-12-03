@echo off
cd /d "%~dp0cgame"
if not exist cgame.bat (
    echo ERROR: cgame.bat not found!
    pause
    exit /b 1
)
call cgame.bat
if errorlevel 1 (
    cd /d "%~dp0"
    pause
    exit /b 1
)
cd /d "%~dp0"