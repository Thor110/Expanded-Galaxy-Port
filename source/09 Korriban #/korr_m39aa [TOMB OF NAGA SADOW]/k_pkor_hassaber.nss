int StartingConditional() {
	object oPC = GetFirstPC();
	object object3 = GetItemPossessedBy(oPC, "k39_itm_cersaber");
	int nGlobal = GetGlobalNumber("KOR_FINAL_TEST");
	if (((nGlobal == 1) && GetIsObjectValid(object3))) {
		return 1;
	}
	return 0;
}

