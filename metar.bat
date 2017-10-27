@echo off
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
