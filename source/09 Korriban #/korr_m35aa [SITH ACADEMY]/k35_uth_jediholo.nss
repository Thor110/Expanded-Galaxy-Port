int StartingConditional() {
	int nValid;
	object oPC = GetFirstPC();
	object object3 = GetItemPossessedBy(oPC, "k36_itm_holocron");
	nValid = GetIsObjectValid(object3);
	return nValid;
}

