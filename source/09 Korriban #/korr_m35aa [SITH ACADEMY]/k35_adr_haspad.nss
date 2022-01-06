int StartingConditional() {
	int nValid;
	object oPC = GetFirstPC();
	object object3 = GetItemPossessedBy(oPC, "k35_itm_sithdata");
	nValid = GetIsObjectValid(object3);
	return nValid;
}

