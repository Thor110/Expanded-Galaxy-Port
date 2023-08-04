@echo off

set nwnsscompdir=C:\KotOR Tools\DeNCS

for %%F in (*.nss) do (
  if not "%%~nF"=="nwscript" (
    "%nwnsscompdir%\nwnnsscomp.exe" -c "%~dp0%%~nF.nss" -o "%~dp0%%~nF.ncs"
  ) else (
    echo Skipping: %%F
  )
)

pause