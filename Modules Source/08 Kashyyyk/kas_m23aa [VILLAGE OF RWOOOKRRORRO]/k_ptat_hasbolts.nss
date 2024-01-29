int StartingConditional() {
	object oPC = GetFirstPC();
	object object3 = GetItemPossessedBy(oPC, "kas24_bowcasbolt");
	if ((GetIsObjectValid(object3) == 1)) {
		return 1;
	}
	else {
		return 0;
	}
}

