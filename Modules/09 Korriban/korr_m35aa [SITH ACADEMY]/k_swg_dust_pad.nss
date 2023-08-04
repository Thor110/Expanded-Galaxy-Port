int StartingConditional() {
	int nValid;
	object oPC = GetFirstPC();
	object object3 = GetItemPossessedBy(oPC, "datapad");
	nValid = GetIsObjectValid(object3);
	return nValid;
}

