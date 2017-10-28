@echo off
:start
set acft=null
set dep=null
set arr=null
set line=null
set fltn=null
cls
echo VFSControl Flight Panel
echo.
echo Select an option.
echo.
echo 1) Set up a flight
echo 2) Return to VFSControl Main Panel
echo.
set /p option="Enter: "
if %option%==1 (
goto setup
)
if %option%==2 (
exit /b
)
if not %option%==1 or 2 (
echo Invalid choice.
pause
goto start
)
:setup
cls
echo VFSControl Flight Panel
echo.
echo ACFT: ... / DEP APT: .... / ARR APT: .... / Callsign: .......
echo.
echo Hello. Please take the time to fill out this form.
pause
cls
echo VFSControl Flight Panel
echo.
echo ACFT: *...* / DEP APT: .... / ARR APT: .... / Callsign: .......
echo.
echo Please type the three digit type code of your airplane.
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
set /p acft="Enter: "
cls
echo VFSControl Flight Panel
echo.
echo ACFT: %acft% / DEP APT: *....* / ARR APT: .... / Callsign: ......
echo.
echo Please type the identifier of your origin airport.
echo.
echo L.F. Wade Int'l............. TXKF
echo St. Barths/Gustaf III....... TFFJ
echo Saba/Juancho E. Yrausquin... TNCS
echo Princess Juliana............ TNCM
echo.
set /p dep="Enter: "
cls
echo VFSControl Flight Panel
echo.
echo ACFT: %acft% / DEP APT: %dep% / ARR APT: *....* / Callsign: ......
echo.
echo Please type the identifier of your arrival airport.
echo.
echo L.F. Wade Int'l............. TXKF
echo St. Barths/Gustaf III....... TFFJ
echo Saba/Juancho E. Yrausquin... TNCS
echo Princess Juliana............ TNCM
echo.
set /p arr="Enter: "
cls
echo VFSControl Flight Panel
echo.
echo ACFT: %acft% / DEP APT: %dep% / ARR APT: %arr% / Callsign: *......*
echo.
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
echo VFSControl Flight Panel
echo.
echo ACFT: %acft% / DEP APT: %dep% / ARR APT: %arr% / Callsign: %line%%fltn%
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
set acft=null
set dep=null
set arr=null
set line=null
set fltn=null
goto start
)

:flight
cls
echo VFSControl Flight Panel
echo.
echo Aircraft: %acft% / Departure Airport: %dep% / Arrival Airpot: %arr% / Callsign: %line%%fltn%
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
echo VFSControl Flight Panel
echo.
echo Aircraft: %acft% / Departure Airport: %dep% / Arrival Airpot: %arr% / Callsign: %line%%fltn%
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
echo VFSControl Flight Panel
echo.
echo Aircraft: %acft% / Departure Airport: %dep% / Arrival Airpot: %arr% / Callsign: %line%%fltn%
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
echo VFSControl Flight Panel
echo.
echo Aircraft: %acft% / Departure Airport: %dep% / Arrival Airpot: %arr% / Callsign: %line%%fltn%
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
echo VFSControl Flight Panel
echo.
echo Aircraft: %acft% / Departure Airport: %dep% / Arrival Airpot: %arr% / Callsign: %line%%fltn%
echo.
echo [123    ]
echo.
echo Current Step: Cruise
echo Fly to your destination. If there is a controller, ask them for a landing slot.
echo.
echo Once you start descending, press any key.
pause>nul
cls
echo VFSControl Flight Panel
echo.
echo Aircraft: %acft% / Departure Airport: %dep% / Arrival Airpot: %arr% / Callsign: %line%%fltn%
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
echo VFSControl Flight Panel
echo.
echo Aircraft: %acft% / Departure Airport: %dep% / Arrival Airpot: %arr% / Callsign: %line%%fltn%
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
echo VFSControl Flight Panel
echo.
echo Aircraft: %acft% / Departure Airport: %dep% / Arrival Airpot: %arr% / Callsign: %line%%fltn%
echo.
echo [123456 ]
echo.
echo Current Step: Taxi
echo Taxi to your gate and shut down the engines.
echo.
echo Once you have shut down, press any key to end the flight.
pause>nul
cls
echo VFSControl Flight Panel
echo.
echo Congratulations! You have competed your flight.
echo.
echo [1234567]
echo.
pause
goto start