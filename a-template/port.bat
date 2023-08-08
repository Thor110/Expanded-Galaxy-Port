@echo off

setlocal EnableDelayedExpansion

if exist dialog.tlk.main goto :INPUT1
if exist dialog.tlk.port goto :INPUT2

:HOOD
echo Brotherhood of Shadow : Solomon's Revenge is enabled, you must disable it first!
pause
brotherhood.bat

:INPUT1
if exist Movies\ObsidianEnt.bik.port goto :HOOD
cls
echo KotOR1 is currently enabled.
goto :INPUT
:INPUT2
cls
echo KotOR2 is currently enabled.
goto :INPUT

:INPUT
echo Please select whether you want to enable KotOR1 or KotOR2.
echo Enable KotOR1 = 1
echo Enable KotOR2 = 2
set /p Choice="Enter your choice: "
echo %Choice%|findstr /r "[^0-9]" && (
  goto :INPUT
)
if %Choice% gtr 2  (
  echo enter a number between 1 and 2
  goto :INPUT
)
if %Choice% lss 1 (
  echo enter a number between 1 and 2
  goto :INPUT
)

if %Choice% == 1 goto :KOTOR1
if %Choice% == 2 goto :KOTOR2

:KOTOR1

if exist dialog.tlk.main goto :INPUT1

ren Movies\ObsidianEnt.bik ObsidianEnt.bik.main

ren dialog.tlk dialog.tlk.main
ren lips\001EBO_loc.mod 001EBO_loc.mod.main
ren Modules\001ebo.mod 001ebo.mod.main
ren StreamMusic\mus_a_503.wav mus_a_503.wav.main
ren StreamMusic\mus_sion.wav mus_sion.wav.main

for /f "delims=|" %%i in (port-file-list.txt) do ren "Override\%%i" "%%i.main"

ren Movies\ObsidianEnt.bik.port ObsidianEnt.bik

ren dialog.tlk.port dialog.tlk
ren lips\001EBO_loc.mod.port 001EBO_loc.mod
ren Modules\001ebo.mod.port 001ebo.mod
ren StreamMusic\mus_a_503.wav.port mus_a_503.wav
ren StreamMusic\mus_sion.wav.port mus_sion.wav

for /f "delims=|" %%i in (port-file-list.txt) do ren "Override\%%i.port" "%%i"

echo KotOR1 Enabled!

goto :END

:KOTOR2

if exist dialog.tlk.port goto :INPUT2

ren Movies\ObsidianEnt.bik ObsidianEnt.bik.port

ren dialog.tlk dialog.tlk.port
ren lips\001EBO_loc.mod 001EBO_loc.mod.port
ren Modules\001ebo.mod 001ebo.mod.port
ren StreamMusic\mus_a_503.wav mus_a_503.wav.port
ren StreamMusic\mus_sion.wav mus_sion.wav.port

for /f "delims=|" %%i in (port-file-list.txt) do ren "Override\%%i" "%%i.port"

ren Movies\ObsidianEnt.bik.main ObsidianEnt.bik

ren dialog.tlk.main dialog.tlk
ren lips\001EBO_loc.mod.main 001EBO_loc.mod
ren Modules\001ebo.mod.main 001ebo.mod
ren StreamMusic\mus_a_503.wav.main mus_a_503.wav
ren StreamMusic\mus_sion.wav.main mus_sion.wav

for /f "delims=|" %%i in (port-file-list.txt) do ren "Override\%%i.main" "%%i"

echo KotOR2 Enabled!

goto :END

:END

pause