int StartingConditional() {
	object oPC = GetFirstPC();
	object object3 = GetItemPossessedBy(oPC, "kas25_kinrathbod");
	if ((GetIsObjectValid(object3) == 1)) {
		return 1;
	}
	else {
		return 0;
	}
}

