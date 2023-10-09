@echo off

for /f "delims=" %%x in (version.txt) do set Build=port-v%%x

"C:\Program Files\7-Zip\7z.exe" a "%Build%.zip" "%cd%\Expanded Galaxy Port Installer\*"

set fld=lips
call :ADD
set fld=Override
call :ADD
set fld=StreamVoice
call :ADD

md tslpatchdata
for /r "Modules" %%x in (*.mod) do copy "%%x" "tslpatchdata\"
copy dialog.tlk tslpatchdata\dialog.tlk
"C:\Program Files\7-Zip\7z.exe" a "%Build%.zip" "%cd%\tslpatchdata"
rd /s /q tslpatchdata

echo release zipped
pause
exit

:ADD
ren %fld% tslpatchdata
"C:\Program Files\7-Zip\7z.exe" a "%Build%.zip" "%cd%\tslpatchdata"
ren tslpatchdata %fld%
exit /b