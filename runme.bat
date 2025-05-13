@echo off
REM Check for administrative privileges and relaunch if needed
NET SESSION >nul 2>&1
IF %ERRORLEVEL% NEQ 0 (
    echo Requesting administrative privileges...
    powershell.exe -Command "Start-Process -FilePath '%~dpnx0' -Verb RunAs"
    exit /b
)

REM If we get here, we have admin rights
powershell.exe -NoExit -ExecutionPolicy Bypass -File "%~dp0\script.ps1"