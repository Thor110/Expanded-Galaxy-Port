int StartingConditional() {
	object oPC = GetFirstPC();
	if ((GetGold(oPC) >= 75)) {
		return 1;
	}
	else {
		return 0;
	}
}

