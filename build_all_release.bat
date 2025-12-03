@echo off
cd /d "%~dp0"

call compile_cgame.bat
if errorlevel 1 (
    pause
    exit /b 1
)

call compile_ui.bat
if errorlevel 1 (
    pause
    exit /b 1
)

set "pakname={X-Mod}.pk3"

cd baseq3

..\bin_nt\7za a -tzip -mx5 %pakname% @..\bin_nt\listfile.txt

move %pakname% ..\%pakname%

cd ..

pause