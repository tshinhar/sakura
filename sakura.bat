@echo off
chcp 65001 >nul
set "SCRIPT_DIR=%~dp0"
set "SAKURA="

if exist "%SCRIPT_DIR%sakura" (
    if not exist "%SCRIPT_DIR%sakura\" (
        set "SAKURA=%SCRIPT_DIR%sakura"
    )
)
if not defined SAKURA (
    if exist "%SCRIPT_DIR%sakura\sakura" (
        if not exist "%SCRIPT_DIR%sakura\sakura\" (
            set "SAKURA=%SCRIPT_DIR%sakura\sakura"
        )
    )
)

if not defined SAKURA (
    echo sakura not found
    pause
    exit /b 1
)

for /f "delims=" %%i in ('wsl wslpath -a "%SAKURA:\=/%"') do set "WSLPATH=%%i"
wsl bash "%WSLPATH%"