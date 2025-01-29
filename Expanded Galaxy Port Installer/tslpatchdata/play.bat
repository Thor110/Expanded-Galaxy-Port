:STEAMORDISC
if exist steam_api.dll goto :STEAM
goto :DISCORGOG
:STEAM
start "" "steam://rungameid/208580//"
exit
:DISCORGOG
start swkotor2.exe