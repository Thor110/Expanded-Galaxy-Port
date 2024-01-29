int StartingConditional() {
	int nValid;
	object oPC = GetFirstPC();
	object object3 = GetItemPossessedBy(oPC, "k35_itm_uthrpass");
	nValid = GetIsObjectValid(object3);
	return nValid;
}

