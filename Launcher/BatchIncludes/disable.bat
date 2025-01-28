:KOTOR2
if exist dialog.tlk.port exit

ren Movies\ObsidianEnt.bik ObsidianEnt.bik.port

ren dialog.tlk dialog.tlk.port
ren lips\001EBO_loc.mod 001EBO_loc.mod.port
ren Modules\001ebo.mod 001ebo.mod.port
ren StreamMusic\mus_sion.wav mus_sion.wav.port
ren swkotor2.exe swkotor2.exe.port

for /f "delims=|" %%i in (port-file-list.txt) do ren "Override\%%i" "%%i.port"

ren Movies\ObsidianEnt.bik.main ObsidianEnt.bik

ren dialog.tlk.main dialog.tlk
ren lips\001EBO_loc.mod.main 001EBO_loc.mod
ren Modules\001ebo.mod.main 001ebo.mod
ren StreamMusic\mus_sion.wav.main mus_sion.wav
ren swkotor2.exe.main swkotor2.exe

for /f "delims=|" %%i in (port-file-list.txt) do ren "Override\%%i.main" "%%i"