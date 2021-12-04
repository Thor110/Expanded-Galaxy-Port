int StartingConditional() {
	object oPC = GetFirstPC();
	if ((GetGold(oPC) >= 250)) {
		return 1;
	}
	else {
		return 0;
	}
}

