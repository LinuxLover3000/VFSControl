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
goto control
)
if not %choice%==1 or 2 (
goto exit
)
:control
echo Control an Airport
echo.
echo Choose your airport
echo.
echo L.F. Wade Int'l............. TXKF
echo St. Barths/Gustaf III....... TFFJ
echo Saba/Juancho E. Yrausquin... TNCS
echo Princess Juliana............ TNCM
echo.
set /p ctrl="Enter the indentifier: "
cls
echo Begin controlling %ctrl%?
echo.
echo 1) Yes
echo 2) No
echo.
set /p control="Number: "
if %control%==1 (
set rwy="Set this value."
set wind="Calm"
set vis="20 miles or more"
set temp="Temperature in Celsius"
set gates="0/0"
set slots="0/0"
goto atc
)
if %control%==2 (
goto control
)

:atc
cls
echo Contolling %ctrl%
echo.
echo Type in a number to change a value.
echo echo.
echo 1) Active Runway: %rwy%
echo 2) Wind: %wind%
echo 3) Visibility: %vis%
echo 4) Temperature: %temp%
echo 5) Gates In Use/Available: %gates%
echo 6) Landing Slots In Use/Available: %slots%
echo 7) Create a METAR Report
echo 8) Exit Controlling
echo.
set /p select="Enter: "
if %select%==1 (
set /p rwy="What would you like to change it to? "
goto atc
)
if %select%==2 (
set /p wind="What would you like to change it to? "
goto atc
)
if %select%==3 (
set /p vis="What would you like to change it to? "
goto atc
)
if %select%==4 (
set /p temp="What would you like to change it to? "
goto atc
)
if %select%==5 (
set /p gates="What would you like to change it to? "
goto atc
)
if %select%==6 (
set /p slots="What would you like to change it to? "
goto atc
)
if %select%==7 (
call metar.bat
goto atc
)
if %select%==8 (
goto start
)
:exit
cls
echo Closing program.
ping localhost -n 3>nul
exit
