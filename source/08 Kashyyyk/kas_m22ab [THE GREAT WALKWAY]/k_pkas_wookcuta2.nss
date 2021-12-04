void main() {
	object oKas22_wookcut_01 = GetWaypointByTag("kas22_wookcut_01");
	location location1 = GetLocation(oKas22_wookcut_01);
	CreateObject(1, "kas22_wookcho_03", location1, 0);
	object oArea = GetArea(OBJECT_SELF);
	MusicBackgroundStop(oArea);
	DelayCommand(0.1, MusicBattlePlay(oArea));
}

