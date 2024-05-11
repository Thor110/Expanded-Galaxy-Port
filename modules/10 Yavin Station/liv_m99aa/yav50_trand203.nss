void main() {
	ChangeToStandardFaction(GetObjectByTag("yav47_trand01", 0), 1);
	ChangeToStandardFaction(GetObjectByTag("yav47_trand02", 0), 1);
	int int1 = 1;
	object oNearestYav47_trand04;
	while ((int1 <= 4)) {
		oNearestYav47_trand04 = GetNearestObjectByTag("yav47_trand03", OBJECT_SELF, int1);
		ChangeToStandardFaction(oNearestYav47_trand04, 1);
		(int1++);
	}
	int1 = 1;
	while ((int1 <= 2)) {
		oNearestYav47_trand04 = GetNearestObjectByTag("yav47_trand04", OBJECT_SELF, int1);
		ChangeToStandardFaction(oNearestYav47_trand04, 1);
		(int1++);
	}
	DelayCommand(1.0, SignalEvent(OBJECT_SELF, EventUserDefined(2001)));
}
