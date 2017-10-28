@echo off
:start
cls
echo VFSControl METAR Creator
echo.
echo Select an option.
echo.
echo 1) Create a METAR
echo 2) Return to ATC Panel
echo.
set /p option="Enter: "
if %option%==1 (
goto metar
)
if %option%==2 (
exit /b
)
:metar
cls
echo VFSControl METAR Creator
echo.
echo So Far: METAR .... ......Z ..... ..SM ..... ../.. A.... RMK .
echo.
pause
cls
echo VFSControl METAR Creator
echo.
echo So Far: METAR *....* ......Z ..... ..SM ..... ../.. A.... RMK .
echo.
echo Enter your airport's four letter identification.
echo.
set /p icao="Enter: "
cls
echo VFSControl METAR Creator
echo.
echo So Far: METAR %icao% *..*....Z ..... ..SM ..... ../.. A.... RMK .
echo.
echo Enter the day of the month.
echo ex. July 4, 2007 = 04
echo.
set /p day="Enter: "
cls
echo VFSControl METAR Creator
echo.
echo So Far: METAR %icao% %day%*....*Z ..SM ..... ../.. A.... RMK .
echo.
echo Enter the UTC time in four digits.
echo ex. 1632
echo.
set /p zulu="Enter: "
cls
echo VFSControl METAR Creator
echo.
echo So Far: METAR %icao% %day%%zulu%Z *..*SM ..... ../.. A.... RMK .
echo.
echo Enter the visibility in statued miles between 1 and 20.
echo ex. 15
echo.
set /p visi="Enter: "
cls
echo VFSControl METAR Creator
echo.
echo So Far: METAR %icao% %day%%zulu%Z %visi%SM *.....* ../.. A.... RMK .
echo.
echo Enter the direction and speed of the wind.
echo ex. 190 degrees at 20 knots is 19020.
echo.
set /p mwind="Enter: "
cls
echo VFSControl METAR Creator
echo.
echo So Far: METAR %icao% %day%%zulu%Z %visi%SM %mwind% *..*/.. A.... RMK .
echo.
echo Enter the temperature in Celsius.
echo.
set /p mtemp="Enter: "
cls
echo VFSControl METAR Creator
echo.
echo So Far: METAR %icao% %day%%zulu%Z %visi%SM %mwind% %mtemp%/*..* A.... RMK .
echo.
echo Enter the dewpoint in Celsius.
echo.
set /p dewp="Enter: "
cls
echo VFSControl METAR Creator
echo.
echo So Far: METAR %icao% %day%%zulu%Z %visi%SM %mwind% %mtemp%/%dewp% A*....* RMK .
echo.
echo Enter the altimiter setting.
echo.
set /p alti="Enter: "
cls
echo VFSControl METAR Creator
echo.
echo So Far: METAR %icao% %day%%zulu%Z %visi%SM %mwind% %mtemp%/%dewp% A%alti% RMK .
echo.
echo Enter any remarks you may want to add.
echo.
set /p rmrk="Enter: "
cls
echo VFSControl METAR Creator
echo.
echo Your METAR: METAR %icao% %day%%zulu%Z %visi%SM %mwind% %mtemp%/%dewp% A%alti% RMK %rmrk%
echo.
echo Save this METAR?
echo 1) Yes
echo 2) No
echo.
set /p save="Enter: "
if %save%==1 (
echo METAR %icao% %day%%zulu%Z %visi%SM %mwind% %mtemp%/%dewp% A%alti% RMK %rmrk%>METAR%icao%%day%%zulu%.txt
goto start
)
if %save%==2 (
goto start
)