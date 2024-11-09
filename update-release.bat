@echo off

for /f "delims=" %%x in (version.txt) do set Build=Port-v%%x

"C:\Program Files\7-Zip\7z.exe" a "%Build%.zip" "%cd%\Expanded Galaxy Port Installer\*"

echo Release Zipped
pause
exit
