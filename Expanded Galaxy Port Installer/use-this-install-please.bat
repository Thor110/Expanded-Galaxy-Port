title Expanded Galaxy Project Installer

@echo off

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
  FOR /F "tokens=2* skip=2" %%a in ('reg query "HKLM\SOFTWARE\GOG.com\Games\1207666283" /v "Path"') do set mykey1=%%b
) else (
  Rem echo "kotor 1 gog registry entry not detected!"
)

Rem KOTOR1 STEAM
reg query "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\Steam App 32370" /v InstallLocation /s
if %errorlevel% equ 0 (
  Rem echo "kotor 1 steam registry entry detected!"
  FOR /F "tokens=2* skip=2" %%a in ('reg query "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\Steam App 32370" /v "InstallLocation"') do set mykey1=%%b
) else (
  Rem echo "kotor 1 steam registry entry not detected!"
)

Rem KOTOR2 DISC
reg query HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\LucasArts\KotOR2 /v Path /s
if %errorlevel% equ 0 (
  Rem echo "kotor 2 disc registry entry detected!"
  FOR /F "tokens=2* skip=2" %%a in ('reg query "HKLM\SOFTWARE\WOW6432Node\LucasArts\KotOR2" /v "Path"') do set mykey2=%%b
) else (
  Rem echo "kotor 2 disc registry entry not detected!"
)

Rem KOTOR2 GOG
reg query HKEY_LOCAL_MACHINE\SOFTWARE\GOG.com\Games\1421404581 /v PATH /s
if %errorlevel% equ 0 (
  Rem echo "kotor 2 gog registry entry detected!"
  FOR /F "tokens=2* skip=2" %%a in ('reg query "HKLM\SSOFTWARE\GOG.com\Games\1421404581" /v "PATH"') do set mykey2=%%b
) else (
  Rem echo "kotor 2 gog registry entry not detected!"
)

Rem KOTOR2 STEAM
reg query "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\Steam App 208580" /v InstallLocation /s
if %errorlevel% equ 0 (
  Rem echo "kotor 2 steam registry entry detected!"
  FOR /F "tokens=2* skip=2" %%a in ('reg query "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\Steam App 208580" /v "InstallLocation"') do set mykey2=%%b
) else (
  Rem echo "kotor 2 steam registry entry not detected!"
)

cls

if defined mykey1 (
echo "Star Wars : Knights of the Old Republic Installation Detected!"
) else (
echo "Star Wars : Knights of the Old Republic Installation Not Detected!"
pause
exit
)

if exist "%mykey1%\chitin.key" (
  Rem echo Game Found.
) else (
  Rem echo Game Not Found!
  exit
)
if defined mykey2 (
echo "Star Wars : Knights of the Old Republic II Installation Detected!"
) else (
echo "Star Wars : Knights of the Old Republic II Installation Not Detected!"
pause
exit
)

if exist "%mykey2%\chitin.key" (
  Rem echo Game Found.
) else (
  Rem echo Game Not Found!
  exit
)

echo "Installing Expanded Galaxy Project Port"

Rem FOR /F "delims=" %%a IN (tslpatchdata\lips-file-list.txt) DO COPY "%mykey1%\lips\%%~a" "%cd%\tslpatchdata\%%~nxa"
Rem FOR /F "delims=" %%a IN (tslpatchdata\movies-file-list.txt) DO COPY "%mykey1%\movies\%%~a" "%cd%\tslpatchdata\%%~nxa"
Rem FOR /F "delims=" %%a IN (tslpatchdata\streammusic-file-list.txt) DO COPY "%mykey1%\streammusic\%%~a" "%cd%\tslpatchdata\%%~nxa"
Rem FOR /F "delims=" %%a IN (tslpatchdata\streamsounds-file-list.txt) DO COPY "%mykey1%\streamsounds\%%~a" "%cd%\tslpatchdata\%%~nxa"
Rem FOR /F "delims=" %%a IN (tslpatchdata\streamwaves-file-list.txt) DO COPY "%mykey1%\streamwaves%%~a" "%cd%\tslpatchdata\%%~nxa"


pause

echo testing

pause

FOR /F "delims=" %%a IN (tslpatchdata\lips-file-list.txt) DO COPY "%mykey1%\lips\%%~a" "%mykey1%\lips\%%~nxa"
FOR /F "delims=" %%a IN (tslpatchdata\movies-file-list.txt) DO COPY "%mykey1%\movies\%%~a" "%mykey1%\movies\%%~nxa"
FOR /F "delims=" %%a IN (tslpatchdata\streammusic-file-list.txt) DO COPY "%mykey1%\streammusic\%%~a" "%mykey1%\streammusic\%%~nxa"
FOR /F "delims=" %%a IN (tslpatchdata\streamsounds-file-list.txt) DO COPY "%mykey1%\streamsounds\%%~a" "%mykey1%\streamsounds\%%~nxa"
FOR /F "delims=" %%a IN (tslpatchdata\streamwaves-file-list.txt) DO COPY "%mykey1%\streamwaves%%~a" "%mykey1%\streamwaves%%~nxa"

pause

echo testing

pause

Rem tslpatchdata\pykotorcli.exe "%mykey2%" "%cd%"

echo "Star Wars : Knights of the Old Republic II Expanded Galaxy Port Project Installation Completed!"

pause



















Rem KOTOR2 DISC
reg query HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\LucasArts\KotOR2 /v Path /s
if %errorlevel% equ 0 (
  Rem echo "kotor 2 disc registry entry detected!"
  FOR /F "tokens=2* skip=2" %%a in ('reg query "HKLM\SOFTWARE\WOW6432Node\LucasArts\KotOR2" /v "Path"') do set mykey2=%%b
) else (
  Rem echo "kotor 2 disc registry entry not detected!"
)

Rem KOTOR2 GOG
reg query HKEY_LOCAL_MACHINE\SOFTWARE\GOG.com\Games\1421404581 /v PATH /s
if %errorlevel% equ 0 (
  Rem echo "kotor 2 gog registry entry detected!"
  FOR /F "tokens=2* skip=2" %%a in ('reg query "HKLM\SSOFTWARE\GOG.com\Games\1421404581" /v "PATH"') do set mykey2=%%b
) else (
  Rem echo "kotor 2 gog registry entry not detected!"
)

Rem KOTOR2 STEAM
reg query "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\Steam App 208580" /v InstallLocation /s
if %errorlevel% equ 0 (
  Rem echo "kotor 2 steam registry entry detected!"
  FOR /F "tokens=2* skip=2" %%a in ('reg query "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\Steam App 208580" /v "InstallLocation"') do set mykey2=%%b
) else (
  Rem echo "kotor 2 steam registry entry not detected!"
)

cls

if defined mykey2 (
echo "Star Wars : Knights of the Old Republic II Installation Detected!"
) else (
echo "Star Wars : Knights of the Old Republic II Installation Not Detected!"
pause
exit
)

if exist "%mykey2%\chitin.key" (
  Rem echo Game Found.
) else (
  Rem echo Game Not Found!
  exit
)
