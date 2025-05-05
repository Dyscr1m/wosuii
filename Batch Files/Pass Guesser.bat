@echo off
title Pass Guesser - Made By IILL
color a
setlocal enabledelayedexpansion


rem Check if Required directory exists
if not exist "Required" (
    echo Required directory not found inside Batch Files.
    pause
    exit /b
)
cd Required

set "pinsFile=4digitPIN.txt"

if not exist "!pinsFile!" (
    echo PINs file not found: !pinsFile!
    pause
    exit /b
)

set /p "userPassword=Enter the password to guess: "
set "found=0"

for /f "usebackq delims=" %%a in ("!pinsFile!") do (
    set "pass=%%a"
    call :attempt
    if !found! equ 1 (
        echo.
        echo.
        echo.
        pause
        exit /b
    )
)

echo All PIN attempts completed.
pause
exit /b

:attempt
if "!pass!"=="!userPassword!" (
    cls
    echo.
    echo.
    echo.
    color 07
    echo Password Found: !pass!
    set "found=1"
) else (
    echo Failed attempt with PIN: !pass!
)
exit /b