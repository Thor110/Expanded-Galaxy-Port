@echo off
rem Thor110
rem create release package run this last

for /f "delims=" %%x in (version.txt) do set Build=Port-v%%x

"C:\Program Files\7-Zip\7z.exe" a "%Build%.zip" "%cd%\Expanded Galaxy Port Installer\*"

echo Release Zipped
pause
exit
