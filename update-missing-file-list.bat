@echo off

del "Expanded Galaxy Port Installer\tslpatchdata\missing-file-list.txt"

dir "Expanded Galaxy Port Installer\source\template" /b > "Expanded Galaxy Port Installer\tslpatchdata\missing-file-list.txt"

echo The missing file list has been updated using the template folder ( "Expanded Galaxy Port Installer\source\template" )
pause