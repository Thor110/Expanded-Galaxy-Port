@echo off

for /r "Modules Source" %%x in (*.mod) do copy "%%x" "%cd%\Expanded Galaxy Port Installer\tslpatchdata\Modules"

echo Modules Updated
pause
exit