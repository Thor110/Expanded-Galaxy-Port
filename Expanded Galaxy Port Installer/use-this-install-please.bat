title Star Wars : Knights of the Old Republic II : Expanded Galaxy Project Port Installer

@echo off
setlocal enabledelayedexpansion
set tempA = 0
set tempB = 0

Rem KOTOR1 DISC
reg query HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\BioWare\SW\KOTOR /v Path /s
if %errorlevel% equ 0 (
  Rem echo "kotor 1 disc registry entry detected!"
  FOR /F "tokens=2* skip=2" %%a in ('reg query "HKLM\SOFTWARE\WOW6432Node\BioWare\SW\KOTOR" /v "Path"') do set mykey1=%%b
) else (
  Rem echo "kotor 1 disc registry entry not detected!"
)

Rem KOTOR1 GOG
reg query HKEY_LOCAL_MACHINE\SOFTWARE\GOG.com\Games\1207666283 /v Path /s
if %errorlevel% equ 0 (
  Rem echo "kotor 1 gog registry entry detected!"
  FOR /F "tokens=2* skip=2" %%a in ('reg query "HKLM\SOFTWARE\GOG.com\Games\1207666283" /v "Path"') do set mykey2=%%b
) else (
  Rem echo "kotor 1 gog registry entry not detected!"
)

Rem KOTOR1 STEAM
reg query "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\Steam App 32370" /v InstallLocation /s
if %errorlevel% equ 0 (
  Rem echo "kotor 1 steam registry entry detected!"
  FOR /F "tokens=2* skip=2" %%a in ('reg query "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\Steam App 32370" /v "InstallLocation"') do set mykey3=%%b
) else (
  Rem echo "kotor 1 steam registry entry not detected!"
)

Rem KOTOR2 DISC
reg query HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\LucasArts\KotOR2 /v Path /s
if %errorlevel% equ 0 (
  echo Hello World! Loyal fan & owner of a disc copy of the game!
  FOR /F "tokens=2* skip=2" %%a in ('reg query "HKLM\SOFTWARE\WOW6432Node\LucasArts\KotOR2" /v "Path"') do set mykey4=%%b
) else (
  Rem echo "kotor 2 disc registry entry not detected!"
)

Rem KOTOR2 GOG
reg query HKEY_LOCAL_MACHINE\SOFTWARE\GOG.com\Games\1421404581 /v PATH /s
if %errorlevel% equ 0 (
  echo Hello World! Good old Games User!
  FOR /F "tokens=2* skip=2" %%a in ('reg query "HKLM\SOFTWARE\GOG.com\Games\1421404581" /v "PATH"') do set mykey5=%%b
) else (
  Rem echo "kotor 2 gog registry entry not detected!"
)

Rem KOTOR2 STEAM
reg query "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\Steam App 208580" /v InstallLocation /s
if %errorlevel% equ 0 (
  echo Hello World! Steam User!
  FOR /F "tokens=2* skip=2" %%a in ('reg query "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\Steam App 208580" /v "InstallLocation"') do set mykey6=%%b
) else (
  Rem echo "kotor 2 steam registry entry not detected!"
)

cls

if defined mykey1 (
  set /a tempA+=1
  set "mykey=!mykey1!"
)

if defined mykey2 (
  set /a tempA+=1
  set "mykey=!mykey2!"
)

if defined mykey3 (
  set /a tempA+=1
  set "mykey=!mykey3!"
)

if %tempA% equ 0 goto :MANUAL
if %tempA% equ 1 goto :INSTALL

:INPUT1
echo Please enter which install of the first game to use.
echo Disc Version = 1
echo GoG Version = 2
echo Steam Version = 3
set /p InstallA="Which install to use: "
echo %InstallA%|findstr /r "[^0-9]" && (
  goto :INPUT1
)
if %InstallA% gtr 3  (
  echo enter a number between 1 and 3
  goto :INPUT1
)
if %InstallA% lss 1 (
  echo enter a number between 1 and 3
  goto :INPUT1
)

if %InstallA% == 1 set mykeyA=%mykey1%
if %InstallA% == 2 set mykeyA=%mykey2%
if %InstallA% == 3 set mykeyA=%mykey3%
if not defined mykeyA (
  cls
  echo Input incorrect or no installation of the game detected!
  goto :INPUT1
)
Rem one temp variable next time

if defined mykey4 (
  set /a tempB+=1
  set "mykey=!mykey4!"
)

if defined mykey5 (
  set /a tempB+=1
  set "mykey=!mykey5!"
)

if defined mykey6 (
  set /a tempB+=1
  set "mykey=!mykey6!"
)

Rem one temp variable next time

:INPUT2

if %tempB% equ 0 goto :MANUAL
if %tempB% equ 1 goto :INSTALL

echo Please enter which install of the second game to use.
echo Disc Version = 1
echo GoG Version = 2
echo Steam Version = 3
set /p InstallB="Which install to use: "
echo %InstallB%|findstr /r "[^0-9]" && (
  goto :INPUT2
)
if %InstallB% gtr 3  (
  echo enter a number between 1 and 3
  goto :INPUT2
)
if %InstallB% lss 1 (
  echo enter a number between 1 and 3
  goto :INPUT2
)

if %InstallB% == 1 set mykeyB=%mykey4%
if %InstallB% == 2 set mykeyB=%mykey5%
if %InstallB% == 3 set mykeyB=%mykey6%
if not defined mykeyB (
  cls
  echo Input incorrect or no installation of the game detected!
  goto :INPUT2
)
cls
goto :Install
:MANUAL
echo Failed to locate the registry entry, please enter the game directories manually.
echo Please enter the first game directory.
set /p mykeyA="Enter your KotOR1 Directory: "
echo Please enter the second game directory.
set /p mykeyB="Enter your KotOR2 Directory: "
:INSTALL
setlocal disabledelayedexpansion

if exist "%mykeyA%\chitin.key" (
  echo Star Wars : Knights of the Old Republic Installation Detected!
) else (
  echo Star Wars : Knights of the Old Republic Installation Not Detected!
  pause
  goto :MANUAL
  exit
)

if exist "%mykeyB%\chitin.key" (
  echo Star Wars : Knights of the Old Republic II Installation Detected!
) else (
  echo Star Wars : Knights of the Old Republic II Installation Not Detected!
  pause
  goto :MANUAL
  exit
)

echo Installing Expanded Galaxy Project Port

ren "%mykeyB%\StreamMusic\mus_a_503.wav" "mus_a_503.wav.main"
ren "%mykeyB%\StreamMusic\mus_sion.wav" "mus_sion.wav.main"

copy /y "%mykeyA%\streammusic\mus_theme_cult.wav" "%mykeyB%\streammusic\mus_sion.wav"

FOR /F "delims=" %%a IN (tslpatchdata\lips-file-list.txt) DO COPY "%mykeyA%\lips\%%~a" "%mykeyB%\lips\%%~nxa"
FOR /F "delims=" %%a IN (tslpatchdata\movies-file-list.txt) DO COPY "%mykeyA%\movies\%%~a" "%mykeyB%\movies\%%~nxa"
FOR /F "delims=" %%a IN (tslpatchdata\streammusic-file-list.txt) DO COPY "%mykeyA%\streammusic\%%~a" "%mykeyB%\streammusic\%%~nxa"
FOR /F "delims=" %%a IN (tslpatchdata\streamsounds-file-list.txt) DO COPY "%mykeyA%\streamsounds\%%~a" "%mykeyB%\streamsounds\%%~nxa"
FOR /F "delims=" %%a IN (tslpatchdata\streamwaves-file-list.txt) DO COPY "%mykeyA%\streamwaves%%~a" "%mykeyB%\streamvoice\%%~nxa"

for /f "delims=" %%i in (tslpatchdata\missing-file-list.txt) do copy "source\template\%%i" "%mykeyB%\Override\%%i"

ren "%mykeyB%\movies\ObsidianEnt.bik" "ObsidianEnt.bik.main"

ren "%mykeyB%\lips\001EBO_loc.mod" "001EBO_loc.mod.main"
ren "%mykeyB%\Modules\001ebo.mod" 001ebo.mod.main"

for /f "delims=" %%i in (tslpatchdata\port-file-list.txt) do ren "%mykeyB%\Override\%%i" "%%i.main"

copy /y "%mykeyA%\movies\biologo.bik" "%mykeyB%\movies\ObsidianEnt.bik"
copy /y "%mykeyA%\lips\end_m01aa_loc.mod" "%mykeyB%\lips\001EBO_loc.mod"

copy /y "tslpatchdata\port-file-list.txt" "%mykeyB%\port-file-list.txt"
copy /y "tslpatchdata\launcher.bat" "%mykeyB%\launcher.bat"

copy /y "port-patch-notes.rtf" "%mykeyB%\port-patch-notes.rtf"
copy /y "port-readme.rtf" "%mykeyB%\port-readme.rtf"

copy /y "%mykeyB%\dialog.tlk" "%mykeyB%\dialog.tlk.main"

tslpatchdata\pykotorcli.exe "%mykeyB%" "%cd%"

echo Star Wars : Knights of the Old Republic II Expanded Galaxy Port Project Installation Completed!

pause