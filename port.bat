@echo off

setlocal EnableDelayedExpansion

:INPUT
echo Please whether you want to enable KotOR1 or KotOR2.
echo Enable KotOR = 1
echo Disable KotOR2 = 2
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

ren "Movies\ObsidianEnt.bik" "ObsidianEnt02.bik"

ren "dialog.tlk" "dialog-main.tlk"
ren "lips\001EBO_loc.mod" "001EBO_loc-main.mod"
ren "Modules\001ebo.mod" "001ebo-main.mod"
ren "StreamMusic\mus_a_503.wav" "mus_a_503-main.wav"
ren "StreamMusic\mus_sion.wav" "mus_sion-main.wav"

for /f "delims=|" %%i in (port-file-list.txt) do ren "Override\%%i" "%%i.main"

ren "Movies\ObsidianEnt01.bik" "ObsidianEnt.bik"

ren "dialog-port.tlk" "dialog.tlk"
ren "lips\001EBO_loc-port.mod" "001EBO_loc.mod"
ren "Modules\001ebo-port.mod" "001ebo.mod"
ren "StreamMusic\mus_a_503-port.wav" "mus_a_503.wav"
ren "StreamMusic\mus_sion-port.wav" "mus_sion.wav"

for /f "delims=|" %%i in (port-file-list.txt) do ren "Override\%%i.port" "%%i"

echo KotOR Enabled!

goto :END

:KOTOR2

ren "Movies\ObsidianEnt.bik" "ObsidianEnt01.bik"

ren "dialog.tlk" "dialog-port.tlk"
ren "lips\001EBO_loc.mod" "001EBO_loc-port.mod"
ren "Modules\001ebo.mod" "001ebo-port.mod"
ren "StreamMusic\mus_a_503.wav" "mus_a_503-port.wav"
ren "StreamMusic\mus_sion.wav" "mus_sion-port.wav"

for /f "delims=|" %%i in (port-file-list.txt) do ren "Override\%%i" "%%i.port"

ren "Movies\ObsidianEnt02.bik" "ObsidianEnt.bik"

ren "dialog-main.tlk" "dialog.tlk"
ren "lips\001EBO_loc-main.mod" "001EBO_loc.mod"
ren "Modules\001ebo-main.mod" "001ebo.mod"
ren "StreamMusic\mus_a_503-main.wav" "mus_a_503.wav"
ren "StreamMusic\mus_sion-main.wav" "mus_sion.wav"

for /f "delims=|" %%i in (port-file-list.txt) do ren "Override\%%i.main" "%%i"

echo KotOR2 Disabled!

goto :END

:END


pause