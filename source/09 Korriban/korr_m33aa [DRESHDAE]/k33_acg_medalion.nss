int StartingConditional() {
	int nValid;
	object oPC = GetFirstPC();
	object object3 = GetItemPossessedBy(oPC, "k33_itm_sithmdln");
	nValid = GetIsObjectValid(object3);
	return nValid;
}

