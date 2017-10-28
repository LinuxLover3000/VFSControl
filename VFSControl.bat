@echo off
goto start
:start
cls
title VFSControl Alpha
echo Welcome to VFSControl!
echo.
echo 1) Fly a Plane
echo 2) Control an Airport
echo 3) Exit
echo.
set /p choice=Type your choice: 
if %choice%==1 (
call fly.bat
goto start
)
if %choice%==2 (
call atc.bat
goto start
)
if not %choice%==1 or 2 (
goto exit
)

:exit
cls
echo Closing program.
ping localhost -n 3>nul
exit
