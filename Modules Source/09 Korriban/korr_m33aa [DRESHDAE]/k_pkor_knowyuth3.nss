int StartingConditional() {
	object oPC = GetFirstPC();
	object object3 = GetItemPossessedBy(oPC, "k33_itm_sithmdln");
	int int1 = GetGlobalBoolean("KOR_KNOW_YUTHURA");
	if (((!GetIsObjectValid(object3)) && (int1 == 0))) {
		return 1;
	}
	return 0;
}

