@echo off
title Star Wars : Knights of the Old Republic II : Expanded Galaxy Project Port Installer
setlocal enabledelayedexpansion

:: Initialize TSLPath to empty string by default
if "%~1"=="" (set "TSLPath=") else (set "TSLPath=%~1")

:: Initialize empty KOTORPaths variable
set "KOTORPaths="
set "KOTORPath="

goto StartMainLogic

:: Function to check for chitin.key in a folder
:Check-Folder
if exist "%~1\chitin.key" (
    exit /b 0
) else (
    exit /b 1
)

:: Function to resolve registry key to InstallLocation
:ResolveRegKeyToPath
setlocal
set "regKey=%~1"
for /f "tokens=2*" %%a in ('reg query "%regKey%" /v InstallLocation 2^>nul') do (
    set "resolvedPath=%%b"
)

:: If InstallLocation not found, check Path
if not defined resolvedPath (
    for /f "tokens=2*" %%a in ('reg query "%regKey%" /v Path 2^>nul') do (
        set "resolvedPath=%%b"
    )
)

if defined resolvedPath (
    echo %resolvedPath%
    exit /b 0
) else (
    exit /b 1
)
endlocal

:: Function to display choices and capture user input
:Process-Choice
setlocal enabledelayedexpansion
set "title=%~1"
set "regOptions=%~2"
set "pathOptions=%~3"
set "cmdlinePath=%~4"

:: Display choices to the user
set "index=1"
for %%A in (%regOptions%) do (
    call :ResolveRegKeyToPath "%%A"
    if not errorlevel 1 (
        if exist "!resolvedPath!" (
            echo [!index!] %title% - !resolvedPath!
            set "pathOpt[!index!]=!resolvedPath!"
            set /a "index+=1"
        )
    )
)
for %%B in ("%pathOptions:;=" "%") do (
    if exist %%B (
        echo [!index!] %title% - %%B
        set "pathOpt[!index!]=%%B"
        set /a "index+=1"
    )
)

echo [!index!] Enter a manual path
set /a "manualIndex=index"
Rem set /a "index+=1"

:CaptureInput
set /p choice=Please choose an option [1-%index%]
echo %choice%|findstr /r "[^1-!index!]" && (
  goto :FinalInput
)
if %choice% gtr !index! (
  cls
  echo Enter a number between 1 and !index!
  goto :Process-Choice
)
if %choice% lss 1 (
  cls
  echo Enter a number between 1 and !index!
  goto :Process-Choice
)
:FinalInput
:: Check if user chose manual input
if "%choice%"=="%manualIndex%" (
    set /p chosenPath=Enter your manual path: 
) else (
    :: Based on user input, set chosenPath
    set "chosenPath=!pathOpt[%choice%]!"
)
set "chosenPath=%chosenPath:"=%"   :: Remove quotes if they exist

:: Store the path
echo User chose index: !choice!
echo User chose: "!chosenPath!"

call :Check-Folder "!chosenPath!"
if !ERRORLEVEL! equ 0 (
    echo Check for chitin.key - success
) else (
    echo Check for chitin.key - failure
    endlocal
    call :Process-Choice "%title%" "%regOptions%" "%pathOptions%" "%cmdlinePath%"
    exit /b
)

endlocal & (
	if not defined KOTORPath (
		set "KOTORPath=%chosenPath%"
	)
  set "KOTORPaths=%chosenPath%"
)
exit /b


:: Main logic
:StartMainLogic

:: Set up path choices
set "KOTOR2RegOptions=HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\Steam App 208580;HKLM:\SOFTWARE\GOG.com\Games\1421404581;HKLM:\SOFTWARE\WOW6432Node\LucasArts\KotOR2;HKLM:\SOFTWARE\LucasArts\KotOR2"
set "KOTOR2PathOptions=C:\Program Files\Steam\steamapps\common\Knights of the Old Republic II;C:\Program Files (x86)\Steam\steamapps\common\Knights of the Old Republic II;C:\Program Files\LucasArts\SWKotOR2;C:\Program Files (x86)\LucasArts\SWKotOR2;C:\GOG Games\Star Wars - KotOR2"

set "KOTOR1RegOptions=HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\Steam App 32370;HKLM:\SOFTWARE\GOG.com\Games\1207666283;HKLM:\SOFTWARE\WOW6432Node\BioWare\SW\KOTOR;HKLM:\SOFTWARE\BioWare\SW\KOTOR"
set "KOTOR1PathOptions=C:\Program Files\Steam\steamapps\common\swkotor;C:\Program Files (x86)\Steam\steamapps\common\swkotor;C:\Program Files\Bioware\SWKotOR;C:\Program Files (x86)\Bioware\SWKotOR;C:\GOG Games\Star Wars - KotOR"

call :Process-Choice "KotOR" "%KOTOR1RegOptions%" "%KOTOR1PathOptions%" "%KOTORPath%"

echo.
echo KotOR Path chosen: !KOTORPath!

call :Process-Choice "TSL" "%KOTOR2RegOptions%" "%KOTOR2PathOptions%" "%TSLPath%"

echo.
echo TSL Path chosen: !KOTORPaths!

echo Installing Expanded Galaxy Project Port

:: Call executable based on chosen path
if exist "tslpatchdata\pykotorcli.exe" (
	ren "%KOTORPaths%\StreamMusic\mus_a_503.wav" "mus_a_503.wav.main"
	ren "!KOTORPaths!\StreamMusic\mus_sion.wav" "mus_sion.wav.main"
	pause
	copy /y "%KOTORPath%\StreamMusic\mus_theme_cult.wav" "!KOTORPaths!\StreamMusic\mus_sion.wav"
	FOR /F "delims=" %%a IN (tslpatchdata\lips-file-list.txt) DO COPY "%KOTORPath%\lips\%%~a" "!KOTORPaths!\lips\%%~nxa"
	FOR /F "delims=" %%a IN (tslpatchdata\movies-file-list.txt) DO COPY "%KOTORPath%\movies\%%~a" "!KOTORPaths!\movies\%%~nxa"
	FOR /F "delims=" %%a IN (tslpatchdata\streammusic-file-list.txt) DO COPY "%KOTORPath%\streammusic\%%~a" "!KOTORPaths!\streammusic\%%~nxa"
	FOR /F "delims=" %%a IN (tslpatchdata\streamsounds-file-list.txt) DO COPY "%KOTORPath%\streamsounds\%%~a" "!KOTORPaths!\streamsounds\%%~nxa"
	FOR /F "delims=" %%a IN (tslpatchdata\streamwaves-file-list.txt) DO COPY "%KOTORPath%\streamwaves%%~a" "!KOTORPaths!\streamvoice\%%~nxa"
	for /f "delims=" %%i in (tslpatchdata\missing-file-list.txt) do copy "source\template\%%i" "!KOTORPaths!\Override\%%i"
	ren "!KOTORPaths!\movies\ObsidianEnt.bik" "ObsidianEnt.bik.main"
	ren "!KOTORPaths!\lips\001EBO_loc.mod" "001EBO_loc.mod.main"
	ren "!KOTORPaths!\Modules\001ebo.mod" 001ebo.mod.main"
	for /f "delims=" %%i in (tslpatchdata\port-file-list.txt) do ren "!KOTORPaths!\Override\%%i" "%%i.main"
	copy /y "%KOTORPath%\movies\biologo.bik" "!KOTORPaths!\movies\ObsidianEnt.bik"
	copy /y "%KOTORPath%\lips\end_m01aa_loc.mod" "!KOTORPaths!\lips\001EBO_loc.mod"
	copy /y "tslpatchdata\port-file-list.txt" "!KOTORPaths!\port-file-list.txt"
	copy /y "tslpatchdata\launcher.bat" "!KOTORPaths!\launcher.bat"
	copy /y "port-patch-notes.rtf" "!KOTORPaths!\port-patch-notes.rtf"
	copy /y "port-readme.rtf" "!KOTORPaths!\port-readme.rtf"
	copy /y "!KOTORPaths!\dialog.tlk" "!KOTORPaths!\dialog.tlk.main"
    call "tslpatchdata\pykotorcli.exe" "!KOTORPaths!" "%cd%"
    echo Star Wars : Knights of the Old Republic II Expanded Galaxy Port Project Installation Completed!
) else (
    echo An error occurred: Cannot find the executable 'pykotorcli.exe'
    exit /b 2
)
pause