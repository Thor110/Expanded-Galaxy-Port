int StartingConditional() {
	object oPC = GetFirstPC();
	if ((GetGold(oPC) == 0)) {
		return 1;
	}
	else {
		return 0;
	}
}

