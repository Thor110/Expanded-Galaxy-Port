int StartingConditional() {
	object oPC = GetFirstPC();
	object object3 = GetItemPossessedBy(oPC, "tat20_banthafod");
	if ((GetIsObjectValid(object3) == 0)) {
		return 1;
	}
	else {
		return 0;
	}
}

