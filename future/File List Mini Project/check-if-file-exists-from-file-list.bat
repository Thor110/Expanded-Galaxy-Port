@echo off

for /f "delims=" %%i in (wok-file-list.txt) do (
	if exist "D:\00 Expanded Galaxy Project\09 Assets for Blender\01 K1 GMax or Blender ASCII\%%i" (
	  echo file exists "%%i" >> wok-file-exists.txt
	) else (
	  echo file doesn't exist "%%i" >> wok-file-doesnt.txt
	)
)

pause