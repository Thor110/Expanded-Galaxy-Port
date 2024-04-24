@echo off

for /f "delims=" %%i in (port-file-list.txt) do (
	if exist "Override\%%i" (
	  echo file exists "%%i">> exists.txt
	) else (
	  echo file doesnt exist "%%i">> doesnt.txt
	)
)

pause