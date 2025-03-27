@echo off
:REGISTRY
reg query "HKCU\Expanded Galaxy" /v Game >nul
if %errorlevel% neq 0 (
  reg add "HKCU\Expanded Galaxy" /v Game /t REG_DWORD /d 1
)
if exist fresh.install (
  reg add "HKCU\Expanded Galaxy" /v Game /t REG_DWORD /d 1 /f
  del fresh.install
)
:START
cls
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
if exist dialog.tlk.main goto :PLAY

ren Movies\ObsidianEnt.bik ObsidianEnt.bik.main
ren dialog.tlk dialog.tlk.main
ren lips\001EBO_loc.mod 001EBO_loc.mod.main
ren Modules\001ebo.mod 001ebo.mod.main
ren StreamMusic\mus_sion.wav mus_sion.wav.main

ren swkotor2.exe swkotor2.exe.main

if exist swupdate.exe goto :KOTOR1B
if exist DirectX/DSETUP.dll goto :KOTOR1B

:KOTOR1A
for /f "delims=|" %%i in (port-file-list.txt) do ren "Override\%%i" "%%i.main"
goto :KOTOR1C
:KOTOR1B
for /f "delims=|" %%i in (port-file-list-disc.txt) do ren "Override\%%i" "%%i.main"
:KOTOR1C

ren Movies\ObsidianEnt.bik.port ObsidianEnt.bik
ren dialog.tlk.port dialog.tlk
ren lips\001EBO_loc.mod.port 001EBO_loc.mod
ren Modules\001ebo.mod.port 001ebo.mod
ren StreamMusic\mus_sion.wav.port mus_sion.wav

ren swkotor2.exe.port swkotor2.exe

if exist swupdate.exe goto :KOTOR1E
if exist DirectX/DSETUP.dll goto :KOTOR1E

:KOTOR1D
for /f "delims=|" %%i in (port-file-list.txt) do ren "Override\%%i.port" "%%i"
goto :KOTOR1F
:KOTOR1E
for /f "delims=|" %%i in (port-file-list-disc.txt) do ren "Override\%%i.port" "%%i"
:KOTOR1F

echo Launching KotOR1 in KotOR2!

reg add "HKCU\Expanded Galaxy" /v Game /t REG_DWORD /d 1 /f

goto :PLAY
:KOTOR2
if exist dialog.tlk.port goto :PLAY

ren Movies\ObsidianEnt.bik ObsidianEnt.bik.port
ren dialog.tlk dialog.tlk.port
ren lips\001EBO_loc.mod 001EBO_loc.mod.port
ren Modules\001ebo.mod 001ebo.mod.port
ren StreamMusic\mus_sion.wav mus_sion.wav.port

ren swkotor2.exe swkotor2.exe.port

if exist swupdate.exe goto :KOTOR2B
if exist DirectX/DSETUP.dll goto :KOTOR2B

:KOTOR2A
for /f "delims=|" %%i in (port-file-list.txt) do ren "Override\%%i" "%%i.port"
goto :KOTOR2C
:KOTOR2B
for /f "delims=|" %%i in (port-file-list-disc.txt) do ren "Override\%%i" "%%i.port"
:KOTOR2C

ren Movies\ObsidianEnt.bik.main ObsidianEnt.bik
ren dialog.tlk.main dialog.tlk
ren lips\001EBO_loc.mod.main 001EBO_loc.mod
ren Modules\001ebo.mod.main 001ebo.mod
ren StreamMusic\mus_sion.wav.main mus_sion.wav

ren swkotor2.exe.main swkotor2.exe

if exist swupdate.exe goto :KOTOR2E
if exist DirectX/DSETUP.dll goto :KOTOR2E

:KOTOR2D
for /f "delims=|" %%i in (port-file-list.txt) do ren "Override\%%i.main" "%%i"
goto :KOTOR2F
:KOTOR2E
for /f "delims=|" %%i in (port-file-list-disc.txt) do ren "Override\%%i.main" "%%i"
:KOTOR2F

reg add "HKCU\Expanded Galaxy" /v Game /t REG_DWORD /d 2 /f

echo Launching KotOR2!
:PLAY
echo press any key to play the game. . .
pause
if exist steam_api.dll goto :STEAM
goto :LEGACY
:STEAM
start "" "steam://rungameid/208580//"
exit
:LEGACY
start swkotor2.exe