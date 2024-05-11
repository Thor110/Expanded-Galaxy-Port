int StartingConditional() {
	object oPC = GetFirstPC();
	if ((GetHasSpell(9, oPC) == 1)) {
		return 1;
	}
	else {
		return 0;
	}
}

