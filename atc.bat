@echo off
:start
cls
echo VFSControl ATC Panel
echo.
echo Please select an option.
echo.
echo 1) Control an airport
echo 2) Return to VFSControl
echo.
set /p option="Enter: "
if %option%==1 (
goto setup
)
if %option%==2 (
exit /b
)
:setup
cls
echo VFSControl ATC Panel
echo.
echo Choose the airport to control.
echo.
echo L.F. Wade Int'l............. TXKF
echo St. Barths/Gustaf III....... TFFJ
echo Saba/Juancho E. Yrausquin... TNCS
echo Princess Juliana............ TNCM
echo.
set /p ctrl="Enter: "
cls
echo VFSControl ATC Panel
echo.
echo Begin controlling %ctrl%?
echo.
echo 1) Yes
echo 2) No
echo.
set /p yn="Enter: "
if %yn%==1 (
set rwy=Set this value.
set wind=Set this value.
set vis=Set this value.
set temp=Set this value.
set gates=Set this value.
set slots=Set this value.
goto atc
)
if %control%==2 (
goto start
)
:atc
cls
echo VFSControl ATC Panel
echo.
echo Contolling %ctrl%
echo.
echo Enter an option. Numbers 1-6 are changeable values.
echo.
echo 1) Active Runway: %rwy%
echo 2) Wind: %wind%
echo 3) Visibility: %vis%
echo 4) Temperature: %temp%
echo 5) Gates In Use/Available: %gates%
echo 6) Landing Slots In Use/Available: %slots%
echo 7) Create a METAR Report
echo 8) Return to start menu
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