void main() {
	int int1;
	object oNearest = GetItemActivated();
	if ((GetTag(oNearest) != "ptar_sitharmor")) {
		return;
	}
	int1 = 1;
	oNearest = GetNearestCreature(0, 7, GetFirstPC(), int1, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF);
	while (GetIsObjectValid(oNearest)) {
		if (((GetDistanceBetween(oNearest, GetFirstPC()) < 10.0) && (!IsObjectPartyMember(oNearest)))) {
			ActionStartConversation(GetFirstPC(), "ptar_armor_dlg", 0, 0, 0, "", "", "", "", "", "");
			return;
		}
		(int1++);
		oNearest = GetNearestCreature(0, 7, GetFirstPC(), int1, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF);
	}
	ActionStartConversation(GetFirstPC(), "ptar_armon_dlg", 0, 0, 0, "", "", "", "", "", "");
	SetGlobalBoolean("TAR_SITHARMOR", (!GetGlobalBoolean("TAR_SITHARMOR")));
}
