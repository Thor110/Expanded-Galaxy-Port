@echo off
echo sort include scripts before running this
pause
exit

call update-scripts.bat

rem update-modules.bat is here for now as PowerShell executes from wrong location

PowerShell -NoProfile -ExecutionPolicy Bypass -Command "& '%cd%\modules\create-all-modules.ps1'" 

for /r "modules" %%x in (*.mod) do copy "%%x" "%cd%\Expanded Galaxy Port Installer\tslpatchdata\Modules"

call update-changes.ini.bat
call update-missing-file-list.bat
call update-release.bat

echo completely recompiled project
pause