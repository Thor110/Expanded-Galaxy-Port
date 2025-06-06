@echo off
rem Thor110
rem generate override file list for changes.ini run this third

del "Expanded Galaxy Port Installer\tslpatchdata\changes-amazon.ini"
del "Expanded Galaxy Port Installer\tslpatchdata\changes-android.ini"
del "Expanded Galaxy Port Installer\tslpatchdata\changes-disc.ini"
del "Expanded Galaxy Port Installer\tslpatchdata\changes-gog.ini"
del "Expanded Galaxy Port Installer\tslpatchdata\changes-gog-legacy.ini"
del "Expanded Galaxy Port Installer\tslpatchdata\changes-legacypc.ini"
del "Expanded Galaxy Port Installer\tslpatchdata\changes-steam.ini"
del "Expanded Galaxy Port Installer\tslpatchdata\changes-switch.ini"
del "Expanded Galaxy Port Installer\tslpatchdata\changes-xbox.ini"
del "Expanded Galaxy Port Installer\tslpatchdata\changes-macappstore.ini"
del "Expanded Galaxy Port Installer\tslpatchdata\changes-macsteam.ini"
del "Expanded Galaxy Port Installer\tslpatchdata\changes-ios.ini"

dir "Expanded Galaxy Port Installer\tslpatchdata\Override" /b > temp-list.txt

echo Generating Override Install List entries for the changes.ini files...

set x=0
setlocal EnableDelayedExpansion

for /f "delims=|" %%i in (temp-list.txt) do (
  echo Replace!x!=%%i>> override.txt
  set /a x=!x!+1
)

echo.>> override.txt
echo ; ===================================================================>> override.txt

del temp-list.txt

echo Override Install List Generated!

echo Creating changes.ini files...

type changes\changes-amazon-intro.ini		changes\changes.ini changes\changes-amazon-outro.ini		override.txt > "Expanded Galaxy Port Installer\tslpatchdata\changes-amazon.ini"
type changes\changes-mobile-intro.ini		changes\changes.ini changes\changes-android-ios-outro.ini	override.txt > "Expanded Galaxy Port Installer\tslpatchdata\changes-android.ini"
type changes\changes-disc-intro.ini			changes\changes.ini changes\changes-disc-outro.ini			override.txt > "Expanded Galaxy Port Installer\tslpatchdata\changes-disc.ini"
type changes\changes-gog-intro.ini			changes\changes.ini changes\changes-gog-outro.ini			override.txt > "Expanded Galaxy Port Installer\tslpatchdata\changes-gog.ini"
type changes\changes-gog-legacy-intro.ini	changes\changes.ini changes\changes-disc-outro.ini			override.txt > "Expanded Galaxy Port Installer\tslpatchdata\changes-gog-legacy.ini"
type changes\changes-legacypc-intro.ini		changes\changes.ini changes\changes-disc-outro.ini			override.txt > "Expanded Galaxy Port Installer\tslpatchdata\changes-legacypc.ini"
type changes\changes-steam-intro.ini		changes\changes.ini changes\changes-steam-outro.ini			override.txt > "Expanded Galaxy Port Installer\tslpatchdata\changes-steam.ini"
type changes\changes-mobile-intro			changes\changes.ini changes\changes-switch-outro.ini		override.txt > "Expanded Galaxy Port Installer\tslpatchdata\changes-switch.ini"
type changes\changes-xbox-intro.ini			changes\changes.ini changes\changes-xbox-outro.ini			override.txt > "Expanded Galaxy Port Installer\tslpatchdata\changes-xbox.ini"
type changes\changes-macappstore-intro.ini	changes\changes.ini changes\changes-macappstore-outro.ini	override.txt > "Expanded Galaxy Port Installer\tslpatchdata\changes-macappstore.ini"
type changes\changes-macsteam-intro.ini		changes\changes.ini changes\changes-macsteam-outro.ini		override.txt > "Expanded Galaxy Port Installer\tslpatchdata\changes-macsteam.ini"
type changes\changes-mobile-intro			changes\changes.ini changes\changes-android-ios-outro.ini	override.txt > "Expanded Galaxy Port Installer\tslpatchdata\changes-ios.ini"

del override.txt

echo changes.ini files created!

pause