void main() {
	object oEntering = GetEnteringObject();
	object oPC = GetFirstPC();
	object oTat17_daysospawn = GetWaypointByTag("tat17_daysospawn");
	location location1 = GetLocation(oTat17_daysospawn);
	if ((GetIsPC(oEntering) && (GetGlobalBoolean("tat_DaysoTiff") == 1))) {
		SetGlobalFadeOut(0.0, 0.0, 0.0, 0.0, 0.0);
		SetPartyLeader(0xFFFFFFFF);
		object oTat17_xconser_01 = CreateObject(1, "tat17_xconser_01", location1, 0);
		AssignCommand(oTat17_xconser_01, ActionStartConversation(oPC, "", 0, 0, 1, "", "", "", "", "", ""));
		DestroyObject(OBJECT_SELF, 0.0, 0, 0.0);
	}
}

