@echo off
:start
echo VFSControl METAR Creator
echo.
echo So Far: METAR .... ......Z ..... ..SM ..... ../.. A.... RMK .
echo.
echo Thanks for using this program. Please take the time to fill out this METAR.
echo At any time, you can type "exit" to exit.
pause
cls
echo Enter your airport's four letter identification.
echo.
echo So Far: METAR *....* ......Z ..... ..SM ..... ../.. A.... RMK .
echo.
set /p icao="Enter: "
if %icao%==exit or exiT or exIt or exIT or eXit or eXiT or eXIt or eXIT or Exit or ExiT or ExIt or ExIT or EXit or EXiT or EXIT (
exit
)
cls
echo VFSControl METAR Creator
echo.
echo So Far: METAR %icao% *..*....Z ..... ..SM ..... ../.. A.... RMK .
echo.
echo Enter the day of the month.
echo ex. July 4, 2007 = 04
echo.
set /p day="Enter: "
if %day%==exit or exiT or exIt or exIT or eXit or eXiT or eXIt or eXIT or Exit or ExiT or ExIt or ExIT or EXit or EXiT or EXIT (
exit
)
cls
echo VFSControl METAR Creator
echo.
echo So Far: METAR %icao% %day%*....*Z ..SM ..... ../.. A.... RMK .
echo.
echo Enter the UTC time in four digits.
echo ex. 1632
echo.
set /p zulu="Enter: "
if %zulu%==exit or exiT or exIt or exIT or eXit or eXiT or eXIt or eXIT or Exit or ExiT or ExIt or ExIT or EXit or EXiT or EXIT (
exit
)
cls
echo VFSControl METAR Creator
echo.
echo So Far: METAR %icao% %day%%zulu%Z *..*SM ..... ../.. A.... RMK .
echo.
echo Enter the visibility in statued miles between 1 and 20.
echo ex. 15
echo.
set /p visi="Enter: "
if %visi%==exit or exiT or exIt or exIT or eXit or eXiT or eXIt or eXIT or Exit or ExiT or ExIt or ExIT or EXit or EXiT or EXIT (
exit
)
cls
echo VFSControl METAR Creator
echo.
echo So Far: METAR %icao% %day%%zulu%Z %visi%SM *.....* ../.. A.... RMK .
echo.
echo Enter the direction and speed of the wind.
echo ex. 190 degrees at 20 knots is 19020.
echo.
set /p wind="Enter: "
if %wind%==exit or exiT or exIt or exIT or eXit or eXiT or eXIt or eXIT or Exit or ExiT or ExIt or ExIT or EXit or EXiT or EXIT (
exit
)
cls
echo VFSControl METAR Creator
echo.
echo So Far: METAR %icao% %day%%zulu%Z %visi%SM %wind% *..*/.. A.... RMK .
echo.
echo Enter the temperature in Celsius.
echo.
set /p temp="Enter: "
if %temp%==exit or exiT or exIt or exIT or eXit or eXiT or eXIt or eXIT or Exit or ExiT or ExIt or ExIT or EXit or EXiT or EXIT (
exit
)
cls
echo VFSControl METAR Creator
echo.
echo So Far: METAR %icao% %day%%zulu%Z %visi%SM %wind% %temp%/*..* A.... RMK .
echo.
echo Enter the dewpoint in Celsius.
echo.
set /p dewp="Enter: "
if %dewp%==exit or exiT or exIt or exIT or eXit or eXiT or eXIt or eXIT or Exit or ExiT or ExIt or ExIT or EXit or EXiT or EXIT (
exit
)
cls
echo VFSControl METAR Creator
echo.
echo So Far: METAR %icao% %day%%zulu%Z %visi%SM %wind% %temp%/%dewp% A*....* RMK .
echo.
echo Enter the altimiter setting.
echo.
set /p alti="Enter: "
if %alti%==exit or exiT or exIt or exIT or eXit or eXiT or eXIt or eXIT or Exit or ExiT or ExIt or ExIT or EXit or EXiT or EXIT (
exit
)
cls
echo VFSControl METAR Creator
echo.
echo So Far: METAR %icao% %day%%zulu%Z %visi%SM %wind% %temp%/%dewp% A%alti% RMK .
echo.
echo Enter any remarks you may want to add.
echo.
set /p rmrk="Enter: "
if %rmrk%==exit or exiT or exIt or exIT or eXit or eXiT or eXIt or eXIT or Exit or ExiT or ExIt or ExIT or EXit or EXiT or EXIT (
exit
)
cls
echo VFSControl METAR Creator
echo.
echo Your METAR: METAR %icao% %day%%zulu%Z %visi%SM %wind% %temp%/%dewp% A%alti% RMK %rmrk%
echo.
echo Save this METAR?
echo 1) Yes
echo 2) No
echo.
set /p save="Enter: "
if %save%==exit or exiT or exIt or exIT or eXit or eXiT or eXIt or eXIT or Exit or ExiT or ExIt or ExIT or EXit or EXiT or EXIT (
exit
)
if %save%==1 (
echo METAR %icao% %day%%zulu%Z %visi%SM %wind% %temp%/%dewp% A%alti% RMK %rmrk%>METAR%icao%%day%%zulu%.txt
goto start
)
if %save%==2 (
goto start
)
