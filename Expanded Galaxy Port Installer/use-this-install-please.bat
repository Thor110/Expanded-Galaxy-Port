title Expanded Galaxy Project Installer
set start=%cd%

@echo off
cls

SET /P first="Enter your Knights of the Old Republic Directory:"
if exist "%first%\chitin.key" (
  echo Game Found.
) else (
  echo Game Not Found!
  pause
  exit
)

SET /P level="Enter your Knights of the Old Republic II Directory:"
if exist "%level%\chitin.key" (
  echo Game Found.
) else (
  echo Game Not Found!
  pause
  exit
)

FOR /F "delims=" %%a IN (tslpatchdata\lips-file-list.txt) DO COPY "%first%\lips\%%~a" "%start%\tslpatchdata\%%~nxa"
FOR /F "delims=" %%a IN (tslpatchdata\movies-file-list.txt) DO COPY "%first%\movies\%%~a" "%start%\tslpatchdata\%%~nxa"
FOR /F "delims=" %%a IN (tslpatchdata\streammusic-file-list.txt) DO COPY "%first%\streammusic\%%~a" "%start%\tslpatchdata\%%~nxa"
FOR /F "delims=" %%a IN (tslpatchdata\streamsounds-file-list.txt) DO COPY "%first%\streamsounds\%%~a" "%start%\tslpatchdata\%%~nxa"
FOR /F "delims=" %%a IN (tslpatchdata\streamwaves-file-list.txt) DO COPY "%first%\streamwaves%%~a" "%start%\tslpatchdata\%%~nxa"

tslpatchdata\pykotorcli.exe "%level%" "%start%"

pause