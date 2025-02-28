@echo off
echo sort include scripts before running this
pause
exit

echo compiling all scripts in all sub directories plus some special commands specific to the EGP architecture

call update-scripts.bat

rem update-modules.bat is here for now as PowerShell executes from wrong location

echo compiling all modules in all relevant directories

PowerShell -NoProfile -ExecutionPolicy Bypass -Command "& '%cd%\modules\create-all-modules.ps1'" 

for /r "modules" %%x in (*.mod) do copy "%%x" "%cd%\Expanded Galaxy Port Installer\tslpatchdata\Modules"

echo updating changes.ini file

call update-changes.ini.bat

echo updating missing file list

call update-missing-file-list.bat

echo creating a release package

call update-release.bat

echo completely recompiled project
pause