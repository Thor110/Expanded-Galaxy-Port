@echo off

for /f "delims=" %%x in (version.txt) do set Build=port-v%%x

for /r "Modules Source" %%x in (*.mod) do copy "%%x" "%cd%\Expanded Galaxy Port Installer\tslpatchdata\Modules"

"C:\Program Files\7-Zip\7z.exe" a "%Build%.zip" "%cd%\Expanded Galaxy Port Installer\*"

echo release zipped
pause
exit