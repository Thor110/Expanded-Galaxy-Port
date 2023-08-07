@echo off

setlocal EnableDelayedExpansion

Rem if exist Movies\ObsidianEnt.bik.main set install = 1

Rem if exist Movies\ObsidianEnt.bik.port set install = 2

Rem if exist Movies\ObsidianEnt.bik.hood set install = 3

Rem pause

Rem if install == 1 echo the Port is currently installed and active.
Rem if install == 2 echo the Main is currently installed and active.
Rem if install == 3 echo Brotherhood is currently installed and active.

:INPUT
echo Please whether you want to enable KotOR1 or KotOR2.
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

if %Choice% == 1 goto :KOTOR
if %Choice% == 2 goto :KOTOR2

:KOTOR

Rem if install == 1 (
Rem   cls
Rem   echo The port is already active!
Rem   goto :INPUT
Rem )

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

echo KotOR Enabled!

goto :END

:KOTOR2

Rem if install == 2 (
Rem   cls
Rem   echo The port is already active!
Rem   goto :INPUT
Rem )

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