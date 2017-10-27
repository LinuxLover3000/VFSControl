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
goto fly
)
if %choice%==2 (
goto control
)
if not %choice%==1 or 2 (
goto exit )
:fly
cls
echo Fly an Airplane
echo.
echo ACFT: ... / DEP APT: T... / ARR APT: T... / Callsign: ......
echo.
echo Step 1: Choose your airplane.
echo Please type the type of your airplane.
echo.
echo Cirrus SR20.. CIR
echo Twin Otter... OTR
echo Cessna 182R.. C18
echo Boeing 737-7. B77
echo Boeing 737-8. B78
echo Airbus A319.. A19
echo Airbus A320.. A20
echo Airbus A321.. A21
echo.
set /p aircraft="Type identifier code: "
cls
echo Fly an Airplane
echo.
echo ACFT: %aircraft% / DEP APT: T... / ARR APT: T... / Callsign: ......
echo.
echo Step 1: Choose your airplane. \(Completed\)
echo Step 2: Choose your origin.
echo Please type the identifier of your origin airport.
echo.
echo L.F. Wade Int'l............. TXKF
echo St. Barths/Gustaf III....... TFFJ
echo Saba/Juancho E. Yrausquin... TNCS
echo Princess Juliana............ TNCM
echo.
set /p dep="Type identifier code: "
cls
echo Fly an Airplane
echo.
echo ACFT: %aircraft% / DEP APT: %dep% / ARR APT: T... / Callsign: ......
echo.
echo Step 1: Choose your airplane. \(Completed\)
echo Step 2: Choose your origin.   \(Completed\)
echo Step 3: Choose your arrival.
echo Please type the identifier of your arrival airport.
echo.
echo L.F. Wade Int'l............. TXKF
echo St. Barths/Gustaf III....... TFFJ
echo Saba/Juancho E. Yrausquin... TNCS
echo Princess Juliana............ TNCM
set /p arr="Enter the identifier code: "
cls
echo Fly an Airplane
echo.
echo ACFT: %aircraft% / DEP APT: %dep% / ARR APT: %arr% / Callsign: ......
echo Step 1: Choose your airplane. (Completed)
echo Step 2: Choose your origin.   (Completed)
echo Step 3: Choose your arrival.  (Completed)
echo Step 4: Choose your callsign.
echo Type in your callsign. This will be seen and used in ATC transmissions.
echo.
echo Air New Zealand...ANZ
echo Air Europa........AEA
echo Air France........AFR
echo British Airways...BAW
echo Delta Air Lines...DAL
echo Finnair...........FIN
echo Scandinavian......SAS
echo jetBlue Airways...JBU
echo Lufthansa.........DLH
echo Swiss Airlines....SWR
echo TAP Air Portugal..TAP
echo Transavia.........TRA
echo WestJet...........WJA
echo No Callsign.......XXX
echo Twin Otter........OTR
echo Cirrus SR20.......CIR
echo Cessna 182R.......CES
echo.
set /p line="Type the three letter code: "
set /p fltn="Type your flight number: "
cls
echo Fly an Airplane
echo.
echo ACFT: %aircraft% / DEP APT: %dep% / ARR APT: %arr% / Callsign: %line%%fltn%
echo.
echo Begin flight?
echo.
echo 1) Yes
echo 2) No
echo.
set /p begin="Number: "
if %begin%==1 (
goto flight
)
if %begin%==2 (
goto fly
)

:flight
echo Flight
echo.
echo Aircraft: %aircraft% / Departure Airport: %dep% / Arrival Airpot: %arr% / Callsign: %line%%fltn%
echo.
echo [       ]
echo.
echo Steps:
echo 1. Pushback
echo 2. Taxi
echo 3. Takeoff
echo 4. Cruise
echo 5. Approach
echo 6. Landing
echo 7. Taxi
echo.
echo When you are ready to begin your flight, press any key.
pause>nul
cls
echo Flight
echo.
echo Aircraft: %aircraft% / Departure Airport: %dep% / Arrival Airpot: %arr% / Callsign: %line%%fltn%
echo.
echo [       ]
echo.
echo Current Step: Pushback
echo If there is a controller, ask for pushback. Say "%line%%fltn% request pushback at (your gate)."
echo If you are in a jet, push the throttle all the way down and reverse thrust will kick in. Use Q and E to steer. Once finished, turn off reverse thrust.
echo If you are not in a jet, throttle up a tiny bit and use Q and E to turn around.
echo.
echo When you have pushed back, press any key.
pause>nul
cls
echo Flight
echo.
echo Aircraft: %aircraft% / Departure Airport: %dep% / Arrival Airpot: %arr% / Callsign: %line%%fltn%
echo.
echo [1      ]
echo.
echo Current Step: Taxi
echo If there is a controller, ask for taxi. Say "%line%%fltn% request taxi runway (departure runway)."
echo Throttle up slowly to follow the taxiway to the runway. Use Q and E to steer. Make sure you don't go faster than 20 knots.
echo During your taxi, lower your flaps for departure. Make sure you do NOT go on to the runway unless otherwise stated by the controller.
echo.
echo When you are holding at the runway, press any key.
pause>nul
cls
echo Flight
echo.
echo Aircraft: %aircraft% / Departure Airport: %dep% / Arrival Airpot: %arr% / Callsign: %line%%fltn%
echo.
echo [12     ]
echo.
echo Current Step: Takeoff
echo If there is a controller, he will tell you when it is safe to either line up, or take off. If the controller says "%line%%fltn%, line up runway (runway)",
echo then line up and STOP on the runway. If he says "%line%%fltn%, runway (runway), cleared for takeoff.", then you may take off.
echo If you are on the runway, all of your lights should be on.
echo Once on the runway and takeoff clearance has been received, make sure your flaps are down, lights are on, and the runway is clear.
echo Once you have verified these, you may throttle all the way up. If you are crooked, steer with Q and E. Once at VS speed, pull back slowly.
echo Your initial climb should be about 1,000 feet per minute. Once you have vertical climb, press G to retract the gear, if in a jet.
echo In a jet, once at 200 knots, retract flaps. If you are not in a jet, flaps come up at twenty above VS speed.
echo.
echo Once you have taken off, press any key.
pause>nul
cls
echo Flight
echo.
echo Aircraft: %aircraft% / Departure Airport: %dep% / Arrival Airpot: %arr% / Callsign: %line%%fltn%
echo.
echo [123    ]
echo.
echo Current Step: Cruise
echo Fly to your destination. If there is a controller, ask them for a landing slot.
echo.
echo Once you start descending, press any key.
pause>nul
cls
echo Flight
echo.
echo Aircraft: %aircraft% / Departure Airport: %dep% / Arrival Airpot: %arr% / Callsign: %line%%fltn%
echo.
echo [1234   ]
echo.
echo Current Step: Approach
echo If there is a controller, ask them for approach clearance.
echo Slowly increase flaps as you get closer to your airport.
echo Lower your gear in time for landing.
echo.
echo Once you have lowered your gear, press any key.
pause>nul
cls
echo Flight
echo.
echo Aircraft: %aircraft% / Departure Airport: %dep% / Arrival Airpot: %arr% / Callsign: %line%%fltn%
echo.
echo [12345  ]
echo.
echo Current Step: Landing
echo If there is a controller, he will give you landing clearance.
echo Vacate either left or right according to the convenience of taxi.
echo.
echo Once you have vacated, press any key
pause>nul
cls
echo Flight
echo.
echo Aircraft: %aircraft% / Departure Airport: %dep% / Arrival Airpot: %arr% / Callsign: %line%%fltn%
echo.
echo [123456 ]
echo.
echo Current Step: Taxi
echo Taxi to your gate and shut down the engines.
echo.
echo Once you have shut down, press any key to end the flight.
pause>nul
cls
echo Congratulations! You have competed your flight.
echo.
echo [1234567]
echo.
pause
goto start
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
