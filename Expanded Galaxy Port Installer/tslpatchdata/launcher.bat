@echo off

cls

:START

if exist dialog.tlk.main goto :INPUTA
if exist dialog.tlk.port goto :INPUTB

:INPUTA
echo KotOR1 Active!
goto :INPUT
:INPUTB
echo KotOR2 Active!
:INPUT
echo Please select what you want to play?
echo KotOR1 = 1
echo KotOR2 = 2
set /p Choice="Enter your choice: "
echo %Choice%|findstr /r "[^0-9]" && (
  goto :START
)
if %Choice% gtr 2  (
  echo enter a number between 1 and 2
  goto :START
)
if %Choice% lss 1 (
  echo enter a number between 1 and 2
  goto :START
)

if %Choice% == 1 goto :KOTOR1
if %Choice% == 2 goto :KOTOR2

:KOTOR1

echo Launching KotOR1 in KotOR2!

if exist dialog.tlk.port goto :INPUT4

goto :INPUT1

:KOTOR2

echo Launching KotOR2!

if exist dialog.tlk.main goto :INPUT3

goto :INPUT2

:INPUT1
cls
echo KotOR1 is currently enabled. Play Game!
pause
goto :STEAMORDISC
exit

:INPUT2
cls
echo KotOR2 is currently enabled. Play Game!
pause
goto :STEAMORDISC
exit

:INPUT3
cls
echo KotOR1 is currently enabled! Please enable KotOR2!
pause
port.bat
:INPUT4
cls
echo KotOR2 is currently enabled! Please enable KotOR1!
pause
port.bat

:STEAMORDISC
if exist steam_api.dll goto :STEAM
goto :DISCORGOG
:STEAM
start "" "steam://rungameid/208580//"
exit
:DISCORGOG
swkotor2.exe
exit

:END